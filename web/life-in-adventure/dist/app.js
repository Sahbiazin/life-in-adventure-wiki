'use strict';
(() => {
  const $ = id => document.getElementById(id);
  const esc = value => String(value ?? '').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const plain = value => String(value ?? '').replace(/<[^>]*>/g, '').replace(/\|[^|]*\|/g, '').replace(/\s+/g, ' ').trim();
  const normalize = value => String(value).normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();
  const fmt = n => Number(n).toLocaleString('pt-BR');
  const short = (s, n=110) => s.length > n ? `${s.slice(0,n).trim()}…` : s;
  const types = {
    EventMain: {label:'Principal', title:'Eventos principais', icon:'⚑', code:'PRI'},
    EventSub: {label:'Secundário', title:'Eventos secundários', icon:'⑂', code:'SEC'},
    EventNormal: {label:'Normal', title:'Eventos normais', icon:'◇', code:'NOR'},
    EventTreasure: {label:'Tesouro', title:'Eventos de tesouro', icon:'✧', code:'TES'},
    EventBattle: {label:'Combate', title:'Eventos de combate', icon:'⚔', code:'COM'},
    EventMainStart: {label:'Início', title:'Inícios de aventura', icon:'☀', code:'INI'}
  };
  const sections = {
    game:{title:'Modo de Jogo', label:'Modo de Jogo', icon:'▷', description:'Acompanhe sua run, compare escolhas e registre o que aconteceu no celular.'},
    events:{title:'Atlas de eventos', label:'Eventos', icon:'◇', description:'Explore os encontros e todas as possibilidades da sua aventura.'},
    item:{title:'Itens', label:'Itens', icon:'✧', description:'Equipamentos e objetos, seus dados e os eventos relacionados.'},
    monster:{title:'Monstros', label:'Monstros', icon:'⚔', description:'Conheça as criaturas e encontre os encontros em que são listadas.'},
    ability:{title:'Habilidades', label:'Habilidades', icon:'✦', description:'Descrições em português e variantes preservadas dos arquivos do jogo.'},
    trait:{title:'Traços', label:'Traços', icon:'❖', description:'Consulte os traços, suas descrições e menções nos eventos.'},
    ending:{title:'Epílogos', label:'Epílogos', icon:'☷', description:'Finais registrados das histórias principais e dos contos, com seus eventos de origem.'},
    favorites:{title:'Seus favoritos', label:'Favoritos', icon:'☆', description:'Eventos e registros guardados neste navegador para consultar depois.'},
    history:{title:'Histórico de consultas', label:'Histórico', icon:'↶', description:'As últimas 100 consultas neste navegador, da mais recente à mais antiga.'}
  };
  const tagNames = ['Com requisitos','Com recompensas','Múltiplos resultados','Com continuação','Destino especial','Sem texto inicial'];
  if (!window.ATLAS_DATA?.events?.length) {
    $('eventsBody').innerHTML = '<tr><td colspan="6" class="load-error">Não foi possível carregar os dados. Confira se events-data.js está na mesma pasta e recarregue a página.</td></tr>';
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
    return {...e, kind:'event', key:`${e.group}:${e.id}`, index, title, tags, choices:choices.length, results:results.length,
      search:normalize(`${e.id} ${e.group} ${e.source} ${types[e.group].label} ${JSON.stringify(e.data)} ${JSON.stringify(e.rules)}`)};
  });
  const catalogs = (source.catalogs || []).map((c,index) => ({...c, index, search:normalize(`${c.id} ${c.title} ${c.description} ${JSON.stringify(c.raw)}`)}));
  const byKey = new Map([...events, ...catalogs].map(e => [e.key,e]));
  // The table belongs to the key: matching numeric IDs in other tables never merge.
  const incoming = new Map(), referencedBy = new Map();
  for (const e of events) {
    (e.data.choice || []).forEach((choice,ci) => (choice.result || []).forEach((r,ri) => {
      const key = `${e.group}:${r.nextEvent}`;
      if (Number.isInteger(r.nextEvent) && r.nextEvent >= 0 && byKey.has(key)) {
        if (!incoming.has(key)) incoming.set(key, []);
        incoming.get(key).push({event:e, choice:ci, result:ri, data:r});
      }
    }));
  }
  for (const e of [...events,...catalogs]) for (const ref of e.references || []) {
    if (!byKey.has(ref.key)) continue;
    if (!referencedBy.has(ref.key)) referencedBy.set(ref.key, []);
    referencedBy.get(ref.key).push({record:e,...ref});
  }
  const state = {view:'events', query:'', category:'all', tags:new Set(), sort:'default', page:1, pageSize:25};
  let filtered = events, current = null, detailHistory = [], zoom = 1, lastFocus = null, mapNeedsFit = false;
  const dialog = $('eventDialog');
  const storageKey = 'life-in-adventure:notebook:v1';
  let favorites = new Set(), visits = [];
  function loadNotebook() {
    try {
      const saved = JSON.parse(localStorage.getItem(storageKey) || '{}');
      const valid = list => Array.isArray(list) ? [...new Set(list.filter(k => typeof k === 'string' && byKey.has(k)))] : [];
      favorites = new Set(valid(saved?.favorites)); visits = valid(saved?.history).slice(0,100);
    } catch { $('appStatus').textContent = 'O armazenamento local está indisponível ou contém dados inválidos. O caderno funciona durante esta visita.'; }
  }
  function saveNotebook() {
    try { localStorage.setItem(storageKey, JSON.stringify({favorites:[...favorites],history:visits})); }
    catch { $('appStatus').textContent = 'Não foi possível salvar neste navegador. Favoritos e histórico serão mantidos apenas durante esta visita.'; }
    renderNotebookCounts();
  }
  function renderNotebookCounts() {
    $('favoriteCount').textContent = fmt(favorites.size); $('historyCount').textContent = fmt(visits.length);
  }
  loadNotebook();
  const badge = e => `<span class="badge category-tag" data-group="${e.group}">${esc(types[e.group].label)}</span>`;
  const tagBadge = tag => `<span class="badge">${esc(tag)}</span>`;
  const kindLabel = e => e.kind === 'event' ? types[e.group].label : sections[e.kind].label;
  const recordLabel = e => e.kind === 'ending' ? `${e.ending_group === 'main' ? 'História principal' : 'Conto'} #${e.story} · epílogo #${Number(e.id)%1000}` : `${kindLabel(e)} #${e.id}${e.variant !== null && e.variant !== undefined ? ` · variante ${e.variant}` : ''}`;
  const favoriteButton = e => `<button class="star-button ${favorites.has(e.key)?'saved':''}" data-favorite="${e.key}" aria-pressed="${favorites.has(e.key)}" aria-label="${favorites.has(e.key)?'Remover dos favoritos':'Salvar nos favoritos'}: ${esc(short(e.title,80))}">${favorites.has(e.key)?'★':'☆'}</button>`;

  function routeURL(key=null, view=state.view) {
    const params = new URLSearchParams();
    if (view !== 'events') params.set('catalogo',view);
    const record = byKey.get(key);
    if (record) params.set(record.kind === 'event' ? 'evento' : 'registro',key);
    return `${location.pathname}${location.search}${params.size ? '#'+params : ''}`;
  }
  function writeRoute(key, view=state.view) {
    const url = routeURL(key,view);
    if (`${location.pathname}${location.search}${location.hash}` !== url) history.pushState(null,'',url);
  }
  function readRoute() {
    const params = new URLSearchParams(location.hash.slice(1));
    const view = params.get('catalogo') || 'events';
    return {view:Object.hasOwn(sections,view)?view:'events', key:params.get('evento') || params.get('registro')};
  }
  const recordLink = (key,label,css='record-link') => `<a class="${css}" data-record="${esc(key)}" href="${esc(routeURL(key))}">${esc(label)}</a>`;
  function navigateRecord(key) {
    if (!byKey.has(key)) return;
    writeRoute(key); openRecord(key);
  }
  const openEvent = navigateRecord;
  function navigateView(view) { if (!Object.hasOwn(sections,view)) return; writeRoute(null,view); syncRoute(); }
  function syncRoute() {
    const route = readRoute();
    if (state.view !== route.view) {
      state.view=route.view; state.query=''; state.page=1; state.sort='default'; $('search').value=''; $('sort').value='default';
    }
    render();
    if (route.key && byKey.has(route.key)) {
      if (current?.key !== route.key || !dialog.open) openRecord(route.key,true);
    } else {
      if (dialog.open) dialog.close();
      if (route.key) $('appStatus').textContent = 'Registro não encontrado nesta versão do atlas. Use a busca para encontrá-lo.';
    }
  }
  window.addEventListener('popstate',syncRoute); window.addEventListener('hashchange',syncRoute);

  function matchesQuery(e) {
    const q = normalize(state.query.trim());
    if (!q) return true;
    if (/^#\d+$/.test(q)) return Number(e.id) === Number(q.slice(1));
    return q.split(/\s+/).every(term => e.search.includes(term));
  }
  function renderFilters() {
    $('categories').innerHTML = [['all',{title:'Todos os eventos',icon:'▦'}],...Object.entries(types)].map(([key,type]) => {
      const count = key === 'all' ? events.length : events.filter(e => e.group === key).length;
      return `<button class="category ${state.category === key?'active':''}" data-category="${key}" aria-pressed="${state.category === key}"><span class="cat-icon" aria-hidden="true">${type.icon}</span>${type.title}<span class="count">${fmt(count)}</span></button>`;
    }).join('');
    const base = events.filter(e => (state.category === 'all' || e.group === state.category) && matchesQuery(e));
    $('tagFilters').innerHTML = tagNames.map(tag => `<button class="filter-tag ${state.tags.has(tag)?'active':''}" data-tag="${esc(tag)}" aria-pressed="${state.tags.has(tag)}">${esc(tag)} <span>${fmt(base.filter(e => e.tags.includes(tag)).length)}</span></button>`).join('');
    $('activeCount').textContent = state.tags.size ? `(${state.tags.size})` : '';
    $('clearFilters').hidden = state.category === 'all' && !state.tags.size && !state.query;
    const chips = [];
    if (state.category !== 'all') chips.push(`<button data-remove-category>${esc(types[state.category].title)} ×</button>`);
    for (const tag of state.tags) chips.push(`<button data-tag="${esc(tag)}">${esc(tag)} ×</button>`);
    $('appliedFilters').innerHTML = chips.join('');
  }
  function render() {
    const eventView = state.view === 'events', section = sections[state.view];
    const gameView=state.view==='game';
    $('gameRoot').hidden=!gameView;$('atlasCatalog').hidden=gameView;$('ruleCoverage').hidden=gameView;
    if(!gameView)window.AtlasGame?.hide();
    $('eventFilters').hidden = !eventView; $('eventStats').hidden = !eventView;
    $('eventsTable').hidden = !eventView; $('recordGrid').hidden = eventView;
    $('clearHistory').hidden = state.view !== 'history' || !visits.length;
    $('pageTitle').textContent=section.title; $('pageDescription').textContent=section.description;
    $('breadcrumbSection').textContent=section.label.toUpperCase(); $('editionLabel').textContent=`1.2.47 / ${section.label.toUpperCase()}`;
    $('catalogDescription').textContent=eventView?'Selecione um evento para consultar as escolhas e os caminhos de chegada.':'Abra um registro para ler a descrição, os dados originais e as conexões.';
    $('search').placeholder=eventView?'Buscar evento, personagem, escolha ou consequência…':'Buscar por nome, descrição ou #ID…';
    $('search').setAttribute('aria-label',`Pesquisar ${section.label.toLowerCase()}`);
    for (const button of document.querySelectorAll('[data-view]')) {
      const selected=button.dataset.view === state.view;
      button.classList.toggle('nav-active',selected);
      if(selected) button.setAttribute('aria-current','page'); else button.removeAttribute('aria-current');
    }
    if(gameView){if(window.AtlasGame)window.AtlasGame.render();else $('gameRoot').textContent='Não foi possível carregar o Modo de Jogo. Recarregue a página.';renderNotebookCounts();return;}
    $('sort').querySelector('[value=choices]').hidden=!eventView;
    $('sort').querySelector('[value=results]').hidden=!eventView;
    $('sort').querySelector('[value=default]').textContent=state.view === 'history'?'Mais recentes':'Tipo e número';
    let pool;
    if (eventView) pool=events.filter(e => (state.category==='all' || e.group===state.category) && [...state.tags].every(t=>e.tags.includes(t)));
    else if (state.view === 'favorites') pool=[...favorites].map(key=>byKey.get(key));
    else if (state.view === 'history') pool=visits.map(key=>byKey.get(key));
    else pool=catalogs.filter(e=>e.kind===state.view);
    filtered=pool.filter(matchesQuery);
    if (state.sort === 'title') filtered.sort((a,b)=>a.title.localeCompare(b.title,'pt-BR') || a.index-b.index);
    else if (eventView) {
      const order=Object.keys(types);
      filtered.sort((a,b)=>state.sort==='choices'?b.choices-a.choices || a.index-b.index:state.sort==='results'?b.results-a.results || a.index-b.index:order.indexOf(a.group)-order.indexOf(b.group) || a.id-b.id);
    }
    const pages=Math.max(1,Math.ceil(filtered.length/state.pageSize)); state.page=Math.max(1,Math.min(state.page,pages));
    const start=(state.page-1)*state.pageSize, slice=filtered.slice(start,start+state.pageSize);
    if (eventView) {
      $('eventsBody').innerHTML=slice.map(e=>`<tr data-event="${e.key}"><td class="record">${types[e.group].code} · ${String(e.id).padStart(4,'0')}<small>${esc(e.source)}</small></td><td><div class="event-title"><span class="event-symbol" aria-hidden="true">${types[e.group].icon}</span><div>${recordLink(e.key,short(e.title,105),'event-name')}<div class="event-preview">${esc(short((e.data.choice||[]).map(c=>plain(c.text)).filter(Boolean).join(' · '),100)) || 'Escolhas sem texto na fonte'}</div></div></div></td><td><div class="row-tags">${badge(e)}${e.tags.slice(0,2).map(tagBadge).join('')}${e.tags.length>2?`<span class="badge" title="${esc(e.tags.slice(2).join(', '))}">+${e.tags.length-2}</span>`:''}</div></td><td class="numeric-cell">${e.choices}</td><td class="numeric-cell">${e.results}</td><td>${favoriteButton(e)}</td></tr>`).join('');
      renderFilters();
    } else {
      $('appliedFilters').innerHTML='';
      $('recordGrid').innerHTML=slice.map(e=>`<article class="catalog-card"><div class="catalog-card-meta"><span class="badge">${esc(recordLabel(e))}</span>${favoriteButton(e)}</div><h3>${recordLink(e.key,short(e.title,120))}</h3><p>${esc(short(plain(e.description || e.data?.choice?.map(c=>c.text).join(' · ') || 'Abra para consultar os detalhes.'),180))}</p><footer>${e.kind==='event'?`${e.choices} escolhas · ${e.results} resultados`:`${fmt((referencedBy.get(e.key)||[]).filter(r=>r.record.kind==='event').length)} referências em eventos`}</footer></article>`).join('');
    }
    $('emptyState').hidden=filtered.length!==0;
    $('emptyTitle').textContent=state.view==='favorites'?'Nenhum favorito encontrado':state.view==='history'?'Nenhuma consulta encontrada':'Nenhum registro encontrado';
    $('emptyDescription').textContent=state.view==='favorites'?'Use a estrela nos eventos ou catálogos para guardar seus favoritos.':state.view==='history'?'Abra um evento ou registro para começar seu histórico.':'Tente outro termo ou remova alguns filtros.';
    $('emptyReset').hidden=!state.query && !eventView;
    $('resultCount').textContent=`${fmt(filtered.length)} registros`;
    $('catalogTitle').firstChild.textContent=eventView?(state.category==='all'?'Todos os eventos ':`${types[state.category].title} `):`${section.label} `;
    $('pageInfo').textContent=filtered.length?`Mostrando ${fmt(start+1)}–${fmt(Math.min(start+state.pageSize,filtered.length))} de ${fmt(filtered.length)} registros`:'Nenhum registro encontrado';
    $('pageNumber').textContent=`${state.page} / ${fmt(pages)}`;
    $('prevPage').disabled=state.page===1; $('nextPage').disabled=state.page>=pages;
    renderNotebookCounts();
  }
  function resetFilters() { state.query='';state.category='all';state.tags.clear();state.page=1;$('search').value='';render(); }
  function toggleFavorite(key) {
    if (!byKey.has(key)) return;
    favorites.has(key)?favorites.delete(key):favorites.add(key); saveNotebook(); render();
    if (current) updateDetailActions();
  }
  document.addEventListener('click',event=>{
    if(event.defaultPrevented || event.button!==0) return;
    const favorite=event.target.closest('[data-favorite]');
    if(favorite){toggleFavorite(favorite.dataset.favorite);return;}
    const view=event.target.closest('[data-view]');
    if(view){navigateView(view.dataset.view);return;}
    const category=event.target.closest('[data-category]');
    if(category){state.category=category.dataset.category;state.page=1;render();return;}
    const tag=event.target.closest('[data-tag]');
    if(tag){state.tags.has(tag.dataset.tag)?state.tags.delete(tag.dataset.tag):state.tags.add(tag.dataset.tag);state.page=1;render();return;}
    if(event.target.closest('[data-remove-category]')){state.category='all';state.page=1;render();return;}
    const target=event.target.closest('[data-record], [data-event]');
    if(target){
      if(event.ctrlKey || event.metaKey || event.shiftKey || event.altKey) return;
      event.preventDefault();navigateRecord(target.dataset.record || target.dataset.event);
    }
  });
  let searchTimer;
  $('search').addEventListener('input',event=>{clearTimeout(searchTimer);state.query=event.target.value;state.page=1;searchTimer=setTimeout(render,120);});
  $('sort').onchange=event=>{state.sort=event.target.value;state.page=1;render();};
  $('pageSize').onchange=event=>{state.pageSize=Number(event.target.value);state.page=1;render();};
  $('clearFilters').onclick=resetFilters; $('emptyReset').onclick=resetFilters;
  $('clearHistory').onclick=()=>{visits=[];saveNotebook();render();};
  const changePage=delta=>{state.page+=delta;render();$('catalogTitle').scrollIntoView({block:'start',behavior:'smooth'});};
  $('prevPage').onclick=()=>changePage(-1);$('nextPage').onclick=()=>changePage(1);
  document.addEventListener('keydown',event=>{
    if(event.key==='/' && !dialog.open && !['INPUT','TEXTAREA','SELECT'].includes(document.activeElement?.tagName)){event.preventDefault();(state.view==='game'?$('gameEventQuery'):$('search'))?.focus();}
  });

  function targetName(e,r) {
    if(Number.isInteger(r.nextEvent) && r.nextEvent>=0) return `${types[e.group].label} #${r.nextEvent}`;
    return r.nextEvent===-2?'Continuar aventura · -2':`Destino especial · ${r.nextEvent??'não informado'}`;
  }
  function rawBlock(data,title='Ver campos originais') {return `<details class="raw-details"><summary>${esc(title)}</summary><pre>${esc(JSON.stringify(data,null,2))}</pre></details>`;}
  function targetControl(e,r) {
    const key=`${e.group}:${r.nextEvent}`;
    return Number.isInteger(r.nextEvent) && r.nextEvent>=0 && byKey.has(key)?recordLink(key,`Ir para ${targetName(e,r)} ↗`,'target-button'):`<span class="field">${esc(targetName(e,r))}</span>`;
  }
  function field(name,value) {return `<span class="field"><b>${esc(name)}</b>${esc(value===undefined || value===''?'—':value)}</span>`;}
  function ruleBlock(title,view,empty='Nenhum requisito registrado.') {
    if(!view?.tokens?.length) return `<section class="rule-block"><h4>${esc(title)}</h4><p>${esc(empty)}</p></section>`;
    return `<section class="rule-block"><h4>${esc(title)}</h4>${view.tokens.length>1?`<p class="rule-operator">${view.operator==='OR'?'Basta uma das condições:':'Todas as condições / efeitos:'}</p>`:''}<ul class="rule-list">${view.tokens.map(t=>`<li class="${t.known?'known-rule':'unknown-rule'}">${esc(t.text)}${t.ref && byKey.has(t.ref)?` — ${recordLink(t.ref,byKey.get(t.ref).title)}`:''}${!t.known?` <code>${esc(t.raw)}</code>`:''}</li>`).join('')}</ul></section>`;
  }
  function probabilityBlock(r,view) {
    if(view?.probability){
      const [n,d=1]=view.probability.split('/').map(Number);
      return field('Probabilidade estática',`${(100*n/d).toLocaleString('pt-BR',{maximumFractionDigits:2})}% (${view.probability}) — resultado neutro, sem requisitos ou pesos variáveis`);
    }
    return field('Peso registrado',`${r.chance??'—'} · probabilidade final não calculada`);
  }
  const places=['Planície','Floresta','Vulcão','Ambiente aquático','Área urbana','Deserto','Caverna','Masmorra','Litoral','Campo nevado','Interior de edifício','Coliseu','Litoral à noite','Ruínas urbanas','Planície à noite','Navio devorador de almas'];
  function referenceSection(e) {
    const refs=e.references || [];
    if(!refs.length) return '';
    const grouped=new Map();
    for(const ref of refs){if(!byKey.has(ref.key))continue;if(!grouped.has(ref.key))grouped.set(ref.key,[]);grouped.get(ref.key).push(ref);}
    return `<section class="linked-records"><h3>Conexões com o catálogo</h3><p>Menções no texto não comprovam requisitos ou recompensas.</p>${[...grouped].map(([key,rows])=>`<div class="reference-row">${recordLink(key,`${byKey.get(key).title} ↗`)}<small>${esc([...new Set(rows.map(r=>`${r.relation}${r.scope?' · '+r.scope:''}`))].join('; '))}</small></div>`).join('')}</section>`;
  }
  function stateSection(e) {
    const keys=new Set();
    const collect=view=>{for(const t of view?.tokens||[])if(t.state)keys.add(t.state);};
    collect(e.rules?.required);
    for(const choice of e.rules?.choices||[]){collect(choice.required);for(const r of choice.results){collect(r.required);collect(r.reward);}}
    if(!keys.size)return '';
    const labels={chainEventList:'Cadeia de eventos',mainEventList:'História principal',subEventList:'Conto'};
    const rows=(list,writer)=>list.map(row=>`<div class="reference-row">${recordLink(row.event,`${recordLabel(byKey.get(row.event))} — ${short(byKey.get(row.event).title,90)}`)}<small>${esc(row.scope)} · ${writer?'Define':esc(row.comparison)} ${esc(row.value)}${row.context_requirements?.length?' · também depende da ativação e seleção do conto':''} · <code>${esc(row.raw)}</code></small></div>`).join('');
    return `<section class="linked-records state-dependencies"><h3>Estados e dependências</h3><p>Estes eventos consultam ou alteram a mesma variável de história. A ligação não garante desbloqueio: outros requisitos e a seleção de encontros também interferem.</p>${[...keys].map(key=>{
      const entry=source.stateIndex?.[key];if(!entry)return '';
      return `<details class="state-card"><summary>${esc(labels[entry.domain])} #${entry.index} · ${entry.readers.length} consultas, ${entry.writers.length} alterações</summary><details><summary>Resultados que alteram o estado</summary>${rows(entry.writers,true) || '<p>Nenhuma alteração identificada.</p>'}</details><details><summary>Eventos que consultam o estado</summary>${rows(entry.readers,false) || '<p>Nenhuma consulta identificada.</p>'}</details></details>`;
    }).join('')}</section>`;
  }
  function renderAudit() {
    const audit=source.audit;if(!audit)return;
    $('ruleCoverage').innerHTML=`<summary>Cobertura das regras · versão ${esc(audit.version)}</summary><p>Interpretação estática dos campos não vazios. Estes números não representam uma simulação completa ou validação em jogo.</p><div class="result-fields">${['required','reward'].map(kind=>{const row=audit.coverage[kind];return field(kind==='required'?'Requisitos interpretados':'Recompensas interpretadas',`${fmt(row.decoded_fields)} / ${fmt(row.fields)} (${(100*row.decoded_fields/row.fields).toLocaleString('pt-BR',{maximumFractionDigits:1})}%)`);}).join('')}</div><p>${fmt(audit.events_with_unknown_commands)} eventos ainda possuem comandos sem interpretação completa.</p><ul>${audit.limitations.map(text=>`<li>${esc(text)}</li>`).join('')}</ul>`;
  }
  function renderOverview(e) {
    const raw=e.data;
    $('overviewPanel').innerHTML=`<div class="event-meta">${badge(e)}${e.tags.map(tagBadge).join('')}</div><p class="evidence-note">Versão ${esc(source.version)} · ${esc(source.rulesStatus)} Regras desconhecidas continuam identificadas pelo código. Alterações de atributos podem ter limites e efeitos adicionais.</p><div class="section-label">O ENCONTRO</div><div class="narrative">${esc(plainNarrative(raw.text)) || 'Este nó não possui texto inicial no arquivo. Consulte os resultados do evento anterior e as escolhas abaixo.'}</div>${ruleBlock('Para entrar no evento',e.rules?.required)}${rawBlock(raw,'Ver registro original completo')}${referenceSection(e)}${stateSection(e)}<div class="choices-heading"><h3>${e.choices} ${e.choices===1?'escolha registrada':'escolhas registradas'}</h3><button id="expandChoices" class="text-button">Expandir tudo</button></div>${(raw.choice||[]).map((choice,ci)=>{
      const cv=e.rules?.choices[ci];
      return `<details class="choice-card" ${ci===0?'open':''}><summary><span class="choice-number">${String(ci+1).padStart(2,'0')}</span>${esc(plain(choice.text)) || 'Desfecho / ramo '+(ci+1)}${cv?.test?`<span class="attribute-test">${esc(cv.test.label)}</span>`:''}</summary><div class="choice-content">${cv?.test?`<p class="test-explanation">${esc(cv.test.label)}: estes atributos influenciam o sorteio do resultado. Não é um requisito mínimo para escolher; probabilidade final não calculada.</p>`:''}${ruleBlock('Para escolher',cv?.required)}${rawBlock(choice.required||'','Ver requisito original da escolha')}${(choice.result||[]).map((r,ri)=>{
        const rv=cv?.results[ri];
        return `<article class="result-card"><div class="result-heading"><span>RESULTADO ${ci+1}.${ri+1}${rv?.testOutcome?' · '+esc(rv.testOutcome):''}</span>${targetControl(e,r)}</div><p class="result-text">${esc(plainNarrative(r.text)) || 'Sem texto de resultado no arquivo.'}</p><div class="rule-columns">${ruleBlock('Para este resultado',rv?.required)}${ruleBlock('Consequências registradas',rv?.reward,'Nenhuma recompensa registrada neste campo.')}</div><div class="result-fields">${probabilityBlock(r,rv)}${field('Tipo de resultado (código)',r.type)}${r.place!==undefined?field('Cenário',Number.isInteger(r.place)&&places[r.place]?`${places[r.place]} · ${r.place}`:r.place):''}</div>${rawBlock(r)}</article>`;
      }).join('')}</div></details>`;
    }).join('')}<p class="map-note">Pesos não são porcentagens. Só calculamos probabilidades estáticas para escolhas neutras, sem requisitos nos resultados e sem pesos variáveis.</p>`;
    $('expandChoices').onclick=()=>{
      const cards=[...$('overviewPanel').querySelectorAll('.choice-card')], expand=cards.some(c=>!c.open);
      cards.forEach(c=>c.open=expand);$('expandChoices').textContent=expand?'Recolher tudo':'Expandir tudo';
    };
  }
  function renderIncoming(e) {
    const rows=incoming.get(e.key)||[];
    $('incomingPanel').innerHTML=`<h3>Caminhos de chegada · ${fmt(rows.length)}</h3><p class="evidence-note">Cada conexão abaixo aponta para este evento na mesma tabela. Requisitos e sorteios ainda podem impedir a passagem. Ausência de conexões não comprova que o evento esteja inacessível.</p>${rows.length?rows.map(row=>`<article class="incoming-card">${recordLink(row.event.key,`${recordLabel(row.event)} — ${short(row.event.title,100)}`)}<p>Escolha ${row.choice+1}: ${esc(plain(row.event.data.choice[row.choice].text)||'Sem texto na fonte')} · resultado ${row.result+1}</p><p>${esc(short(plain(row.data.text),220))}</p>${ruleBlock('Requisito de entrada na origem',row.event.rules?.required)}${ruleBlock('Requisito da escolha na origem',row.event.rules?.choices[row.choice]?.required)}${ruleBlock('Requisito do resultado na origem',row.event.rules?.choices[row.choice]?.results[row.result]?.required)}${rawBlock(row.data,'Ver resultado original da conexão')}</article>`).join(''):'<p>Nenhum resultado anterior aponta diretamente para este nó. O jogo também pode iniciar encontros por outras regras.</p>'}`;
  }
  function renderCatalogDetail(e) {
    const raw=e.raw;
    const labels={price:'Preço registrado',rarity:'Raridade (código)',category:'Categoria (código)',hp:'Saúde (valor base)',dmg:'Dano (valor ou fórmula original)',atkSpeed:'Velocidade de ataque registrada',grade:'Grau (código)',jewel:'Joias registradas',challenge:'Desafio (código)'};
    const fields=Object.entries(labels).filter(([k])=>raw[k]!==undefined).map(([k,label])=>field(label,raw[k])).join('');
    const variants=e.kind==='ability'?catalogs.filter(c=>c.kind==='ability' && c.id===e.id && c.key!==e.key):[];
    $('overviewPanel').innerHTML=`<span class="badge">${esc(recordLabel(e))}</span><p class="evidence-note">Versão ${esc(source.version)} · Descrição extraída do jogo. Fórmulas, códigos e marcadores como {0} são preservados; os valores finais dependem da aventura.</p><div class="narrative">${esc(plainNarrative(e.description)) || 'Sem descrição em português na fonte.'}</div><div class="result-fields catalog-fields">${fields}</div>${variants.length?`<section class="linked-records"><h3>Outras variantes desta habilidade</h3>${variants.map(c=>recordLink(c.key,`Variante ${c.variant}`,'variant-link')).join('')}</section>`:''}${referenceSection(e)}<section class="linked-records"><h3>Onde aparece</h3><p>Concessões e remoções são comandos registrados. Menções são apenas referências no texto. Epílogos registrados na aventura não comprovam o desbloqueio permanente do catálogo.</p><div id="relatedRecords"></div><button id="moreRelated" class="text-button" hidden>Mostrar mais conexões</button></section>${rawBlock(raw,'Ver registro original completo')}`;
    const grouped=new Map();
    for(const row of referencedBy.get(e.key)||[]){if(!grouped.has(row.record.key))grouped.set(row.record.key,{record:row.record,rows:[]});grouped.get(row.record.key).rows.push(row);}
    const related=[...grouped.values()];let count=0;
    const append=()=>{
      const batch=related.slice(count,count+25);count+=batch.length;
      $('relatedRecords').insertAdjacentHTML('beforeend',batch.map(({record,rows})=>`<article class="reference-row">${recordLink(record.key,`${recordLabel(record)} — ${short(record.title,120)}`)}<small>${esc([...new Set(rows.map(r=>`${r.relation}${r.scope?' · '+r.scope:''}${r.raw?' · '+r.raw:''}`))].join('; '))}</small></article>`).join(''));
      if(!related.length)$('relatedRecords').textContent='Nenhuma conexão identificada no conjunto atual. Isso não comprova ausência no jogo.';
      $('moreRelated').hidden=count>=related.length;
      $('moreRelated').textContent=`Mostrar mais conexões (${count} de ${related.length})`;
    };
    $('moreRelated').onclick=append;append();
  }
  function plainNarrative(text) {return String(text || '').replace(/<[^>]*>/g, '').replace(/\|[^|]*\|/g, '').trim();}
  function wrap(text,max=37,lines=2) {
    const words=plain(text).split(' '), out=[];let line='';
    for (const word of words) {if((line+' '+word).trim().length>max && line){out.push(line);line=word;}else line=(line+' '+word).trim();}
    if(line)out.push(line); if(out.length>lines){out.length=lines;out[lines-1]=short(out[lines-1],max-1)+'…';}return out;
  }
  let mapDepth=4,mapLimit=32;
  function renderMap(e,more=false) {
    if(!more){mapDepth=4;mapLimit=32;}
    const graph=window.AtlasRun.sequenceGraph(e,{events:byKey},{maxDepth:mapDepth,maxEvents:mapLimit});
    const positions=new Map(),choices=[],results=[],paths=[];
    const levels=Math.max(...graph.nodes.map(n=>n.depth))+1;
    let height=220;
    const line=(x,y,x2,y2,kind='')=>`<path class="map-edge ${kind}" marker-end="url(#arrow)" d="M${x} ${y} C${x+40} ${y},${x2-40} ${y2},${x2} ${y2}"/>`;
    for(let depth=0;depth<levels;depth++) {
      let y=48;
      for(const n of graph.nodes.filter(n=>n.depth===depth)) {
        const x=20+depth*1000,start=y;
        for(const [ci,c] of (n.event.data.choice||[]).entries()) {
          const top=y,items=[];
          for(const [ri,r] of (c.result||[]).entries()){
            const item={key:n.key,event:n.event,c,ci,r,ri,x:x+515,y};items.push(item);results.push(item);y+=142;
          }
          y=Math.max(y,top+115);
          const choice={key:n.key,event:n.event,c,ci,x:x+245,y:(top+y)/2-52};choices.push(choice);
          for(const item of items)paths.push(line(x+475,choice.y+52,item.x,item.y+59));
          y+=22;
        }
        y=Math.max(y,start+128);
        const pos={x,y:(start+y)/2-52,node:n};positions.set(n.key,pos);
        for(const ch of choices.filter(c=>c.key===n.key))paths.push(line(x+200,pos.y+52,ch.x,ch.y+52));
        y+=46;
      }
      height=Math.max(height,y);
    }
    for(const item of results) {
      const key=window.AtlasRun.continuationKey(item.event,item.ci,item.ri,{events:byKey}),dest=positions.get(key);
      if(dest)paths.push(line(item.x+380,item.y+59,dest.x,dest.y+52,dest.x<=item.x?'map-return':''));
    }
    const width=levels*1000-55;
    let svg=`<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 ${width} ${height}" width="${width}" height="${height}" role="img" aria-label="Sequência do encontro: ${graph.nodes.length} nós, escolhas e resultados"><defs><marker id="arrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="5" markerHeight="5" orient="auto-start-reverse"><path d="M 0 0 L 10 5 L 0 10 z" fill="#91aa7b"/></marker></defs>${paths.join('')}`;
    const texts=(text,x,y,max,lines=2)=>wrap(text,max,lines).map((line,i)=>`<text x="${x}" y="${y+i*17}">${esc(line)}</text>`).join('');
    for(const [key,{x,y,node:n}] of positions) {
      svg+=`<g class="map-node root clickable" data-event="${key}" role="link" tabindex="0" aria-label="Abrir ${esc(recordLabel(n.event))}"><title>${esc(n.event.title)}</title><rect x="${x}" y="${y}" width="200" height="104" rx="7"/><text x="${x+12}" y="${y+22}">NÓ #${n.event.id} · ${esc(types[n.event.group].label)}</text><text class="small" x="${x+12}" y="${y+42}">${n.depth===0?'Início do mapa':'Etapa seguinte'} · ${n.event.choices} escolhas</text>${texts(n.event.data.text||'Continuação após o resultado anterior',x+12,y+65,25)}</g>`;
    }
    for(const {x,y,event,c,ci} of choices) {
      const test=event.rules?.choices[ci]?.test;
      svg+=`<g class="map-node choice"><title>${esc(c.text)}${test?' · '+esc(test.label):''}</title><rect x="${x}" y="${y}" width="230" height="104" rx="6"/><text class="small" x="${x+12}" y="${y+19}">ESCOLHA ${ci+1} · NÓ #${event.id}</text>${texts(c.text||'Desfecho / ramo '+(ci+1),x+12,y+42,30)}${test?`<text class="map-test" x="${x+12}" y="${y+88}">${esc(short(test.label,31))}</text>`:''}</g>`;
    }
    for(const {x,y,event,ci,r,ri} of results) {
      const key=window.AtlasRun.continuationKey(event,ci,ri,{events:byKey}),rv=event.rules?.choices[ci]?.results[ri];
      const destination=key?`${positions.has(key)?'→':'Expandir →'} Nó #${r.nextEvent}${positions.get(key)?.x<=x?' · retorno / convergência':''}`:targetName(event,r);
      svg+=`<g class="map-node ${key?'clickable':''}" ${key?`data-event="${key}" role="link" tabindex="0" aria-label="Abrir continuação #${r.nextEvent}"`:''}><title>${esc(r.text)} · ${esc(destination)}</title><rect x="${x}" y="${y}" width="380" height="122" rx="6"/><text class="small" x="${x+12}" y="${y+20}">RESULTADO ${ci+1}.${ri+1}${rv?.testOutcome?' · '+esc(rv.testOutcome):''}</text>${texts(r.text||'Sem texto na fonte',x+12,y+41,48)}<text class="small" x="${x+12}" y="${y+88}">${esc(short(destination,57))}</text><text class="small" x="${x+12}" y="${y+107}">${esc(short(`Requisito: ${r.required||'nenhum'}`,57))}</text></g>`;
    }
    $('choiceMap').innerHTML=svg+'</svg>';zoom=1;mapNeedsFit=true;applyZoom();
    $('mapTargets').innerHTML=`<p class="map-sequence-info">${graph.nodes.length} nós conectados. Leia da esquerda para a direita; linhas tracejadas indicam retornos. As condições de cada ramo continuam valendo.</p>${graph.truncated?'<button id="moreMapSteps">Mostrar mais etapas e ramificações</button>':''}<details class="map-node-list"><summary>Etapas do encontro em lista</summary>${graph.nodes.map(n=>`<div>${recordLink(n.key,`${recordLabel(n.event)} — ${short(n.event.title,95)}`)}<ul>${(n.event.data.choice||[]).map((c,ci)=>`<li>${esc(plain(c.text)||'Desfecho / ramo '+(ci+1))}${n.event.rules?.choices[ci]?.test?' · '+esc(n.event.rules.choices[ci].test.label):''}<ul>${(c.result||[]).map((r,ri)=>`<li>${esc(n.event.rules?.choices[ci]?.results[ri]?.testOutcome||'Resultado '+(ri+1))}: ${esc(short(plain(r.text),170))} — ${targetControl(n.event,r)}</li>`).join('')}</ul></li>`).join('')}</ul></div>`).join('')}</details>`;
    $('moreMapSteps')?.addEventListener('click',()=>{mapDepth+=3;mapLimit+=32;renderMap(e,true);fitMap();});
    $('choiceMap').querySelectorAll('[data-event]').forEach(node=>node.addEventListener('keydown',event=>{if(event.key==='Enter'||event.key===' '){event.preventDefault();openEvent(node.dataset.event);}}));
  }
  function applyZoom(){const svg=$('choiceMap').querySelector('svg');if(!svg)return;const [, ,w,h]=svg.getAttribute('viewBox').split(' ').map(Number);svg.style.width=`${w*zoom}px`;svg.style.height=`${h*zoom}px`;$('zoomReset').textContent=`${Math.round(zoom*100)}%`;}
  function fitMap(){const svg=$('choiceMap').querySelector('svg');if(!svg)return;zoom=Math.min(1,Math.max(.45,($('mapViewport').clientWidth-42)/1080));applyZoom();mapNeedsFit=false;}
  $('zoomOut').onclick=()=>{zoom=Math.max(.1,zoom-.15);applyZoom();};$('zoomIn').onclick=()=>{zoom=Math.min(2,zoom+.15);applyZoom();};$('zoomReset').onclick=fitMap;
  function setTab(tab) {
    for(const name of ['overview','map','incoming']){
      const selected=name===tab;
      $(name+'Panel').hidden=!selected;$(name+'Tab').setAttribute('aria-selected',String(selected));$(name+'Tab').tabIndex=selected?0:-1;
    }
    if(tab==='map' && mapNeedsFit)fitMap();
  }
  for(const name of ['overview','map','incoming']){
    $(name+'Tab').onclick=()=>setTab(name);
    $(name+'Tab').addEventListener('keydown',event=>{
      if(!['ArrowLeft','ArrowRight','Home','End'].includes(event.key))return;
      event.preventDefault();const tabs=['overview','map','incoming'].filter(t=>!$(t+'Tab').hidden);
      let index=tabs.indexOf(name);
      index=event.key==='Home'?0:event.key==='End'?tabs.length-1:(index+(event.key==='ArrowLeft'?-1:1)+tabs.length)%tabs.length;
      setTab(tabs[index]);$(tabs[index]+'Tab').focus();
    });
  }
  function updateDetailActions() {
    if(!current)return;
    const saved=favorites.has(current.key);
    $('favoriteToggle').textContent=saved?'★ Remover favorito':'☆ Salvar favorito';$('favoriteToggle').setAttribute('aria-pressed',String(saved));
    $('permalink').href=routeURL(current.key,current.kind==='event'?'events':current.kind);
    $('detailBack').hidden=!detailHistory.length;
  }
  function openRecord(key,fromRoute=false) {
    const e=byKey.get(key);if(!e)return;
    if(!dialog.open){lastFocus=document.activeElement;detailHistory=[];dialog.showModal();document.body.style.overflow='hidden';}
    else if(current && !fromRoute && current.key!==key)detailHistory.push(current.key);
    current=e;
    $('detailCategory').textContent=(e.kind==='event'?types[e.group].title:sections[e.kind].title).toUpperCase();
    $('detailTitle').textContent=e.kind==='event'?short(e.title.split(/(?<=[.!?])\s/)[0],110):e.title;
    $('detailId').textContent=e.kind==='event'?`${types[e.group].code} · ${String(e.id).padStart(4,'0')} / ${e.source}`:recordLabel(e);
    $('useInRun').hidden=e.kind!=='event';
    $('mapTab').hidden=e.kind!=='event';$('incomingTab').hidden=e.kind!=='event';
    $('overviewTab').textContent=e.kind==='event'?'Detalhes do evento':'Detalhes do registro';
    if(e.kind==='event'){renderOverview(e);renderMap(e);renderIncoming(e);}
    else {renderCatalogDetail(e);$('choiceMap').innerHTML='';$('incomingPanel').innerHTML='';}
    setTab('overview'); updateDetailActions();$('actionStatus').textContent='';
    document.querySelector('.dialog-content').scrollTop=0;$('mapViewport').scrollTop=0;$('mapViewport').scrollLeft=0;
    visits=[key,...visits.filter(k=>k!==key)].slice(0,100);saveNotebook();
    if(state.view==='history')render();
  }
  $('favoriteToggle').onclick=()=>{if(current)toggleFavorite(current.key);};
  $('copyLink').onclick=async()=>{
    if(!current)return;
    const url=$('permalink').href;
    try {
      if(!navigator.clipboard?.writeText)throw new Error('clipboard unavailable');
      await navigator.clipboard.writeText(url);$('actionStatus').textContent='Link copiado. Ele abre este registro diretamente.';
    } catch {
      $('actionStatus').textContent='Copie o endereço abaixo:';
      const input=document.createElement('input');input.value=url;input.readOnly=true;input.setAttribute('aria-label','Link para copiar');
      $('actionStatus').append(input);input.focus();input.select();
    }
  };
  $('detailBack').onclick=()=>{
    const key=detailHistory.pop();if(!key)return;
    writeRoute(key);openRecord(key,true);
  };
  function closeDetails() {
    if(current && readRoute().key===current.key)writeRoute(null);
    dialog.close();
  }
  $('closeDialog').onclick=closeDetails;
  dialog.addEventListener('cancel',event=>{event.preventDefault();closeDetails();});
  dialog.addEventListener('click',event=>{
    if(event.target===dialog){const r=dialog.getBoundingClientRect();if(event.clientX<r.left||event.clientX>r.right||event.clientY<r.top||event.clientY>r.bottom)closeDetails();}
  });
  dialog.addEventListener('close',()=>{
    // A close event can be queued while browser navigation already opened another record.
    if(dialog.open)return;
    document.body.style.overflow='';
    current=null;detailHistory=[];
    if(lastFocus?.isConnected)lastFocus.focus();
  });
  window.addEventListener('storage',event=>{
    if(event.key===storageKey || event.key===null){loadNotebook();render();updateDetailActions();}
  });
  $('statEvents').textContent=fmt(events.length);
  $('statChoices').textContent=fmt(events.reduce((n,e)=>n+e.choices,0));
  $('statResults').textContent=fmt(events.reduce((n,e)=>n+e.results,0));
  $('useInRun').onclick=()=>{if(current?.kind==='event')window.AtlasGame?.chooseEvent(current.key);};
  window.AtlasGame?.init(navigateView);
  renderAudit();
  syncRoute();
})();
