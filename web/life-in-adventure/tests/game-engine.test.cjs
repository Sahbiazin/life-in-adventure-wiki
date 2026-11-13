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
  e.rules.choices[0].results.forEach(rv=>rv.probability=null);e.data.choice[0].result.forEach(r=>r.chance='unknown');
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
        raw.chance=rv.probability===null?'unknown':String(10000*Number(rv.probability.split('/')[0])/Number(rv.probability.split('/')[1]||1));
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
  r.profile='expected';s.nodes.get('lottery').rules.choices[0].results[0].probability=null;s.nodes.get('lottery').data.choice[0].result[0].chance='unknown';
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

test('alignment uses the native Portuguese names and exact category boundaries',()=>{
  for(const [value,label] of [[-25,'Maligno'],[-24,'Impuro'],[-10,'Impuro'],[-9,'Neutro'],[0,'Neutro'],[9,'Neutro'],[10,'Justo'],[24,'Justo'],[25,'Bondoso'],[100,'Bondoso']]){
    const s=run().state;s.stats[3]=value;assert.equal(E.alignmentInfo(s).label,label);
    assert.equal(E.cleanState(s,index).stats[3],value);
  }
  assert.equal(E.alignmentInfo(run().state).label,'Não informado');
  const rounded=run().state;rounded.stats[3]=9.9999999;assert.equal(E.alignmentInfo(rounded).label,'Justo');
  const s=run().state;s.stats[4]=-1;assert.throws(()=>E.cleanState(s,index),/inválido/);
});
test('calling the guards in Treasure 80 increases alignment and can change the category',()=>{
  let r=run();r.state.stats[3]=9;
  const e=event('EventTreasure:80'),p=E.previewResult(e,1,0,r.state,index);
  assert.equal(e.data.choice[1].text,'Chamar os guardas');assert.equal(p.state.stats[3],10);
  assert.equal(E.alignmentInfo(p.state).label,'Justo');assert.ok(p.changes.includes('Alinhamento: +1'));
  assert.equal(r.state.stats[3],9);
  r=E.commit(r,p.state,index,{type:'result',eventKey:'EventTreasure:80',choice:1,result:0});
  assert.equal(E.undo(r).state.stats[3],9);assert.equal(E.redo(E.undo(r),index).state.stats[3],10);
  const negative=run().state;negative.stats[3]=0;
  assert.equal(E.previewResult(event('EventBattle:10'),1,0,negative,index).state.stats[3],-1);
});
test('a named alignment represents a range, not an invented midpoint',()=>{
  const s=run().state;s.alignmentRange=E.alignmentRangeForBand('neutral');
  assert.equal(s.stats[3],null);assert.equal(E.alignmentInfo(s).label,'Neutro');
  assert.equal(E.requirement(reqStat(3,-9),s),true);
  assert.equal(E.requirement(reqStat(3,0),s),null);
  assert.equal(E.requirement(reqStat(3,10),s),false);
  const p=E.previewResult(event('EventTreasure:80'),1,0,s,index);
  assert.equal(p.state.stats[3],null);assert.deepEqual(E.alignmentInfo(p.state).bands,['neutral','moral']);
  assert.equal(E.requirement(reqStat(3,10),p.state),null);
  assert.deepEqual(E.alignmentInfo(s).bands,['neutral']);
});
test('alignment range updates respect native float rounding near category boundaries',()=>{
  const s=run().state;s.alignmentRange=E.alignmentRangeForBand('neutral');
  const e=fixture([[[token({operation:'change_user_data',index:3,quantity:15})]]]);
  const p=E.previewResult(e,0,0,s,index);
  assert.equal(p.state.alignmentRange.max,25);
  assert.ok(E.alignmentInfo(p.state).bands.includes('good'));
  assert.equal(E.requirement(reqStat(3,25),p.state),null);
});
test('future alignment gates use the updated value; ambiguous ranges remain partial',()=>{
  const s=scenario({start:{choices:[{effects:[token({operation:'change_user_data',index:3,quantity:1})],next:'reward'},{}]},reward:{choices:[{required:reqStat(3,10),effects:[add(0,1)]}]}});
  const r=run();r.state.stats[3]=9;r.goals=[goal('item','item:0')];
  assert.equal(E.analyze(s.root,r,s.index).recommendation,0);
  r.state.stats[3]=null;r.state.alignmentRange=E.alignmentRangeForBand('neutral');
  const a=E.analyze(s.root,r,s.index);assert.equal(a.recommendation,null);assert.equal(a.summary.comparisonComplete,false);
});
test('old v1 backups keep alignment unknown and preserve all history and other stats',()=>{
  const r=run(),e=event('EventTreasure:346');
  const old=E.commit(r,E.previewResult(e,1,0,r.state,index).state,index,{type:'result',eventKey:'EventTreasure:346',choice:1,result:0});
  for(const s of [old.state,...old.history.flatMap(h=>[h.before,h.after])]){delete s.stats[3];delete s.alignmentRange;}
  const restored=E.validateRun(old,index);
  assert.equal(restored.state.stats[3],null);assert.equal(restored.state.alignmentRange,null);
  assert.equal(restored.state.stats[4],95);assert.equal(restored.cursor,1);
  assert.equal(E.undo(restored).state.stats[4],100);assert.equal(E.undo(restored).state.stats[3],null);
  assert.equal(old.state.stats[3],undefined);
});
test('range saves survive validation and inconsistent alignment intervals are rejected',()=>{
  let r=run();r.state.alignmentRange=E.alignmentRangeForBand('impure');
  r=E.commit(r,E.previewResult(event('EventTreasure:80'),1,0,r.state,index).state,index,{type:'result',eventKey:'EventTreasure:80',choice:1,result:0});
  assert.deepEqual(E.validateRun(JSON.parse(JSON.stringify(r)),index).state.alignmentRange,r.state.alignmentRange);
  for(const range of [{min:10,max:0},{min:null,max:null},{min:'0',max:1},{min:0,max:Infinity},[]]){
    const s=run().state;s.alignmentRange=range;assert.throws(()=>E.cleanState(s,index),/alinhamento inválida/);
  }
});

