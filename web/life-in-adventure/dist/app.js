'use strict';
(() => {
  const $ = id => document.getElementById(id);
  const esc = value => String(value ?? '').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const plain = value => String(value ?? '').replace(/<[^>]*>/g, '').replace(/\|[^|]*\|/g, '').replace(/\s+/g, ' ').trim();
  const normalize = value => String(value).normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();
  const fmt = n => n.toLocaleString('pt-BR');
  const types = {
    EventMain: {label:'Principal', title:'Eventos principais', icon:'⚑', code:'PRI'},
    EventSub: {label:'Secundário', title:'Eventos secundários', icon:'⑂', code:'SEC'},
    EventNormal: {label:'Normal', title:'Eventos normais', icon:'◇', code:'NOR'},
    EventTreasure: {label:'Tesouro', title:'Eventos de tesouro', icon:'✧', code:'TES'},
    EventBattle: {label:'Combate', title:'Eventos de combate', icon:'⚔', code:'COM'},
    EventMainStart: {label:'Início', title:'Inícios de aventura', icon:'☀', code:'INI'}
  };
  const tagNames = ['Com requisitos','Com recompensas','Múltiplos resultados','Com continuação','Destino especial','Sem texto inicial'];
  if (!window.ATLAS_DATA?.events?.length) {
    $('eventsBody').innerHTML = '<tr><td colspan="6" class="load-error">Não foi possível carregar o arquivo de eventos. Confira se events-data.js está na mesma pasta e recarregue a página.</td></tr>';
    $('resultCount').textContent = 'Falha ao carregar'; return;
  }
  const source = window.ATLAS_DATA;
  const events = source.events.map((e, index) => {
    const choices = e.data.choice || [], results = choices.flatMap(c => c.result || []);
    const title = plain(e.data.text) || `Continuação do evento · ${types[e.group].label} #${e.id}`;
    const tags = [];
    if (e.data.required || choices.some(c => c.required) || results.some(r => r.required)) tags.push('Com requisitos');
    if (results.some(r => r.reward)) tags.push('Com recompensas');
    if (choices.some(c => (c.result || []).length > 1)) tags.push('Múltiplos resultados');
    if (results.some(r => Number.isInteger(r.nextEvent) && r.nextEvent >= 0)) tags.push('Com continuação');
    if (results.some(r => Number.isInteger(r.nextEvent) && r.nextEvent < 0)) tags.push('Destino especial');
    if (!plain(e.data.text)) tags.push('Sem texto inicial');
    return {...e, key:`${e.group}:${e.id}`, index, title, tags, choices: choices.length, results:results.length,
      search:normalize(`${e.id} ${e.group} ${e.source} ${types[e.group].label} ${JSON.stringify(e.data)}`)};
  });
  const byKey = new Map(events.map(e => [e.key, e]));
  const state = {query:'', category:'all', tags:new Set(), sort:'default', page:1, pageSize:25};
  let filtered = events, current = null, detailHistory = [], zoom = 1, lastFocus = null, mapNeedsFit = false;
  const dialog = $('eventDialog');
  const short = (s, n=110) => s.length > n ? `${s.slice(0,n).trim()}…` : s;
  const badge = e => `<span class="badge category-tag" data-group="${e.group}">${esc(types[e.group].label)}</span>`;
  const tagBadge = tag => `<span class="badge">${esc(tag)}</span>`;
  $('statEvents').textContent = fmt(events.length);
  $('statChoices').textContent = fmt(events.reduce((n,e) => n + e.choices,0));
  $('statResults').textContent = fmt(events.reduce((n,e) => n + e.results,0));

  function matchesQuery(e) {
    const q = normalize(state.query.trim());
    if (!q) return true;
    if (/^#\d+$/.test(q)) return e.id === Number(q.slice(1));
    return q.split(/\s+/).every(term => e.search.includes(term));
  }
  function renderFilters() {
    const categories = [['all', {title:'Todos os eventos',icon:'▦'}], ...Object.entries(types)];
    $('categories').innerHTML = categories.map(([key, type]) => {
      const count = key === 'all' ? events.length : events.filter(e => e.group === key).length;
      return `<button class="category ${state.category === key ? 'active' : ''}" data-category="${key}" aria-pressed="${state.category === key}"><span class="cat-icon" aria-hidden="true">${type.icon}</span>${type.title}<span class="count">${fmt(count)}</span></button>`;
    }).join('');
    const base = events.filter(e => (state.category === 'all' || e.group === state.category) && matchesQuery(e));
    $('tagFilters').innerHTML = tagNames.map(tag => `<button class="filter-tag ${state.tags.has(tag) ? 'active' : ''}" data-tag="${esc(tag)}" aria-pressed="${state.tags.has(tag)}">${esc(tag)} <span>${fmt(base.filter(e => e.tags.includes(tag)).length)}</span></button>`).join('');
    $('activeCount').textContent = state.tags.size ? `(${state.tags.size})` : '';
    $('clearFilters').hidden = state.category === 'all' && !state.tags.size && !state.query;
    const chips = [];
    if (state.category !== 'all') chips.push(`<button data-remove-category>${esc(types[state.category].title)} ×</button>`);
    for (const tag of state.tags) chips.push(`<button data-tag="${esc(tag)}">${esc(tag)} ×</button>`);
    $('appliedFilters').innerHTML = chips.join('');
  }
  function render() {
    filtered = events.filter(e => (state.category === 'all' || e.group === state.category) && matchesQuery(e) && [...state.tags].every(t => e.tags.includes(t)));
    const order = Object.keys(types);
    filtered.sort((a,b) => state.sort === 'title' ? a.title.localeCompare(b.title, 'pt-BR') : state.sort === 'choices' ? b.choices - a.choices || a.index - b.index : state.sort === 'results' ? b.results - a.results || a.index - b.index : order.indexOf(a.group) - order.indexOf(b.group) || a.id - b.id);
    const pages = Math.max(1, Math.ceil(filtered.length / state.pageSize));
    state.page = Math.min(state.page, pages);
    const start = (state.page-1) * state.pageSize, slice = filtered.slice(start, start+state.pageSize);
    $('eventsBody').innerHTML = slice.map(e => `<tr data-event="${e.key}"><td class="record">${types[e.group].code} · ${String(e.id).padStart(4,'0')}<small>${esc(e.source)}</small></td><td><div class="event-title"><span class="event-symbol" aria-hidden="true">${types[e.group].icon}</span><div><button class="event-name" data-event="${e.key}" aria-label="Abrir ${esc(short(e.title,130))}">${esc(short(e.title,105))}</button><div class="event-preview">${esc(short((e.data.choice || []).map(c => plain(c.text)).filter(Boolean).join(' · '),100)) || 'Escolhas sem texto na fonte'}</div></div></div></td><td><div class="row-tags">${badge(e)}${e.tags.slice(0,2).map(tagBadge).join('')}${e.tags.length>2 ? `<span class="badge" title="${esc(e.tags.slice(2).join(', '))}">+${e.tags.length-2}</span>` : ''}</div></td><td class="numeric-cell">${e.choices}</td><td class="numeric-cell">${e.results}</td><td class="row-arrow" aria-hidden="true">↗</td></tr>`).join('');
    $('emptyState').hidden = filtered.length !== 0;
    $('resultCount').textContent = `${fmt(filtered.length)} registros`;
    $('catalogTitle').firstChild.textContent = state.category === 'all' ? 'Todos os eventos ' : `${types[state.category].title} `;
    $('pageInfo').textContent = filtered.length ? `Mostrando ${fmt(start+1)}–${fmt(Math.min(start+state.pageSize,filtered.length))} de ${fmt(filtered.length)} eventos` : 'Nenhum evento encontrado';
    $('pageNumber').textContent = `${state.page} / ${fmt(pages)}`;
    $('prevPage').disabled = state.page === 1;
    $('nextPage').disabled = state.page >= pages;
    renderFilters();
  }
  function resetFilters() { state.query=''; state.category='all'; state.tags.clear(); state.page=1; $('search').value=''; render(); }
  function toggleTag(tag) { state.tags.has(tag) ? state.tags.delete(tag) : state.tags.add(tag); state.page=1; render(); }
  document.addEventListener('click', event => {
    const category = event.target.closest('[data-category]');
    if (category) {state.category=category.dataset.category; state.page=1;render();return;}
    const tag = event.target.closest('[data-tag]');
    if (tag) {toggleTag(tag.dataset.tag);return;}
    if (event.target.closest('[data-remove-category]')) {state.category='all';state.page=1;render();return;}
    const target = event.target.closest('[data-event]');
    if (target) openEvent(target.dataset.event);
  });
  let searchTimer;
  $('search').addEventListener('input', event => {clearTimeout(searchTimer);state.query=event.target.value;state.page=1;searchTimer=setTimeout(render,120);});
  $('sort').addEventListener('change', event => {state.sort=event.target.value;state.page=1;render();});
  $('pageSize').addEventListener('change', event => {state.pageSize=Number(event.target.value);state.page=1;render();});
  $('clearFilters').onclick = resetFilters; $('emptyReset').onclick = resetFilters;
  const changePage = delta => {state.page+=delta;render();$('catalogTitle').scrollIntoView({block:'start',behavior:'smooth'});};
  $('prevPage').onclick = () => changePage(-1); $('nextPage').onclick = () => changePage(1);
  document.addEventListener('keydown', event => {
    if (event.key==='/' && !dialog.open && !['INPUT','TEXTAREA','SELECT'].includes(document.activeElement?.tagName)) {event.preventDefault();$('search').focus();}
  });

  function targetName(e,r) {
    if (Number.isInteger(r.nextEvent) && r.nextEvent>=0) return `${types[e.group].label} #${r.nextEvent}`;
    return r.nextEvent === -2 ? 'Continuar aventura · -2' : `Destino especial · ${r.nextEvent ?? 'não informado'}`;
  }
  function rawBlock(data, title='Ver campos originais') {return `<details class="raw-details"><summary>${title}</summary><pre>${esc(JSON.stringify(data,null,2))}</pre></details>`;}
  function targetControl(e,r) {
    const key=`${e.group}:${r.nextEvent}`;
    return r.nextEvent>=0 && byKey.has(key) ? `<button class="target-button" data-event="${key}">Ir para ${esc(targetName(e,r))} ↗</button>` : `<span class="field">${esc(targetName(e,r))}</span>`;
  }
  function field(name,value) {return `<span class="field"><b>${name}</b>${esc(value === undefined || value === '' ? '—' : value)}</span>`;}
  function renderOverview(e) {
    const raw=e.data;
    $('overviewPanel').innerHTML = `<div class="event-meta">${badge(e)}${e.tags.map(tagBadge).join('')}</div><div class="section-label">O ENCONTRO</div><div class="narrative">${esc(plainNarrative(raw.text)) || 'Este nó não possui texto inicial no arquivo. Consulte os resultados do evento anterior e as escolhas abaixo.'}</div><div class="requirements"><strong>Requisito de entrada</strong><br><code>${esc(raw.required || 'Nenhum requisito registrado.')}</code><br><span>Os códigos são preservados conforme o jogo; a disponibilidade depende da run.</span></div>${rawBlock(Object.fromEntries(Object.entries(raw).filter(([k]) => !['choice','text'].includes(k))))}<div class="choices-heading"><h3>${e.choices} ${e.choices===1?'escolha registrada':'escolhas registradas'}</h3><button id="expandChoices" class="text-button">Expandir tudo</button></div>${(raw.choice || []).map((choice,ci) => `<details class="choice-card" ${ci===0?'open':''}><summary><span class="choice-number">${String(ci+1).padStart(2,'0')}</span>${esc(plain(choice.text)) || 'Escolha sem texto no arquivo'}</summary><div class="choice-content">${choice.required ? `<div class="requirements"><strong>Requisito da escolha</strong><br><code>${esc(choice.required)}</code></div>` : '<p class="raw-code">Sem requisito de escolha registrado.</p>'}${(choice.result || []).map((r,ri) => `<article class="result-card"><div class="result-heading"><span>RESULTADO ${ci+1}.${ri+1}</span>${targetControl(e,r)}</div><p class="result-text">${esc(plainNarrative(r.text)) || 'Sem texto de resultado no arquivo.'}</p><div class="result-fields">${field('Requisito',r.required)}${field('Peso / chance',r.chance)}${field('Tipo',r.type)}${field('Recompensa',r.reward)}${r.place!==undefined?field('Local',r.place):''}</div>${rawBlock(r)}</article>`).join('')}</div></details>`).join('')}<p class="map-note">“Chance” é o valor registrado pelo jogo, não uma porcentagem. Requisitos e recompensas ainda podem conter códigos sem interpretação completa.</p>`;
    $('expandChoices').onclick = () => {
      const cards = [...$('overviewPanel').querySelectorAll('.choice-card')];
      const expand = cards.some(c => !c.open); cards.forEach(c => c.open=expand);
      $('expandChoices').textContent=expand?'Recolher tudo':'Expandir tudo';
    };
  }
  function plainNarrative(text) {return String(text || '').replace(/<[^>]*>/g, '').replace(/\|[^|]*\|/g, '').trim();}
  function wrap(text,max=37,lines=2) {
    const words=plain(text).split(' '), out=[];let line='';
    for (const word of words) {if((line+' '+word).trim().length>max && line){out.push(line);line=word;}else line=(line+' '+word).trim();}
    if(line)out.push(line); if(out.length>lines){out.length=lines;out[lines-1]=short(out[lines-1],max-1)+'…';}return out;
  }
  function renderMap(e) {
    let y=30; const layouts=(e.data.choice || []).map((c,ci) => {const results=(c.result || []).map((r,ri) => ({r,ri,y:y+ri*114})); const height=Math.max(90,results.length*114-16); const obj={c,ci,results,center:y+height/2};y+=height+36;return obj;});
    const height=Math.max(210,y), rootY=height/2-38;
    let svg=`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1080 ${height}" width="1080" height="${height}" role="img" aria-label="Mapa das ${e.choices} escolhas e ${e.results} resultados do evento"><defs><marker id="arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"><path d="M 0 0 L 10 5 L 0 10 z" fill="#a4b994"/></marker></defs>`;
    for(const l of layouts){svg+=`<path class="map-edge" marker-end="url(#arrow)" d="M220 ${rootY+38} H255 V${l.center} H290"/>`;for(const item of l.results){svg+=`<path class="map-edge" marker-end="url(#arrow)" d="M535 ${l.center} H575 V${item.y+47} H615"/>`;}}
    svg+=`<g class="map-node root"><rect x="20" y="${rootY}" width="200" height="76" rx="7"/><text x="38" y="${rootY+29}">${esc(types[e.group].title)}</text><text x="38" y="${rootY+52}" class="small">Evento #${e.id} · ${e.choices} escolhas</text></g>`;
    for(const l of layouts){svg+=`<g class="map-node choice"><rect x="290" y="${l.center-36}" width="245" height="72" rx="6"/><text x="305" y="${l.center-16}" class="small">ESCOLHA ${l.ci+1}</text>${wrap(l.c.text || 'Sem texto no arquivo',32).map((line,i)=>`<text x="305" y="${l.center+5+i*17}">${esc(line)}</text>`).join('')}</g>`;
      for(const {r,ri,y:ry} of l.results){const key=`${e.group}:${r.nextEvent}`,click=r.nextEvent>=0 && byKey.has(key);svg+=`<g class="map-node ${click?'clickable':''}" ${click?`data-event="${key}" role="link" tabindex="0" aria-label="Ir para ${esc(targetName(e,r))}"`:''}><rect x="615" y="${ry}" width="430" height="96" rx="6"/><text x="630" y="${ry+20}" class="small">RESULTADO ${l.ci+1}.${ri+1} · ${esc(targetName(e,r))}${click?' ↗':''}</text>${wrap(r.text || 'Sem texto no arquivo',55).map((line,i)=>`<text x="630" y="${ry+41+i*17}">${esc(line)}</text>`).join('')}<text x="630" y="${ry+82}" class="small">${esc(short(`chance: ${r.chance ?? '—'} · requisito: ${r.required || 'nenhum'}`,65))}</text></g>`;}
    }
    $('choiceMap').innerHTML=svg+'</svg>';zoom=1;mapNeedsFit=true;applyZoom();
    const targets=[...new Set((e.data.choice||[]).flatMap(c=>c.result||[]).filter(r=>r.nextEvent>=0).map(r=>`${e.group}:${r.nextEvent}`))];
    $('mapTargets').innerHTML=targets.filter(key=>byKey.has(key)).map(key=>`<button data-event="${key}">Abrir ${esc(types[e.group].label)} #${byKey.get(key).id} ↗</button>`).join('');
    $('choiceMap').querySelectorAll('[data-event]').forEach(node => node.addEventListener('keydown', event => {if(event.key==='Enter' || event.key===' '){event.preventDefault();openEvent(node.dataset.event);}}));
  }
  function applyZoom(){const svg=$('choiceMap').querySelector('svg');if(!svg)return;const [, ,w,h]=svg.getAttribute('viewBox').split(' ').map(Number);svg.style.width=`${w*zoom}px`;svg.style.height=`${h*zoom}px`;$('zoomReset').textContent=`${Math.round(zoom*100)}%`;}
  function fitMap(){const svg=$('choiceMap').querySelector('svg');if(!svg)return;const h=Number(svg.getAttribute('viewBox').split(' ')[3]);zoom=Math.min(1,Math.max(.1,($('mapViewport').clientWidth-42)/1080),Math.max(.1,460/h));applyZoom();mapNeedsFit=false;}
  $('zoomOut').onclick=()=>{zoom=Math.max(.1,zoom-.15);applyZoom();};$('zoomIn').onclick=()=>{zoom=Math.min(2,zoom+.15);applyZoom();};$('zoomReset').onclick=fitMap;
  function setTab(tab) {
    const map=tab==='map';$('overviewPanel').hidden=map;$('mapPanel').hidden=!map;
    if(map && mapNeedsFit)fitMap();
    for(const [id,selected] of [['overviewTab',!map],['mapTab',map]]){$(id).setAttribute('aria-selected',String(selected));$(id).tabIndex=selected?0:-1;}
  }
  $('overviewTab').onclick=()=>setTab('overview');$('mapTab').onclick=()=>setTab('map');
  for(const id of ['overviewTab','mapTab'])$(id).addEventListener('keydown',event=>{if(['ArrowLeft','ArrowRight','Home','End'].includes(event.key)){event.preventDefault();const map=event.key==='End'||(event.key!=='Home'&&id==='overviewTab');setTab(map?'map':'overview');$(map?'mapTab':'overviewTab').focus();}});
  function openEvent(key,back=false) {
    const e=byKey.get(key);if(!e)return;
    if(!dialog.open){lastFocus=document.activeElement;detailHistory=[];dialog.showModal();document.body.style.overflow='hidden';}
    else if(current && !back && current.key!==key) detailHistory.push(current.key);
    current=e;
    $('detailCategory').textContent=types[e.group].title.toUpperCase();$('detailTitle').textContent=short(e.title.split(/(?<=[.!?])\s/)[0],90);$('detailId').textContent=`${types[e.group].code} · ${String(e.id).padStart(4,'0')} / ${e.source}`;
    $('detailBack').hidden=!detailHistory.length;renderOverview(e);renderMap(e);setTab('overview');
    document.querySelector('.dialog-content').scrollTop=0;$('mapViewport').scrollTop=0;$('mapViewport').scrollLeft=0;
    history.replaceState(null,'',`${location.pathname}${location.search}#evento=${encodeURIComponent(key)}`);
  }
  $('detailBack').onclick=()=>{const key=detailHistory.pop();if(key)openEvent(key,true);};
  $('closeDialog').onclick=()=>dialog.close();
  dialog.addEventListener('click',event=>{if(event.target===dialog){const r=dialog.getBoundingClientRect();if(event.clientX<r.left||event.clientX>r.right||event.clientY<r.top||event.clientY>r.bottom)dialog.close();}});
  dialog.addEventListener('close',()=>{document.body.style.overflow='';current=null;detailHistory=[];history.replaceState(null,'',`${location.pathname}${location.search}`);if(lastFocus?.isConnected)lastFocus.focus();});
  render();
  const initial=new URLSearchParams(location.hash.slice(1)).get('evento');if(initial)openEvent(initial);
})();
