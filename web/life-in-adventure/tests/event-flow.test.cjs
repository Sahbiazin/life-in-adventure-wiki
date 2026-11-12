'use strict';
const {test}=require('node:test');
const assert=require('node:assert/strict');
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const E=require('../dist/game-engine.js'),F=require('../dist/event-flow.js');
const ctx={window:{}};vm.runInNewContext(fs.readFileSync(path.join(__dirname,'../dist/events-data.js'),'utf8'),ctx);
const source=JSON.parse(JSON.stringify(ctx.window.ATLAS_DATA)),index=E.createIndex(source);

test('Treasure 360 contains every linked stage, choice and result in both visual orientations',()=>{
  const event=index.events.get('EventTreasure:360'),before=JSON.stringify(event);
  for(const orientation of ['horizontal','vertical']) {
    const layout=F.buildLayout(event,index,{orientation,cardWidth:250,currentEventKey:'EventTreasure:363'});
    assert.equal(layout.graph.truncated,false);
    assert.deepEqual(layout.graph.nodes.map(n=>n.key),['EventTreasure:360','EventTreasure:361','EventTreasure:362','EventTreasure:363','EventTreasure:364']);
    assert.equal(layout.cards.filter(c=>c.kind==='choice').length,16);
    assert.equal(layout.cards.filter(c=>c.kind==='result').length,23);
    assert.ok(layout.cards.some(c=>c.kind==='event'&&c.current&&c.key==='EventTreasure:363'));
    assert.ok(layout.cards.some(c=>c.lines.some(t=>t.includes('Entearvore'))));
    assert.ok(layout.cards.some(c=>c.lines.includes('Teste de Carisma')));
    assert.ok(layout.cards.some(c=>c.lines.some(t=>t.includes('Ouro: +50'))));
    assert.ok(layout.edges.some(e=>e.kind==='return'));
    for(const node of layout.graph.nodes)for(const [ci,choice] of node.event.data.choice.entries())for(const [ri] of choice.result.entries()) {
      const card=layout.cards.find(c=>c.key===`${node.key}:${ci}:${ri}`);
      assert.ok(card);assert.equal(card.targetKey,E.continuationKey(node.event,ci,ri,index));
    }
    for(const c of layout.cards){assert.ok(c.x>=0&&c.y>=0);assert.ok(c.x+c.w<=layout.width);assert.ok(c.y+c.h<=layout.height);}
  }
  assert.equal(JSON.stringify(event),before);
});

test('the complete flow traverses long chains and cycles without the Atlas preview limits',()=>{
  const events=new Map();
  for(let id=0;id<12;id++)events.set(`EventNormal:${id}`,{group:'EventNormal',id,data:{text:'Etapa '+id,choice:[{text:'Prosseguir',result:[{text:'Continuação',nextEvent:id===11?0:id+1,reward:''}]}]},rules:{choices:[{results:[{}]}]}});
  events.set('EventTreasure:1',{group:'EventTreasure',id:1,data:{choice:[]}});
  const custom={events,records:new Map()},layout=F.buildLayout(events.get('EventNormal:0'),custom);
  assert.equal(layout.graph.nodes.length,12);assert.equal(layout.graph.truncated,false);
  assert.equal(layout.cards.filter(c=>c.kind==='choice').length,12);
  assert.equal(layout.cards.filter(c=>c.kind==='result').length,12);
  assert.ok(!layout.graph.nodes.some(n=>n.key==='EventTreasure:1'));
  assert.ok(layout.edges.some(e=>e.kind==='return'&&e.to.key==='EventNormal:0'));
});

test('direct and technical map labels keep the same branches and distinguish control state from rewards',()=>{
  const event=index.events.get('EventTreasure:360'),direct=F.buildLayout(event,index),technical=F.buildLayout(event,index,{technical:true});
  assert.deepEqual(direct.cards.map(c=>c.key),technical.cards.map(c=>c.key));
  assert.ok(technical.cards.some(c=>c.lines.some(l=>l.includes('cadeia de eventos #615'))));
  assert.ok(!direct.cards.some(c=>c.lines.some(l=>l.includes('cadeia de eventos #615'))));
  assert.ok(direct.cards.some(c=>c.lines.some(l=>l.includes('percurso'))));
});