test('all native combat commands explain the action without changing run state or catalog',()=>{
  const r=run(),before=E.clone(r.state);let count=0;const modes=new Set();
  for(const e of index.events.values())for(const [ci,c] of e.data.choice.entries())for(const [ri,result] of c.result.entries()) {
    const tokens=e.rules.choices[ci].results[ri].reward?.tokens.filter(t=>t.raw.startsWith('6_'))||[];
    if(!tokens.length)continue;
    count+=tokens.length;
    const isolated=E.clone(e);isolated.data.choice[ci].result[ri].type=2;isolated.data.choice[ci].result[ri].reward=tokens.map(t=>t.raw).join('|');isolated.rules.choices[ci].results[ri].reward.tokens=tokens;
    const preview=E.previewResult(isolated,ci,ri,r.state,index);
    assert.deepEqual(preview.state,before);assert.deepEqual(preview.issues,[]);
    assert.equal(preview.controls.length,tokens.length);
    for(const t of tokens){
      assert.equal(t.known,true,t.raw);assert.equal(t.model.operation,'start_combat');modes.add(t.model.index);
      if(t.model.enemy_source==='fixed'){assert.equal(t.ref,`monster:${t.model.monster_id}`);assert.ok(index.records.has(t.ref));}
      else {assert.equal(t.model.monster_id,null);assert.equal(t.ref,undefined);}
    }
  }
  assert.equal(count,2005);assert.deepEqual([...modes].sort(),[0,1,2,3,4]);
  assert.deepEqual(r.state,before);
});

test('Treasure 80 starts the dwarf battle and waits for the observed outcome across save and undo',()=>{
  const r=run();r.state.stats[3]=0;r.goals=[goal('gold','',200)];r.selectedEvent='EventTreasure:80';
  const e=event(r.selectedEvent),preview=E.previewResult(e,2,0,r.state,index);
  assert.equal(preview.controls[0].enemy,'Anão');assert.equal(preview.controls[0].enemyKey,'monster:87');
  assert.equal(preview.state.stats[4],100);assert.deepEqual(preview.state.catalog.monster,[]);
  const a=E.analyze(e,r,index);
  assert.equal(a.rows[2].complete,false);assert.ok(a.rows[2].notes.some(n=>n.includes('inicia um combate')));
  const saved=E.commit(r,preview.state,index,{type:'result',eventKey:r.selectedEvent,choice:2,result:0});
  const restored=E.validateRun(JSON.parse(JSON.stringify(saved)),index);
  assert.equal(restored.selectedEvent,'EventTreasure:81');
  const context=E.continuationContext(restored,index);
  assert.equal(context.entry.eventKey,'EventTreasure:80');
  const outcome=E.analyze(event(restored.selectedEvent),restored,index);
  assert.equal(outcome.recommendation,null);
  const won=E.previewResult(event(restored.selectedEvent),0,0,restored.state,index);
  assert.equal(won.state.stats[4],105);assert.equal(won.state.items[157],1);assert.equal(won.state.stats[3],-1);
  const completed=E.commit(restored,won.state,index,{type:'result',eventKey:restored.selectedEvent,choice:0,result:0});
  assert.equal(completed.selectedEvent,null);
  assert.equal(E.undo(completed).selectedEvent,'EventTreasure:81');
  assert.equal(E.undo(saved).selectedEvent,'EventTreasure:80');
  assert.equal(E.redo(E.undo(saved),index).selectedEvent,'EventTreasure:81');
});

