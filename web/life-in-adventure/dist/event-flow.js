/* Complete, read-only encounter flow. Consulting a node never commits a run. */
'use strict';
((root,factory)=>{
  const engine=root.AtlasRun||(typeof module==='object'&&module.exports?require('./game-engine.js'):null);
  const api=factory(engine);
  if(typeof module==='object'&&module.exports)module.exports=api;
  else root.AtlasFlow=api;
})(globalThis,E=>{
  const GROUPS={EventMain:'Principal',EventSub:'Secundário',EventNormal:'Normal',EventTreasure:'Tesouro',EventBattle:'Combate',EventMainStart:'Início'};
  const plain=value=>String(value??'').replace(/<[^>]*>/g,'').replace(/\|[^|]*\|/g,'').replace(/\s+/g,' ').trim();
  const esc=value=>String(value??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const label=event=>`${GROUPS[event.group]||event.group} #${event.id}`;
  const short=(value,max=150)=>value.length>max?value.slice(0,max-1).trimEnd()+'…':value;
  const stateOperations=new Set(['set_chain_state','set_sub_state','set_main_state']);
  let instance=0;
  function wrap(value,width,maxLines=Infinity) {
    const words=plain(value).split(/\s+/),lines=[];let line='';
    for(let word of words) {
      while(word.length>width){if(line){lines.push(line);line='';}lines.push(word.slice(0,width));word=word.slice(width);}
      if((line+' '+word).trim().length>width&&line){lines.push(line);line=word;}else line=(line+' '+word).trim();
    }
    if(line)lines.push(line);
    if(lines.length>maxLines){lines.length=maxLines;lines[maxLines-1]=short(lines[maxLines-1],width-1)+'…';}
    return lines;
  }
  function ruleText(view,index,technical=false) {
    const text=[];let hiddenStates=false;
    for(const token of view?.tokens||[]) {
      const m=token.model;
      if(!technical&&(stateOperations.has(m?.operation)||['mainEventList','subEventList','chainEventList'].includes(m?.domain))){hiddenStates=true;continue;}
      const ref=token.ref&&index.records?.get(token.ref)?.title;
      let value=plain(token.text);
      if(!token.known)value=technical?`${value} (${token.raw})`:'Efeito ou condição a conferir';
      if(ref)value+=` — ${ref}`;
      text.push(value);
    }
    return {text,hiddenStates};
  }
  function destination(raw,target,index) {
    if(target)return label(index.events.get(target));
    return raw.nextEvent===-2?'Fim desta sequência · continuar aventura':`Destino especial ${raw.nextEvent??'não informado'}`;
  }
  function completeGraph(event,index) {
    if(!E?.sequenceGraph)throw new Error('O motor do Atlas precisa estar carregado antes do mapa.');
    return E.sequenceGraph(event,index,{maxDepth:Infinity,maxEvents:Infinity});
  }
  function buildLayout(event,index,{orientation='horizontal',technical=false,cardWidth=300,currentEventKey}={}) {
    const graph=completeGraph(event,index),cards=[],edges=[],positions=new Map(),choiceCards=new Map(),resultCards=new Map();
    const vertical=orientation==='vertical',padding=24,gap=24,depthGap=1040;
    function card(kind,key,eventKey,heading,body,x,y,w,extra={}) {
      const lines=body.flatMap(line=>wrap(line,Math.max(20,Math.floor((w-24)/6.5)),3));
      const height=Math.max(kind==='event'?100:96,48+lines.length*17);
      const value={kind,key,eventKey,heading,lines,x,y,w,h:height,...extra};cards.push(value);return value;
    }
    function choiceInfo(ev,ci) {
      const choice=ev.data.choice[ci],view=ev.rules?.choices?.[ci],requirements=ruleText(view?.required,index,technical);
      const title=plain(E.eventText(ev,choice.text,index))||'Desfecho / ramo '+(ci+1),lines=[title];
      if(view?.test)lines.push(view.test.label);
      if(requirements.text.length)lines.push(...requirements.text.slice(0,2).map(t=>'Requisito: '+t));
      if(requirements.hiddenStates)lines.push('Disponibilidade depende do percurso');
      return {title,lines,view};
    }
    function resultInfo(ev,ci,ri) {
      const raw=ev.data.choice[ci].result[ri],view=ev.rules?.choices?.[ci]?.results?.[ri],target=E.continuationKey(ev,ci,ri,index);
      const rewards=ruleText(view?.reward,index,technical),requirements=ruleText(view?.required,index,technical),lines=[];
      const title=plain(E.eventText(ev,raw.text,index))||'Sem texto de resultado na fonte';
      lines.push(short(title,vertical?90:120));
      if(rewards.text.length)lines.push(...rewards.text.slice(0,4));
      else lines.push(rewards.hiddenStates?'Atualiza o percurso do encontro':'Sem recompensa direta registrada');
      if(rewards.text.length>4)lines.push(`+ ${rewards.text.length-4} efeitos na lista abaixo`);
      if(requirements.text.length||requirements.hiddenStates)lines.push('Resultado condicional · conferir requisitos');
      lines.push('→ '+destination(raw,target,index));
      return {title,lines,target,raw,view,rewards,requirements};
    }
    let maxY=160,maxX=0;
    if(vertical) {
      let y=padding;
      for(const node of graph.nodes) {
        const ev=node.event,eventKey=node.key;
        const header=card('event',eventKey,eventKey,label(ev),[plain(E.eventText(ev,ev.data.text,index))||'Continuação do encontro',`${ev.data.choice.length} escolhas / ramos`],padding,y,cardWidth,{current:eventKey===(currentEventKey||`${event.group}:${event.id}`),title:plain(E.eventText(ev,ev.data.text,index))});
        positions.set(eventKey,header);y+=header.h+gap;
        for(const [ci,c] of ev.data.choice.entries()) {
          const info=choiceInfo(ev,ci),choice=card('choice',`${eventKey}:${ci}`,eventKey,`ESCOLHA ${ci+1}`,info.lines,padding+16,y,cardWidth,{title:info.title});
          choiceCards.set(choice.key,choice);y+=choice.h+gap;
          edges.push({from:header,to:choice,kind:'branch'});
          for(const [ri] of (c.result||[]).entries()) {
            const info=resultInfo(ev,ci,ri),result=card('result',`${eventKey}:${ci}:${ri}`,eventKey,`RESULTADO ${ci+1}.${ri+1}${info.view?.testOutcome?' · '+info.view.testOutcome:''}`,info.lines,padding+32,y,cardWidth,{title:info.title,targetKey:info.target});
            resultCards.set(result.key,result);edges.push({from:choice,to:result,kind:'branch'});y+=result.h+gap;
          }
        }
        y+=gap*2;
      }
      maxY=y;maxX=cardWidth+padding*2+32;
    } else {
      const depthY=new Map();
      for(const node of graph.nodes) {
        const ev=node.event,eventKey=node.key,x=padding+node.depth*depthGap,start=depthY.get(node.depth)||padding;
        let y=start;
        const localChoices=[];
        for(const [ci,c] of ev.data.choice.entries()) {
          const choiceStart=y,localResults=[];
          for(const [ri] of (c.result||[]).entries()) {
            const info=resultInfo(ev,ci,ri),result=card('result',`${eventKey}:${ci}:${ri}`,eventKey,`RESULTADO ${ci+1}.${ri+1}${info.view?.testOutcome?' · '+info.view.testOutcome:''}`,info.lines,x+530,y,360,{title:info.title,targetKey:info.target});
            resultCards.set(result.key,result);localResults.push(result);y+=result.h+gap;
          }
          const info=choiceInfo(ev,ci),choice=card('choice',`${eventKey}:${ci}`,eventKey,`ESCOLHA ${ci+1}`,info.lines,x+220,choiceStart,270,{title:info.title});
          y=Math.max(y,choiceStart+choice.h+gap);choice.y=choiceStart+(y-choiceStart-gap-choice.h)/2;
          choiceCards.set(choice.key,choice);localChoices.push(choice);
          for(const result of localResults)edges.push({from:choice,to:result,kind:'branch'});
          y+=gap;
        }
        const header=card('event',eventKey,eventKey,label(ev),[short(plain(E.eventText(ev,ev.data.text,index))||'Continuação do encontro',100),`${ev.data.choice.length} escolhas / ramos`],x,start,180,{current:eventKey===(currentEventKey||`${event.group}:${event.id}`),title:plain(E.eventText(ev,ev.data.text,index))});
        y=Math.max(y,start+header.h+gap);header.y=start+(y-start-gap-header.h)/2;
        positions.set(eventKey,header);for(const choice of localChoices)edges.push({from:header,to:choice,kind:'branch'});
        depthY.set(node.depth,y+72);maxY=Math.max(maxY,y+72);maxX=Math.max(maxX,x+890+padding);
      }
    }
    for(const result of resultCards.values())if(result.targetKey&&positions.has(result.targetKey)) {
      const target=positions.get(result.targetKey);
      edges.push({from:result,to:target,kind:(vertical?target.y<=result.y:target.x<=result.x)?'return':'continuation'});
    }
    return {graph,cards,edges,positions,width:Math.ceil(maxX),height:Math.ceil(maxY),orientation};
  }
  function edgePath(edge,vertical) {
    const a=edge.from,b=edge.to;
    if(vertical) {
      if(edge.kind==='branch') {
        const rail=a.x+8,fromY=a.y+a.h,toY=b.y+b.h/2;
        return `M${rail},${fromY} V${toY} H${b.x}`;
      }
      const fromY=a.y+a.h/2,toY=b.y+b.h/2,rail=edge.kind==='return'?6:14;
      return `M${a.x},${fromY} H${rail} V${toY} H${b.x}`;
    }
    const fx=a.x+a.w,fy=a.y+a.h/2,tx=b.x,ty=b.y+b.h/2;
    if(edge.kind==='return') {
      const rail=Math.min(a.y,b.y)-18;
      return `M${fx},${fy} C${fx+32},${fy} ${fx+32},${rail} ${fx},${rail} H${tx-20} V${ty} H${tx}`;
    }
    return `M${fx},${fy} C${fx+40},${fy} ${tx-40},${ty} ${tx},${ty}`;
  }
  function renderSVG(layout,id) {
    let svg=`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${layout.width} ${layout.height}" width="${layout.width}" height="${layout.height}" role="group" aria-labelledby="${id}-title ${id}-desc"><title id="${id}-title">Fluxo completo do encontro</title><desc id="${id}-desc">${layout.graph.nodes.length} etapas com todas as escolhas e resultados registrados. Setas tracejadas indicam retornos. Os ramos mantêm seus requisitos.</desc><defs><marker id="${id}-arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"><path d="M0 0 L10 5 L0 10Z"/></marker></defs>`;
    svg+=layout.edges.map(edge=>`<path class="ef-edge ef-edge-${edge.kind}" d="${edgePath(edge,layout.orientation==='vertical')}" marker-end="url(#${id}-arrow)"/>`).join('');
    for(const c of layout.cards) {
      const openKey=c.targetKey||c.eventKey,data=c.kind==='event'?`data-flow-event="${esc(c.key)}"`:c.kind==='choice'?`data-flow-choice="${esc(c.key)}"`:`data-flow-result="${esc(c.key)}"`;
      svg+=`<g class="ef-node ef-${c.kind}${c.current?' ef-current':''}" ${data} data-ef-open="${esc(openKey)}" role="button" tabindex="0" aria-label="Consultar ${esc(c.heading)} no Atlas: ${esc(c.title||c.lines.join(' · '))}"><title>${esc(c.heading+' · '+c.title+' · '+c.lines.join(' · '))}</title><rect x="${c.x}" y="${c.y}" width="${c.w}" height="${c.h}" rx="8"/><text class="ef-node-heading" x="${c.x+12}" y="${c.y+23}">${esc(c.heading)}</text>${c.lines.map((line,i)=>`<text x="${c.x+12}" y="${c.y+48+i*17}">${esc(line)}</text>`).join('')}</g>`;
    }
    return svg+'</svg>';
  }
  function listHTML(layout,index,technical) {
    const rules=view=>{const r=ruleText(view,index,technical);return r.text.length?`<ul>${r.text.map(t=>`<li>${esc(t)}</li>`).join('')}</ul>`:r.hiddenStates?'<p>Disponibilidade ou estado depende do percurso.</p>':'';};
    return layout.graph.nodes.map(({key,event:ev})=>`<section class="ef-list-stage" data-flow-list-event="${esc(key)}"><h4><button type="button" data-ef-open="${esc(key)}">${esc(label(ev))}</button></h4>${plain(E.eventText(ev,ev.data.text,index))?`<p>${esc(plain(E.eventText(ev,ev.data.text,index)))}</p>`:''}<ol>${ev.data.choice.map((c,ci)=>`<li><strong>${esc(plain(E.eventText(ev,c.text,index))||'Desfecho / ramo '+(ci+1))}</strong>${ev.rules?.choices?.[ci]?.test?`<p>${esc(ev.rules.choices[ci].test.label)}</p>`:''}${rules(ev.rules?.choices?.[ci]?.required)}<ol>${(c.result||[]).map((r,ri)=>{const v=ev.rules?.choices?.[ci]?.results?.[ri],target=E.continuationKey(ev,ci,ri,index);return `<li><strong>Resultado ${ci+1}.${ri+1}${v?.testOutcome?' · '+esc(v.testOutcome):''}</strong><p>${esc(plain(E.eventText(ev,r.text,index))||'Sem texto de resultado na fonte.')}</p>${rules(v?.required)}${rules(v?.reward)}${target?`<button type="button" data-ef-open="${esc(target)}">→ ${esc(destination(r,target,index))}</button>`:`<p>→ ${esc(destination(r,null,index))}</p>`}</li>`;}).join('')}</ol></li>`).join('')}</ol></section>`).join('');
  }
  function mount(container,event,index,{onOpenEvent=()=>{},currentEventKey,technical=false}={}) {
    if(!container||!event)return null;
    container._atlasFlow?.destroy();
    const id='ef-'+(++instance),abort=new AbortController();
    container.innerHTML=`<section class="ef-flow" aria-label="Mapa completo do encontro"><div class="ef-heading"><div><h3>Fluxo completo do encontro</h3><p class="ef-count" aria-live="polite"></p></div><div class="ef-controls" role="group" aria-label="Zoom do fluxo"><button type="button" data-ef-action="zoom-out" aria-label="Diminuir fluxo">−</button><button type="button" data-ef-action="reset" aria-label="Tamanho original do fluxo">100%</button><button type="button" data-ef-action="zoom-in" aria-label="Ampliar fluxo">+</button><button type="button" data-ef-action="fit">Visão geral</button></div></div><p class="ef-help">Todas as etapas diretamente ligadas estão neste fluxo. Toque numa etapa para consultar o Atlas. Use a rolagem, arraste ou ajuste o zoom.</p><label class="ef-find">Encontrar etapa no fluxo<select aria-label="Encontrar etapa no fluxo"></select></label><div class="ef-viewport" role="region" tabindex="0" aria-label="Fluxo de escolhas; use as setas para rolar"><div class="ef-canvas"></div></div><p class="ef-legend"><span>● Etapa</span><span>◇ Escolha</span><span>▱ Resultado</span><span>⇢ Retorno</span> · Requisitos e sorteios continuam valendo. Consultar o mapa não altera a run.</p><details class="ef-list"><summary>Ler todas as etapas e resultados em lista</summary><div class="ef-list-content"></div></details></section>`;
    const root=container.querySelector('.ef-flow'),viewport=root.querySelector('.ef-viewport'),canvas=root.querySelector('.ef-canvas'),select=root.querySelector('select'),vertical=viewport.clientWidth>0&&viewport.clientWidth<680;
    const layout=buildLayout(event,index,{orientation:vertical?'vertical':'horizontal',cardWidth:Math.max(240,Math.min(360,viewport.clientWidth-94)),currentEventKey,technical});
    canvas.innerHTML=renderSVG(layout,id);
    root.querySelector('.ef-count').textContent=`${layout.graph.nodes.length} etapas · ${layout.cards.filter(c=>c.kind==='choice').length} escolhas / ramos · ${layout.cards.filter(c=>c.kind==='result').length} resultados`;
    select.innerHTML=layout.graph.nodes.map(n=>`<option value="${esc(n.key)}">${esc(label(n.event))}</option>`).join('');select.value=currentEventKey&&layout.positions.has(currentEventKey)?currentEventKey:`${event.group}:${event.id}`;
    let zoom=vertical?Math.min(1,Math.max(.3,(viewport.clientWidth-4)/layout.width)):1,drag=null,suppressClick=false;
    const svg=canvas.querySelector('svg'),reset=root.querySelector('[data-ef-action="reset"]');
    const apply=()=>{svg.style.width=layout.width*zoom+'px';svg.style.height=layout.height*zoom+'px';reset.textContent=Math.round(zoom*100)+'%';};
    const center=key=>{const p=layout.positions.get(key);if(!p)return;viewport.scrollTo({left:Math.max(0,(p.x+p.w/2)*zoom-viewport.clientWidth/2),top:Math.max(0,(p.y+p.h/2)*zoom-viewport.clientHeight/2)});};
    const change=factor=>{const old=zoom,x=(viewport.scrollLeft+viewport.clientWidth/2)/old,y=(viewport.scrollTop+viewport.clientHeight/2)/old;zoom=Math.max(.02,Math.min(2.5,zoom*factor));apply();viewport.scrollTo({left:Math.max(0,x*zoom-viewport.clientWidth/2),top:Math.max(0,y*zoom-viewport.clientHeight/2)});};
    const fit=()=>{zoom=Math.max(.02,Math.min(1,(viewport.clientWidth-12)/layout.width,(viewport.clientHeight-12)/layout.height));apply();viewport.scrollTo({left:0,top:0});};
    const resetSize=()=>{zoom=1;apply();center(select.value);};
    root.addEventListener('click',ev=>{
      if(suppressClick){suppressClick=false;ev.preventDefault();return;}
      const action=ev.target.closest('[data-ef-action]')?.dataset.efAction;
      if(action==='zoom-in')change(1.25);if(action==='zoom-out')change(.8);if(action==='reset')resetSize();if(action==='fit')fit();
      const key=ev.target.closest('[data-ef-open]')?.dataset.efOpen;if(key)onOpenEvent(key);
    },{signal:abort.signal});
    root.addEventListener('keydown',ev=>{const node=ev.target.closest('[data-ef-open]');if(node&&(ev.key==='Enter'||ev.key===' ')){ev.preventDefault();onOpenEvent(node.dataset.efOpen);}},{signal:abort.signal});
    select.addEventListener('change',()=>center(select.value),{signal:abort.signal});
    viewport.addEventListener('pointerdown',ev=>{if(ev.pointerType!=='touch'&&ev.button===0)drag={x:ev.clientX,y:ev.clientY,left:viewport.scrollLeft,top:viewport.scrollTop,active:false};},{signal:abort.signal});
    viewport.addEventListener('pointermove',ev=>{if(!drag)return;const dx=ev.clientX-drag.x,dy=ev.clientY-drag.y;if(!drag.active&&Math.hypot(dx,dy)>5){drag.active=true;viewport.setPointerCapture(ev.pointerId);viewport.classList.add('ef-dragging');}if(drag.active){ev.preventDefault();viewport.scrollLeft=drag.left-dx;viewport.scrollTop=drag.top-dy;}},{signal:abort.signal});
    const endDrag=()=>{if(drag?.active)suppressClick=true;drag=null;viewport.classList.remove('ef-dragging');};
    viewport.addEventListener('pointerup',endDrag,{signal:abort.signal});viewport.addEventListener('pointercancel',endDrag,{signal:abort.signal});
    root.querySelector('.ef-list').addEventListener('toggle',ev=>{const body=root.querySelector('.ef-list-content');if(ev.target.open&&!body.hasChildNodes())body.innerHTML=listHTML(layout,index,technical);},{signal:abort.signal});
    apply();center(select.value);
    const controller={graph:layout.graph,layout,fit,reset:resetSize,destroy(){abort.abort();if(container._atlasFlow===controller)delete container._atlasFlow;}};
    container._atlasFlow=controller;return controller;
  }
  return {mount,buildLayout,completeGraph};
});
