'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),path=require('node:path');
const T=require('../dist/test-engine.js');
const context={window:{}};vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),context);
const data=JSON.parse(JSON.stringify(context.window.ATLAS_DATA));
const event=(group,id)=>data.events.find(e=>e.group===group&&e.id===id);
const state=()=>({stats:{5:10,6:10,7:10,12:10,13:10,14:10},abilities:{}});
const opts=abilities=>({effectiveAbilities:abilities||{},abilitiesComplete:true,difficulty:'normal'});
function fixture(results){return {data:{choice:[{result:results}]},rules:{choices:[{results:results.map(()=>({required:null}))}]}};}
const close=(a,b)=>assert.ok(Math.abs(a-b)<1e-9,`${a} != ${b}`);

test('weights truncate each float32 term, not the final sum',()=>{
  assert.equal(T.baseWeight('0.9|0.9|0_5_0.19',{5:9}).value,1);
  assert.equal(T.baseWeight('1|0_5_1',{5:10}).value,11);
  assert.equal(T.baseWeight('0_5_0.1',{5:10}).value,1);
  assert.equal(T.baseWeight('0_5_1.5',{5:1}).value,1);
  assert.equal(T.baseWeight('0_5_-1.5',{5:1}).value,-1);
  assert.equal(T.baseWeight('fixture',{5:10}).ready,false);
  assert.equal(T.baseWeight('0_5_1',{5:null}).ready,false);
});
test('the farm uses native integer tickets and INT bonus, not stat/20',()=>{
  const s=state(),r=T.choice(event('EventNormal',222),0,s,opts());
  assert.deepEqual(r.weights,[13,8]);close(r.successProbability,13/21);assert.equal(r.source,'native-weighted');assert.equal(r.complete,true);
  s.stats[7]=9;const lower=T.choice(event('EventNormal',222),0,s,opts());assert.deepEqual(lower.weights,[11,8]);close(lower.successProbability,11/19);
  assert.equal(s.stats[5],10);
});
test('trick and transcendent intellect add fixed tickets and can revive a zero-weight success',()=>{
  const e=fixture([{type:0,chance:'0'},{type:1,chance:'10'}]);
  assert.deepEqual(T.choice(e,0,state(),opts({87:1,113:1})).weights,[4,10]);
  assert.deepEqual(T.choice(e,0,state(),opts({87:5,113:2})).weights,[4,10]);
});
test('FOR/DES skill bonuses use modified tickets, ceil and the evolved 10% branch',()=>{
  const e=event('EventNormal',222),s=state();s.stats[7]=9;
  assert.deepEqual(T.choice(e,0,s,opts({60:1})).weights,[12,8]);
  assert.deepEqual(T.choice(e,0,s,opts({60:3})).weights,[13,8]);
  assert.deepEqual(T.choice(e,0,s,opts({60:4})).weights,[16,8]);
  const dex=fixture([{type:0,chance:'1|0_6_1'},{type:1,chance:'8'}]);
  assert.deepEqual(T.choice(dex,0,s,opts({51:4})).weights,[16,8]);
});
test('CAR grace and odor apply sequentially; multi-attribute terms preserve their order',()=>{
  const s=state();s.stats[7]=9;
  const e=fixture([{type:0,chance:'1|0_12_1'},{type:1,chance:'8'}]);
  assert.deepEqual(T.choice(e,0,s,opts({4:1,45:1})).weights,[10,8]);
  const multi=fixture([{type:0,chance:'1|0_5_1|0_6_1'},{type:1,chance:'8'}]);
  // 21 -> +ceil(21*.05)=2 -> +ceil(23*.05)=2.
  assert.deepEqual(T.choice(multi,0,s,opts({60:1,51:1})).weights,[25,8]);
});
test('only type 0 gets success bonuses; generic random alternatives remain raw tickets',()=>{
  const e=fixture([{type:2,chance:'1'},{type:2,chance:'4'}]);
  const r=T.choice(e,0,{stats:{},abilities:{}},{});assert.deepEqual(r.weights,[1,4]);assert.deepEqual(r.probabilities,[.2,.8]);assert.equal(r.successProbability,null);
  const one=T.choice(fixture([{type:2,chance:'1'}]),0,{stats:{},abilities:{}},{});assert.deepEqual(one.probabilities,[1]);
});
test('hard mode affects failure tickets only with hunger and multiple eligible results',()=>{
  const s=state(),e=event('EventNormal',222);
  const hard={...opts({111:1}),difficulty:'hard',hardModeEventFactor:1.5};
  const r=T.choice(e,0,s,hard);assert.deepEqual(r.weights,[13,12]);close(r.successProbability,13/25);
  const low=fixture([{type:0,chance:'1'},{type:1,chance:'1'}]);
  assert.deepEqual(T.choice(low,0,s,{...hard,hardModeEventFactor:1}).weights,[2,2]);
  assert.deepEqual(T.choice(e,0,s,{...opts({111:1}),difficulty:'hard'}).weights,[13,9]);
  // Native hard penalty is Exists(id111), including a level-zero list entry.
  assert.deepEqual(T.choice(e,0,s,{...opts({111:0}),difficulty:'hard'}).weights,[13,9]);
  assert.equal(T.choice(e,0,s,{...opts({111:1}),difficulty:'hard',hardModeEventFactor:null}).ready,false);
  const alone=T.choice(fixture([{type:1,chance:'8'}]),0,s,{...opts({111:1}),difficulty:'hard'});assert.deepEqual(alone.weights,[8]);assert.equal(alone.ready,true);
});
test('requirements are filtered before the native result-count penalty; unknown gates remain unknown',()=>{
  const s=state(),e=fixture([{type:0,chance:'1',required:'fixture'},{type:1,chance:'8'}]);e.rules.choices[0].results[0].required={tag:'blocked'};
  const r=T.choice(e,0,s,{...opts({111:1}),difficulty:'hard',requirement:()=>false});assert.deepEqual(r.weights,[0,8]);assert.deepEqual(r.probabilities,[0,1]);
  const unknown=T.choice(e,0,s,{...opts(),requirement:()=>null});assert.equal(unknown.ready,false);assert.deepEqual(unknown.probabilities,[null,null]);
});
test('unknown attributes/abilities, malformed weights and empty urns cannot fabricate a chance',()=>{
  const s=state(),e=event('EventNormal',222);s.stats[5]=null;
  assert.equal(T.choice(e,0,s,opts()).ready,false);
  s.stats[5]=10;assert.equal(T.choice(e,0,s,{effectiveAbilities:{},abilitiesComplete:false}).ready,false);
  const malformed=T.choice(fixture([{type:2,chance:'fixture'}]),0,s,opts());assert.equal(malformed.ready,false);
  const zero=T.choice(fixture([{type:2,chance:'0'},{type:2,chance:'-1'}]),0,s,opts());assert.equal(zero.ready,false);assert.equal(zero.successProbability,null);
});
test('partially modeled callers retain honest coverage and every eligible probability sums to one',()=>{
  const r=T.choice(event('EventNormal',555),3,state(),{...opts(),modelPartial:true});assert.equal(r.ready,true);assert.equal(r.partial,true);assert.equal(r.complete,false);close(r.probabilities.reduce((a,b)=>a+b,0),1);
  for(const e of data.events)for(let ci=0;ci<(e.data.choice||[]).length;ci++){
    const estimate=T.choice(e,ci,state(),{...opts(),requirement:()=>true});
    if(estimate.ready){close(estimate.probabilities.reduce((a,b)=>a+b,0),1);assert.ok(estimate.probabilities.every(p=>Number.isFinite(p)&&p>=0&&p<=1));}
  }
});

