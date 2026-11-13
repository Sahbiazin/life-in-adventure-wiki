'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),A=require('../dist/ability-engine.js');
const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),ctx={window:{}};
vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),ctx);
const index={records:new Map(ctx.window.ATLAS_DATA.catalogs.map(r=>[r.key,r]))};
function state(){return {stats:{3:0,5:10,6:10,7:10,12:10,13:10,14:10},traits:[],traitsComplete:true,abilities:{},combat:{equippedKnown:true,equipment:{main:null,off:null,armor:null,accessory:null},abilities:{}},pending:[],flagsUncertain:false};}
const levels=s=>A.derive(s,index).levels;
test('native single-stat thresholds add levels at 18 and 27, with intellect at 42',()=>{
  for(const [stat,id] of [[5,60],[6,51]])for(const [value,expected] of [[17.999,0],[18,1],[26.999,1],[27,2],[100,2]]){const s=state();s.stats[stat]=value;assert.equal(levels(s)[id],expected);}
  const s=state();s.stats[7]=41.99;assert.equal(levels(s)[113],0);s.stats[7]=42;assert.equal(levels(s)[113],1);
  s.stats[14]=18;assert.equal(levels(s)[25],1);s.stats[14]=27;assert.equal(levels(s)[25],2);s.stats[14]=42;assert.equal(levels(s)[25],3);
});
test('native paired-stat grants require both 13 or both 20, with magic from INT and CAR summed',()=>{
  const s=state();s.stats[5]=13;s.stats[6]=12;assert.equal(levels(s)[46],0);s.stats[6]=13;assert.equal(levels(s)[46],1);s.stats[5]=20;s.stats[6]=20;assert.equal(levels(s)[46],2);
  s.stats[7]=27;s.stats[12]=18;assert.equal(levels(s)[0],3);
  s.stats[12]=20;s.stats[14]=20;assert.equal(levels(s)[91],2);
  const noMagic=state();noMagic.stats[12]=13;noMagic.stats[14]=13;assert.equal(levels(noMagic)[91],0);
});
test('Grace uses charisma 27 and the exact native alignment intervals',()=>{
  const s=state();s.stats[12]=27;
  for(const [alignment,grace,intimidation,holiness] of [[-25,0,2,-1],[-24,0,1,0],[-9,0,0,0],[9.99,0,0,0],[10,1,0,0],[24.99,1,0,0],[25,2,0,1]]){s.stats[3]=alignment;const l=levels(s);assert.equal(l[4],grace);assert.equal(l[1],intimidation);assert.equal(l[3],holiness);}
  s.stats[12]=26;s.stats[3]=25;assert.equal(levels(s)[4],0);
});
test('known alignment ranges preserve exact grants; ambiguous ranges stay unknown',()=>{
  const s=state();s.stats[12]=27;s.stats[3]=null;s.alignmentRange={min:10,max:24.999};assert.equal(levels(s)[4],1);
  s.alignmentRange={min:10,max:25};assert.equal(levels(s)[4],null);
  s.alignmentRange={min:null,max:-24.01};assert.equal(levels(s)[1],2);
  s.stats[12]=10;s.alignmentRange=null;assert.equal(levels(s)[4],0);
});
test('gear, trait metadata and native stat levels sum once, then effective observations replace them',()=>{
  const s=state();s.traits=['22'];s.stats[5]=27;assert.equal(levels(s)[60],3);
  s.traits=['42'];assert.equal(levels(s)[87],1);assert.equal(levels(s)[111],0);
  s.abilities={60:0};assert.equal(levels(s)[60],0);
  s.combat.abilities={60:4};assert.equal(levels(s)[60],4);
  assert.equal(A.derive(s,index,{overrides:{60:2}}).levels[60],2);
  assert.equal(s.stats[5],27);
});
test('missing equipment, traits or unmodeled effects cannot certify absent modifiers',()=>{
  const s=state();s.combat.equippedKnown=false;assert.equal(levels(s)[87],null);assert.equal(A.derive(s,index).complete,false);
  s.abilities={87:0,113:0,60:1};assert.equal(levels(s)[87],0);assert.equal(levels(s)[60],1);assert.equal(levels(s)[45],null);
  s.combat.equippedKnown=true;s.traitsComplete=false;assert.equal(levels(s)[45],null);
  s.traitsComplete=true;s.pending=['resultado não conferido'];assert.equal(levels(s)[45],null);
});
test('evolved trait increments do not fabricate retained abilities absent from the supplied trait list',()=>{
  const s=state();s.traits=['39'];assert.equal(levels(s)[4],null);assert.ok(A.derive(s,index).notes.some(n=>n.includes('incrementais')));
  s.traits=['14','39'];assert.equal(levels(s)[4],4);
  s.traits=['39'];s.abilities={4:4};assert.equal(levels(s)[4],4);
});
test('stats below four grant native flaws and low CON also decreases hardness',()=>{
  const s=state();for(const k of [5,6,7,12,13,14])s.stats[k]=3;
  const l=levels(s);for(let id=92;id<=97;id++)assert.equal(l[id],1);assert.equal(l[58],-2);
});
test('confirmed armor mastery cancels negative armor levels and doubles positive levels',()=>{
  const armor={key:'item:999',kind:'item',raw:{category:'3',subCategory:'2',Ab:'4_-2|60_1'}};
  const ix={records:new Map(index.records).set(armor.key,armor)},s=state();s.combat.equipment.armor={id:'999'};s.abilities={90:1};
  const l=A.derive(s,ix).levels;assert.equal(l[4],0);assert.equal(l[60],2);
});
test('the confirmed 336/337 set and special unresolved families keep their provenance',()=>{
  const s=state();s.combat.equipment.main={id:'336'};s.combat.equipment.off={id:'337'};
  const a=A.derive(s,index);assert.ok(a.sources[108].some(r=>r.source==='native-set-336-337'));
  const special={key:'item:999',kind:'item',raw:{category:'4',Ab:'83_1'}},ix={records:new Map(index.records).set(special.key,special)};
  s.combat.equipment.accessory={id:'999'};const l=A.derive(s,ix).levels;assert.equal(l[61],null);assert.equal(typeof l[87],'number');
});
test('hard-mode ability 111 begins at level three, not every hard run',()=>{
  const s=state();
  for(const [hardLevel,ids] of [[0,[0,0,0]],[1,[1,0,0]],[2,[1,0,0]],[3,[1,1,0]],[4,[1,1,1]]]){
    const l=A.derive(s,index,{difficulty:'hard',hardLevel}).levels;
    assert.deepEqual([l[109],l[111],l[112]],ids);
  }
  const unknown=A.derive(s,index,{difficulty:'hard'}).levels;assert.equal(unknown[111],null);
  s.abilities={111:0};assert.equal(A.derive(s,index,{difficulty:'hard'}).levels[111],0);
  assert.equal(A.derive(state(),index).presence[111],false);
  assert.equal(A.derive(s,index,{difficulty:'hard'}).presence[111],true);
  assert.equal(A.derive(s,index,{difficulty:'hard',presenceOverrides:{111:false}}).presence[111],false);
});
