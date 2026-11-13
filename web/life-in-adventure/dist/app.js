'use strict';
(() => {
  const $ = id => document.getElementById(id);
  const esc = value => String(value ?? '').replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const plain = value => String(value ?? '').replace(/<[^>]*>/g, '').replace(/\|[^|]*\|/g, '').replace(/\s+/g, ' ').trim();
  const normalize = value => String(value).normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase();
  const fmt = n => Number(n).toLocaleString('pt-BR');
  const short = (s, n=110) => s.length > n ? `${s.slice(0,n).trim()}…` : s;
  function initTheme() {
    const key='life-in-adventure:theme:v1',media=window.matchMedia('(prefers-color-scheme: dark)'),button=$('themeToggle');
    let preference=null;
    const valid=value=>value==='light'||value==='dark'?value:null;
    try{preference=valid(localStorage.getItem(key));}catch{}
    const apply=()=>{
      const dark=(preference||(media.matches?'dark':'light'))==='dark';
      document.documentElement.dataset.theme=dark?'dark':'light';
      const label=dark?'Ativar modo claro':'Ativar modo escuro';
      button.setAttribute('aria-label',label);button.setAttribute('title',label);button.setAttribute('aria-pressed',String(dark));
      document.querySelector('meta[name="theme-color"]').content=dark?'#0e1b15':'#152f2a';
    };
    button.addEventListener('click',()=>{
      preference=document.documentElement.dataset.theme==='dark'?'light':'dark';apply();
      try{localStorage.setItem(key,preference);}catch{} // Still works for this visit when storage is blocked.
    });
    media.addEventListener('change',()=>{if(!preference)apply();});
    window.addEventListener('storage',event=>{
      if(event.key===key||event.key===null){preference=valid(event.newValue);apply();}
    });
    apply();
  }
  initTheme();
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
    combat:{title:'Calculadora de combate',label:'Calculadora de combate',icon:'⚔',description:'Monte seu equipamento e compare estimativas de vitória contra os monstros.'},
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
  const narrativeIndex=window.AtlasRun.createIndex(source);
  const eventNarrative=(event,text)=>window.AtlasRun.eventText(event,text,narrativeIndex);
  const events = source.events.map((e, index) => {
    const choices = e.data.choice || [], results = choices.flatMap(c => c.result || []);
    const title = plain(eventNarrative(e,e.data.text)) || `Continuação do evento · ${types[e.group].label} #${e.id}`;
    const tags = [];
    if (e.data.required || choices.some(c => c.required) || results.some(r => r.required)) tags.push('Com requisitos');
    if (results.some(r => r.reward)) tags.push('Com recompensas');
    if (choices.some(c => (c.result || []).length > 1)) tags.push('Múltiplos resultados');
    if (results.some(r => Number.isInteger(r.nextEvent) && r.nextEvent >= 0)) tags.push('Com continuação');
    if (results.some(r => Number.isInteger(r.nextEvent) && r.nextEvent < 0)) tags.push('Destino especial');
    if (!plain(e.data.text)) tags.push('Sem texto inicial');
    return {...e, kind:'event', key:`${e.group}:${e.id}`, index, title, tags, choices:choices.length, results:results.length,
      search:normalize(`${e.id} ${e.group} ${e.source} ${types[e.group].label} ${title} ${JSON.stringify(e.data)} ${JSON.stringify(e.rules)}`)};
  });
  const catalogs = (source.catalogs || []).map((c,index) => ({...c, index, search:normalize(`${c.id} ${c.title} ${c.description} ${JSON.stringify(c.raw)} ${JSON.stringify(c.scaling||[])}`)}));
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
  const state = {view:'events', query:'', category:'all', tags:new Set(), sort:'default', page:1, pageSize:25, facets:{}};
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
  const facetState=()=>state.facets[state.view]||(state.facets[state.view]={});
  const statNames=window.AtlasRun.STATS;
  const facetCache=new Map();
  const effectRecords=catalogs.filter(c=>c.kind==='ability'&&c.variant==='0');
  const statWords={0:['saude','vida'],1:['sanidade'],2:['experiencia'],3:['alinhamento'],4:['ouro'],5:['forca'],6:['destreza'],7:['inteligencia'],12:['carisma'],13:['constituicao'],14:['sabedoria'],8:['saude maxima'],9:['sanidade maxima']};
  const statCodes={0:['HP'],2:['EXP'],5:['FOR','STR'],6:['DES','DEX'],7:['INT'],12:['CAR','CHA'],13:['CON'],14:['SAB','WIS']};
  function recordFacets(e) {
    if(facetCache.has(e.key))return facetCache.get(e.key);
    const f={attributes:new Set(),tests:new Set(),rewards:new Set(),refs:new Set((e.references||[]).map(r=>r.key)),effects:new Set(),person:'',effectText:''};
    const addAttribute=index=>{if(Object.hasOwn(statNames,index))f.attributes.add(String(index));};
    if(e.kind==='event') {
      const inspect=(view,reward=false)=>{for(const token of view?.tokens||[]){const m=token.model;if(!token.known||!m){if(reward)f.rewards.add('unknown');continue;}
        if(m.domain==='userData_effective'||m.operation==='change_user_data')addAttribute(m.index);
        if(!reward)continue;
        if(m.operation==='change_user_data') {
          const q=m.quantity,k=String(m.index);
          if(k==='4'&&q!==0)f.rewards.add(q>0?'gold_gain':'gold_loss');
          if(k==='2'&&q>0)f.rewards.add('exp');
          if(k==='0'&&q!==0)f.rewards.add(q>0?'health_gain':'health_loss');
          if(k==='1'&&q!==0)f.rewards.add(q>0?'sanity_gain':'sanity_loss');
          if(k==='3'&&q!==0)f.rewards.add('alignment');
          if(['5','6','7','12','13','14'].includes(k)&&q!==0)f.rewards.add('attribute');
        }
        if(m.operation==='add_item')f.rewards.add('item_gain');if(m.operation==='remove_item')f.rewards.add('item_loss');
        if(m.operation==='start_combat')f.rewards.add('combat');
        if(m.operation?.startsWith('record_')&&m.operation.endsWith('_ending'))f.rewards.add('ending');
        if(m.operation?.startsWith('set_'))f.rewards.add('story');
      }};
      inspect(e.rules?.required);
      for(const [ci,choice] of (e.data.choice||[]).entries()) {
        const cv=e.rules?.choices?.[ci];inspect(cv?.required);
        for(const a of cv?.test?.attributes||[]){addAttribute(a.index);f.tests.add(String(a.index));}
        for(const rv of cv?.results||[]){inspect(rv.required);inspect(rv.reward,true);}
      }
      f.person=normalize(plain([e.data.text,...(e.data.choice||[]).flatMap(c=>[c.text,...(c.result||[]).map(r=>r.text)])].join(' ')));
    } else {
      // These are recorded formula dependencies and textual citations, not inferred bonuses.
      for(const value of Object.values(e.raw||{}))if(typeof value==='string')for(const term of value.split('|')) {
        const p=term.split('_');if(p.length===3&&p[0]==='0'&&Number.isFinite(Number(p[2]))&&Number(p[2])!==0)addAttribute(p[1]);
      }
    }
    for(const ref of e.references||[])if(ref.key.startsWith('ability:'))f.effects.add(ref.key.split(':').slice(0,2).join(':')+':0');
    if(e.kind==='ability')f.effects.add(`ability:${e.id}:0`);
    const linked=[...f.effects].map(key=>byKey.get(key)).filter(Boolean);
    const effectOriginal=plain([e.title,e.description,...linked.flatMap(c=>[c.title,c.description])].join(' '));
    f.effectText=normalize(effectOriginal);
    if(e.kind!=='event')for(const [key,words] of Object.entries(statWords))if(words.some(word=>new RegExp(`\\b${word}\\b`,'i').test(f.effectText)))addAttribute(key);
    // Preserve the source's case for stat abbreviations. Portuguese “for” is
    // a verb in descriptions such as Cura's “Se a Defesa for inferior…”.
    if(e.kind!=='event')for(const [key,codes] of Object.entries(statCodes))if(codes.some(code=>new RegExp(String.raw`\b${code}\b`).test(effectOriginal)))addAttribute(key);
    facetCache.set(e.key,f);return f;
  }
  const facetOptions=kind=>catalogs.filter(c=>c.kind===kind&&(kind!=='ability'||c.variant==='0')).sort((a,b)=>a.title.localeCompare(b.title,'pt-BR')||Number(a.id)-Number(b.id)).map(c=>[c.key,`${c.title} · #${c.id}`]);
  const attributeOptions=Object.entries(statNames).map(([key,label])=>[key,label]);
  const rewardOptions=[['gold_gain','Ganhar ouro'],['gold_loss','Gastar / perder ouro'],['exp','Ganhar EXP'],['item_gain','Receber item'],['item_loss','Consumir / perder item'],['health_gain','Recuperar saúde'],['health_loss','Perder saúde'],['sanity_gain','Recuperar sanidade'],['sanity_loss','Perder sanidade'],['attribute','Alterar atributo principal'],['alignment','Alterar alinhamento'],['ending','Registrar epílogo'],['combat','Iniciar combate'],['story','Alterar estado de história'],['unknown','Com efeito ainda não interpretado']];
  const codedOptions=(kind,key,label)=>[...new Set(catalogs.filter(c=>c.kind===kind).map(c=>c.raw?.[key]).filter(v=>v!==undefined&&v!==''))].sort((a,b)=>Number(a)-Number(b)).map(v=>[String(v),`${label} ${v}`]);
  function facetFields(view) {
    const attribute={key:'attribute',label:view==='events'?'Atributo relacionado':'Atributo citado / fórmula',options:attributeOptions};
    const effectText={key:'effectText',label:'Efeito / descrição',type:'search',placeholder:'Ex.: regeneração, dano, imunidade…'};
    const effects={key:'effect',label:'Habilidade / efeito relacionado',options:facetOptions('ability')};
    const linked={key:'linked',label:'Relação com eventos',options:[['yes','Com referências em eventos'],['no','Sem referências em eventos']]};
    if(view==='events')return [attribute,{key:'test',label:'Teste de atributo',options:attributeOptions.filter(([k])=>['5','6','7','12','13','14'].includes(k))},{key:'reward',label:'Consequência / recompensa',options:rewardOptions},{key:'item',label:'Item relacionado',options:facetOptions('item')},{key:'monster',label:'Monstro relacionado',options:facetOptions('monster')},{key:'trait',label:'Traço relacionado',options:facetOptions('trait')},{key:'effect',label:'Habilidade relacionada',options:facetOptions('ability')},{key:'person',label:'NPC / personagem (texto)',type:'search',placeholder:'Ex.: Cira, chefe da vila…'}];
    if(view==='item')return [{key:'scalingAttribute',label:'Atributo do item (escala)',options:[...attributeOptions.filter(([key])=>['5','6','7','12','13','14'].includes(key)),['none','Sem atributo de escala registrado']]},{key:'scalingCount',label:'Quantidade de atributos de escala',options:[['1','Um atributo'],['2','Dois atributos']]},attribute,effects,effectText,{key:'category',label:'Categoria (código do jogo)',options:codedOptions('item','category','Categoria')},{key:'rarity',label:'Raridade (código do jogo)',options:codedOptions('item','rarity','Raridade')},{key:'priceMin',label:'Preço mínimo registrado',type:'number'},{key:'priceMax',label:'Preço máximo registrado',type:'number'},linked];
    if(view==='monster')return [effects,effectText,{key:'challenge',label:'Desafio (código do jogo)',options:codedOptions('monster','challenge','Desafio')},{key:'monsterType',label:'Tipo (código do jogo)',options:codedOptions('monster','type','Tipo')},linked];
    if(view==='ability')return [attribute,effectText,{key:'variant',label:'Variante',options:codedOptions('ability','number','Variante')},linked];
    if(view==='trait')return [attribute,effectText,{key:'jewels',label:'Preço em joias',options:[['known','Com preço registrado'],['unknown','Sem preço registrado']]},linked];
    if(view==='ending')return [{key:'endingGroup',label:'Grupo de epílogo',options:[['main','História principal'],['sub','Conto']]},{key:'story',label:'História / conto',options:[...new Set(catalogs.filter(c=>c.kind==='ending').map(c=>c.story))].sort((a,b)=>a-b).map(v=>[String(v),`História / conto #${v}`])},effectText,linked];
    if(view==='favorites'||view==='history')return [{key:'recordKind',label:'Tipo de registro',options:Object.entries(sections).filter(([key])=>!['game','combat','favorites','history'].includes(key)).map(([key,c])=>[key==='events'?'event':key,c.label])},attribute,effectText];
    return [];
  }
  function matchesFacets(e) {
    const chosen=facetState(),f=recordFacets(e);
    const scalingAttributes=[...new Set((e.scaling||[]).filter(s=>s.fully_decoded).flatMap(s=>s.attributes.map(a=>String(a.index))))];

    for(const [key,value] of Object.entries(chosen))if(value!=='') {
      if(key==='attribute'&&!f.attributes.has(value))return false;
      if(key==='scalingAttribute'&&(value==='none'?(e.scaling||[]).some(s=>!s.fully_decoded||s.attributes.length>0):!scalingAttributes.includes(value)))return false;
      if(key==='scalingCount'&&scalingAttributes.length!==Number(value))return false;
      if(key==='test'&&!f.tests.has(value))return false;
      if(key==='reward'&&!f.rewards.has(value))return false;
      if(['item','monster','trait'].includes(key)&&!f.refs.has(value))return false;
      if(key==='effect'&&!f.effects.has(value)&&!f.refs.has(value))return false;
      if(key==='person'&&!normalize(value).trim().split(/\s+/).every(w=>f.person.includes(w)))return false;
      if(key==='effectText'&&!normalize(value).trim().split(/\s+/).every(w=>f.effectText.includes(w)))return false;
      if(key==='category'&&String(e.raw?.category)!==value)return false;
      if(key==='rarity'&&String(e.raw?.rarity)!==value)return false;
      if(key==='challenge'&&String(e.raw?.challenge)!==value)return false;
      if(key==='monsterType'&&String(e.raw?.type)!==value)return false;
      if(key==='variant'&&String(e.variant)!==value)return false;
      if(key==='endingGroup'&&e.ending_group!==value)return false;
      if(key==='story'&&String(e.story)!==value)return false;
      if(key==='recordKind'&&e.kind!==value)return false;
      if(key==='jewels'&&((e.raw?.jewel!==undefined&&e.raw.jewel!==''&&Number.isFinite(Number(e.raw.jewel)))!==(value==='known')))return false;
      if(key==='linked'&&((referencedBy.get(e.key)||[]).some(r=>r.record.kind==='event')!==(value==='yes')))return false;
      if(key==='priceMin'||key==='priceMax') {
        if(e.raw?.price===undefined||e.raw.price===''||!Number.isFinite(Number(e.raw.price)))return false;
        if(key==='priceMin'&&Number(e.raw.price)<Number(value)||key==='priceMax'&&Number(e.raw.price)>Number(value))return false;
      }
    }
    return true;
  }
  function renderCatalogFacets() {
    const fields=facetFields(state.view),chosen=facetState();let host=$('catalogFilters');
    if(!host){host=document.createElement('details');host.id='catalogFilters';host.className='catalog-filters';document.querySelector('.search-row').after(host);}
    host.hidden=!fields.length;
    if(host.dataset.view!==state.view) {
      host.dataset.view=state.view;
      host.innerHTML=`<summary>Filtros deste catálogo <span id="catalogFacetCount"></span></summary><div class="catalog-filter-grid">${fields.map(f=>`<label for="facet-${f.key}">${esc(f.label)}${f.options?`<select id="facet-${f.key}" data-catalog-facet="${f.key}"><option value="">Todos</option>${f.options.map(([key,label])=>`<option value="${esc(key)}">${esc(label)}</option>`).join('')}</select>`:`<input id="facet-${f.key}" data-catalog-facet="${f.key}" type="${f.type}" ${f.type==='number'?'min="0" step="any" inputmode="decimal"':''} placeholder="${esc(f.placeholder||'Sem limite')}">`}</label>`).join('')}</div><p class="catalog-filter-note">${state.view==='events'?'Relações incluem referências e menções registradas. Uma menção a um item ou monstro não garante recompensa ou combate. NPCs são pesquisados pelo texto, sem catálogo separado.':'Atributos relacionados vêm de fórmulas e citações nas descrições. Efeitos incluem habilidades vinculadas; valores registrados podem variar na run.'}</p><div class="catalog-filter-actions"><button type="button" data-clear-catalog-facets>Limpar filtros deste catálogo</button></div>`;
    }
    for(const control of host.querySelectorAll('[data-catalog-facet]'))if(control.value!==(chosen[control.dataset.catalogFacet]||''))control.value=chosen[control.dataset.catalogFacet]||'';
    const active=fields.filter(f=>chosen[f.key]);$('catalogFacetCount').textContent=active.length?`(${active.length} ativos)`:'';
    for(const f of active) {
      const label=f.options?.find(([key])=>key===chosen[f.key])?.[1]||chosen[f.key];
      $('appliedFilters').insertAdjacentHTML('beforeend',`<button class="catalog-facet-chip" data-remove-catalog-facet="${f.key}">${esc(f.label)}: ${esc(label)} ×</button>`);
    }
    host.querySelector('[data-clear-catalog-facets]').disabled=!active.length;
  }

  function render() {
    const eventView = state.view === 'events', section = sections[state.view];
    const gameView=state.view==='game',combatView=state.view==='combat';
    window.AtlasLayout?.setGameView(gameView);
    $('gameRoot').hidden=!gameView;$('combatRoot').hidden=!combatView;$('atlasCatalog').hidden=gameView||combatView;$('ruleCoverage').hidden=gameView||combatView;
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
    if(combatView){window.AtlasCombatUI.render();renderNotebookCounts();return;}
    for(const [value,label] of [['price-asc','Preço: menor primeiro'],['price-desc','Preço: maior primeiro']]) {
      if(!$('sort').querySelector(`[value="${value}"]`))$('sort').add(new Option(label,value));
      $('sort').querySelector(`[value="${value}"]`).hidden=state.view!=='item';
    }
    $('sort').querySelector('[value=choices]').hidden=!eventView;
    $('sort').querySelector('[value=results]').hidden=!eventView;
    $('sort').querySelector('[value=default]').textContent=state.view === 'history'?'Mais recentes':'Tipo e número';
    let pool;
    if (eventView) pool=events.filter(e => (state.category==='all' || e.group===state.category) && [...state.tags].every(t=>e.tags.includes(t)));
    else if (state.view === 'favorites') pool=[...favorites].map(key=>byKey.get(key));
    else if (state.view === 'history') pool=visits.map(key=>byKey.get(key));
    else pool=catalogs.filter(e=>e.kind===state.view);
    filtered=pool.filter(e=>matchesQuery(e)&&matchesFacets(e));
    if (state.sort === 'title') filtered.sort((a,b)=>a.title.localeCompare(b.title,'pt-BR') || a.index-b.index);
    else if(state.view==='item'&&['price-asc','price-desc'].includes(state.sort))filtered.sort((a,b)=>{
      const price=e=>e.raw?.price!==undefined&&e.raw.price!==''&&Number.isFinite(Number(e.raw.price))?Number(e.raw.price):null;
      const ap=price(a),bp=price(b);return ap===null?(bp===null?a.index-b.index:1):bp===null?-1:(state.sort==='price-asc'?ap-bp:bp-ap)||a.index-b.index;
    });
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
      $('recordGrid').innerHTML=slice.map(e=>`<article class="catalog-card"><div class="catalog-card-meta"><span class="badge">${esc(recordLabel(e))}</span>${favoriteButton(e)}</div><h3>${recordLink(e.key,short(e.title,120))}</h3>${itemScalingBadges(e)}<p>${esc(short(plain(e.description || e.data?.choice?.map(c=>c.text).join(' · ') || 'Abra para consultar os detalhes.'),180))}</p><footer>${e.kind==='event'?`${e.choices} escolhas · ${e.results} resultados`:`${e.kind==='item'?`Preço registrado: ${e.raw.price===undefined||e.raw.price===''?'não informado':fmt(e.raw.price)} · `:''}${fmt((referencedBy.get(e.key)||[]).filter(r=>r.record.kind==='event').length)} referências em eventos`}</footer></article>`).join('');
    }
    renderCatalogFacets();
    $('emptyState').hidden=filtered.length!==0;
    $('emptyTitle').textContent=state.view==='favorites'?'Nenhum favorito encontrado':state.view==='history'?'Nenhuma consulta encontrada':'Nenhum registro encontrado';
    $('emptyDescription').textContent=state.view==='favorites'?'Use a estrela nos eventos ou catálogos para guardar seus favoritos.':state.view==='history'?'Abra um evento ou registro para começar seu histórico.':'Tente outro termo ou remova alguns filtros.';
    $('emptyReset').hidden=!state.query && !eventView && !Object.values(facetState()).some(Boolean);
    $('resultCount').textContent=`${fmt(filtered.length)} registros`;
    $('catalogTitle').firstChild.textContent=eventView?(state.category==='all'?'Todos os eventos ':`${types[state.category].title} `):`${section.label} `;
    $('pageInfo').textContent=filtered.length?`Mostrando ${fmt(start+1)}–${fmt(Math.min(start+state.pageSize,filtered.length))} de ${fmt(filtered.length)} registros`:'Nenhum registro encontrado';
    $('pageNumber').textContent=`${state.page} / ${fmt(pages)}`;
    $('prevPage').disabled=state.page===1; $('nextPage').disabled=state.page>=pages;
    renderNotebookCounts();
  }
  function resetFilters() { state.facets[state.view]={};state.query='';state.category='all';state.tags.clear();state.page=1;$('search').value='';render(); }
  function toggleFavorite(key) {
    if (!byKey.has(key)) return;
    favorites.has(key)?favorites.delete(key):favorites.add(key); saveNotebook(); render();
    if (current) updateDetailActions();
  }
  document.addEventListener('click',event=>{
    if(event.defaultPrevented || event.button!==0) return;
    const facet=event.target.closest('[data-remove-catalog-facet]');
    if(facet){delete facetState()[facet.dataset.removeCatalogFacet];state.page=1;render();return;}
    if(event.target.closest('[data-clear-catalog-facets]')){state.facets[state.view]={};state.page=1;render();return;}
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
  let facetTimer;
  document.addEventListener('change',event=>{const key=event.target.dataset.catalogFacet;if(!key)return;facetState()[key]=event.target.value;state.page=1;render();});
  document.addEventListener('input',event=>{const key=event.target.dataset.catalogFacet;if(!key||event.target.tagName==='SELECT')return;clearTimeout(facetTimer);facetState()[key]=event.target.value;state.page=1;facetTimer=setTimeout(render,120);});
  let searchTimer;
  $('search').addEventListener('input',event=>{clearTimeout(searchTimer);state.query=event.target.value;state.page=1;searchTimer=setTimeout(render,120);});
  $('sort').onchange=event=>{state.sort=event.target.value;state.page=1;render();};
  $('pageSize').onchange=event=>{state.pageSize=Number(event.target.value);state.page=1;render();};
  $('clearFilters').onclick=resetFilters; $('emptyReset').onclick=resetFilters;
  $('clearHistory').onclick=()=>{visits=[];saveNotebook();render();};
  const changePage=delta=>{state.page+=delta;render();$('catalogTitle').scrollIntoView({block:'start',behavior:'smooth'});};
  $('prevPage').onclick=()=>changePage(-1);$('nextPage').onclick=()=>changePage(1);
  document.addEventListener('keydown',event=>{
    if(event.key==='/' && !dialog.open && !['INPUT','TEXTAREA','SELECT'].includes(document.activeElement?.tagName)){event.preventDefault();(state.view==='game'?$('gameEventQuery'):state.view==='combat'?$('combatRoot').querySelector('[data-combat-query]'):$('search'))?.focus();}
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
  function futureLinks(e,ci) {
    const f=window.AtlasRun.forecastChoice(e,ci,window.AtlasRun.blankState(),{events:byKey,records:byKey});
    if(!f.stages.length&&!f.combats.length)return '';
    const enemies=[...new Map(f.combats.map(c=>[c.enemyKey||c.enemy,c])).values()];
    return `<div class="future-consequences" data-atlas-forecast><strong>Desdobramentos desta escolha</strong>${enemies.length?`<p>Combate possível neste caminho: ${enemies.map(c=>c.enemyKey&&byKey.has(c.enemyKey)?recordLink(c.enemyKey,c.enemy):esc(c.enemy)).join(', ')}.${f.peacefulExit?' Há também uma saída sem combate registrada.':''}</p>`:''}${f.tests.length?`<p>${[...new Set(f.tests.map(t=>t.test.label))].map(esc).join(' · ')} nas próximas etapas. Testes podem falhar; a recompensa depende do resultado.</p>`:''}<p>Etapas relacionadas, incluindo ramificações: ${f.stages.slice(0,10).map(n=>recordLink(n.key,`${types[byKey.get(n.key).group].label} #${byKey.get(n.key).id}`)).join(' · ')}${f.stages.length>10?` · mais ${f.stages.length-10}`:''}.</p>${f.truncated?'<p>Resumo limitado; consulte o mapa para explorar mais ramificações.</p>':''}<p class="map-note">As condições de cada ramo continuam valendo. Esta lista não confirma vitória nem disponibilidade na sua run.</p></div>`;
  }
  function renderOverview(e) {
    const raw=e.data;
    $('overviewPanel').innerHTML=`<div class="event-meta">${badge(e)}${e.tags.map(tagBadge).join('')}</div><p class="evidence-note">Versão ${esc(source.version)} · ${esc(source.rulesStatus)} Regras desconhecidas continuam identificadas pelo código. Alterações de atributos podem ter limites e efeitos adicionais.</p><div class="section-label">O ENCONTRO</div><div class="narrative">${esc(plainNarrative(eventNarrative(e,raw.text))) || 'Este nó não possui texto inicial no arquivo. Consulte os resultados do evento anterior e as escolhas abaixo.'}</div>${ruleBlock('Para entrar no evento',e.rules?.required)}${rawBlock(raw,'Ver registro original completo')}${referenceSection(e)}${stateSection(e)}<div class="choices-heading"><h3>${e.choices} ${e.choices===1?'escolha registrada':'escolhas registradas'}</h3><button id="expandChoices" class="text-button">Expandir tudo</button></div>${(raw.choice||[]).map((choice,ci)=>{
      const cv=e.rules?.choices[ci];
      return `<details class="choice-card" ${ci===0?'open':''}><summary><span class="choice-number">${String(ci+1).padStart(2,'0')}</span>${esc(plain(eventNarrative(e,choice.text))) || 'Desfecho / ramo '+(ci+1)}${cv?.test?`<span class="attribute-test">${esc(cv.test.label)}</span>`:''}</summary><div class="choice-content">${cv?.test?`<p class="test-explanation">${esc(cv.test.label)}: estes atributos influenciam o sorteio do resultado. Não é um requisito mínimo para escolher; probabilidade final não calculada.</p>`:''}${ruleBlock('Para escolher',cv?.required)}${futureLinks(e,ci)}${rawBlock(choice.required||'','Ver requisito original da escolha')}${(choice.result||[]).map((r,ri)=>{
        const rv=cv?.results[ri];
        return `<article class="result-card"><div class="result-heading"><span>RESULTADO ${ci+1}.${ri+1}${rv?.testOutcome?' · '+esc(rv.testOutcome):''}</span>${targetControl(e,r)}</div><p class="result-text">${esc(plainNarrative(eventNarrative(e,r.text))) || 'Sem texto de resultado no arquivo.'}</p><div class="rule-columns">${ruleBlock('Para este resultado',rv?.required)}${ruleBlock('Consequências registradas',rv?.reward,'Nenhuma recompensa registrada neste campo.')}</div><div class="result-fields">${probabilityBlock(r,rv)}${field('Tipo de resultado (código)',r.type)}${r.place!==undefined?field('Cenário',Number.isInteger(r.place)&&places[r.place]?`${places[r.place]} · ${r.place}`:r.place):''}</div>${rawBlock(r)}</article>`;
      }).join('')}</div></details>`;
    }).join('')}<p class="map-note">Pesos não são porcentagens. Só calculamos probabilidades estáticas para escolhas neutras, sem requisitos nos resultados e sem pesos variáveis.</p>`;
    $('expandChoices').onclick=()=>{
      const cards=[...$('overviewPanel').querySelectorAll('.choice-card')], expand=cards.some(c=>!c.open);
      cards.forEach(c=>c.open=expand);$('expandChoices').textContent=expand?'Recolher tudo':'Expandir tudo';
    };
  }
  function renderIncoming(e) {
    const rows=incoming.get(e.key)||[];
    $('incomingPanel').innerHTML=`<h3>Caminhos de chegada · ${fmt(rows.length)}</h3><p class="evidence-note">Cada conexão abaixo aponta para este evento na mesma tabela. Requisitos e sorteios ainda podem impedir a passagem. Ausência de conexões não comprova que o evento esteja inacessível.</p>${rows.length?rows.map(row=>`<article class="incoming-card">${recordLink(row.event.key,`${recordLabel(row.event)} — ${short(row.event.title,100)}`)}<p>Escolha ${row.choice+1}: ${esc(plain(eventNarrative(row.event,row.event.data.choice[row.choice].text))||'Sem texto na fonte')} · resultado ${row.result+1}</p><p>${esc(short(plain(eventNarrative(row.event,row.data.text)),220))}</p>${ruleBlock('Requisito de entrada na origem',row.event.rules?.required)}${ruleBlock('Requisito da escolha na origem',row.event.rules?.choices[row.choice]?.required)}${ruleBlock('Requisito do resultado na origem',row.event.rules?.choices[row.choice]?.results[row.result]?.required)}${rawBlock(row.data,'Ver resultado original da conexão')}</article>`).join(''):'<p>Nenhum resultado anterior aponta diretamente para este nó. O jogo também pode iniciar encontros por outras regras.</p>'}`;
  }
  function itemScalingBadges(e) {
    if(e.kind!=='item')return '';
    return (e.scaling||[]).filter(s=>s.fully_decoded&&s.attributes.length).map(s=>`<div class="item-scaling-badges" data-item-scaling="${s.field}"><span>Escala de ${s.field==='dmg'?'dano':'defesa'}:</span>${s.attributes.map(a=>`<span class="item-attribute" title="${esc(a.name)} — influencia ${s.field==='dmg'?'o dano':'a defesa do equipamento'}">${esc(a.abbreviation)}</span>`).join('')}</div>`).join('');
  }
  function itemScalingDetail(e) {
    if(e.kind!=='item')return '';
    const formulas=e.scaling||[],number=n=>Number(Number(n).toPrecision(7)).toLocaleString('pt-BR',{maximumFractionDigits:6});
    return `<section class="item-scaling-detail" data-item-scaling-detail><h3>Atributos do item</h3>${itemScalingBadges(e)}${formulas.length?formulas.map(s=>`<div><h4>${esc(s.label)}</h4>${s.fully_decoded?`<p>${s.attributes.map(a=>`<strong>${esc(a.abbreviation)} · ${esc(a.name)}</strong>`).join(' · ')||'Sem atributo de escala nesta fórmula.'}</p><p>Componente da fórmula: <strong>${number(s.base)}${s.terms.map(t=>` ${t.coefficient<0?'−':'+'} ${number(Math.abs(t.coefficient))} × ${esc(t.abbreviation)}`).join('')}</strong></p>${s.terms.length?`<ul>${s.terms.map(t=>`<li>Por ponto de ${esc(t.name)}: ${t.coefficient<0?'−':'+'}${number(Math.abs(t.coefficient))} neste componente de ${s.field==='dmg'?'dano':'defesa'}.</li>`).join('')}</ul>`:''}`:'<p>Esta fórmula ainda contém termos sem interpretação; consulte o registro original.</p>'}</div>`).join(''):'<p>Sem atributo de escala registrado nos campos de dano ou defesa deste item. Habilidades e efeitos são consultados separadamente.</p>'}${formulas.some(s=>s.attributes.length)?'<p class="item-scaling-note">Os atributos aparecem na ordem usada pelo jogo, do maior peso para o menor; pesos iguais mantêm a ordem original. Eles influenciam o valor do item conforme a ficha, sem conceder esses pontos de atributo. O valor final também pode depender de outros modificadores da run.</p>':''}</section>`;
  }
  function renderCatalogDetail(e) {
    const raw=e.raw;
    const labels={price:'Preço registrado',rarity:'Raridade (código)',category:'Categoria (código)',hp:e.kind==='item'?'Defesa (valor ou fórmula original)':'Saúde (valor base)',dmg:'Dano (valor ou fórmula original)',atkSpeed:'Velocidade de ataque registrada',grade:'Grau (código)',jewel:'Joias registradas',challenge:'Desafio (código)'};
    const fields=Object.entries(labels).filter(([k])=>raw[k]!==undefined).map(([k,label])=>field(label,raw[k])).join('');
    const variants=e.kind==='ability'?catalogs.filter(c=>c.kind==='ability' && c.id===e.id && c.key!==e.key):[];
    $('overviewPanel').innerHTML=`<span class="badge">${esc(recordLabel(e))}</span><p class="evidence-note">Versão ${esc(source.version)} · Descrição extraída do jogo. Fórmulas, códigos e marcadores como {0} são preservados; os valores finais dependem da aventura.</p><div class="narrative">${esc(plainNarrative(e.description)) || 'Sem descrição em português na fonte.'}</div>${itemScalingDetail(e)}<div class="result-fields catalog-fields">${fields}</div>${variants.length?`<section class="linked-records"><h3>Outras variantes desta habilidade</h3>${variants.map(c=>recordLink(c.key,`Variante ${c.variant}`,'variant-link')).join('')}</section>`:''}${referenceSection(e)}<section class="linked-records"><h3>Onde aparece</h3><p>Concessões e remoções são comandos registrados. Menções são apenas referências no texto. Epílogos registrados na aventura não comprovam o desbloqueio permanente do catálogo.</p><div id="relatedRecords"></div><button id="moreRelated" class="text-button" hidden>Mostrar mais conexões</button></section>${rawBlock(raw,'Ver registro original completo')}`;
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
      svg+=`<g class="map-node root clickable" data-event="${key}" role="link" tabindex="0" aria-label="Abrir ${esc(recordLabel(n.event))}"><title>${esc(n.event.title)}</title><rect x="${x}" y="${y}" width="200" height="104" rx="7"/><text x="${x+12}" y="${y+22}">NÓ #${n.event.id} · ${esc(types[n.event.group].label)}</text><text class="small" x="${x+12}" y="${y+42}">${n.depth===0?'Início do mapa':'Etapa seguinte'} · ${n.event.choices} escolhas</text>${texts(eventNarrative(n.event,n.event.data.text)||'Continuação após o resultado anterior',x+12,y+65,25)}</g>`;
    }
    for(const {x,y,event,c,ci} of choices) {
      const test=event.rules?.choices[ci]?.test;
      svg+=`<g class="map-node choice"><title>${esc(eventNarrative(event,c.text))}${test?' · '+esc(test.label):''}</title><rect x="${x}" y="${y}" width="230" height="104" rx="6"/><text class="small" x="${x+12}" y="${y+19}">ESCOLHA ${ci+1} · NÓ #${event.id}</text>${texts(eventNarrative(event,c.text)||'Desfecho / ramo '+(ci+1),x+12,y+42,30)}${test?`<text class="map-test" x="${x+12}" y="${y+88}">${esc(short(test.label,31))}</text>`:''}</g>`;
    }
    for(const {x,y,event,ci,r,ri} of results) {
      const key=window.AtlasRun.continuationKey(event,ci,ri,{events:byKey}),rv=event.rules?.choices[ci]?.results[ri];
      const destination=key?`${positions.has(key)?'→':'Expandir →'} Nó #${r.nextEvent}${positions.get(key)?.x<=x?' · retorno / convergência':''}`:targetName(event,r);
      svg+=`<g class="map-node ${key?'clickable':''}" ${key?`data-event="${key}" role="link" tabindex="0" aria-label="Abrir continuação #${r.nextEvent}"`:''}><title>${esc(eventNarrative(event,r.text))} · ${esc(destination)}</title><rect x="${x}" y="${y}" width="380" height="122" rx="6"/><text class="small" x="${x+12}" y="${y+20}">RESULTADO ${ci+1}.${ri+1}${rv?.testOutcome?' · '+esc(rv.testOutcome):''}</text>${texts(eventNarrative(event,r.text)||'Sem texto na fonte',x+12,y+41,48)}<text class="small" x="${x+12}" y="${y+88}">${esc(short(destination,57))}</text><text class="small" x="${x+12}" y="${y+107}">${esc(short(`Requisito: ${r.required||'nenhum'}`,57))}</text></g>`;
    }
    $('choiceMap').innerHTML=svg+'</svg>';zoom=1;mapNeedsFit=true;applyZoom();
    $('mapTargets').innerHTML=`<p class="map-sequence-info">${graph.nodes.length} nós conectados. Leia da esquerda para a direita; linhas tracejadas indicam retornos. As condições de cada ramo continuam valendo.</p>${graph.truncated?'<button id="moreMapSteps">Mostrar mais etapas e ramificações</button>':''}<details class="map-node-list"><summary>Etapas do encontro em lista</summary>${graph.nodes.map(n=>`<div>${recordLink(n.key,`${recordLabel(n.event)} — ${short(n.event.title,95)}`)}<ul>${(n.event.data.choice||[]).map((c,ci)=>`<li>${esc(plain(eventNarrative(n.event,c.text))||'Desfecho / ramo '+(ci+1))}${n.event.rules?.choices[ci]?.test?' · '+esc(n.event.rules.choices[ci].test.label):''}<ul>${(c.result||[]).map((r,ri)=>`<li>${esc(n.event.rules?.choices[ci]?.results[ri]?.testOutcome||'Resultado '+(ri+1))}: ${esc(short(plain(eventNarrative(n.event,r.text)),170))} — ${targetControl(n.event,r)}</li>`).join('')}</ul></li>`).join('')}</ul></div>`).join('')}</details>`;
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
    // A queued close must not steal focus from a search shortcut already used.
    if(lastFocus?.isConnected&&(document.activeElement===document.body||dialog.contains(document.activeElement)))lastFocus.focus();
  });
  window.addEventListener('storage',event=>{
    if(event.key===storageKey || event.key===null){loadNotebook();render();updateDetailActions();}
  });
  $('statEvents').textContent=fmt(events.length);
  $('statChoices').textContent=fmt(events.reduce((n,e)=>n+e.choices,0));
  $('statResults').textContent=fmt(events.reduce((n,e)=>n+e.results,0));
  $('useInRun').onclick=()=>{if(current?.kind==='event')window.AtlasGame?.chooseEvent(current.key);};
  window.AtlasGame?.init(target=>byKey.has(target)?navigateRecord(target):navigateView(target));
  window.AtlasCombatUI.init(target=>byKey.has(target)?navigateRecord(target):navigateView(target),()=>window.AtlasGame.getActiveRun());
  renderAudit();
  syncRoute();
})();
