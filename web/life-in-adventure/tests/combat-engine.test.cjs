'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm');
const C=require('../dist/combat-engine.js'),E=require('../dist/game-engine.js');
const context={window:{}};vm.runInNewContext(fs.readFileSync(require('node:path').join(__dirname,'../dist/events-data.js'),'utf8'),context);
const data=JSON.parse(JSON.stringify(context.window.ATLAS_DATA)),index=E.createIndex(data),monster=id=>index.records.get(`monster:${id}`);
function input(){const setup=C.blankSetup();setup.level=1;setup.equippedKnown=true;return {setup,stats:{5:10,6:10,7:10,12:10,13:10,14:10},traits:[],traitsComplete:true,statsMode:'effective'};}
const close=(actual,expected)=>assert.ok(Math.abs(actual-expected)<.001,`${actual} != ${expected}`);

test('native item formulas use effective attributes, degree and upgrade, not run health',()=>{
  const i=input(),unarmed=C.player(i,index);close(unarmed.attack,5.3);close(unarmed.defense,79.75);
  i.setup.equipment.main={id:'0',upgrade:0};let p=C.player(i,index);close(p.attack,13.11);
  i.setup.equipment.main.upgrade=1;p=C.player(i,index);close(p.attack,13.11*1.1);
  i.setup.equipment.armor={id:'3',upgrade:0};p=C.player(i,index);close(p.defense,129.087+10+17.34+31.75);
  i.stats[0]=1;close(C.player(i,index).defense,p.defense);
  assert.equal(C.formula('8|unknown',i.stats),null);
});
test('two handed weapon bonuses and slot compatibility are validated',()=>{
  const i=input();i.setup.equipment.main={id:'18',upgrade:0};const p=C.player(i,index);
  close(p.attack,28.58+10*.601+2*(.2+2.5));
  i.setup.equipment.off={id:'2',upgrade:0};assert.throws(()=>C.player(i,index),/duas mãos/);
  i.setup.equipment.off=null;i.setup.equipment.armor={id:'0'};assert.throws(()=>C.player(i,index),/compatível/);
  assert.throws(()=>C.cleanSetup({...C.blankSetup(),level:-1},index),/grau/);
});
test('fixed trait attribute bonuses are added only when base stats were requested',()=>{
  const i=input();i.traits=['3'];i.setup.equipment.main={id:'0'};
  const effective=C.player(i,index);i.statsMode='base';const base=C.player(i,index);
  close(base.stats[6],14);close(effective.stats[6],10);close(base.attack-effective.attack,4*.182);
  assert.equal(i.stats[6],10);
});
test('effective ability levels replace item or trait sums and remain live in run state',()=>{
  const i=input();i.setup.equipment.main={id:'0'};i.effectiveAbilities={5:3};i.setup.abilities={5:0};
  assert.equal(C.player(i,index).abilities[5],0);
  const state=E.blankState();state.stats=i.stats;state.combat=i.setup;state.combat.abilities={};state.abilities={56:2};
  const run=E.newRun({state},index);close(C.player(C.fromRun(run),index).speed,1.2);
  run.state.abilities[56]=3;close(C.player(C.fromRun(run),index).speed,1.3);
  assert.deepEqual(run.state.combat.abilities,{});
});
test('unknown stats, degree, equipment and missing owned items cannot fabricate a percentage',()=>{
  const i=input();i.stats[5]=null;assert.equal(C.player(i,index).ready,false);
  i.stats[5]=10;i.setup.level=null;assert.equal(C.player(i,index).ready,false);
  i.setup.level=1;i.setup.equippedKnown=false;assert.equal(C.player(i,index).ready,false);
  i.setup.equippedKnown=true;i.setup.equipment.main={id:'0'};i.inventory={};i.inventoryComplete=true;
  assert.equal(C.player(i,index).ready,false);
  i.inventoryComplete=false;assert.equal(C.player(i,index).ready,true);
  i.inventory={0:1};i.setup.equipment.off={id:'0'};assert.equal(C.player(i,index).ready,false);
});
test('unimplemented effects and partial abilities are reported rather than silently counted',()=>{
  const i=input();i.setup.abilities={7:1,9:1,5:4};const p=C.player(i,index);
  assert.equal(p.partial,true);assert.ok(p.unknown.length);assert.ok(p.notes.some(n=>n.includes('bloquear')));assert.ok(p.notes.some(n=>n.includes('taxa básica')));
  i.traits=['8'];assert.ok(C.player(i,index).notes.some(n=>n.includes('condicional')));
});
test('enemy startup state uses modern 0.8/1.2 factors instead of legacy half/double power',()=>{
  const row=monster(161),normal=C.monster(row,index),weak=C.monster(row,index,{variant:1}),strong=C.monster(row,index,{variant:2});
  close(weak.attack,normal.attack*.8);close(weak.defense,normal.defense*.8);close(strong.defense,normal.defense*1.2);
  const unavailable=C.compare(C.player(input(),index),row,index,{variant:4});assert.equal(unavailable.ready,false);assert.equal(unavailable.probability,null);
});
test('simulations are reproducible and equipment/stat improvements change combat results',()=>{
  const i=input(),enemy=C.monster(monster(87),index),weak=C.player(i,index),before=JSON.stringify([weak,enemy]);
  const a=C.simulate(weak,enemy,{trials:200,seed:42});assert.deepEqual(a,C.simulate(weak,enemy,{trials:200,seed:42}));
  i.setup.overrides={attack:10000,defense:10000};const strong=C.simulate(C.player(i,index),enemy,{trials:200,seed:42});
  assert.equal(strong.probability,1);assert.ok(strong.probability>a.probability);assert.equal(JSON.stringify([weak,enemy]),before);
});
test('timeouts remain unresolved, including the probability interval',()=>{
  const i=input();i.setup.overrides={attack:0,defense:1000000};const p=C.player(i,index),r=C.simulate(p,p,{trials:20,seed:1,maxSeconds:2});
  assert.equal(r.unresolved,20);assert.equal(r.losses,0);assert.equal(r.probability,null);assert.equal(r.min,0);assert.equal(r.max,1);assert.equal(r.interval[1],1);
});
test('variable monster abilities produce scenario ranges without invented weights',()=>{
  const p=C.player(input(),index),r=C.compare(p,monster(87),index,{trials:50});
  assert.equal(r.variants.length,4);assert.equal(r.probability,null);assert.equal(r.variable,true);
  assert.equal(r.min,Math.min(...r.variants.map(v=>v.min)));assert.equal(r.max,Math.max(...r.variants.map(v=>v.max)));
  assert.deepEqual(r,C.compare(p,monster(87),index,{trials:50}));
});
test('event enemies resolve fixed IDs or explicit encounter pools, never monster zero from current-enemy control',()=>{
  const ev={data:{monster:'87_1|161_1'}};
  assert.deepEqual(C.eventMonsters(ev,{enemyKey:'monster:161'},index).map(r=>r.id),['161']);
  assert.deepEqual(C.eventMonsters(ev,{enemyKey:null},index).map(r=>r.id),['87','161']);
  assert.deepEqual(C.eventMonsters({data:{}},{enemyKey:null},index),[]);
});
test('old saves gain unknown combat configuration; gear changes survive undo, redo and backup validation',()=>{
  const state=E.blankState();delete state.combat;const run=E.newRun({state},index);assert.equal(run.state.combat.level,null);
  const s=E.clone(run.state);s.combat=input().setup;s.combat.equipment.main={id:'0',upgrade:1};
  const saved=E.commit(run,s,index,{type:'correction'}),reloaded=E.validateRun(JSON.parse(JSON.stringify(saved)),index);
  assert.equal(reloaded.state.combat.equipment.main.upgrade,1);assert.equal(E.undo(reloaded).state.combat.equippedKnown,false);
  assert.deepEqual(E.redo(E.undo(reloaded)).state,s);
  const bad=E.clone(reloaded);bad.history[0].after.combat.level=NaN;assert.throws(()=>E.validateRun(bad,index));
});
test('future combat retains distinct projected attribute states, with effects before the fight and no run mutation',()=>{
  const rule=models=>({operator:'AND',tokens:models.map(model=>({known:true,raw:'fixture',text:'Fixture',model}))});
  const result=(nextEvent,models)=>({raw:{text:'Result',nextEvent,reward:'fixture'},view:{required:null,reward:rule(models),probability:'1/2'}});
  const node=(id,results)=>({group:'EventNormal',id,data:{choice:[{text:'Escolher',result:results.map(r=>r.raw)}]},rules:{choices:[{required:null,results:results.map(r=>r.view)}]}});
  const a=node(999001,[result(999002,[{operation:'change_user_data',index:5,quantity:3}]),result(999002,[{operation:'change_user_data',index:5,quantity:20}])]);
  const b=node(999002,[result(-2,[{operation:'start_combat',monster_id:161,initial_state:null}])]);
  const ix={...index,events:new Map(index.events).set('EventNormal:999001',a).set('EventNormal:999002',b)},s=E.blankState();s.stats=input().stats;s.combat=input().setup;
  const f=E.forecastChoice(a,0,s,ix);assert.equal(f.combats.length,1);assert.deepEqual(f.combats[0].scenarios.map(p=>p.state.stats[5]).sort((a,b)=>a-b),[13,30]);
  assert.equal(s.stats[5],10);assert.equal(f.combats[0].scenariosTruncated,false);
});
test('all extracted monster profiles and equipment formula combinations stay finite',()=>{
  for(const row of data.catalogs.filter(r=>r.kind==='monster')){const p=C.monster(row,index);assert.ok(Number.isFinite(p.power));assert.ok(p.defense>0);}
  for(const row of data.catalogs.filter(r=>r.kind==='item')){
    const slot=({0:'main',1:'main',2:'off',3:'armor',4:'accessory'})[Number(row.raw.category)];if(!slot)continue;
    const i=input();i.setup.equipment[slot]={id:String(row.id),upgrade:0};const p=C.player(i,index);assert.equal(p.ready,true,row.key);assert.ok(Number.isFinite(p.power),row.key);
  }
});

// Native GetDmgAbilities reads Item.dmgType independently of attackType.
test('magic bonuses use dmgType even when the item attack animation is physical',()=>{
  const i=input();i.setup.equipment.main={id:'20'};i.setup.abilities={0:0,46:0,60:0};
  const baseline=C.player(i,index);i.setup.abilities={0:0,46:4,60:4};
  close(C.player(i,index).attack,baseline.attack);i.setup.abilities[0]=1;close(C.player(i,index).attack,baseline.attack*1.1);
  assert.equal(C.player(i,index).damageType,1);
});
test('negative Hardness reduces defense at low Constitution',()=>{
  const i=input();i.stats[13]=1;const p=C.player(i,index);assert.equal(p.abilities[58],-2);close(p.defense,60.92);
});
