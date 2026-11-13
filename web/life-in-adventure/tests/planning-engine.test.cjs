'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm');
const E=require('../dist/game-engine.js');
const ctx={window:{}};vm.runInNewContext(fs.readFileSync(require('node:path').join(__dirname,'../dist/events-data.js'),'utf8'),ctx);
const index=E.createIndex(JSON.parse(JSON.stringify(ctx.window.ATLAS_DATA)));
const change=(index,quantity)=>({operation:'change_user_data',index,quantity});
const item=(index,quantity=1)=>({operation:'add_item',index,quantity});
function run(options={}){
  const s=E.blankState();Object.assign(s.stats,{0:10,1:5,2:10,3:0,4:100,5:10,6:10,7:10,8:10,9:5,12:10,13:10,14:10});
  s.inventoryComplete=s.traitsComplete=s.combat.equippedKnown=true;s.combat.level=1;s.scoring.countersComplete=true;
  return E.newRun({state:s,...options},index);
}
function graph(nodes){
  const names=Object.keys(nodes),map=new Map();
  names.forEach((name,i)=>{
    const choices=nodes[name];
    const ev={group:'EventNormal',id:980000+i,data:{text:'Fixture',choice:[]},rules:{required:null,choices:[]}};
    for(const choice of choices){
      const outcomes=choice.outcomes||[choice];
      ev.data.choice.push({text:choice.label??'Escolher',result:outcomes.map(o=>({text:'Resultado',reward:o.effects?.length?'fixture':'',type:o.type??2,chance:String(o.weight??1),nextEvent:o.next?980000+names.indexOf(o.next):-2}))});
      ev.rules.choices.push({required:choice.required||null,results:outcomes.map(o=>({required:null,probability:null,reward:o.effects?.length?{operator:'AND',tokens:o.effects.map(model=>({known:true,model,raw:'fixture',text:'Fixture'}))}:null}))});
    }
    map.set(name,ev);
  });
  return {root:map.get(names[0]),nodes:map,index:{...index,events:new Map([...index.events,...[...map.values()].map(e=>[`${e.group}:${e.id}`,e])])}};
}
const analyze=(g,r)=>E.analyze(g.root,r,g.index);

