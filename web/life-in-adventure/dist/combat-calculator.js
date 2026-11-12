/* Shared interface for the independent calculator and the run's equipment. */
'use strict';
(() => {
  const C=window.AtlasCombat,KEY='life-in-adventure:combat-calculator:v1';
  const esc=v=>String(v??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const norm=v=>String(v??'').normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase();
  const fmt=n=>Number(n).toLocaleString('pt-BR',{maximumFractionDigits:1});
  const pct=n=>`${Math.round(n*100)}%`;
  let index,navigate=()=>{},getRun=()=>null,standalone=null,storageWarning='';
  const rows=kind=>[...index.records.values()].filter(r=>r.kind===kind&&(kind!=='ability'||String(r.variant)==='0')).sort((a,b)=>a.title.localeCompare(b.title,'pt-BR'));
  const label=r=>`${r.title} · #${r.id}`;
  const variantLabel=raw=>{const [key,level]=raw.split('_');return `${index.records.get(`ability:${key}:0`)?.title||'Habilidade #'+key} · nível ${level}`;};
  const compatible={main:[0,1],off:[0,2],armor:[3],accessory:[4]};
  const numbers={attack:'Dano por ciclo',defense:'Defesa de combate',speed:'Ciclos por segundo',critical:'Chance crítica (0 a 1)',dodge:'Esquiva (0 a 0,75)',criticalMultiplier:'Multiplicador crítico'};
  const field=(id,title,value,attrs='')=>`<label>${esc(title)}<input id="${id}" value="${esc(value??'')}" ${attrs}></label>`;
  const inputNumber=(id,title,value,attrs='')=>field(id,title,value,`type="number" ${attrs.includes('step=')?'':'step="any"'} ${attrs.includes('min=')?'':'min="0"'} ${attrs}`);
  function defaults(){const setup=C.blankSetup();setup.level=1;setup.equippedKnown=true;return {version:1,setup,stats:Object.fromEntries(Object.keys(C.STATS).map(k=>[k,10])),traits:[],traitsComplete:true,statsMode:'effective'};}
  function cleanDraft(raw){
    if(!raw||raw.version!==1)throw new Error('Ficha da calculadora inválida.');
    const setup=C.cleanSetup(raw.setup,index),stats={};
    for(const key of Object.keys(C.STATS)){const n=raw.stats?.[key];if(n!==null&&(!Number.isFinite(n)||n<0||n>1e6))throw new Error('Atributo inválido.');stats[key]=n;}
    if(!Array.isArray(raw.traits)||raw.traits.some(id=>typeof id!=='string'||!index.records.has(`trait:${id}`)))throw new Error('Traço inválido.');
    return {version:1,setup,stats,traits:[...new Set(raw.traits)],traitsComplete:true,statsMode:raw.statsMode==='base'?'base':'effective'};
  }
  function load(){
    if(standalone)return;
    standalone=defaults();
    try{const raw=localStorage.getItem(KEY);if(raw)standalone=cleanDraft(JSON.parse(raw));}
    catch{storageWarning='Não foi possível recuperar a ficha da calculadora. Os dados anteriores foram preservados; alterações ficam nesta visita.';}
  }
  function save(input){
    standalone=cleanDraft(input);
    if(storageWarning)return;
    try{localStorage.setItem(KEY,JSON.stringify(standalone));}
    catch{storageWarning='A ficha da calculadora está apenas nesta visita. O navegador não permitiu salvá-la.';}
  }
  function chance(result){
    if(!result.ready)return 'A conferir';
    return result.probability!==null?`≈ ${pct(result.probability)}`:`${pct(result.min)}–${pct(result.max)}`;
  }
  function notesMarkup(unit){
    const notes=[...unit.notes,...(unit.unknown||[]).map(n=>`Efeito não simulado: ${n}.`)];
    return notes.length?`<details class="combat-coverage"><summary>Efeitos e limites desta ficha · ${notes.length}</summary><ul>${notes.map(n=>`<li>${esc(n)}</li>`).join('')}</ul></details>`:'<p class="combat-help">Os efeitos informados estão cobertos pelo modelo básico. A simulação continua sendo uma estimativa.</p>';
  }
  function summary(unit){
    if(!unit.ready)return `<div class="combat-incomplete" role="status"><strong>Complete a ficha para calcular.</strong><p>Falta conferir: ${unit.missing.map(esc).join(', ')}.</p></div>`;
    return `<div class="combat-power"><span>Índice de poder estimado</span><strong data-combat-power>${fmt(unit.power)}</strong><small>Índice do Atlas; pode diferir do poder exibido no jogo.</small></div><dl class="combat-metrics">${[['Dano por ciclo',unit.attack],['Defesa de combate',unit.defense],['Ciclos / segundo',unit.speed],['Crítico',pct(unit.critical)],['Esquiva',pct(unit.dodge)]].map(([k,v])=>`<div><dt>${k}</dt><dd>${typeof v==='string'?v:fmt(v)}</dd></div>`).join('')}</dl><p class="combat-help">A defesa é a reserva usada na luta. Ela é diferente da Saúde da aventura.</p>${notesMarkup(unit)}`;
  }
  function modelDetails(){return `<details class="combat-model"><summary>Como ler estas estimativas</summary><p>O jogo da versão 1.2.47 estima a chance repetindo lutas. O Atlas faz 400 simulações por cenário, com sorteios reproduzíveis, usando dano e defesa dos itens, atributos, grau, melhoria e habilidades cobertas.</p><p>O modelo é experimental: o ritmo dos ataques e alguns efeitos especiais ainda diferem do jogo, incluindo danos elementais, veneno, sangramento e interações de habilidades. O intervalo estatístico mede apenas a variação dos sorteios; ele não mede esses erros do modelo. Uma estimativa de 100% não garante vitória.</p><p>Quando o monstro tem habilidades variáveis, mostramos a faixa entre as variantes, sem inventar a frequência de cada uma. O índice de poder combina defesa, dano, velocidade, crítico e esquiva; não é uma reprodução integral do número exibido pelo jogo.</p><p>Ataques usam o dado neutro 10 da previsão de combate. Bônus condicionados ao dado real e efeitos evoluídos incompletos precisam ser conferidos. Os resultados não confirmam vitórias nem registram monstros no catálogo.</p></details>`;}
  function mount(host,input,{run=null,onSave=null}={}){
    let draft=JSON.parse(JSON.stringify(input)),unit=null,page=1,query='',sort='name',timer;
    const prefix=run?'runCombat':'combat',q=s=>host.querySelector(s),id=s=>`${prefix}${s}`;
    const pickOptions=(kind,list)=>`<datalist id="${id(kind)}">${list.map(r=>`<option value="${esc(label(r))}"></option>`).join('')}</datalist>`;
    function render(){
      const s=draft.setup,items=rows('item');
      host.innerHTML=`<section class="combat-card"><div class="combat-heading"><div><span class="eyebrow green">PREPARE O PRÓXIMO COMBATE</span><h2>${run?'Equipamento e combate da run':'Sua ficha de combate'}</h2></div><span class="badge">Estimativa experimental · 1.2.47</span></div><p>${run?'Os atributos, traços e habilidades conhecidos vêm da ficha atual da run. Informe aqui o grau e quais itens estão equipados.':'Escolha os atributos, os traços e os itens equipados. A mochila não aumenta o poder por si só.'}</p>${!run?'<button type="button" data-combat-copy>Usar ficha da run atual</button>':`<p class="combat-help">Run: <strong>${esc(run.name)}</strong>. Salvar este equipamento cria um registro que pode ser desfeito. Os itens da mochila são conferidos, sem adicionar objetos automaticamente.</p>`}<p class="combat-message" role="status" aria-live="polite">${esc(!run?storageWarning:'')}</p><form data-combat-form>
        ${run?`<dl class="combat-run-stats">${Object.entries(C.STATS).map(([k,n])=>`<div><dt>${n}</dt><dd>${draft.stats[k]===null?'A conferir':fmt(draft.stats[k])}</dd></div>`).join('')}</dl><p class="combat-help">Traços: ${draft.traits.length?draft.traits.map(k=>esc(index.records.get('trait:'+k)?.title||k)).join(', '):'nenhum informado'}. Edite os valores em “Ficha da run”.</p>`:`<div class="combat-fields">${Object.entries(C.STATS).map(([k,n])=>inputNumber(id('Stat'+k),n,draft.stats[k],'max="1000000"')).join('')}</div><label>Valores dos atributos<select id="${id('StatsMode')}"><option value="effective" ${draft.statsMode!=='base'?'selected':''}>Finais, como aparecem no celular (já incluem bônus)</option><option value="base" ${draft.statsMode==='base'?'selected':''}>Base, antes dos bônus de traço</option></select></label><p class="combat-help">No modo base, o Atlas soma os bônus fixos de +4 dos traços conhecidos. Outros bônus de atributos devem estar nos valores informados.</p><div class="combat-trait-picker"><label>Traço<input id="${id('TraitPick')}" list="${id('Traits')}" placeholder="Pesquisar traço…" autocomplete="off"></label><button type="button" data-combat-add-trait>Adicionar traço</button></div><div class="combat-traits">${draft.traits.map(k=>`<span class="game-chip">${esc(index.records.get('trait:'+k).title)}<button type="button" data-combat-remove-trait="${k}" aria-label="Remover ${esc(index.records.get('trait:'+k).title)}">×</button></span>`).join('')||'<span class="combat-help">Nenhum traço selecionado.</span>'}</div>`}
        <div class="combat-fields">${inputNumber(id('Level'),'Grau do aventureiro',s.level,'step="1" max="1000"')}<label>Cenário<select id="${id('Place')}">${C.PLACES.map((p,i)=>`<option value="${i}" ${s.place===i?'selected':''}>${esc(p)}</option>`).join('')}</select></label></div><fieldset class="combat-equipment"><legend>Itens equipados</legend><p class="combat-help">Deixe o campo vazio para lutar sem item nesse espaço. Armas de duas mãos também ocupam a mão secundária.</p><div class="combat-slot-grid">${Object.entries(C.SLOTS).map(([slot,name])=>`<div><label>${name}<input id="${id('Slot'+slot)}" data-combat-slot="${slot}" list="${id('Items'+slot)}" value="${esc(s.equipment[slot]?label(index.records.get('item:'+s.equipment[slot].id)):'')}" placeholder="Pesquisar item ou deixar vazio…" autocomplete="off"></label><label class="combat-check"><input id="${id('Upgrade'+slot)}" type="checkbox" ${s.equipment[slot]?.upgrade===1?'checked':''}>Melhorado (+10% na fórmula)</label>${pickOptions('Items'+slot,items.filter(r=>compatible[slot].includes(Number(r.raw.category))))}</div>`).join('')}</div><label class="combat-check"><input id="${id('Known')}" type="checkbox" ${s.equippedKnown?'checked':''}>Conferi os quatro espaços de equipamento, inclusive os vazios</label></fieldset>
        <details class="combat-advanced"><summary>Avançado: habilidades e valores observados</summary><p class="combat-help">Itens e traços somam habilidades automaticamente. Para conferir bônus por atributos ou efeitos que não constam nesses dados, informe os níveis efetivos. Cada valor substitui a soma daquela habilidade, evitando contar o bônus duas vezes.</p><div class="combat-ability-picker"><label>Habilidade<input id="${id('AbilityPick')}" list="${id('Abilities')}" placeholder="Pesquisar habilidade…" autocomplete="off"></label>${inputNumber(id('AbilityLevel'),'Nível efetivo',1,'min="-100" max="100" step="1"')}<button type="button" data-combat-add-ability>Definir nível</button></div><div class="combat-abilities">${Object.entries(s.abilities).map(([key,n])=>`<span class="game-chip">${esc(index.records.get(`ability:${key}:0`).title)}: ${n}<button type="button" data-combat-remove-ability="${key}" aria-label="Remover ajuste de habilidade">×</button></span>`).join('')||'<span class="combat-help">Sem ajustes de habilidade.</span>'}</div><p class="combat-help">Opcional: substitua os componentes abaixo pelos valores observados. Deixe vazio para usar as fórmulas. Isso não faz o Atlas reproduzir efeitos especiais ainda ausentes.</p><div class="combat-fields">${Object.entries(numbers).map(([key,n])=>inputNumber(id('Override'+key),n,s.overrides[key])).join('')}</div></details>
        <div class="combat-actions"><button class="game-primary" type="submit">${run?'Salvar equipamento e calcular':'Calcular chances'}</button></div></form>${pickOptions('Traits',rows('trait'))}${pickOptions('Abilities',rows('ability'))}</section><section class="combat-card" aria-label="Resultado do cálculo"><div data-combat-summary></div>${modelDetails()}</section><section class="combat-card combat-monsters"><h2>Chance contra os monstros</h2><div class="combat-search"><label>Pesquisar monstro<input data-combat-query type="search" placeholder="Nome ou #ID…" value="${esc(query)}"></label><label>Ordenar<select data-combat-sort><option value="name">Nome</option><option value="best" ${sort==='best'?'selected':''}>Maior chance primeiro</option><option value="worst" ${sort==='worst'?'selected':''}>Menor chance primeiro</option></select></label></div><p data-combat-count class="combat-help" role="status"></p><div data-combat-monsters></div><div class="combat-pagination"><button type="button" data-combat-page="-1">← Anterior</button><span data-combat-page-label></span><button type="button" data-combat-page="1">Próxima →</button></div></section>`;
      calculate();
    }
    function read(){
      const next=JSON.parse(JSON.stringify(draft)),s=next.setup;
      const number=suffix=>{const value=q('#'+id(suffix)).value.trim();return value===''?null:Number(value);};
      if(!run){for(const key of Object.keys(C.STATS))next.stats[key]=number('Stat'+key);next.statsMode=q('#'+id('StatsMode')).value;}
      s.level=number('Level');s.place=Number(q('#'+id('Place')).value);s.equippedKnown=q('#'+id('Known')).checked;
      for(const slot of Object.keys(C.SLOTS)){
        const value=q('#'+id('Slot'+slot)).value.trim();s.equipment[slot]=null;
        if(value){const r=rows('item').find(r=>label(r)===value&&compatible[slot].includes(Number(r.raw.category)));if(!r)throw new Error(`Selecione um item da lista de ${C.SLOTS[slot].toLowerCase()} ou deixe vazio.`);s.equipment[slot]={id:String(r.id),upgrade:q('#'+id('Upgrade'+slot)).checked?1:0};}
      }
      s.overrides={};for(const key of Object.keys(numbers)){const value=number('Override'+key);if(value!==null)s.overrides[key]=value;}
      next.setup=C.cleanSetup(s,index);return next;
    }
    function showMessage(message){q('.combat-message').textContent=message;}
    function calculate(){
      unit=C.player(draft,index);q('[data-combat-summary]').innerHTML=summary(unit);q('.combat-monsters').removeAttribute('data-stale');renderMonsters();
    }
    function renderMonsters(){
      const tokens=norm(query.trim()),exact=tokens.match(/^#(\d+)$/),all=rows('monster').filter(r=>exact?String(r.id)===exact[1]:norm(`${r.id} ${r.title} ${r.description}`).includes(tokens));
      const result=r=>C.compare(unit,r,index);
      if(sort!=='name'&&unit.ready)all.sort((a,b)=>{const x=result(a),y=result(b);if(!x.ready||!y.ready)return x.ready?-1:y.ready?1:0;const ax=(x.min+x.max)/2,bx=(y.min+y.max)/2;return (sort==='best'?bx-ax:ax-bx)||a.title.localeCompare(b.title,'pt-BR');});
      const pages=Math.max(1,Math.ceil(all.length/12));page=Math.max(1,Math.min(page,pages));
      q('[data-combat-count]').textContent=`${all.length} ${all.length===1?'monstro':'monstros'}${unit.ready?' · 400 lutas simuladas por variante':' · complete a ficha para ver as chances'}`;
      q('[data-combat-monsters]').innerHTML=all.slice((page-1)*12,page*12).map(row=>{
        const r=result(row);
        return `<article class="combat-monster" data-combat-monster="${row.id}"><div class="combat-monster-heading"><div><button type="button" class="combat-record" data-combat-record="${row.key}">${esc(row.title)}</button><small>Monstro #${row.id} · Dano registrado ${fmt(C.numeric(row.raw.dmg))} · Defesa ${fmt(C.numeric(row.raw.hp))}</small></div><strong class="combat-chance" data-risk="${r.risk||'unknown'}">${chance(r)}</strong></div>${r.ready?`<p class="combat-help">${r.variable?'Faixa entre variantes de habilidades':'Chance estimada de vitória'}${r.partial?' · efeitos parcialmente simulados':''}</p><details><summary>Detalhes da estimativa</summary><ul>${r.variants.map(v=>`<li>${v.wins} vitórias, ${v.losses} derrotas${v.unresolved?`, ${v.unresolved} sem conclusão`:''} em ${v.trials} simulações${v.choice?` · habilidade variável ${esc(variantLabel(v.choice))}`:''}. Intervalo estatístico de 95%: ${pct(v.interval[0])}–${pct(v.interval[1])}.</li>`).join('')}${r.notes.map(n=>`<li>${esc(n)}</li>`).join('')}</ul></details>`:`<p class="combat-help">A conferir: ${(r.missing||[]).map(esc).join(', ')}.</p>`}</article>`;
      }).join('')||'<p>Nenhum monstro encontrado.</p>';
      q('[data-combat-page-label]').textContent=`${page} / ${pages}`;q('[data-combat-page="-1"]').disabled=page<=1;q('[data-combat-page="1"]').disabled=page>=pages;
    }
    host.onsubmit=event=>{
      if(!event.target.matches('[data-combat-form]'))return;event.preventDefault();event.stopPropagation();
      try{draft=read();C.player(draft,index);if(onSave){onSave(draft.setup);return;}save(draft);calculate();showMessage(storageWarning||'Ficha calculada e salva neste navegador.');}catch(error){showMessage(error.message);}
    };
    host.onclick=event=>{
      const button=event.target.closest('button');if(!button)return;
      try{
        if(button.hasAttribute('data-combat-copy')){const current=getRun();if(!current)throw new Error('Crie ou selecione uma run no Modo de Jogo primeiro.');const source=C.fromRun(current);draft=cleanDraft({version:1,...source});draft.setup.abilities={...Object.fromEntries(Object.entries(source.effectiveAbilities||{}).filter(([,n])=>Number.isInteger(n)&&Math.abs(n)<=100)),...draft.setup.abilities};save(draft);render();showMessage('Cópia da run carregada. Alterações aqui ficam apenas na calculadora.');return;}
        if(button.dataset.combatRecord){navigate(button.dataset.combatRecord);return;}
        if(button.hasAttribute('data-combat-page')){page+=Number(button.dataset.combatPage);renderMonsters();return;}
        if(button.hasAttribute('data-combat-add-trait')){draft=read();const trait=rows('trait').find(r=>label(r)===q('#'+id('TraitPick')).value.trim());if(!trait)throw new Error('Selecione um traço da lista.');if(!draft.traits.includes(String(trait.id)))draft.traits.push(String(trait.id));render();return;}
        if(button.hasAttribute('data-combat-remove-trait')){draft=read();draft.traits=draft.traits.filter(k=>k!==button.dataset.combatRemoveTrait);render();return;}
        if(button.hasAttribute('data-combat-add-ability')){draft=read();const ability=rows('ability').find(r=>label(r)===q('#'+id('AbilityPick')).value.trim()),level=Number(q('#'+id('AbilityLevel')).value);if(!ability||!Number.isInteger(level)||Math.abs(level)>100)throw new Error('Escolha uma habilidade e um nível inteiro entre −100 e 100.');draft.setup.abilities[ability.id]=level;render();return;}
        if(button.hasAttribute('data-combat-remove-ability')){draft=read();delete draft.setup.abilities[button.dataset.combatRemoveAbility];render();return;}
      }catch(error){showMessage(error.message);}
    };
    host.oninput=event=>{if(event.target.matches('[data-combat-query]')){query=event.target.value;page=1;clearTimeout(timer);timer=setTimeout(renderMonsters,120);}else if(event.target.closest('[data-combat-form]')){showMessage('Há alterações na ficha. Use o botão de calcular para atualizar as chances.');q('.combat-monsters').dataset.stale='true';}};
    host.onchange=event=>{if(event.target.matches('[data-combat-sort]')){sort=event.target.value;page=1;renderMonsters();}};
    render();
  }
  window.AtlasCombatUI={
    init:(callback,currentRun)=>{index=window.AtlasRun.createIndex(window.ATLAS_DATA);navigate=callback;getRun=currentRun;},
    render:()=>{load();mount(document.getElementById('combatRoot'),standalone);},
    mountRun:(host,run,onSave)=>mount(host,C.fromRun(run),{run,onSave}),chance,summary
  };
})();
