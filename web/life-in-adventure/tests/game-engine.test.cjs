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
  assert.deepEqual(E.redo(undone,index).state,saved.state);
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

test('the students encounter includes later choices, convergence and a self return',()=>{
  const g=E.sequenceGraph(event('EventNormal:552'),index);
  assert.deepEqual(g.nodes.map(n=>n.key),['EventNormal:552','EventNormal:553','EventNormal:554','EventNormal:555','EventNormal:556']);
  assert.equal(g.truncated,false);
  assert.equal(g.edges.filter(edge=>edge.from==='EventNormal:553'&&edge.target==='EventNormal:554').length,2);
  assert.equal(g.edges.filter(edge=>edge.from==='EventNormal:552'&&edge.target==='EventNormal:552').length,2);
  assert.ok(g.nodes.find(n=>n.key==='EventNormal:555').event.data.choice.some(c=>c.text==='Distrái-os'));
  const limited=E.sequenceGraph(event('EventNormal:552'),index,{maxDepth:1,maxEvents:2});
  assert.equal(limited.truncated,true);assert.equal(limited.nodes.length,2);
  assert.ok(limited.edges.some(edge=>edge.target==='EventNormal:554'));
});
test('observed results advance through the same encounter and restore the step on undo/redo/import',()=>{
  let r=run();r.selectedEvent='EventNormal:552';
  for(const key of ['EventNormal:552','EventNormal:553','EventNormal:554']) {
    const e=event(key);
    r=E.commit(r,E.previewResult(e,0,0,r.state,index).state,index,{type:'result',eventKey:key,choice:0,result:0});
  }
  assert.equal(r.selectedEvent,'EventNormal:555');
  const context=E.continuationContext(r,index);
  assert.deepEqual(context.path,['EventNormal:552','EventNormal:553','EventNormal:554','EventNormal:555']);
  assert.equal(context.text,event('EventNormal:554').data.choice[0].result[0].text);
  assert.equal(E.undo(r).selectedEvent,'EventNormal:554');
  assert.equal(E.redo(E.undo(r),index).selectedEvent,'EventNormal:555');
  assert.equal(E.validateRun(JSON.parse(JSON.stringify(r)),index).selectedEvent,'EventNormal:555');
  r=E.commit(r,r.state,index,{type:'observation',eventKey:'EventNormal:555',note:'Different screen'});
  assert.equal(r.selectedEvent,null);
});
test('returning to the same node rechecks updated flags without automatically choosing a branch',()=>{
  let r=run();r.selectedEvent='EventNormal:552';r.state.states.chainEventList[628]=0;
  assert.equal(E.analyze(event(r.selectedEvent),r,index).rows[2].available,true);
  r=E.commit(r,E.previewResult(event(r.selectedEvent),2,0,r.state,index).state,index,{type:'result',eventKey:r.selectedEvent,choice:2,result:0});
  assert.equal(r.selectedEvent,'EventNormal:552');
  assert.equal(E.analyze(event(r.selectedEvent),r,index).rows[2].available,false);
  assert.equal(r.history.length,1);
  assert.equal(E.continuationKey(event('EventTreasure:346'),1,0,index),null);
  r.goals=[goal('gold','',200)];
  assert.equal(E.analyze(event('EventBattle:11'),r,index).recommendation,null);
});
test('every direct continuation keeps the table and special destinations do not become nodes',()=>{
  for(const e of source.events) for(const [ci,c] of (e.data.choice||[]).entries()) for(const [ri,r] of (c.result||[]).entries()) {
    const key=E.continuationKey(e,ci,ri,index);
    assert.equal(key,r.nextEvent>=0?`${e.group}:${r.nextEvent}`:null);
  }
});