test('without goals the native score delta decides; small gold gains do not invent linear points',()=>{
  const r=run(),g=graph({start:[{effects:[change(4,100)]},{effects:[change(2,2)]}]});
  const before=JSON.stringify(r),a=analyze(g,r);
  assert.equal(a.strategy,'score');assert.equal(a.recommendation,1);
  assert.equal(a.rows[0].finalScore.deltaExpected,0);assert.equal(a.rows[1].finalScore.deltaExpected,1200);
  assert.equal(JSON.stringify(r),before);
});
test('crossing a native wealth threshold outranks a smaller experience gain',()=>{
  const r=run();r.state.stats[4]=2990;
  const a=analyze(graph({start:[{effects:[change(4,20)]},{effects:[change(2,1)]}]}),r);
  assert.equal(a.recommendation,0);assert.equal(a.rows[0].finalScore.deltaExpected,6000);
});
test('score planning includes an upfront cost and the later reward',()=>{
  const g=graph({start:[{effects:[change(4,-50)],next:'later'},{effects:[change(2,2)]}],later:[{effects:[change(2,10)]}]});
  const a=analyze(g,run());assert.equal(a.recommendation,0);assert.equal(a.rows[0].route.length,2);assert.ok(a.rows[0].finalScore.deltaExpected>5000);
});
test('an unrelated item objective falls back to points while a reachable goal has priority',()=>{
  const r=run();r.goals=E.cleanGoals([{id:'target',type:'item',target:'item:0',amount:1}],index);
  let a=analyze(graph({start:[{effects:[change(2,1)]},{effects:[change(2,2)]}]}),r);
  assert.equal(a.strategy,'score');assert.equal(a.recommendation,1);
  a=analyze(graph({start:[{effects:[item(0)]},{effects:[change(2,90)]}]}),r);
  assert.equal(a.strategy,'goals');assert.equal(a.recommendation,0);
});
test('two native 80% checks give 64% full-path success and the configurable threshold applies to it',()=>{
  const r=run();r.state.stats[7]=9;
  const g=graph({start:[{outcomes:[{type:0,weight:8,next:'second'},{type:1,weight:2}]},{effects:[change(2,1)]}],second:[{outcomes:[{type:0,weight:8,effects:[change(2,10)]},{type:1,weight:2}]}]});
  let a=analyze(g,r);assert.ok(Math.abs(a.rows[0].risk.successProbability-.64)<1e-9);assert.equal(a.recommendation,0);
  r.policy.minSuccessProbability=.65;a=analyze(g,r);assert.equal(a.rows[0].risk.eligible,false);assert.equal(a.recommendation,1);
});
test('a choice above 60% may still lose expected points after including its failure',()=>{
  const r=run();r.state.stats[7]=9;r.state.stats[4]=3000;
  const g=graph({start:[{outcomes:[{type:0,weight:7,effects:[change(2,2)]},{type:1,weight:3,effects:[change(4,-200)]}]},{}]});
  const a=analyze(g,r);assert.equal(a.rows[0].risk.successProbability,.7);assert.equal(a.rows[0].risk.eligible,true);
  assert.ok(a.rows[0].finalScore.deltaExpected<0);assert.equal(a.recommendation,1);
});
test('unknown test modifiers and tied score changes do not receive invented recommendations',()=>{
  const r=run();r.state.stats[7]=null;
  const a=analyze(graph({start:[{outcomes:[{type:0,weight:7,effects:[change(2,2)]},{type:1,weight:3}]},{}]}),r);
  assert.equal(a.rows[0].outcomes[0].probability,null);assert.equal(a.rows[0].risk.successProbability,null);
  const tied=analyze(graph({start:[{effects:[change(4,1)]},{effects:[change(4,2)]}]}),run());assert.equal(tied.recommendation,null);
});
test('a modeled combat weighs victory and defeat and preserves the original run',()=>{
  const r=run({profile:'expected'});r.state.combat.overrides={attack:10000,defense:10000};
  r.goals=E.cleanGoals([{id:'target',type:'item',target:'item:0',amount:1}],index);
  const command={operation:'start_combat',index:0,monster_id:161,initial_state:null};
  const g=graph({start:[{effects:[command],next:'outcome'},{}],outcome:[{label:'',effects:[item(0)]},{label:'',effects:[change(0,-1)]}]});
  const before=JSON.stringify(r),a=analyze(g,r);
  assert.equal(a.rows[0].complete,true);assert.equal(a.rows[0].risk.successProbability,1);
  assert.equal(a.recommendation,0);assert.equal(a.rows[0].modelPartial,true);assert.equal(JSON.stringify(r),before);
  assert.deepEqual(r.state.items,{});assert.deepEqual(r.state.catalog.monster,[]);
  r.goals=E.cleanGoals([{id:'catalog',type:'catalog_monster',target:'monster:161',amount:1}],index);
  const catalog=analyze(g,r);assert.equal(catalog.strategy,'goals');assert.equal(catalog.recommendation,0);
  assert.deepEqual(r.state.catalog.monster,[]);
});
test('policy and scoring remain in compatible reversible backups',()=>{
  let r=run();r.policy=E.cleanPolicy({minSuccessProbability:.72});
  const s=E.clone(r.state);s.stats[4]+=20;r=E.commit(r,s,index,{type:'correction'});
  const restored=E.validateRun(JSON.parse(JSON.stringify(r)),index);
  assert.equal(restored.policy.minSuccessProbability,.72);assert.equal(restored.history[0].context.policy.minSuccessProbability,.72);
  assert.deepEqual(E.redo(E.undo(restored),index).state,restored.state);
  assert.throws(()=>E.cleanPolicy({minSuccessProbability:NaN}));
});

test('an unapplied change to an unknown score input cannot masquerade as zero point gain',()=>{
  const r=run();r.state.stats[2]=null;r.state.stats[4]=2990;
  const a=analyze(graph({start:[{effects:[change(2,100)]},{effects:[change(4,20)]}]}),r);
  assert.equal(a.rows[0].finalScore.complete,false);assert.equal(a.recommendation,null);
  assert.ok(a.rows[0].finalScore.notes.some(n=>n.includes('EXP')));
});