const treant=()=>token({operation:'start_combat',index:0,quantity:161,monster_id:161,enemy_source:'fixed',combat_power_factor:1,initial_state:null,requires_observation:true},'Iniciar combate');

test('accepting Treasure 360 exposes the treant, peaceful exit, charisma test and combat aftermath before committing',()=>{
  const r=run();r.state.stats[5]=4;r.state.stats[12]=4;r.goals=[goal('gold','',200)];
  const before=E.clone(r),a=E.analyze(event('EventTreasure:360'),r,index),f=a.rows[0].forecast;
  assert.deepEqual(f.stages.map(s=>s.key),['EventTreasure:361','EventTreasure:362','EventTreasure:363','EventTreasure:364']);
  assert.equal(f.truncated,false);assert.ok(f.combats.some(c=>c.enemyKey==='monster:161'&&c.enemy==='Entearvore'));
  assert.ok(a.rows[0].notes.some(n=>n.includes('Entearvore')));
  const negotiation=f.tests.find(t=>t.eventKey==='EventTreasure:363');
  assert.equal(negotiation.test.label,'Teste de Carisma');assert.equal(negotiation.values[12],4);
  assert.ok(f.peacefulExit);assert.equal(f.peacefulExit.afterCombat,false);
  assert.equal(f.peacefulExit.label,'Desistir da negociação');
  assert.ok(f.peacefulExit.path.every(s=>!s.combat&&!s.test));
  assert.ok(f.exits.some(e=>e.afterCombat&&e.reward?.tokens.some(t=>t.model?.operation==='change_user_data'&&t.model.index===0&&t.model.quantity===-1)));
  assert.ok(f.exits.some(e=>e.afterCombat&&e.destination===-3));
  assert.equal(a.recommendation,null);assert.deepEqual(r,before);
});

test('future warning retains an optional enemy hidden by the policy representative or an unknown requirement',()=>{
  const s=scenario({start:{choices:[{next:'fork'},{}]},fork:{choices:[{effects:[gold(10)]},{required:reqItem(0,1),effects:[treant()],next:'aftermath'}]},aftermath:{observedOnly:true,choices:[{effects:[gold(100)]},{}]}});
  const r=run();r.state.inventoryComplete=false;r.goals=[goal('gold','',200)];
  const a=E.analyze(s.root,r,s.index),f=a.rows[0].forecast;
  assert.equal(f.combats.length,1);assert.equal(f.combats[0].conditional,true);
  assert.ok(!a.rows[0].route.some(step=>step.eventKey===`${s.nodes.get('aftermath').group}:${s.nodes.get('aftermath').id}`));
  assert.ok(f.peacefulExit);assert.ok(f.exits.some(e=>e.afterCombat));
});

test('future warnings exclude impossible and zero probability branches and react to a changed inventory',()=>{
  const s=scenario({start:{choices:[{next:'fork'}]},fork:{choices:[{required:reqItem(0,1),effects:[treant()]},{outcomes:[{probability:'0',effects:[treant()]},{probability:'1'}]}]}});
  const r=run();let f=E.forecastChoice(s.root,0,r.state,s.index);
  assert.deepEqual(f.combats,[]);assert.ok(f.gates.some(g=>g.available===false));
  r.state.items[0]=1;f=E.forecastChoice(s.root,0,r.state,s.index);
  assert.equal(f.combats.length,1);assert.equal(f.combats[0].conditional,false);
});

test('the aftermath retains low-health branches without discarding a known contract flag',()=>{
  const reqFlag=value=>view(token({domain:'chainEventList',index:9,quantity:value,comparison:'=='}));
  const lowHealth=view(token({domain:'userData_effective',index:0,quantity:2,comparison:'<'}));
  const s=scenario({start:{choices:[{effects:[treant()],next:'aftermath'}]},aftermath:{observedOnly:true,choices:[{outcomes:[{required:reqFlag(0),effects:[gold(50)]},{required:reqFlag(1),effects:[gold(70)]}]},{required:lowHealth,next:-3}]}});
  const r=run();r.state.states.chainEventList[9]=0;
  const f=E.forecastChoice(s.root,0,r.state,s.index);
  assert.ok(f.exits.some(e=>e.destination===-3));
  assert.ok(f.exits.some(e=>e.reward?.tokens.some(t=>t.model?.operation==='change_user_data'&&t.model.index===4&&t.model.quantity===50)));
  assert.ok(!f.exits.some(e=>e.reward?.tokens.some(t=>t.model?.operation==='change_user_data'&&t.model.index===4&&t.model.quantity===70)));
  assert.equal(f.peacefulExit,null);assert.ok(f.exits.every(e=>e.conditional));
  assert.equal(r.state.stats[0],10);
});

