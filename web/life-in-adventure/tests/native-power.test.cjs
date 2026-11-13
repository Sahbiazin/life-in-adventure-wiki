'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const P=require('../dist/native-power.js'),C=require('../dist/combat-engine.js');
const sandbox={window:{}};vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),sandbox);
const data=JSON.parse(JSON.stringify(sandbox.window.ATLAS_DATA)),index={records:new Map(data.catalogs.map(r=>[r.key,r]))};
const clone=x=>JSON.parse(JSON.stringify(x)),close=(a,b,epsilon=.00002)=>assert.ok(Math.abs(a-b)<epsilon,`${a} != ${b}`);
function input(){const setup=C.blankSetup();setup.level=1;setup.equippedKnown=true;return {setup,stats:{3:0,5:10,6:10,7:10,12:10,13:10,14:10},traits:[],traitsComplete:true,statsMode:'effective',difficulty:'normal'};}

test('native scalar block matches fixed ARM float32 arithmetic fixtures',()=>{
  // Equipment.GetTotalBattlePoint 0x1a1fb34..0x1a1fc68, independently replayed
  // with float32 after each ARM arithmetic instruction.
  assert.equal(P.formula({damage:100,defense:500,speed:1.2,critical:.3,criticalMultiplier:2.5,dodge:.2}),4935);
  assert.equal(P.formula({damage:13.11,defense:188.177,speed:1,critical:.15,criticalMultiplier:2,dodge:.15}),15.759637832641602);
  assert.equal(P.formula({damage:2,defense:1,speed:1,critical:0,criticalMultiplier:2,dodge:0}),0);
});
test('native resistance matrix preserves signed levels and elemental caps',()=>{
  // Fixed cases extracted by replaying the native loop 0x1a1d530..0x1a1e500.
  const rounded=a=>a.map(n=>Number(n.toFixed(6)));
  assert.deepEqual(rounded(P.resistance({3:4})),[.95,.95,.57,1.33,.95,.95,.95,.95,.95,.95]);
  assert.deepEqual(rounded(P.resistance({3:-4})),[1,1,1.4,.6,1,1,1,1,1,1]);
  assert.deepEqual(rounded(P.resistance({7:-4})),[1,1.8,1,1,1,1,1,1,1,1]);
  assert.deepEqual(rounded(P.resistance({11:4})),[.32,1,1,1,1,1,1,1,1,1]);
  assert.deepEqual(rounded(P.resistance({8:4})),[1,1,1,1,0,1,1,1,1,1]);
  assert.deepEqual(rounded(P.resistance({8:-4})),[1,1,1,1,2,1,1,1,1,1]);
});
test('a real dagger and armor use the native score rather than the simulator index',()=>{
  const i=input();i.setup.equipment.main={id:'0'};i.setup.equipment.armor={id:'3'};
  const before=JSON.stringify(i),p=P.estimate(i,index),experimental=C.player(i,index);
  assert.equal(p.ready,true);assert.equal(p.exact,true);assert.equal(p.value,17.335601806640625);
  assert.notEqual(p.value,experimental.power);assert.equal(JSON.stringify(i),before);
});
test('native damage mastery reads dmgType independently of attackType',()=>{
  const i=input();i.setup.equipment.main={id:'20'};i.setup.abilities={0:1,46:4,60:4};
  const row=index.records.get('item:20');assert.equal(Number(row.raw.dmgType),1);assert.ok(row.raw.attackType.startsWith('0_'));
  const p=P.estimate(i,index),base=C.formula(row.raw.dmg,i.stats)+(i.setup.level*.2+2.5)*(Number(row.raw.category)===1?2:1);
  close(p.components.damage,base*1.1);
});
test('extra elemental damage is based on main-hand damage after native masteries',()=>{
  const i=input();i.setup.equipment.main={id:'0'};i.setup.abilities={46:2,60:1,12:1};
  const p=P.estimate(i,index);close(p.components.damage,13.11*1.2*1.1);close(p.components.additionalDamage,p.components.damage*.16);
});
test('negative hardness lowers defense as the native HP helper does',()=>{
  const i=input();i.stats[13]=3;const p=P.estimate(i,index);
  assert.equal(p.components.abilities[58],-2);close(p.components.defense,(40+3*.4+10*.4+31.75)*.8);
});
test('insufficient sheet data cannot produce an exact native score',()=>{
  const i=input();i.setup.equippedKnown=false;assert.equal(P.estimate(i,index).ready,false);
  i.setup.equippedKnown=true;i.setup.level=null;assert.equal(P.estimate(i,index).ready,false);
  i.setup.level=1;i.effectsPending=true;const pending=P.estimate(i,index);assert.equal(pending.exact,false);assert.ok(pending.missing.length);
  i.effectsPending=false;delete i.stats[3];assert.equal(P.estimate(i,index).exact,false);
});
test('unsupported special helpers, two weapons and presence-only zero levels remain partial',()=>{
  const i=input();i.setup.abilities={68:1};let p=P.estimate(i,index);assert.equal(p.ready,true);assert.equal(p.exact,false);assert.ok(p.notes.some(n=>n.includes('68')));
  i.setup.abilities={};i.setup.equipment.main={id:'0'};i.setup.equipment.off={id:'27'};p=P.estimate(i,index);assert.equal(p.exact,false);assert.ok(p.notes.some(n=>n.includes('duas armas')));
  i.setup.equipment.off=null;i.setup.abilities={41:0};p=P.estimate(i,index);assert.equal(p.exact,false);assert.ok(p.notes.some(n=>n.includes('nível zero')));
});
test('observed native power is authoritative only while its sheet signature matches',()=>{
  const i=input();i.observedPower=P.observe(321.5,i,index);const p=P.estimate(i,index);assert.equal(p.value,321.5);assert.equal(p.exact,true);assert.equal(p.source,'observed-native-power');
  const goldOnly=clone(i);goldOnly.stats[4]=1000;assert.equal(P.estimate(goldOnly,index).value,321.5);
  for(const change of [s=>{s.stats[5]++;},s=>{s.setup.level++;},s=>{s.setup.equipment.main={id:'0'};},s=>{s.setup.abilities[56]=1;},s=>{s.stats[3]=25;},s=>{s.effectsPending=true;}]){const altered=clone(i);change(altered);assert.notEqual(P.estimate(altered,index).source,'observed-native-power');}
  assert.throws(()=>P.observe(-1,i),/inválido/);assert.throws(()=>P.observe(Infinity,i),/inválido/);
  i.observedPower.value=1e12;assert.notEqual(P.estimate(i,index).source,'observed-native-power');
});
test('every extracted equipment profile yields a finite nonnegative score or explicit missing data',()=>{
  for(const row of data.catalogs.filter(r=>r.kind==='item')){
    const slot=({0:'main',1:'main',2:'off',3:'armor',4:'accessory'})[Number(row.raw.category)];if(!slot)continue;
    const i=input();i.setup.equipment[slot]={id:String(row.id),upgrade:0};const p=P.estimate(i,index);
    assert.equal(p.ready,true,row.key);assert.ok(Number.isFinite(p.value)&&p.value>=0,row.key);
    if(p.partial)assert.equal(p.exact,false,row.key);
  }
});