// Small encounter graphs with explicit states/outcomes: these check decisions, not traversal order.
function scenario(definitions) {
  const nodes=new Map(),keys=Object.keys(definitions);
  for(const [i,name] of keys.entries()) {
    const choices=definitions[name].choices;
    const ev=fixture(choices.map(c=>(c.outcomes||[c]).map(o=>o.effects||[])));
    ev.id=900000+i;ev.data.text=definitions[name].observedOnly?'':'Um encontro de teste';
    choices.forEach((c,ci)=>{
      ev.data.choice[ci].text=definitions[name].observedOnly?'':c.label||'Opção '+ci;
      ev.rules.choices[ci].required=c.required||null;
      (c.outcomes||[c]).forEach((o,ri)=>{
        const raw=ev.data.choice[ci].result[ri],rv=ev.rules.choices[ci].results[ri];
        raw.reward=o.effects?.length?'fixture':'';raw.text=o.text||'Resultado observado';
        raw.nextEvent=o.next===undefined?-2:typeof o.next==='number'?o.next:900000+keys.indexOf(o.next);
        rv.required=o.required||null;rv.probability=o.probability===undefined?(c.outcomes?.length>1?null:'1'):o.probability;
      });
    });
    nodes.set(name,ev);
  }
  const testIndex={...index,events:new Map([...index.events,...[...nodes.values()].map(e=>[`${e.group}:${e.id}`,e])])};
  return {nodes,index:testIndex,root:nodes.get(keys[0])};
}
const reqStat=(id,n)=>view(token({domain:'userData_effective',index:id,quantity:n,comparison:'>='}));
const reqItem=(id,n)=>view(token({domain:'inventory',index:id,quantity:n,comparison:'>='}));
const remove=(id,n)=>token({operation:'remove_item',index:id,quantity:n});

