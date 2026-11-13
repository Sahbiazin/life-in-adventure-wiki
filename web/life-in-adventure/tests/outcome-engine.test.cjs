'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),path=require('node:path');
const O=require('../dist/outcome-engine.js'),C=require('../dist/combat-engine.js'),E=require('../dist/game-engine.js');
const ctx={window:{}};vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),ctx);
const data=JSON.parse(JSON.stringify(ctx.window.ATLAS_DATA)),index=E.createIndex(data),event=id=>index.events.get(`EventTreasure:${id}`);
function run(){const state=E.blankState();Object.assign(state.stats,{0:10,1:5,2:0,4:100,5:10,6:10,7:10,8:10,9:5,12:10,13:10,14:10});state.inventoryComplete=true;state.traitsComplete=true;state.combat.level=0;state.combat.equippedKnown=true;return E.newRun({state},index);}
function combat(r=run(),id=80,ci=2){const e=event(id),p=E.previewResult(e,ci,0,r.state,index);return O.battle(e,p.controls[0],r,index,p.state);}

test('native victory and defeat are choices zero and one only with an explicit combat context',()=>{
  const r=run(),b=combat(r);assert.equal(b.targetKey,'EventTreasure:81');
  const c=O.classify(event(81),b);assert.equal(c.ready,true);assert.equal(c.victoryChoice,0);assert.equal(c.defeatChoice,1);
  assert.equal(O.classify(event(81),null).ready,false);assert.equal(O.classify(event(364),b).ready,false);
  assert.equal(O.classify({group:'Test',id:1,data:{choice:[{}]}},{type:'combat'}).ready,false);
});
test('the same classification is structural for the treant rather than based on translated prose',()=>{
  const b=combat(run(),362,2),node=JSON.parse(JSON.stringify(event(364)));for(const c of node.data.choice)c.text='texto irrelevante';
  const c=O.classify(node,b);assert.equal(c.ready,true);assert.equal(c.victoryChoice,0);
});
test('battle preserves enemy ability ranges, uses the event location, and reports experimental coverage',()=>{
  const b=combat();assert.equal(b.ready,true);assert.equal(b.enemies[0].row.key,'monster:87');assert.equal(b.win.probability,null);
  assert.ok(b.win.min>=0&&b.win.max<=1);assert.equal(b.partial,true);assert.ok(b.issues.some(x=>x.includes('experimentais')));
  const treant=combat(run(),362,2);assert.equal(treant.enemies[0].result.variants[0].trials,400);
  const wrong=O.battle(event(80),{},run(),index);assert.equal(wrong.ready,false);assert.deepEqual(wrong.win,{min:0,max:1,probability:null});
});
test('missing build or unidentified current enemy never manufactures a success probability',()=>{
  const r=run();r.state.combat.equippedKnown=false;const b=combat(r);assert.equal(b.ready,false);assert.deepEqual(b.win,{min:0,max:1,probability:null});
  const control={raw:'6_1_0',model:{operation:'start_combat',monster_id:null,initial_state:null}};
  const unknown=O.battle({group:'Test',id:1,data:{choice:[]}},control,run(),index);assert.equal(unknown.ready,false);assert.equal(unknown.enemies.length,0);
});
test('native generic victory EXP and gold are added before the event-specific reward',()=>{
  const r=run(),before=JSON.stringify(r.state),b=combat(r),t=O.transition(r.state,b,true,index);
  assert.equal(t.state.stats[2],1);assert.equal(t.state.stats[4],108);assert.equal(t.state.stats[0],10);assert.equal(t.state.stats[1],5);
  assert.equal(JSON.stringify(r.state),before);assert.deepEqual(t.state.catalog.monster,[]);assert.equal(t.state.combat.level,0);
  const actualResult=E.previewResult(event(81),0,0,t.state,index);assert.equal(actualResult.state.stats[2],2);assert.equal(actualResult.state.stats[4],113);
  assert.equal(actualResult.state.items[157],1);
});
test('greedy trait multiplier and native rounding are preserved without awarding generic items',()=>{
  const r=run();r.state.traits=['1'];const t=O.transition(r.state,combat(r),true,index);
  assert.equal(t.state.stats[4],109);assert.deepEqual(t.state.items,{});
  assert.equal(O.roundEven(.5),0);assert.equal(O.roundEven(1.5),2);assert.equal(O.roundEven(2.5),2);assert.equal(O.roundEven(-1.5),-2);
});
test('defeat HP and sanity penalties belong to the selected event reward, not to a second generic penalty',()=>{
  const r=run(),t=O.transition(r.state,combat(r),false,index);assert.equal(t.state.stats[2],0);assert.equal(t.state.stats[4],100);
  assert.equal(t.state.stats[0],10);assert.equal(t.state.stats[1],5);
  const defeat=E.previewResult(event(81),1,0,t.state,index);assert.equal(defeat.state.stats[0],9);assert.equal(defeat.state.stats[1],4);
});
test('native insurance on defeat pays twice the monster challenge and book unlocks require explicit projection',()=>{
  const r=run(),b=combat(r);b.unit.abilities[75]=1;
  const t=O.transition(r.state,b,false,index,{projectCatalog:true});assert.equal(t.state.stats[4],104);assert.deepEqual(t.state.catalog.monster,['monster:87']);assert.deepEqual(r.state.catalog.monster,[]);
});
test('soul harvesting is a branched 30% recovery rather than unconditional healing or an expected fractional health',()=>{
  const r=run();r.state.stats[0]=8;r.state.stats[1]=3;const b=combat(r);b.unit.abilities[74]=1;
  const t=O.transition(r.state,b,true,index);assert.equal(t.alternatives.length,3);assert.equal(t.state.stats[0],8);assert.equal(t.state.stats[1],3);
  assert.deepEqual(t.alternatives.map(a=>a.probability),[.7,.15,.15]);assert.equal(t.alternatives[1].state.stats[0],9);assert.equal(t.alternatives[2].state.stats[1],4);
});
test('ambiguous monster pools, hard-mode gold and unknown traits keep affected totals unknown',()=>{
  const r=run(),b=combat(r);b.enemies.push({row:index.records.get('monster:161')});
  const t=O.transition(r.state,b,true,index);assert.equal(t.state.stats[2],1);assert.equal(t.state.stats[4],null);
  const fixed=O.transition(r.state,b,true,index,{enemyKey:'monster:161'});assert.equal(fixed.state.stats[4],140);
  const hardRun=run();hardRun.difficulty='hard';hardRun.state.scoring={...(hardRun.state.scoring||{}),hardLevel:null};const h=combat(hardRun);assert.equal(O.transition(hardRun.state,h,true,index).state.stats[4],null);
  r.state.traitsComplete=false;assert.equal(O.transition(r.state,combat(r),true,index).state.stats[4],null);
});
test('degree progression uses the metadata-confirmed eleven thresholds and only one increase per battle',()=>{
  assert.deepEqual(O.FAME_THRESHOLDS,[0,5,10,15,20,30,40,50,60,70,80]);
  assert.deepEqual(O.degreeAfterExperience(0,4),{known:true,level:0,changed:false});assert.deepEqual(O.degreeAfterExperience(0,5),{known:true,level:1,changed:true});
  assert.equal(O.degreeAfterExperience(0,80).level,1);assert.equal(O.degreeAfterExperience(10,100).level,10);assert.equal(O.degreeAfterExperience(1,null).known,false);
  const r=run();r.state.stats[2]=4;const t=O.transition(r.state,combat(r),true,index);assert.equal(t.state.combat.level,1);assert.ok(t.issues.some(x=>x.includes('distribuição')));
});
test('hard level three enables the native minimum-one truncated gold penalty, rather than a direct 0.8 multiplier',()=>{
  assert.equal(O.goldPenalty(8,false),8);assert.equal(O.goldPenalty(8,true),7);assert.equal(O.goldPenalty(1,true),0);assert.equal(O.goldPenalty(40,true),32);
  const r=run();r.difficulty='hard';r.state.scoring={...(r.state.scoring||{}),hardLevel:2};let b=combat(r);assert.equal(O.transition(r.state,b,true,index).state.stats[4],108);
  r.state.scoring.hardLevel=3;b=combat(r);assert.equal(O.transition(r.state,b,true,index).state.stats[4],107);
  r.state.scoring.hardLevel=null;b.hardLevel=null;b.unit.abilities[111]=0;b.unit.abilityDerivation.presence[111]=true;assert.equal(O.transition(r.state,b,true,index).state.stats[4],107);
});
