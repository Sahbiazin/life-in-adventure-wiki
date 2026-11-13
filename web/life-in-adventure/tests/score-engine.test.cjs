'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict');
const S=require('../dist/score-engine.js'),C=require('../dist/combat-engine.js');
const clone=v=>JSON.parse(JSON.stringify(v));
const index={records:new Map([
  ['item:0',{key:'item:0',kind:'item',id:'0',title:'Adaga',raw:{price:'11',category:'0',subCategory:'0'}}],
  ['item:1',{key:'item:1',kind:'item',id:'1',title:'Escudo',raw:{price:'100',category:'2',subCategory:'0'}}],
  ['monster:1',{key:'monster:1',kind:'monster',id:'1',raw:{challenge:'17'}}],
  ['monster:2',{key:'monster:2',kind:'monster',id:'2',raw:{challenge:'20'}}]
])};
function state(){
  const s={stats:{0:10,1:5,2:0,3:0,4:100,5:10,6:10,7:10,8:10,9:5,12:10,13:10,14:10},alignmentRange:null,
    items:{},inventoryComplete:true,traits:[],traitsComplete:true,abilities:{},flagsUncertain:false,pending:[],combat:C.blankSetup(),scoring:S.blankSetup()};
  s.combat.equippedKnown=true;s.combat.level=0;s.scoring.countersComplete=true;s.scoring.battlePower=100;s.scoring.battleAnchor=S.anchor(s);return s;
}
const row=(value,id)=>value.breakdown.find(r=>r.id===id);

test('confirmed real counters replace projections once without erasing unknown categories',()=>{
  const original=S.blankSetup();original.offsets={14:100,0:100};original.uncertainCounters={13:1};
  let next=S.reconcile(original,{14:1},false);
  assert.equal(next.offsets[14],undefined);assert.equal(next.offsets[0],100);assert.equal(next.uncertainCounters[13],1);
  assert.equal(original.offsets[14],100);
  next=S.reconcile(next,{14:1,13:0},false,true);assert.deepEqual(next.uncertainCounters,{});assert.equal(next.offsets[0],100);
  next=S.reconcile(next,{14:1},true);assert.deepEqual(next.offsets,{});assert.deepEqual(next.uncertainCounters,{});
});

