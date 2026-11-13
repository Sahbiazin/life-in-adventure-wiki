'use strict';
const {test}=require('node:test'),assert=require('node:assert/strict'),fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const E=require('../dist/game-engine.js'),F=require('../dist/event-flow.js'),context={window:{}};
vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),context);
const source=context.window.ATLAS_DATA,index=E.createIndex(source),battle=id=>index.events.get('EventBattle:'+id);

test('single-monster narratives and results resolve the native name and preserve the raw record',()=>{
  const e=battle(4),before=JSON.stringify(e);
  assert.match(E.eventText(e,e.data.text,index),/Morcego Vampiro descendo/);
  assert.doesNotMatch(E.eventText(e,e.data.choice[0].result[0].text,index),/\{0\}/);
  assert.equal(JSON.stringify(e),before);assert.match(e.data.text,/\{0\}/);
});
test('random encounters expose every candidate without pretending one monster was drawn',()=>{
  const e=battle(0),text=E.eventText(e,e.data.text,index);
  assert.match(text,/você vê monstros \(Goblin ou Lobo-Cinzento\) ferozmente/);
  const candidates=E.eventMonsters(battle(2),index);
  assert.equal(candidates.length,6);assert.equal(candidates[0].key,'monster:0');
  for(const r of candidates)assert.ok(E.eventText(battle(2),battle(2).data.text,index).includes(r.title.trim()));
});
test('continuations inherit encounter names within their own table',()=>{
  const e=battle(5),text=e.data.choice[0].result[0].text;
  assert.match(E.eventText(e,text,index),/Morcego Vampiro/);
  assert.doesNotMatch(E.eventText(e,text,index),/\{0\}/);
  assert.match(E.eventText(battle(1),battle(1).data.choice[0].result[0].text,index),/Goblin ou Lobo-Cinzento/);
});
test('unknown battle monsters use readable neutral text; unrelated placeholders are preserved',()=>{
  const unknown={group:'EventBattle',id:999999,data:{text:'{0}s e {1}',monster:'',choice:[]}};
  const custom={events:new Map([['EventBattle:999999',unknown]]),records:new Map(),incoming:new Map()};
  assert.equal(E.eventText(unknown,unknown.data.text,custom),'Monstros do encontro e {1}');
  assert.equal(E.eventText({group:'EventNormal'},'{0} e {1}',index),'{0} e {1}');
  assert.equal(E.eventText(battle(4),'Sem marcador',index),'Sem marcador');
});
test('cyclic predecessors terminate, retain all sources and never borrow another table',()=>{
  const node=(group,id,next,monster='')=>({group,id,data:{monster,choice:[{result:[{nextEvent:next}]}]}});
  const a=node('EventBattle',900,901),b=node('EventBattle',901,900),c=node('EventBattle',902,900,'11'),unrelated=node('EventNormal',902,900,'87');
  const custom=E.createIndex({events:[a,b,c,unrelated],catalogs:source.catalogs});
  assert.deepEqual(E.eventMonsters(a,custom).map(r=>r.key),['monster:11']);
  // The lightweight index used by visual maps can derive incoming edges too.
  assert.deepEqual(E.eventMonsters(a,{events:custom.events,records:custom.records}).map(r=>r.key),['monster:11']);
});
test('all 66 affected battle stages resolve names and both complete map orientations use them',()=>{
  let affected=0;
  for(const e of source.events){
    const texts=[e.data.text,...e.data.choice.flatMap(c=>[c.text,...c.result.map(r=>r.text)])];
    if(!texts.some(t=>t.includes('{0}')))continue;
    affected++;assert.equal(e.group,'EventBattle');assert.ok(E.eventMonsters(e,index).length,`monsters at ${e.group}:${e.id}`);
    for(const text of texts)assert.doesNotMatch(E.eventText(e,text,index),/\{0\}/);
  }
  assert.equal(affected,66);
  for(const orientation of ['horizontal','vertical']){
    const layout=F.buildLayout(battle(4),index,{orientation});
    assert.ok(layout.cards.some(c=>c.title?.includes('Morcego Vampiro')));
    for(const c of layout.cards){assert.doesNotMatch(c.title||'',/\{0\}/);assert.doesNotMatch(c.lines.join(' '),/\{0\}/);}
  }
});