test('Battle 4 explains blocked derived abilities and computes both results without manual ability entries',()=>{
  const E=require('../dist/game-engine.js'),index=E.createIndex(data),s=E.blankState(),e=event('EventBattle',4);
  Object.assign(s.stats,{0:10,1:5,5:10,6:10,7:10,12:10,13:10,14:10});
  s.combat.equippedKnown=true;s.combat.level=1;
  const before=JSON.stringify(s),options={index,requirement:(v,s)=>E.requirement(v,s,index)};
  let r=T.choice(e,0,s,options);assert.equal(r.ready,false);assert.ok(r.missing.includes('lista completa de traços'));
  assert.deepEqual(r.probabilities,[null,null]);assert.equal(JSON.stringify(s),before);
  const analysis=E.analyze(e,E.newRun({state:s},index),index);
  assert.ok(analysis.rows[0].outcomes[0].probabilityDetails.missing.includes('lista completa de traços'));
  s.traitsComplete=true;r=T.choice(e,0,s,options);assert.equal(r.ready,true);assert.deepEqual(r.probabilities,[.35,.65]);assert.deepEqual(s.abilities,{});
  s.pending=['Conferir os efeitos do último encontro.'];r=T.choice(e,0,s,options);
  assert.equal(r.ready,false);assert.ok(r.missing.includes('efeitos pendentes ou desconhecidos da run'));assert.deepEqual(r.probabilities,[null,null]);
  s.pending=[];s.stats[12]=30;s.stats[3]=null;
  r=T.choice(e,0,s,options);assert.equal(r.ready,false);assert.ok(r.missing.includes('Alinhamento'));
  s.stats[3]=0;assert.equal(T.choice(e,0,s,options).ready,true);
});
