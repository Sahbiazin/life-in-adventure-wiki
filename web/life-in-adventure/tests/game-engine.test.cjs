'use strict';
const {test}=require('node:test');
const assert=require('node:assert/strict');
const fs=require('node:fs');
const path=require('node:path');
const vm=require('node:vm');
const E=require('../dist/game-engine.js');
const context={window:{}};vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),context);
const source=JSON.parse(JSON.stringify(context.window.ATLAS_DATA));
const index=E.createIndex(source);
const event=key=>index.events.get(key);
function run(config={}) {
  const state=E.blankState();Object.assign(state.stats,{0:10,1:5,8:10,9:5,4:100});state.inventoryComplete=true;state.traitsComplete=true;
  return E.newRun({name:'Teste',state,...config},index);
}
function goal(type,target='',amount=1,label='') {return {id:E.id(),type,target,amount,label};}
function token(model,text='Modelo de teste'){return {known:true,model,text,raw:'fixture'};}
function view(...tokens){return {operator:'AND',tokens};}
function fixture(choices) {
  return {group:'EventNormal',id:123456,data:{choice:choices.map(c=>({required:'',text:'Escolher',result:c.map(()=>({text:'Resultado',reward:'fixture',type:2,chance:'1',nextEvent:-2}))}))},
    rules:{required:null,choices:choices.map(c=>({required:null,results:c.map(t=>({required:null,reward:view(...t),probability:'1'}))}))}};
}
const add=(id,n)=>token({operation:'add_item',index:id,quantity:n});
const gold=n=>token({operation:'change_user_data',index:4,quantity:n});