test('a future mandatory expense outweighs an attractive immediate reward',()=>{
  const s=scenario({start:{choices:[{label:'Receber 20 agora',effects:[gold(20)],next:'bill'},{label:'Receber 10 e sair',effects:[gold(10)]}]},bill:{choices:[{label:'Pagar 100 para encerrar',effects:[gold(-100)]}]}});
  const r=run();r.goals=[goal('gold','',200)];const before=E.clone(r);
  const a=E.analyze(s.root,r,s.index);
  assert.equal(a.recommendation,1);assert.equal(a.rows[0].outcomes[0].preview.state.stats[4],120);
  assert.equal(a.rows[0].route.length,2);assert.ok(a.rows[0].reasons.some(x=>x.includes('Ouro: -80')));
  assert.deepEqual(r,before);assert.equal(a.summary.comparisonComplete,true);
});
test('an upfront expense can be the best route to a later item',()=>{
  const s=scenario({start:{choices:[{effects:[gold(-30)],next:'gift'},{effects:[gold(20)]}]},gift:{choices:[{effects:[add(0,1)]}]}});
  const r=run();r.goals=[goal('item','item:0')];
  assert.equal(E.analyze(s.root,r,s.index).recommendation,0);
});
test('future player decisions maximize the goal, while unavailable choices are excluded',()=>{
  const s=scenario({start:{choices:[{next:'fork'},{effects:[gold(10)]}]},fork:{choices:[{effects:[gold(-100)]},{label:'Pegar a recompensa',effects:[gold(100)]}]}});
  const r=run();r.goals=[goal('gold','',300)];
  let a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,0);assert.equal(a.rows[0].route[1].choice,1);
  s.nodes.get('fork').rules.choices[1].required=reqStat(4,200);
  a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,1);assert.equal(a.rows[0].route[1].choice,0);
});
test('spending an item before a later requirement prevents planning that inaccessible route',()=>{
  const s=scenario({start:{choices:[{effects:[remove(0,1)],next:'door'},{effects:[gold(10)]}]},door:{choices:[{required:reqItem(0,1),effects:[gold(100)]}]}});
  const r=run();r.state.items[0]=1;r.goals=[goal('gold','',300)];
  const a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,1);assert.equal(a.rows[0].feasible,false);
});
test('a goal reached temporarily is not mistaken for the final inventory',()=>{
  const s=scenario({start:{choices:[{effects:[add(0,1)],next:'loss'},{effects:[add(0,1)]}]},loss:{choices:[{effects:[remove(0,1)]}]}});
  const r=run();r.goals=[goal('item','item:0')];
  assert.equal(E.analyze(s.root,r,s.index).recommendation,1);
  r.state.inventoryComplete=false;
  assert.equal(E.analyze(s.root,r,s.index).recommendation,1); // Unknown initial ownership cannot hide the later removal.
});
test('the future policy adapts to the item obtained from each random result',()=>{
  const s=scenario({start:{choices:[{outcomes:[{effects:[add(0,1)],next:'keys'},{effects:[add(1,1)],next:'keys'}]},{effects:[gold(10)]}]},keys:{choices:[{label:'Usar chave 0',required:reqItem(0,1),effects:[add(2,1)]},{label:'Usar chave 1',required:reqItem(1,1),effects:[add(2,1)]}]}});
  const r=run();r.goals=[goal('item','item:2')];const a=E.analyze(s.root,r,s.index);
  assert.equal(a.recommendation,0);assert.equal(a.rows[0].outcomes[0].plan.route[1].choice,0);assert.equal(a.rows[0].outcomes[1].plan.route[1].choice,1);
  assert.equal(r.state.items[2],undefined);
});
test('nested expected values use valid probabilities at every layer, with worst-case fallback',()=>{
  const s=scenario({start:{choices:[{outcomes:[{next:'lottery',probability:'1/2'},{probability:'1/2'}]},{effects:[gold(10)]}]},lottery:{choices:[{outcomes:[{effects:[gold(100)],probability:'1/4'},{probability:'3/4'}]}]}});
  const r=run({profile:'expected'});r.goals=[goal('gold','',1000)];
  let a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,0);assert.ok(a.rows[0].expected>a.rows[1].expected);
  r.profile='cautious';assert.equal(E.analyze(s.root,r,s.index).recommendation,1);
  r.profile='expected';s.nodes.get('lottery').rules.choices[0].results[0].probability=null;
  a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,1);assert.ok(a.rows[0].notes.some(x=>x.includes('pior resultado conhecido')));
  s.nodes.get('lottery').rules.choices[0].results.forEach(rv=>rv.probability='1');
  assert.equal(E.analyze(s.root,r,s.index).recommendation,1); // Invalid totals must not inflate the future average.
});
test('a known zero-probability outcome does not create an imaginary risk or stop the search',()=>{
  const s=scenario({start:{choices:[{outcomes:[{effects:[gold(20)],probability:'1'},{effects:[{known:false,raw:'unknown'}],probability:'0'}]},{effects:[gold(10)]}]}});
  const r=run({profile:'expected'});r.goals=[goal('gold','',300)];
  const a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,0);assert.equal(a.summary.comparisonComplete,true);
});
test('an observed combat node uses all possible outcomes rather than choosing victory',()=>{
  const s=scenario({start:{choices:[{next:'battle'},{effects:[gold(5)]}]},battle:{observedOnly:true,choices:[{effects:[gold(100)]},{effects:[gold(-20)]}]}});
  s.nodes.get('battle').data.text='O combate terminou.';
  const r=run({profile:'expected'});r.goals=[goal('gold','',300)];const a=E.analyze(s.root,r,s.index);
  assert.equal(a.recommendation,1);assert.ok(a.rows[0].reasons.some(x=>x.includes('Ouro: -20')));
  assert.ok(a.rows[0].notes.some(x=>x.includes('Desfechos de combate')));
});
test('state-changing returns unlock future choices without harvesting artificial infinite rewards',()=>{
  const set=token({operation:'set_chain_state',index:9,quantity:1});
  const s=scenario({start:{choices:[{effects:[set],next:'start'},{required:view(token({domain:'chainEventList',index:9,quantity:1,comparison:'=='})),effects:[gold(100)]},{effects:[gold(10)]}]}});
  const r=run();r.state.states.chainEventList[9]=0;r.goals=[goal('gold','',300)];
  const a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,0);assert.equal(a.rows[0].route[1].choice,1);assert.equal(a.summary.limited,false);
  assert.equal(r.state.states.chainEventList[9],0);
});
test('unchanged loops are pruned, while profitable changing loops are explicitly unfinished',()=>{
  const s=scenario({start:{choices:[{next:'start'},{effects:[gold(1)]}]}});
  const r=run();r.goals=[goal('gold','',300)];
  let a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,1);
  s.root.rules.choices[0].results[0].reward=view(gold(1));s.root.data.choice[0].result[0].reward='fixture';
  a=E.analyze(s.root,r,s.index,{}, {maxDepth:8,maxTransitions:100});
  assert.equal(a.recommendation,null);assert.equal(a.summary.comparisonComplete,false);assert.equal(a.summary.limited,true);
});
test('a chain longer than three transitions is assessed through its final reward',()=>{
  const definitions={start:{choices:[{next:'n1'},{effects:[gold(20)]}]}};
  for(let i=1;i<=12;i++)definitions['n'+i]={choices:[i===12?{effects:[gold(100)]}:{next:'n'+(i+1)}]};
  const s=scenario(definitions),r=run();r.goals=[goal('gold','',300)];
  let a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,0);assert.equal(a.rows[0].route.length,13);
  a=E.analyze(s.root,r,s.index,{}, {maxDepth:4,maxTransitions:100});assert.equal(a.recommendation,null);assert.equal(a.summary.limited,true);
  a=E.analyze(s.root,r,s.index,{}, {maxTransitions:1});assert.equal(a.recommendation,null);assert.equal(a.summary.transitions,1);
});
test('unknown future requirements are not silently assumed available to reach the biggest reward',()=>{
  const s=scenario({start:{choices:[{next:'uncertain'},{effects:[gold(10)]}]},uncertain:{choices:[{required:reqItem(0,1),effects:[gold(100)]},{effects:[gold(1)]}]}});
  const r=run();r.state.inventoryComplete=false;r.goals=[goal('gold','',300)];
  const a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,null);assert.equal(a.rows[0].route[1].choice,1);assert.equal(a.rows[0].complete,false);
  assert.ok(a.rows[0].notes.some(x=>x.includes('requisitos desconhecidos')));
});
test('unmodeled effects and special destinations cannot be presented as evaluated endings',()=>{
  const s=scenario({start:{choices:[{effects:[gold(100),{known:false,raw:'6_1_0'}],next:'gift'},{effects:[gold(10)]}]},gift:{choices:[{effects:[gold(100)]}]}});
  const r=run();r.goals=[goal('gold','',300)];
  let a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,null);assert.equal(a.rows[0].complete,false);assert.equal(a.rows[0].route.length,1);
  s.root.rules.choices[0].results[0].reward=view(gold(100));s.root.data.choice[0].result[0].nextEvent=-3;
  a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,null);assert.ok(a.rows[0].notes.some(x=>x.includes('Destino especial')));
});
test('memoization does not reuse an ancestor-pruned cycle as the value for another root choice',()=>{
  const s=scenario({start:{choices:[{next:'a'},{next:'b'}]},a:{choices:[{next:'b'},{effects:[gold(20)]}]},b:{choices:[{next:'a'},{effects:[gold(10)]}]}});
  const r=run();r.goals=[goal('gold','',300)];const a=E.analyze(s.root,r,s.index);
  assert.equal(a.recommendation,null);assert.equal(a.rows[0].score,a.rows[1].score);
  assert.deepEqual(a.rows[1].route.map(x=>x.eventKey),['EventNormal:900000','EventNormal:900002','EventNormal:900001']);
});
test('a difficult branch cannot consume the budget for displaying a direct known exit',()=>{
  const s=scenario({start:{choices:[{effects:[gold(1)],next:'start'},{effects:[gold(10)]}]}});
  const r=run();r.goals=[goal('gold','',300)];const a=E.analyze(s.root,r,s.index,{}, {maxTransitions:3});
  assert.equal(a.recommendation,null);assert.equal(a.rows[1].complete,true);assert.ok(a.rows[1].reasons.some(x=>x.includes('Ouro: +10')));
});
test('unknown current gold cannot produce a false gold recommendation based on unrelated health',()=>{
  const s=scenario({start:{choices:[{effects:[gold(100)]},{effects:[token({operation:'change_user_data',index:0,quantity:-1})]}]}});
  const r=run();r.state.stats[4]=null;r.goals=[goal('gold','',300)];const a=E.analyze(s.root,r,s.index);
  assert.equal(a.recommendation,null);assert.match(a.message,/Informe o ouro atual/);
});