test('modern scoring uses build366 version3 multiplier6 and the active power bucket',()=>{
  const s=state(),r=S.estimate(s,index);
  assert.equal(S.CURRENT_SCORE_VERSION,3);assert.equal(r.multiplier,6);assert.equal(r.complete,true);
  // Native category16: trunc((60 attributes + 100 observed power)/7.5)*20*6.
  assert.equal(row(r,16).count,21);assert.equal(row(r,16).value,2520);assert.equal(r.value,2520);
  assert.equal(row(r,11).value,0,'no fast-finish bonus below EXP100');
  s.scoring.scoreVersion=-1;assert.equal(S.estimate(s,index).multiplier,1);
  s.scoring.scoreVersion=null;assert.equal(S.estimate(s,index).value,null);
});
test('wealth scoring is a capped tier reward, not a linear sale-price heuristic',()=>{
  for(const [wealth,points] of [[2999,0],[3000,6000],[3999,6000],[4000,12000],[4999,12000],[5000,18000],[10000,18000]]){
    const s=state();s.stats[4]=wealth;assert.equal(row(S.estimate(s,index),2).value,points);
  }
});
test('equipment is counted once and known improvements use native 1.5 price truncation',()=>{
  const s=state();s.items={0:1};s.combat.equipment.main={id:'0',upgrade:1};
  const wealth=S.itemWealth(s,index);assert.equal(wealth.min,16);assert.equal(wealth.max,16);assert.equal(wealth.known,true);
  s.items[0]=2;const uncertain=S.itemWealth(s,index);assert.equal(uncertain.min,27);assert.equal(uncertain.max,32);assert.equal(uncertain.known,false);
});
test('collector counts matching categories in the bag and preserves a past feat after spending',()=>{
  const s=state();s.items={0:7};assert.equal(row(S.estimate(s,index),3).value,4200);
  s.combat.equipment.main={id:'0',upgrade:0};assert.equal(row(S.estimate(s,index),3).value,0,'one equipped copy leaves only six in the bag');
  s.items={};s.combat.equipment.main=null;s.scoring.counters[3]=9;assert.equal(row(S.estimate(s,index),3).value,5400);
});
test('fast finish needs EXP100 and at most160 steps, and omitted historical zero is not a feat',()=>{
  const s=state();s.scoring.steps=100;assert.equal(row(S.estimate(s,index),11).value,0);
  s.stats[2]=100;assert.equal(row(S.estimate(s,index),11).value,24000);
  s.scoring.steps=160;assert.equal(row(S.estimate(s,index),11).value,24000);
  s.scoring.steps=161;assert.equal(row(S.estimate(s,index),11).value,0);
  s.stats[2]=0;s.scoring.counters[11]=150;assert.equal(row(S.estimate(s,index),11).value,24000,'a previously recorded feat persists');
});
test('EXP and resource deltas cancel unchanged unknown historical contributions',()=>{
  const a=state();a.scoring.countersComplete=false;a.scoring.battlePower=null;a.scoring.battleAnchor=null;
  const b=clone(a);b.stats[4]+=10;const sameTier=S.compare(a,b,index);assert.equal(sameTier.value,0);assert.equal(sameTier.complete,true);
  b.stats[2]=1;const xp=S.compare(a,b,index,{nativePower:{fromRun:r=>r,estimate:()=>({ready:true,value:100,exact:true,source:'fixture-native-power',notes:[]})}});
  assert.equal(row(xp,19).value,600);assert.equal(xp.value,600);
  assert.equal(S.estimate(a,index).value,null,'delta can be known while the total remains unknown');
});
test('observed power anchors invalidate on material sheet changes and remain valid for gold alone',()=>{
  const s=state();assert.equal(S.battlePower(s,index).source,'observed');
  s.stats[4]++;assert.equal(S.battlePower(s,index).source,'observed');
  s.stats[5]++;assert.notEqual(S.battlePower(s,index).source,'observed');
  const t=state();t.combat.equipment.main={id:'0'};assert.notEqual(S.battlePower(t,index).source,'observed');
});
test('alignment feats stay recorded when alignment later returns to neutral',()=>{
  const s=state();s.stats[3]=25;const p=S.project(s,{},index).state;assert.equal(p.scoring.counters[4],1);
  p.stats[3]=0;assert.equal(row(S.estimate(p,index),4).value,18000);
  p.stats[3]=-25;const q=S.project(p,{},index).state;assert.equal(q.scoring.counters[5],1);assert.equal(row(S.estimate(q,index),5).value,12000);
});
test('known streaks affect the recorded maximum and a failure resets only the current count',()=>{
  const s=state();s.scoring.counters[25]=[4,4];const p=S.project(s,{success:true},index).state;
  assert.deepEqual(p.scoring.counters[25],[5,5]);assert.equal(row(S.estimate(p,index),25).value,30000);
  const q=S.project(p,{success:false},index).state;assert.deepEqual(q.scoring.counters[25],[5,0]);assert.equal(row(S.estimate(q,index),25).value,30000);
  assert.equal(S.rawCounterScore(24,[31,0],index),7000);assert.equal(S.rawCounterScore(27,[16,0],index),5000);
});
test('unknown streak baselines remain partial, while linear increments retain an exact delta',()=>{
  const s=state();s.scoring.countersComplete=false;const p=S.project(s,{success:true},index).state;
  assert.equal(p.scoring.counters[14],undefined);assert.equal(p.scoring.offsets[14],100);
  assert.equal(p.scoring.uncertainCounters[25],1);assert.equal(p.scoring.uncertainCounters[28],1);
  assert.equal(S.compare(s,p,index).complete,false);assert.equal(S.compare(s,p,index).min,null);
  const isolated=clone(p);isolated.scoring.uncertainCounters={};assert.equal(S.compare(s,isolated,index).value,600);
  assert.equal(s.scoring.offsets[14],undefined,'projection never mutates the run');
});
test('new evolved abilities do not silently cancel the query-dependent Talentoso category',()=>{
  const s=state();s.abilities[56]=3;const after=clone(s);after.abilities[56]=4;
  const projected=S.project(after,{before:s},index);
  assert.equal(projected.state.scoring.uncertainCounters[15],1);assert.ok(projected.notes.some(n=>n.includes('Talentoso')));
  assert.equal(S.compare(s,projected.state,index).complete,false);
});
test('uncertain improbable-victory awards expose bounds without inventing native win probability',()=>{
  const s=state(),monster=index.records.get('monster:1');const p=S.project(s,{battleVictory:true,monster,winProbability:.1,winProbabilityExact:false},index).state;
  const delta=S.compare(s,p,index);assert.equal(delta.complete,false);assert.equal(delta.intervalComplete,true);
  assert.equal(delta.value,null);assert.equal(delta.min,15300);assert.equal(delta.max,18900);
  assert.equal(row(delta,13).min,0);assert.equal(row(delta,13).max,3600);
  const known=S.project(s,{battleVictory:true,monster,winProbability:.1,winProbabilityExact:true},index).state;
  assert.equal(S.compare(s,known,index).value,18900);
});
test('modern category thresholds and fixed feats are preserved',()=>{
  assert.equal(S.rawCounterScore(1,[1,2],index),5550);
  for(const [id,low,at,expected] of [[3,4,5,500],[8,7,8,2000],[10,6,7,700],[24,9,10,3000],[25,4,5,5000],[27,4,5,3000],[28,4,5,5000]]){
    assert.equal(S.rawCounterScore(id,low,index),0);assert.equal(S.rawCounterScore(id,at,index),expected);
  }
  assert.equal(S.rawCounterScore(21,1,index),2000);assert.equal(S.rawCounterScore(21,2,index),3000);assert.equal(S.rawCounterScore(21,3,index),4000);
  for(const id of [17,18,20])assert.equal(S.rawCounterScore(id,100,index),0);
});
test('invalid imported scoring metadata is rejected without modifying the source',()=>{
  assert.throws(()=>S.cleanSetup({hardLevel:11}));assert.throws(()=>S.cleanSetup({counters:{29:1}}));assert.throws(()=>S.cleanSetup({counters:{0:NaN}}));
  assert.throws(()=>S.cleanSetup({steps:1.5}));assert.throws(()=>S.cleanSetup({offsets:{0:Infinity}}));
  const s=state(),copy=clone(s);S.estimate(s,index);S.compare(s,copy,index);assert.deepEqual(s,copy);
});