test('bundle provides typed models using the same semantics as readable rules',()=>{
  assert.equal(source.runModelVersion,1);
  const r=event('EventTreasure:346').rules.choices[1].results[0];
  assert.equal(r.reward.tokens[1].model.operation,'change_user_data');
  assert.equal(r.reward.tokens[1].model.quantity,-5);
  assert.equal(r.reward.tokens[2].model.operation,'set_chain_state');
});
test('unknown values are different from zero and absent traits stay unknown',()=>{
  const s=E.blankState();
  const req=view(token({domain:'inventory',index:42,quantity:1,comparison:'>='}));
  assert.equal(E.requirement(req,s),null);s.inventoryComplete=true;assert.equal(E.requirement(req,s),false);
  const trait=view(token({domain:'traitList',index:9,quantity:null,comparison:'not_contains'}));
  assert.equal(E.requirement(trait,s),null);s.traitsComplete=true;assert.equal(E.requirement(trait,s),true);
});
test('AND/OR propagate unknown conditions without inventing availability',()=>{
  const s=run().state,a=token({domain:'userData_effective',index:4,comparison:'>=',quantity:5}),unknown={known:false,raw:'35_0_0'};
  assert.equal(E.requirement(view(a,unknown),s),null);
  assert.equal(E.requirement({operator:'OR',tokens:[a,unknown]},s),true);
  assert.equal(E.requirement({operator:'AND',tokens:[token({domain:'userData_effective',index:4,comparison:'<',quantity:5}),unknown]},s),false);
  assert.equal(E.requirement({operator:'OR',tokens:[]},s),null);
});
test('effective ability values use their own map, not item coefficients or variant numbers',()=>{
  const s=run().state;const req=view(token({domain:'ability_effective',index:5,quantity:2,comparison:'>='}));
  assert.equal(E.requirement(req,s),null);s.abilities[5]=1;assert.equal(E.requirement(req,s),false);s.abilities[5]=2;assert.equal(E.requirement(req,s),true);
});
test('story requirements keep activation context and unknown flags',()=>{
  const s=run().state;
  assert.equal(E.requirement(view(token({domain:'chainEventList',index:612,comparison:'==',quantity:0})),s),null);
  s.states.chainEventList[612]=0;
  assert.equal(E.requirement(view(token({domain:'chainEventList',index:612,comparison:'==',quantity:0})),s),true);
  s.states.subEventList[0]=2;
  assert.equal(E.requirement(view(token({domain:'subEventList',index:0,comparison:'==',quantity:2,context_requirements:['sub_event_enabled']})),s),null);
});
test('actual tavern recommendations favor the cheaper choice for an open gold objective',()=>{
  const r=run();r.goals=[goal('gold','',200)];
  const a=E.analyze(event('EventTreasure:346'),r,index);
  assert.equal(a.recommendation,1);assert.equal(a.rows[0].available,true);
  assert.equal(a.rows[1].outcomes[0].preview.state.stats[4],95);
  assert.equal(r.state.stats[4],100); // Analysis cannot mutate the run.
});
test('changing the target changes the preferred option',()=>{
  const e=fixture([[[add(0,1)]],[[add(1,1)]]]);
  const r=run();r.goals=[goal('item','item:0')];assert.equal(E.analyze(e,r,index).recommendation,0);
  r.goals=[goal('item','item:1')];assert.equal(E.analyze(e,r,index).recommendation,1);
});
test('ties and unsupported main objectives do not get arbitrary best-choice labels',()=>{
  const e=fixture([[[gold(0)]],[[gold(0)]]]);const r=run();r.goals=[goal('gold','',200)];
  assert.equal(E.analyze(e,r,index).recommendation,null);
  r.goals=[goal('score')];assert.equal(E.analyze(e,r,index).recommendation,null);
  r.goals=[goal('score'),goal('item','item:0')];assert.equal(E.analyze(fixture([[[add(0,1)]],[[add(1,1)]]]),r,index).recommendation,null);
});
test('ineligible choices are excluded until availability is explicitly confirmed by the player',()=>{
  const r=run();r.goals=[goal('item','item:0')];
  const e=fixture([[[add(0,1)]],[[add(1,1)]]]);e.rules.choices[0].required=view(token({domain:'userData_effective',index:4,quantity:500,comparison:'>='}));
  assert.equal(E.analyze(e,r,index).rows[0].available,false);
  assert.notEqual(E.analyze(e,r,index).recommendation,0);
  assert.equal(E.analyze(e,r,index,{0:true}).recommendation,0);
});
test('cautious and expected profiles use bounds or known weights; they never draw an outcome',()=>{
  const e=fixture([[[gold(100)],[gold(-10)]],[[gold(10)]]]);
  e.rules.choices[0].results.forEach(rv=>rv.probability='1/2');
  const r=run();r.goals=[goal('gold','',1000)];
  assert.equal(E.analyze(e,r,index).recommendation,1);
  r.profile='expected';assert.equal(E.analyze(e,r,index).recommendation,0);
  e.rules.choices[0].results.forEach(rv=>rv.probability=null);
  assert.equal(E.analyze(e,r,index).recommendation,1);
});
test('goal priority outranks a larger secondary reward',()=>{
  const e=fixture([[[add(0,1)]],[[add(1,100)]]]);const r=run();r.goals=[goal('item','item:0'),goal('item','item:1')];
  assert.equal(E.analyze(e,r,index).recommendation,0);
});
test('unknown commands stay unresolved and taint inferred story state even if visible issues are cleared',()=>{
  const r=run();const e=fixture([[[token({operation:'set_chain_state',index:1,quantity:2}),{known:false,raw:'6_0_42'}]]]);
  const p=E.previewResult(e,0,0,r.state,index);
  assert.equal(p.issues.length,1);assert.equal(p.state.flagsUncertain,true);
  assert.equal(E.requirement(view(token({domain:'chainEventList',index:1,comparison:'==',quantity:2})),p.state),null);
  assert.deepEqual(r.state.pending,[]);
});
test('missing initial ownership does not turn a grant into a fabricated inventory total',()=>{
  const r=run();r.state.inventoryComplete=false;
  const p=E.previewResult(fixture([[[add(0,1)]]]),0,0,r.state,index);
  assert.equal(p.state.items[0],null);assert.ok(p.issues.some(i=>i.includes('inventário inicial incompleto')));
  assert.equal(E.goalProgress(goal('item','item:0'),p.state).complete,false);
});
test('a run epilogue cannot automatically confirm permanent catalog or story success',()=>{
  const r=run(),e=event('EventMain:27');
  let match;
  for(let ci=0;ci<e.data.choice.length;ci++)for(let ri=0;ri<e.data.choice[ci].result.length;ri++){
    const rv=e.rules.choices[ci].results[ri];if(rv.reward?.tokens.some(t=>t.ref==='ending:main:1004'))match=E.previewResult(e,ci,ri,r.state,index);
  }
  assert.ok(match);assert.ok(match.state.endings.main.includes(1004));
  assert.equal(E.goalProgress(goal('ending','ending:main:1004'),match.state).complete,true);
  assert.equal(E.goalProgress(goal('story','','1','Concluir história'),match.state).complete,false);
  assert.equal(match.state.catalog.ending.length,0);
});
test('commit, undo, redo, and alternative observed results preserve exact before/after state',()=>{
  const r=run(),e=event('EventTreasure:346'),p=E.previewResult(e,1,0,r.state,index);
  const saved=E.commit(r,p.state,index,{type:'result',eventKey:'EventTreasure:346',choice:1,result:0,note:'Conferido no celular'});
  assert.equal(saved.state.stats[4],95);assert.equal(saved.cursor,1);assert.equal(r.cursor,0);
  const undone=E.undo(saved);assert.deepEqual(undone.state,r.state);assert.equal(undone.selectedEvent,'EventTreasure:346');
  assert.deepEqual(E.redo(undone).state,saved.state);
  const correction=E.clone(undone.state);correction.stats[4]=98;
  const alternative=E.commit(undone,correction,index,{type:'correction'});
  assert.equal(alternative.history.length,1);assert.equal(alternative.state.stats[4],98);
});
test('manual observations do not manufacture reward effects',()=>{
  const r=run(),s=E.clone(r.state);s.stats[0]=7;
  const saved=E.commit(r,s,index,{type:'observation',eventKey:'EventBattle:10',note:'Perdi 3 de saúde no combate'});
  assert.equal(saved.state.stats[0],7);assert.equal(saved.state.stats[4],100);assert.equal(saved.history[0].result,null);
});
test('new runs preserve old runs by construction and have independent IDs and state',()=>{
  const a=run(),b=run();assert.notEqual(a.id,b.id);b.state.stats[4]=0;assert.equal(a.state.stats[4],100);
});
test('export/import validation preserves the journal and rejects incompatible or tampered snapshots',()=>{
  const r=run(),e=event('EventTreasure:346');
  const saved=E.commit(r,E.previewResult(e,1,0,r.state,index).state,index,{type:'result',eventKey:'EventTreasure:346',choice:1,result:0});
  const copy=E.validateRun(JSON.parse(JSON.stringify(saved)),index);
  assert.deepEqual(copy.state,saved.state);assert.deepEqual(copy.history,saved.history);
  const bad=E.clone(saved);bad.gameVersion='other';assert.throws(()=>E.validateRun(bad,index),/incompatível/);
  const tampered=E.clone(saved);tampered.state.stats[4]=999;assert.throws(()=>E.validateRun(tampered,index),/histórico/);
  const badEntry=E.clone(saved);badEntry.history[0].result=999;assert.throws(()=>E.validateRun(badEntry,index),/histórico/);
});
test('validation blocks invalid quantities, unknown records, nonfinite numbers and prototype keys',()=>{
  const s=run().state;s.stats[4]=NaN;assert.throws(()=>E.cleanState(s,index),/inválido/);
  const s2=run().state;s2.items[0]=-1;assert.throws(()=>E.cleanState(s2,index),/inválida/);
  const s3=run().state;s3.items=JSON.parse('{"__proto__":1}');assert.throws(()=>E.cleanState(s3,index),/desconhecido/);
  assert.throws(()=>E.cleanGoals([goal('item','item:999999')],index),/válido/);
  assert.throws(()=>E.commit(run(),run().state,index,{type:'result',eventKey:'EventTreasure:346',choice:999,result:0}),/inválido/);
});
test('ended runs require reopening before observations; reversible corrections remain available',()=>{
  const r=run();r.status='ended';assert.throws(()=>E.commit(r,r.state,index),/Reabra/);
});