test('state-changing returns are followed and forecast limits never imply a complete or peaceful route',()=>{
  const flag=value=>view(token({domain:'chainEventList',index:9,quantity:value,comparison:'=='}));
  const s=scenario({start:{choices:[{effects:[token({operation:'set_chain_state',index:9,quantity:1})],next:'start'},{required:flag(1),effects:[treant()],next:'finish'}]},finish:{choices:[{}]}});
  const r=run();r.state.states.chainEventList[9]=0;
  const f=E.forecastChoice(s.root,0,r.state,s.index);
  assert.equal(f.combats.length,1);assert.equal(f.truncated,false);assert.equal(f.peacefulExit,null);
  const limited=E.forecastChoice(s.root,0,r.state,s.index,{maxDepth:1});
  assert.equal(limited.truncated,true);assert.equal(limited.peacefulExit,null);
});

test('an unknown command cannot certify a peaceful path or suppress a conditional future enemy',()=>{
  const s=scenario({start:{choices:[{effects:[{known:false,raw:'unknown_command'}],next:'fork'}]},fork:{choices:[{}, {required:reqStat(5,100),effects:[treant()]}]}});
  const r=run(),f=E.forecastChoice(s.root,0,r.state,s.index);
  assert.equal(f.combats.length,1);assert.equal(f.combats[0].conditional,true);assert.equal(f.peacefulExit,null);
  assert.ok(f.exits.every(e=>e.effectsUnknown));
});

test('a later prerequisite is not labeled impossible when another preceding route can satisfy it',()=>{
  const s=scenario({start:{choices:[{next:'fork'}]},fork:{choices:[{next:'gate'},{effects:[token({operation:'change_user_data',index:5,quantity:6})],next:'gate'}]},gate:{choices:[{required:reqStat(5,10),effects:[treant()]}]}});
  const r=run();r.state.stats[5]=4;
  const f=E.forecastChoice(s.root,0,r.state,s.index);
  const gate=f.gates.find(g=>g.eventKey===`${s.nodes.get('gate').group}:${s.nodes.get('gate').id}`);
  assert.equal(gate.available,true);assert.equal(f.combats.length,1);
  assert.equal(r.state.stats[5],4);
});

test('fire resources unlock Treasure 362 and are consumed in the native priority',()=>{
  const r=run(),e=event('EventTreasure:362'),view=e.rules.choices[3].required;
  assert.equal(E.requirement(view,r.state),false);
  r.state.inventoryComplete=false;assert.equal(E.requirement(view,r.state),null);
  r.state.items[42]=2;assert.equal(E.requirement(view,r.state),true);
  r.state.inventoryComplete=true;r.state.items[40]=1;r.state.items[47]=1;
  const p=E.previewResult(e,3,0,r.state,index);
  assert.deepEqual(p.state.items,{'40':0,'42':2,'47':1});
  assert.deepEqual(p.issues,[]);assert.equal(p.state.flagsUncertain,false);
  assert.equal(p.controls[0].enemyKey,'monster:161');
  assert.equal(r.state.items[40],1);
  r.state.items[40]=null;
  const uncertain=E.previewResult(e,3,0,r.state,index);
  assert.equal(uncertain.state.items[42],null);
  assert.ok(uncertain.issues.some(s=>s.includes('recurso de fogo')));
  assert.equal(uncertain.state.flagsUncertain,false);
  const absent={tokens:[{known:true,model:{domain:'inventory_any',item_ids:[40,42,47],comparison:'not_contains_any'}}]};
  assert.equal(E.requirement(absent,r.state),false);
});

test('consuming a fire resource cannot count it as a retained item with an incomplete inventory',()=>{
  const consume=token({operation:'remove_first_item',index:3,quantity:1,item_ids:[40,42,47]});
  const s=scenario({start:{choices:[{effects:[add(40,1)],next:'consume'}]},consume:{choices:[{effects:[consume]}]}});
  const r=run();r.state.inventoryComplete=false;r.goals=[goal('item','item:40')];
  const a=E.analyze(s.root,r,s.index);
  assert.ok(!a.rows[0].reasons.some(s=>s.includes('Pode obter')));
});