test('every extracted result can produce a reviewable state without inventing missing catalog entries',()=>{
  const s=run().state;let count=0;
  for(const e of index.events.values())for(let ci=0;ci<e.data.choice.length;ci++)for(let ri=0;ri<e.data.choice[ci].result.length;ri++){
    assert.doesNotThrow(()=>E.cleanState(E.previewResult(e,ci,ri,s,index).state,index),`${e.group}:${e.id} ${ci}.${ri}`);count++;
  }
  assert.equal(count,12196);
});
test('a chosen story epilogue guides choices without declaring story completion',()=>{
  const e=fixture([[[token({operation:'record_main_ending',index:1,quantity:4,ending_id:1004})]],[[gold(0)]]]);
  const t=e.rules.choices[0].results[0].reward.tokens[0];t.ref='ending:main:1004';t.relation='Registra epílogo';
  const r=run(),g=goal('story','',1,'Concluir minha história');g.endingTarget='ending:main:1004';r.goals=[g];
  assert.equal(E.analyze(e,r,index).recommendation,0);
  assert.equal(E.goalProgress(g,E.previewResult(e,0,0,r.state,index).state).complete,false);
});
test('journal captures decision goals, risk profile and availability separately from later configuration changes',()=>{
  const r=run();r.goals=[goal('gold','',200)];r.availability={1:true};
  const saved=E.commit(r,E.previewResult(event('EventTreasure:346'),1,0,r.state,index).state,index,{type:'result',eventKey:'EventTreasure:346',choice:1,result:0});
  saved.goals=[];saved.profile='expected';
  assert.equal(saved.history[0].context.goals[0].type,'gold');assert.equal(saved.history[0].context.profile,'cautious');
  assert.deepEqual(saved.history[0].context.availability,{1:true});
  assert.equal(E.validateRun(saved,index).history[0].context.goals[0].amount,200);
});
