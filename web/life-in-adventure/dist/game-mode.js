'use strict';
(() => {
  const E=window.AtlasRun, $=id=>document.getElementById(id);
  const esc=value=>String(value??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const fmt=value=>E.finite(value)?value.toLocaleString('pt-BR',{maximumFractionDigits:3}):'Não informado';
  const short=(value,n=160)=>value.length>n?value.slice(0,n).trim()+'…':value;
  const GROUPS={EventMain:'Principal',EventSub:'Secundário',EventBattle:'Combate',EventTreasure:'Tesouro',EventNormal:'Normal',EventMainStart:'Início'};
  const KINDS={item:'Item',monster:'Monstro',ability:'Habilidade',trait:'Traço',ending:'Epílogo'};
  const GOALS={item:'Ter um item',ending:'Alcançar um epílogo',catalog_item:'Registrar item no catálogo',catalog_monster:'Registrar monstro no catálogo',story:'Concluir história ou conto',score:'Maximizar a pontuação',gold:'Acumular ouro'};
  const KEY='life-in-adventure:runs:v1',EXPERIENCE_KEY='life-in-adventure:game-experience:v1';
  let index,host,session={version:1,runs:[],activeId:null},cachedRaw=null,recoveryRaw=null,loaded=false;
  let navigate=()=>{},isVisible=false,editor=null,review=null,newForm=false,query='',category='all',message='',warning='',conflict=false;
  let currentAnalysis=null,panel='companion',experience='technical',flowController=null;
  const active=()=>session.runs.find(r=>r.id===session.activeId)||null;
  const recordName=key=>index.records.get(key)?.title||key;
  const pickerValue=c=>`${c.title} · ${c.kind==='ending'?(c.ending_group==='main'?'principal':'conto')+' / ':''}#${c.id}${c.variant!==null&&c.variant!==undefined?' / '+c.variant:''}`;
  const labelEvent=e=>`${GROUPS[e.group]} #${e.id} — ${short(E.plain(e.data.text)||'Continuação sem texto inicial',150)}`;
  function ensure() {
    if(loaded)return;loaded=true;index=E.createIndex(window.ATLAS_DATA);host=$('gameRoot');
    try {
      cachedRaw=localStorage.getItem(KEY);
      if(cachedRaw)session=validateSession(JSON.parse(cachedRaw));
    } catch(error) {recoveryRaw=cachedRaw;warning='Não foi possível recuperar as runs salvas. Nenhum dado antigo foi apagado. Você pode importar um backup ou iniciar uma run nesta visita.';}
    try{experience=localStorage.getItem(EXPERIENCE_KEY)==='direct'?'direct':'technical';}catch{}
    const side=$('gameSideNav');if(side){side.addEventListener('click',onClick);side.addEventListener('change',onChange);}
    host.addEventListener('click',onClick);host.addEventListener('submit',onSubmit);host.addEventListener('input',onInput);host.addEventListener('change',onChange);
    window.addEventListener('storage',event=>{if(event.key===EXPERIENCE_KEY&&!editor){experience=event.newValue==='direct'?'direct':'technical';if(isVisible)render();}else if(event.key===KEY||event.key===null){conflict=true;if(isVisible)render();}});
  }
  function validateSession(raw) {
    if(!raw || raw.version!==1 || !Array.isArray(raw.runs)||raw.runs.length>100)throw new Error('Arquivo de runs incompatível.');
    const runs=raw.runs.map(r=>E.validateRun(r,index));
    if(new Set(runs.map(r=>r.id)).size!==runs.length)throw new Error('Runs duplicadas.');
    return {version:1,runs,activeId:runs.some(r=>r.id===raw.activeId)?raw.activeId:runs[0]?.id||null};
  }
  function persist(candidate) {
    if(conflict)throw new Error('Há alterações em outra aba. Use “Carregar dados da outra aba” antes de salvar.');
    if(candidate.runs.length>100)throw new Error('O limite desta versão é de 100 runs. Exporte suas runs para preservá-las.');
    if(recoveryRaw){session=candidate;warning='Os dados antigos parecem danificados e foram preservados. Esta nova run está apenas na memória desta visita: exporte uma cópia para guardá-la.';return;}
    const encoded=JSON.stringify(candidate);
    let before;
    try{before=localStorage.getItem(KEY);}catch{session=candidate;warning='Armazenamento indisponível: a run está apenas na memória desta visita. Exporte uma cópia para guardá-la.';return;}
    if(before!==cachedRaw){conflict=true;throw new Error('A run foi alterada em outra aba. Carregue a versão salva antes de continuar.');}
    try{localStorage.setItem(KEY,encoded);cachedRaw=encoded;}
    catch{warning='Não foi possível salvar neste navegador. A run está na memória desta visita; exporte uma cópia antes de fechar a página.';}
    session=candidate;
  }
  function saveRun(run) {
    const candidate=E.clone(session),pos=candidate.runs.findIndex(r=>r.id===run.id);
    if(pos<0)candidate.runs.push(run);else candidate.runs[pos]=run;
    candidate.activeId=run.id;persist(candidate);
  }
  function error(error){message=error.message||String(error);renderMessages();}
  function renderMessages() {
    $('gameMessage').textContent=message;$('gameWarning').textContent=warning;
    $('gameConflict').hidden=!conflict;
  }
  function field(id,label,value='',options='') {
    return `<label>${esc(label)}<input id="${id}" name="${id}" value="${esc(value??'')}" ${options}></label>`;
  }
  function alignmentLabel(s) {
    const info=E.alignmentInfo(s);
    return info.value!==null?`${info.label} (${info.value.toLocaleString('pt-BR',{maximumSignificantDigits:10})})`:s.alignmentRange?`${info.label} · estimativa por faixa`:info.label;
  }
  function alignmentEditor(s) {
    const info=E.alignmentInfo(s),selected=s.alignmentRange?'keep':info.bands[0]||'';
    return `<fieldset class="game-alignment"><legend>Alinhamento</legend><label>Nome mostrado no jogo<select id="gameAlignmentBand" data-range="${esc(JSON.stringify(s.alignmentRange))}"><option value="">Não informado</option>${s.alignmentRange?`<option value="keep" selected>Estimativa: ${esc(info.label)}</option>`:''}${E.ALIGNMENT_BANDS.map(b=>`<option value="${b.id}" ${selected===b.id?'selected':''}>${esc(b.name)}</option>`).join('')}</select></label><p id="gameAlignmentHint" class="game-help">${esc(alignmentLabel(s))}</p><p class="game-help">Informar o nome mantém uma faixa de valores, sem presumir um número exato. As decisões podem aumentar ou diminuir o alinhamento.</p><details class="game-details" ${info.value!==null?'open':''}><summary>Valor numérico, se você souber</summary>${field('gs3','Alinhamento — valor exato (opcional)',s.stats[3],'type="number" min="-1000000000" max="1000000000" step="any" inputmode="text"')}<p class="game-help">Aceita valores negativos. Se souber apenas o nome, deixe este campo em branco.</p></details><details class="game-details"><summary>Como as faixas funcionam</summary><ul><li>Maligno: menos de −24.</li><li>Impuro: de −24 até menos de −9.</li><li>Neutro: de −9 até menos de 10.</li><li>Justo: de 10 até menos de 25.</li><li>Bondoso: 25 ou mais.</li></ul><p class="game-help">Faixas identificadas no código da versão 1.2.47. +1 aproxima o valor da próxima faixa; não muda necessariamente o nome.</p></details></fieldset>`;
  }
  function stateEditor(s,mode) {
    const groups=[['0','1','8','9','4','2'],['5','6','7','12','13','14']];
    return `<fieldset><legend>Ficha atual no celular</legend><p class="game-help">Use os valores finais exibidos pelo jogo, já com os bônus. Deixe em branco o que ainda não souber.</p>${groups.map((group,i)=>`${i===1&&mode==='review'?'<details class="game-details"><summary>Atributos principais</summary>':''}<div class="game-fields">${group.map(k=>field('gs'+k,E.STATS[k],s.stats[k],'type="number" min="0" max="1000000000" step="any" inputmode="decimal"')).join('')}</div>${i===1&&mode==='review'?'</details>':''}`).join('')}${field('gsScore','Pontuação observada (opcional)',s.score,'type="number" min="0" max="1000000000000" step="any" inputmode="decimal"')}</fieldset>${alignmentEditor(s)}
      ${mode==='review'?'<details class="game-details"><summary>Conferir itens e quantidades</summary>':''}<fieldset><legend>Itens na mochila e equipados</legend><div class="game-pick-row"><label>Item<input id="gameItemPick" list="game-item-options" placeholder="Digite o nome do item" autocomplete="off"></label>${field('gameItemAmount','Quantidade',1,'type="number" min="0" step="1" inputmode="numeric"')}<button type="button" data-game-action="add-item">Adicionar / atualizar</button></div><div id="gameItemList" class="game-chips"></div><label class="game-check"><input id="gameInventoryComplete" type="checkbox" ${s.inventoryComplete?'checked':''}>Esta lista contém todos os meus itens, incluindo os equipados</label><p class="game-help">Se a lista estiver incompleta, os itens que não foram informados ficam desconhecidos.</p></fieldset>${mode==='review'?'</details>':''}
      <details class="game-details" ${mode==='setup'?'open':''}><summary>Traços e habilidades atuais</summary><div class="game-pick-row"><label>Traço<input id="gameTraitPick" list="game-trait-options" placeholder="Digite o nome do traço" autocomplete="off"></label><button type="button" data-game-action="add-trait">Adicionar traço</button></div><div id="gameTraitList" class="game-chips"></div><label class="game-check"><input id="gameTraitsComplete" type="checkbox" ${s.traitsComplete?'checked':''}>Informei todos os meus traços</label><div class="game-pick-row"><label>Habilidade<input id="gameAbilityPick" list="game-ability-options" placeholder="Digite a habilidade" autocomplete="off"></label>${field('gameAbilityValue','Valor efetivo',0,'type="number" step="any" inputmode="decimal"')}<button type="button" data-game-action="add-ability">Adicionar / atualizar</button></div><div id="gameAbilityList" class="game-chips"></div><p class="game-help">Os bônus de equipamentos e traços não são calculados automaticamente. Confira os atributos e habilidades depois de trocar equipamentos.</p></details>
      <details class="game-details"><summary>Avançado: estados de história conhecidos</summary><p class="game-help">Preenchidos pelos resultados modelados. Não é necessário informar os estados para começar; valores ausentes continuam desconhecidos.</p><label>Estados conhecidos (JSON)<textarea id="gameFlags" rows="5" spellcheck="false">${esc(editor?.flagsText??JSON.stringify(s.states,null,2))}</textarea></label>${s.flagsUncertain?'<p class="game-help">Houve efeitos não modelados nesta run. Os requisitos de estados continuam inconclusivos; confirme a disponibilidade das opções no celular.</p>':''}</details>`;
  }
  function renderEditorLists() {
    const s=editor?.state;if(!s)return;
    const chip=(label,action,key)=>`<span class="game-chip">${esc(label)} <button type="button" data-game-action="${action}" data-key="${esc(key)}" aria-label="Remover ${esc(label)}">×</button></span>`;
    $('gameItemList').innerHTML=Object.entries(s.items).map(([key,value])=>chip(`${recordName('item:'+key)} × ${value===null?'?':fmt(value)}`,'remove-item',key)).join('')||'<p class="game-help">Nenhum item informado.</p>';
    $('gameTraitList').innerHTML=s.traits.map(key=>chip(recordName('trait:'+key),'remove-trait',key)).join('')||'<p class="game-help">Nenhum traço informado.</p>';
    $('gameAbilityList').innerHTML=Object.entries(s.abilities).map(([key,value])=>chip(`${recordName('ability:'+key+':0')}: ${fmt(value)}`,'remove-ability',key)).join('')||'<p class="game-help">Nenhuma habilidade informada.</p>';
  }
  function readState() {
    const s=E.clone(editor.state);
    for(const k of Object.keys(E.STATS)){const value=$('gs'+k).value;s.stats[k]=value.trim()===''?null:Number(value);}
    s.alignmentRange=s.stats[3]===null?($('gameAlignmentBand').value==='keep'?JSON.parse($('gameAlignmentBand').dataset.range):E.alignmentRangeForBand($('gameAlignmentBand').value)):null;
    s.score=$('gsScore').value.trim()===''?null:Number($('gsScore').value);
    s.inventoryComplete=$('gameInventoryComplete').checked;s.traitsComplete=$('gameTraitsComplete').checked;
    try{s.states=JSON.parse($('gameFlags').value);}catch{throw new Error('O JSON dos estados de história não é válido.');}
    return E.cleanState(s,index);
  }
  function pick(input,kind) {
    const value=$(input).value.trim();
    const record=[...index.records.values()].find(c=>c.kind===kind&&(kind!=='ability'||c.variant==='0')&&pickerValue(c)===value);
    if(!record)throw new Error(`Escolha um ${KINDS[kind].toLowerCase()} da lista de sugestões.`);
    return record;
  }
  function options() {
    return ['item','monster','ending','trait','ability'].map(kind=>`<datalist id="game-${kind}-options">${[...index.records.values()].filter(c=>c.kind===kind&&(kind!=='ability'||c.variant==='0')).map(c=>`<option value="${esc(pickerValue(c))}"></option>`).join('')}</datalist>`).join('');
  }
  function renderSetup() {
    if(!editor||editor.mode!=='setup')editor={mode:'setup',state:E.blankState()};
    return `<section class="game-card"><span class="eyebrow green">UMA AVENTURA, SEUS OBJETIVOS</span><h2>Prepare sua run</h2><p>Você joga no celular e mantém o Atlas atualizado com o que realmente aconteceu. Primeiro informe a ficha; depois escolha seus objetivos.</p><form id="gameSetup"><div class="game-fields">${field('gameRunName','Nome da run',editor.config?.name??'Minha aventura','maxlength="80"')}<label>Dificuldade<select id="gameDifficulty"><option value="normal">Normal</option><option value="hard" ${editor.config?.difficulty==='hard'?'selected':''}>Difícil</option></select></label><label>Comparação das escolhas<select id="gameProfile"><option value="cautious">Preferir o pior resultado conhecido menos arriscado</option><option value="expected" ${editor.config?.profile==='expected'?'selected':''}>Preferir a média quando a probabilidade for conhecida</option></select></label></div><div class="game-fields">${field('gameMainStory','História principal (nome no seu jogo)',editor.config?.mainStory??'','maxlength="150" placeholder="Opcional"')}${field('gameTales','Contos ativos',editor.config?.tales??'','maxlength="400" placeholder="Opcional; separados por vírgula"')}</div>${stateEditor(editor.state,'setup')}${active()?'<label class="game-check"><input id="gameCopyCatalog" type="checkbox" checked>Copiar o catálogo confirmado da run selecionada</label>':''}<div class="game-actions"><button class="game-primary" type="submit">Criar run e definir objetivos</button>${session.runs.length?'<button type="button" data-game-action="cancel-editor">Cancelar</button>':''}</div></form></section>`;
  }
  function goalLabel(g) {
    return g.label || (g.type==='gold'?`Acumular ${fmt(g.amount)} de ouro`:g.type==='score'?'Maximizar a pontuação':`${GOALS[g.type]}: ${recordName(g.target)}`);
  }
  function goalCards(run) {
    return `<section class="game-card" id="gameGoals"><div class="game-section-heading"><div><span class="eyebrow green">SEU NORTE</span><h2>Objetivos desta run</h2></div><span class="game-help">O primeiro objetivo em aberto orienta a indicação.</span></div>${run.goals.length?`<ol class="game-goals">${run.goals.map((g,i)=>{
      const p=E.goalProgress(g,run.state);
      const manual=['story','ending','catalog_item','catalog_monster'].includes(g.type);
      const progress=g.type==='score'?`Pontuação anotada: ${fmt(p.value)} · cálculo automático indisponível`:p.complete?'Meta registrada':p.value===null?'Progresso a conferir':g.type==='item'||g.type==='gold'?`${fmt(p.value)} / ${fmt(g.amount)}`:'Ainda não confirmado';
      return `<li class="${p.complete?'game-goal-done':''}"><div><span class="badge">${i===0?'Principal':'Secundário'}</span><strong>${esc(goalLabel(g))}</strong><small>${esc(progress)}</small>${g.type==='story'?'<small>Conclusão informada por você; um epílogo não garante vitória.</small>':''}${g.type.startsWith('catalog_')?'<small>Confirme apenas se o registro apareceu no catálogo do jogo.</small>':''}</div><div class="game-actions">${manual?`<button type="button" data-game-action="confirm-goal" data-key="${g.id}" ${run.status!=='active'?'disabled':''}>${p.complete?'Desmarcar confirmação':'Confirmar no jogo'}</button>`:''}${i?`<button type="button" data-game-action="promote-goal" data-key="${g.id}" ${run.status!=='active'?'disabled':''}>Tornar principal</button>`:''}<button type="button" data-game-action="remove-goal" data-key="${g.id}" aria-label="Remover objetivo ${esc(goalLabel(g))}" ${run.status!=='active'?'disabled':''}>Remover</button></div></li>`;
    }).join('')}</ol>`:'<p>Adicione o que quer alcançar para receber uma comparação orientada aos seus objetivos.</p>'}
      ${run.status==='active'?`<details class="game-details" ${!run.goals.length?'open':''}><summary>Adicionar objetivo</summary><form id="gameGoalForm"><div class="game-fields"><label>Objetivo<select id="gameGoalType">${Object.entries(GOALS).map(([key,value])=>`<option value="${key}">${esc(value)}</option>`).join('')}</select></label><div id="gameGoalTargetFields"></div></div><button type="submit" class="game-secondary">Adicionar objetivo</button></form></details>`:''}</section>`;
  }
  function renderGoalFields() {
    const type=$('gameGoalType')?.value;if(!type)return;
    const kind={item:'item',ending:'ending',catalog_item:'item',catalog_monster:'monster'}[type];
    $('gameGoalTargetFields').innerHTML=kind?`<label>${esc(KINDS[kind])} alvo<input id="gameGoalTarget" list="game-${kind}-options" required placeholder="Digite o nome e escolha na lista" autocomplete="off"></label>${type==='item'?field('gameGoalAmount','Quantidade desejada',1,'type="number" min="1" max="1000000" step="1" required'):''}`:type==='gold'?field('gameGoalAmount','Quantidade de ouro desejada',100,'type="number" min="1" max="1000000000" step="1" required'):type==='story'?`${field('gameGoalLabel','História ou conto que deseja concluir','','maxlength="180" required')}<label>Epílogo específico para orientar a busca (opcional)<input id="gameGoalEnding" list="game-ending-options" autocomplete="off"></label>`:'<p class="game-help">Vamos guardar sua pontuação observada e mostrar as consequências das escolhas. A fórmula de pontuação ainda não está modelada; não indicaremos uma melhor escolha para maximizar pontos.</p>';
  }
  function dashboard(run) {
    const known=k=>`${E.STATS[k]}: ${fmt(run.state.stats[k])}`;
    return `<section class="game-card game-dashboard"><div><span class="badge">${run.status==='active'?'Em andamento':'Encerrada'} · ${run.difficulty==='hard'?'Difícil':'Normal'}</span><h2>${esc(run.name)}</h2><p>${esc([run.mainStory,run.tales].filter(Boolean).join(' · ')||'História e contos não informados')}</p></div><div class="game-stat-row">${['0','1','4','2'].map(k=>`<span>${esc(known(k))}</span>`).join('')}<span>Alinhamento: ${esc(alignmentLabel(run.state))}</span></div><div class="game-actions"><button type="button" data-game-action="edit-state" ${run.status==='ended'?'disabled':''}>Conferir / corrigir ficha</button><button type="button" data-game-action="undo" ${run.cursor===0||run.status!=='active'?'disabled':''}>Desfazer último registro</button><button type="button" data-game-action="redo" ${run.cursor>=run.history.length||run.status!=='active'?'disabled':''}>Refazer</button><button type="button" data-game-action="toggle-status">${run.status==='active'?'Encerrar run':'Reabrir run'}</button></div>${run.state.pending.length?`<details class="game-pending" open><summary>${run.state.pending.length} ${run.state.pending.length===1?'pendência para conferir':'pendências para conferir'}</summary><ul>${run.state.pending.map(issue=>`<li>${esc(issue)}</li>`).join('')}</ul><p>Use “Conferir / corrigir ficha” para registrar os valores reais e confirmar os efeitos já conferidos.</p></details>`:''}</section>`;
  }
  function searchPanel(run) {
    const last=run.history[run.cursor-1];let nextKey=null;
    if(last?.type==='result'){
      const e=index.events.get(last.eventKey),r=e?.data.choice?.[last.choice]?.result?.[last.result];
      if(Number.isInteger(r?.nextEvent)&&r.nextEvent>=0&&index.events.has(`${e.group}:${r.nextEvent}`))nextKey=`${e.group}:${r.nextEvent}`;
    }
    return `<section class="game-card"><div class="game-section-heading"><div><span class="eyebrow green">ACOMPANHE O CELULAR</span><h2>Qual encontro apareceu?</h2></div></div><p>Pesquise algumas palavras do texto ou o #ID. Confira a tabela e as escolhas quando houver eventos parecidos.</p><div class="game-event-search"><label>Buscar encontro<input id="gameEventQuery" value="${esc(query)}" type="search" placeholder="Texto, escolha ou #346…" autocomplete="off"></label><label>Tipo<select id="gameEventCategory"><option value="all">Todos</option>${Object.entries(GROUPS).map(([key,label])=>`<option value="${key}" ${category===key?'selected':''}>${esc(label)}</option>`).join('')}</select></label></div><div id="gameEventResults" role="region" aria-label="Encontros encontrados" aria-live="polite"></div>${nextKey?`<p class="game-help">O último resultado aponta para ${esc(labelEvent(index.events.get(nextKey)))}.</p><button type="button" data-game-action="select-event" data-key="${nextKey}">Foi esse encontro que apareceu</button>`:''}</section>`;
  }
  function renderSearchResults() {
    const q=E.normalize(query.trim()),keys=q.split(/\s+/);
    const matches=q?[...index.events.entries()].filter(([key,e])=>{
      if(category!=='all'&&e.group!==category)return false;
      if(/^#\d+$/.test(q))return e.id===Number(q.slice(1));
      return keys.every(term=>eventSearch.get(key).includes(term));
    }):[];
    $('gameEventResults').innerHTML=!q?'<p class="game-help">Nenhum encontro selecionado automaticamente: informe o que apareceu no seu jogo.</p>':!matches.length?'<p>Nenhum encontro encontrado. Tente um trecho menor ou outra categoria.</p>':`<p class="game-help">${matches.length} encontros encontrados. ${matches.length>12?'Mostrando os primeiros 12; refine a busca para ver os demais.':''}</p><div class="game-event-results">${matches.slice(0,12).map(([key,e])=>`<button type="button" data-game-action="select-event" data-key="${key}"><strong>${esc(labelEvent(e))}</strong><small>${esc(short((e.data.choice||[]).map(c=>E.plain(c.text)).filter(Boolean).join(' · '),200))}</small></button>`).join('')}</div>`;
  }
  const eventSearch=new Map();
  function ruleList(view,empty) {
    if(!view?.tokens?.length)return `<p class="game-help">${esc(empty)}</p>`;
    return `${view.operator==='OR'?'<p class="game-help">Basta uma destas condições:</p>':''}<ul class="game-rule-list">${view.tokens.map(t=>`<li class="${t.known?'':'game-unknown'}">${esc(t.text)}${t.ref&&index.records.has(t.ref)?` — ${esc(recordName(t.ref))}`:''}${!t.known?` <code>${esc(t.raw)}</code>`:''}</li>`).join('')}</ul>`;
  }
  function futureConsequences(row) {
    const f=row.forecast;
    if(!f||(!f.stages.length&&!f.combats.length))return '';
    const eventLink=key=>`<button type="button" data-event="${esc(key)}">${esc(GROUPS[index.events.get(key)?.group]||'Evento')} #${index.events.get(key)?.id??'?'}</button>`;
    const enemies=[...new Set(f.combats.map(c=>c.enemy))];
    const gates=f.gates.filter(g=>g.required.tokens.some(t=>['userData_effective','inventory','inventory_any','ability_effective','traitList'].includes(t.model?.domain)));
    return `<div class="future-consequences" data-game-forecast><strong>Consequências adiante</strong>${enemies.length?`<p class="future-combat-warning"><strong>Combate possível neste caminho: ${esc(enemies.slice(0,3).join(', '))}${enemies.length>3?` e mais ${enemies.length-3}`:''}.</strong> A vitória com esta ficha ainda não foi calculada. Confira poder de combate, saúde e equipamento antes de seguir.</p>${f.peacefulExit?`<p>Também há saída sem combate, como “${esc(f.peacefulExit.label)}”. A disponibilidade e a recompensa dependem dos requisitos e dos resultados seguintes.</p>`:'<p>Não foi identificada uma saída sem combate nos ramos alcançados. Confira as condições e os limites abaixo.</p>'}`:''}${f.tests.length?`<ul>${f.tests.slice(0,3).map(t=>`<li>${esc(t.label)}: <strong>${esc(t.test.label)}</strong> · ${t.test.attributes.map(a=>`${esc(a.name)} na ficha usada: ${t.values[a.index]===null?'a conferir':fmt(t.values[a.index])}`).join('; ')}. O teste pode falhar.</li>`).join('')}</ul><p class="game-help">As chances finais dos testes não foram calculadas.</p>`:''}${gates.filter(g=>g.available===false).length?`<p class="future-combat-warning">Há opções futuras com requisitos não atendidos pela ficha usada na análise.</p>`:''}${f.stages.length?`<p class="game-help">Etapas relacionadas (incluem ramificações): ${f.stages.slice(0,8).map(s=>eventLink(s.key)).join(' · ')}${f.stages.length>8?` · mais ${f.stages.length-8}`:''}.</p>`:''}${f.truncated?'<p class="game-pending">O limite de etapas ou ramificações deste resumo foi atingido; podem existir outras consequências.</p>':''}<details><summary>Ver ligações e possíveis desfechos</summary><p class="game-help">São possibilidades registradas, incluindo opções condicionais; esta lista não prevê o resultado dos testes ou da luta.</p>${f.peacefulExit?`<strong>Exemplo de caminho sem combate</strong><p class="game-help">Depende dos requisitos e dos resultados indicados; testes podem falhar.</p><ol>${f.peacefulExit.path.map(s=>`<li>${eventLink(s.eventKey)} · ${esc(s.label)}${s.outcome?' · '+esc(s.outcome):''}${s.conditional?' · disponibilidade a confirmar':''}</li>`).join('')}</ol>`:''}${f.combats.length?`<ul>${f.combats.slice(0,10).map(c=>`<li>${eventLink(c.eventKey)} · ${esc(c.label)} — ${esc(c.enemy)}. ${esc(c.text)}${c.conditional?' · disponibilidade a confirmar':''}</li>`).join('')}</ul>`:''}${gates.length?`<strong>Requisitos nas próximas etapas</strong>${gates.slice(0,8).map(g=>`<div>${eventLink(g.eventKey)} · ${esc(g.label)}<p class="game-help">${g.available===false?'Não atendido pela ficha usada na análise':g.available===true?'Atendido na projeção deste ramo':'Disponibilidade a confirmar no jogo'}</p>${ruleList(g.required,'')}</div>`).join('')}`:''}${f.exits.length?`<strong>Consequências de resultados posteriores</strong>${f.exits.slice(0,10).map(e=>`<div class="future-ending" data-game-future-ending>${eventLink(e.eventKey)} · ${esc(e.label)}${e.afterCombat?' · após combate':''}${e.conditional?' · condicional':''}${e.destination!==-2?' · destino especial':''}<p>${esc(short(e.text,220))}</p>${ruleList(e.reward,'Sem recompensa direta registrada neste campo.')}</div>`).join('')}${f.exits.length>10?`<p class="game-help">Mais ${f.exits.length-10} desfechos encontrados; consulte as etapas relacionadas.</p>`:''}`:''}${f.unresolved?'<p class="game-help">Há destinos especiais ou não identificados. Eles não foram tratados como encerramentos garantidos.</p>':''}</details></div>`;
  }
  function planningDetails(row) {
    const notes=[...new Set(row.notes||[])];
    const status=row.complete?(row.feasible?'Caminho avaliado até o fim registrado.':'Nenhum encerramento avaliável por este caminho.'):'Análise parcial: a continuação ainda tem pendências.';
    return `<details class="game-plan"><summary>Ver escolhas futuras e saldo do caminho</summary><p class="game-plan-status">${esc(status)}</p><p class="game-help">Este é um cenário de referência entre os ramos avaliados, não uma previsão do sorteio. A comparação considera os outros resultados possíveis e recalcula as decisões após o que acontecer no jogo.</p>${row.route?.length?`<ol>${row.route.map(step=>`<li><button type="button" data-event="${esc(step.eventKey)}">${esc(GROUPS[index.events.get(step.eventKey)?.group]||'Evento')} #${index.events.get(step.eventKey)?.id??'?'}</button><strong>${esc(step.label)}</strong><span>Se ocorrer: ${esc(step.outcome)}${step.nextKey?' → próxima etapa':' — conferir o encerramento'}</span>${step.changes?.length?`<small>${esc(step.changes.join(' · '))}</small>`:''}</li>`).join('')}</ol>`:''}${row.reasons?.length?`<p class="game-help">Saldo conhecido no cenário de referência, em relação à ficha atual:</p><ul class="game-plan-balance">${row.reasons.map(reason=>`<li>${esc(reason)}</li>`).join('')}</ul>`:''}${notes.length?`<div class="game-pending"><strong>Limitações deste caminho</strong><ul>${notes.slice(0,20).map(note=>`<li>${esc(note)}</li>`).join('')}</ul>${notes.length>20?`<p>Mais ${notes.length-20} avisos nas etapas avaliadas. Confira as regras dos eventos antes de seguir.</p>`:''}</div>`:''}</details>`;
  }
  function outcomeContinuation(outcome) {
    if(outcome.eligible===false||outcome.probability===0)return '';
    const step=outcome.plan?.route?.[1];
    if(step){const e=index.events.get(step.eventKey);return `<p class="game-future-hint">Se este resultado ocorrer, a continuação avaliada inclui ${esc(plainChoice(e,step.choice))} (${esc(GROUPS[e.group])} #${e.id}). Confira o plano completo acima.</p>`;}
    return !outcome.plan?.complete?'<p class="game-help">A continuação deste resultado não pôde ser comparada até o fim. Veja as pendências no plano acima.</p>':'';
  }
  function plainChoice(event,ci) {return E.plain(event.data.choice[ci].text)||'um desfecho a confirmar no jogo';}
  function combatNotice(view) {
    const tokens=(view?.tokens||[]).filter(t=>t.known&&t.model?.operation==='start_combat');
    if(!tokens.length)return '';
    return `<div class="game-notice" data-game-combat><strong>Combate deste encontro</strong>${ruleList({tokens},'')}<p>O comando inicia o combate; ele não concede vitória nem registra o monstro no catálogo. Confira o inimigo no celular, registre o desfecho que acontecer e ajuste saúde, sanidade e outros valores após a luta. A faixa de poder não é uma previsão de dano ou de chance de vitória.</p></div>`;
  }
  function compactEffects(view) {
    const tokens=(view?.tokens||[]).filter(t=>!['set_chain_state','set_sub_state','set_main_state'].includes(t.model?.operation));
    if(!tokens.length)return '<span class="game-effect-chip">Sem alteração direta registrada</span>';
    return tokens.map(t=>{
      const m=t.model;let label=t.text;
      if(m?.operation==='change_user_data')label=`${m.index===0?'Vida':E.STATS[m.index]||'Atributo'} ${m.quantity>=0?'+':''}${fmt(m.quantity)}`;
      else if(m?.operation==='remove_first_item')label='Consumir 1 recurso de fogo';
      else if(m?.operation==='start_combat')label='Combate: '+(t.ref?recordName(t.ref):'inimigo atual');
      else if(t.ref)label=`${t.text} · ${recordName(t.ref)}`;
      if(!t.known)label='Efeito a conferir na ficha';
      return `<span class="game-effect-chip ${!t.known?'game-effect-unknown':m?.operation==='change_user_data'?(m.quantity<0?'is-loss':'is-gain'):''}">${esc(label)}</span>`;
    }).join('');
  }
  function directFutureEffects(forecast) {
    const tokens=[...new Map(forecast.exits.filter(e=>e.path.length>1).flatMap(e=>e.reward?.tokens||[]).filter(t=>t.known&&['change_user_data','add_item','remove_item','record_main_ending','record_sub_ending'].includes(t.model?.operation)).map(t=>[t.raw,t])).values()];
    if(!tokens.length)return '';
    return `<p class="game-help">Efeitos em resultados futuros, dependendo do ramo:</p><p class="game-direct-effects">${compactEffects({tokens:tokens.slice(0,5)})}</p>${tokens.length>5?'<p class="game-help">Outros efeitos estão no fluxo completo.</p>':''}`;
  }
  function directEncounter(event,run,analysis,context) {
    const observed=event.data.choice.every(c=>!E.plain(c.text));
    const brief=analysis.recommendation!==null?'Considera as próximas decisões e os objetivos da run.':!run.goals.length?'Defina os objetivos na barra lateral para orientar a indicação.':analysis.message.includes('confirmação manual')?'Esta meta requer acompanhamento manual.':!analysis.summary.comparisonComplete?'Há consequências a conferir; nenhuma opção foi indicada como a melhor para o encontro inteiro.':analysis.message.split('. ')[0]+'.';
    return `<section class="game-card game-encounter game-direct-encounter" id="gameEncounter"><div class="game-section-heading"><div><span class="badge">${esc(GROUPS[event.group])} #${event.id}</span><h2>${context?'Próxima etapa':'Escolha no celular'}</h2></div><button type="button" data-event="${run.selectedEvent}">Ver detalhes no Atlas</button></div>${context?`<p class="game-narrative">${esc(short(E.plain(context.text),260))}</p>`:''}${E.plain(event.data.text)?`<p>${esc(short(E.plain(event.data.text),320))}</p>`:''}<p class="game-notice">${analysis.recommendation!==null?`<strong>Indicação: ${esc(E.plain(event.data.choice[analysis.recommendation].text))}</strong><br>`:''}${observed?'Registre o desfecho que aconteceu; vitória e derrota dependem do jogo.':esc(brief)}</p><p class="game-help">${observed?'Toque no resultado observado.':'Escolha no celular e toque no resultado que aconteceu.'} O registro atualiza a run sem abrir a revisão. Você pode desfazer pela barra lateral.</p>${run.state.pending.length?`<p class="game-pending">${run.state.pending.length} efeito(s) a conferir. <button type="button" data-game-action="edit-state">Abrir ficha</button></p>`:''}<div class="game-direct-choices">${analysis.rows.map(row=>{
      const ci=row.ci,choice=event.data.choice[ci],cv=event.rules?.choices[ci],f=row.forecast,enemies=[...new Set(f.combats.map(c=>c.enemy))];
      return `<article class="game-direct-choice ${analysis.recommendation===ci?'game-recommended':''}" data-direct-choice="${ci}"><h3>${esc(E.plain(choice.text)||'Desfecho '+(ci+1))}${analysis.recommendation===ci?' <span class="badge">Indicação</span>':''}</h3>${cv?.test?`<span class="attribute-test">${esc(cv.test.label)}</span>`:''}${row.available===false?'<p class="game-direct-availability">A ficha não atende ao requisito. Se essa opção apareceu, confira sua ficha.</p>':''}${enemies.length||f.tests.length||f.stages.length||f.truncated?`<div class="game-direct-future"><strong>Adiante</strong>${enemies.length?`<p>Combate possível: ${esc(enemies.slice(0,3).join(', '))}. ${f.peacefulExit?'Há também uma saída sem combate.':'Confira sua preparação antes de seguir.'}</p>`:''}${f.tests.length?`<p>${esc([...new Set(f.tests.map(t=>t.test.label))].slice(0,3).join(' · '))}. Os testes podem falhar.</p>`:''}${directFutureEffects(f)}${f.truncated?'<p>O resumo atingiu seu limite; outras consequências podem existir.</p>':''}</div>`:''}<div class="game-direct-results">${row.outcomes.map(o=>`<div class="game-direct-outcome"><div><strong>${esc(o.view?.testOutcome||'Resultado '+(o.ri+1))}</strong><p class="game-direct-effects">${compactEffects(o.view?.reward)}</p>${row.outcomes.length>1?`<p class="game-help">${esc(short(E.plain(o.raw.text),160))}</p>`:''}${o.eligible===false?'<p class="game-help">Este resultado diverge da ficha informada.</p>':''}</div><button type="button" class="game-secondary" data-game-action="quick-result" data-encounter="${run.selectedEvent}" data-choice="${ci}" data-result="${o.ri}">Registrar resultado</button></div>`).join('')}</div></article>`;
    }).join('')}</div><div class="game-actions"><button type="button" data-game-action="manual-result">O resultado foi diferente</button><button type="button" data-game-action="clear-event">Escolher outro encontro</button></div></section>`;
  }
  function encounterPanel(run) {
    const event=index.events.get(run.selectedEvent);if(!event)return '';
    const analysis=E.analyze(event,run,index,run.availability);currentAnalysis=analysis;
    const context=E.continuationContext(run,index);
    if(experience==='direct')return directEncounter(event,run,analysis,context);
    const source=context?index.events.get(context.entry.eventKey):null;
    const combat=source?.rules?.choices?.[context.entry.choice]?.results?.[context.entry.result]?.reward;
    return `<section class="game-card game-encounter" id="gameEncounter"><div class="game-section-heading"><div><span class="badge">${esc(GROUPS[event.group])} #${event.id}</span><h2>${context?'Continuação do encontro':'Encontro selecionado'}</h2></div><button type="button" data-event="${run.selectedEvent}">Ver no Atlas</button></div>${context?`<div class="game-continuation"><p class="game-help">Percurso: ${context.path.map(key=>esc(GROUPS[index.events.get(key).group]+' #'+index.events.get(key).id)).join(' → ')}</p><p class="game-narrative">${esc(E.plain(context.text)||'Resultado anterior sem texto na fonte.')}</p><p class="game-help">Estas são as próximas opções registradas. Se o jogo mostrar outra tela, use “Escolher outro encontro”.</p></div>`:''}${combatNotice(combat)}<p class="game-narrative">${esc(E.plain(event.data.text)||(context?'':'Este nó não possui texto inicial. Confira os resultados abaixo.'))}</p><p class="game-notice">${analysis.recommendation!==null?`<strong>Indicação provisória: ${esc(E.plain(event.data.choice[analysis.recommendation].text))}</strong><br>`:''}${esc(analysis.message)}</p><p class="game-help">Critério da run: ${run.profile==='expected'?'média dos pesos estáticos quando disponíveis; nos demais casos, pior resultado conhecido':'pior resultado conhecido'}. A comparação inclui as próximas decisões e o saldo ao fim do caminho. Atributos e inventário precisam estar conferidos. O evento foi informado por você; não estamos simulando o sorteio de encontros.</p><p id="gamePlanningStatus" class="game-help">${analysis.summary.comparisonComplete?(analysis.summary.hasFinishedRoute?'Os caminhos disponíveis foram comparados até os encerramentos registrados.':'Não há caminho disponível com encerramento avaliável.'):'Há caminhos sem comparação completa; a melhor escolha para o encontro inteiro ainda não pode ser indicada.'} Só os resultados que você confirmar alteram a run.</p>
      ${(event.data.choice||[]).map((choice,ci)=>{
        const row=analysis.rows[ci],cv=event.rules?.choices?.[ci],recommended=analysis.recommendation===ci;
        return `<details class="game-choice ${recommended?'game-recommended':''}" ${(analysis.recommendation===null?ci===0:recommended)?'open':''}><summary><span class="game-choice-number">${ci+1}</span><span>${esc(E.plain(choice.text)||'Desfecho / ramo '+(ci+1))}</span>${cv?.test?`<span class="attribute-test">${esc(cv.test.label)}</span>`:''}${row.forecast.combats.length?'<span class="future-risk-badge">Pode levar a combate</span>':''}${recommended?'<span class="game-recommend-badge">Indicação provisória</span>':''}</summary><div class="game-choice-content">${cv?.test?`<p class="game-help">${esc(cv.test.label)}: os atributos efetivos influenciam o sorteio. Não é um requisito mínimo; a chance final ainda não é calculada.</p>`:''}<p class="game-availability">${row.available===true?'✓ Requisito da escolha atendido ou disponibilidade confirmada por você':row.available===false?'Requisito não atendido pela ficha informada':'Disponibilidade a conferir no celular'}</p>${ruleList(cv?.required,'Sem requisito de escolha registrado.')}<label class="game-check"><input type="checkbox" data-game-available="${ci}" ${run.availability[ci]===true?'checked':''}>Esta opção está disponível no meu jogo</label>${row.lethal?'<p class="game-pending">Um resultado conhecido pode levar a saúde a zero. Confira sobrevivência e ressurreição no jogo.</p>':''}${futureConsequences(row)}${planningDetails(row)}${row.uncertain?'<p class="game-help">Há requisitos ou consequências sem confirmação; esta comparação pode mudar.</p>':''}<div class="game-outcomes">${row.outcomes.map(outcome=>`<article class="game-outcome"><div><span class="eyebrow">RESULTADO ${ci+1}.${outcome.ri+1}${outcome.view?.testOutcome?' · '+esc(outcome.view.testOutcome):''}</span><p class="game-narrative">${esc(E.plain(outcome.raw.text)||'Sem texto de resultado na fonte.')}</p>${outcome.view?.probability?`<span class="badge">Probabilidade estática: ${fmt(100*outcome.view.probability.split('/').reduce((a,b)=>Number(a)/Number(b)))}% (${esc(outcome.view.probability)})</span>`:'<span class="game-help">Probabilidade final não calculada.</span>'}${outcome.eligible===false?'<p class="game-help">Este resultado não atende aos requisitos da ficha informada. Se aconteceu, registre e corrija a ficha.</p>':''}${outcomeContinuation(outcome)}${ruleList(outcome.view?.reward,'Sem recompensa registrada neste campo.')}<details class="raw-details"><summary>Requisitos e dados originais do resultado</summary>${ruleList(outcome.view?.required,'Sem requisito adicional registrado.')}<pre>${esc(JSON.stringify(outcome.raw,null,2))}</pre></details></div><button type="button" class="game-secondary" data-game-action="review-result" data-choice="${ci}" data-result="${outcome.ri}">Foi este resultado</button></article>`).join('')}</div></div></details>`;
      }).join('')}<div class="game-actions"><button type="button" data-game-action="manual-result">O resultado foi diferente / não está no Atlas</button><button type="button" data-game-action="clear-event">Escolher outro encontro</button></div></section>`;
  }
  function renderReview(run) {
    const event=index.events.get(review.eventKey),matched=review.choice!==null;
    const suggestions=review.preview;
    const candidates=new Set((event.references||[]).map(r=>r.key).filter(key=>['item','monster','ending'].includes(index.records.get(key)?.kind)));
    if(matched)for(const t of event.rules?.choices?.[review.choice]?.results?.[review.result]?.reward?.tokens||[])if(t.ref&&index.records.has(t.ref))candidates.add(t.ref);
    return `<section class="game-card" id="gameReview"><span class="eyebrow green">CONFIRA COM O JOGO</span><h2>${matched?'Registrar o resultado observado':'Registrar uma diferença encontrada'}</h2><p>${esc(labelEvent(event))}${matched?` · escolha ${review.choice+1}, resultado ${review.result+1}`:''}</p>${matched?`<p class="game-narrative">${esc(E.plain(suggestions.raw.text)||'Resultado sem texto na fonte.')}</p><div class="game-notice"><strong>Sugestões para conferir</strong>${suggestions.changes.length?`<ul>${suggestions.changes.map(t=>`<li>${esc(t)}</li>`).join('')}</ul>`:'<p>Nenhuma alteração modelada para sugerir.</p>'}<p>Os valores abaixo são estimativas a partir da ficha informada. Corrija-os conforme o celular antes de salvar; podem faltar limites, bônus e efeitos indiretos.</p></div>`:'<p class="game-notice">Nenhum efeito será inferido. Informe o que aconteceu e ajuste a ficha de acordo com o jogo.</p>'}${combatNotice(suggestions.view?.reward)}${suggestions.issues.length?`<div class="game-pending"><strong>Efeitos a conferir</strong><ul>${suggestions.issues.map(issue=>`<li>${esc(issue)}</li>`).join('')}</ul></div>`:''}<form id="gameObservationForm">${stateEditor(editor.state,'review')}
      ${candidates.size?`<fieldset><legend>O jogo registrou algo novo no catálogo?</legend><p class="game-help">Marque apenas o que você conferiu no catálogo do jogo. Obter um item ou encontrar um monstro não confirma o registro permanente.</p>${[...candidates].map(key=>`<label class="game-check"><input type="checkbox" name="gameCatalogConfirm" value="${esc(key)}" ${run.state.catalog[index.records.get(key).kind].includes(key)?'checked':''}>${esc(recordName(key))} · ${esc(KINDS[index.records.get(key).kind])}</label>`).join('')}</fieldset>`:''}
      <label>Anotações da partida<textarea id="gameObservationNote" maxlength="3000" rows="3" placeholder="Diferenças, combate, equipamento trocado, resultado inesperado…" ${matched?'':'required'}>${esc(editor.note||'')}</textarea></label>${suggestions.issues.length?'<label class="game-check"><input id="gameResolveEffects" type="checkbox">Conferi também os efeitos ainda não modelados deste resultado</label>':''}<label class="game-check"><input id="gameConfirmObservation" type="checkbox" required>Conferi os valores e este foi o resultado que aconteceu no meu jogo</label><div class="game-actions"><button type="submit" class="game-primary">Salvar resultado observado</button><button type="button" data-game-action="cancel-editor">Cancelar</button></div></form></section>`;
  }
  function renderCorrection(run) {
    return `<section class="game-card"><h2>Conferir / corrigir ficha</h2><p>Informe os valores atuais do celular. A correção entra no histórico e pode ser desfeita.</p><form id="gameCorrectionForm">${stateEditor(editor.state,'correction')}<label>Notas da correção<textarea id="gameCorrectionNote" rows="3" maxlength="3000" placeholder="Ex.: equipei uma arma; o combate mudou a saúde…">${esc(editor.note||'')}</textarea></label>${run.state.pending.length?'<label class="game-check"><input id="gameClearPending" type="checkbox">Conferi todas as pendências listadas e ajustei os valores reais</label>':''}<label class="game-check"><input type="checkbox" required>Estes são os valores que conferi no jogo</label><div class="game-actions"><button type="submit" class="game-primary">Salvar correção</button><button type="button" data-game-action="cancel-editor">Cancelar</button></div></form></section>`;
  }
  function collectionPanel(run) {
    const rows=Object.values(run.state.catalog).flat();
    return `<details class="game-card game-details"><summary>Catálogo confirmado no jogo · ${rows.length} registros</summary><p class="game-help">Esta lista pertence à run. Ao criar outra run, você pode copiar o catálogo já conferido.</p><div class="game-chips">${rows.map(key=>`<span class="game-chip">${esc(recordName(key))}<button type="button" data-game-action="unmark-catalog" data-key="${key}" ${run.status!=='active'?'disabled':''} aria-label="Remover confirmação de ${esc(recordName(key))}">×</button></span>`).join('')||'<span>Nenhum registro confirmado.</span>'}</div>${run.status==='active'?`<form id="gameCatalogForm"><div class="game-pick-row"><label>Tipo<select id="gameCatalogKind"><option value="item">Item</option><option value="monster">Monstro</option><option value="ending">Epílogo</option></select></label><label>Registro<input id="gameCatalogTarget" list="game-item-options" required autocomplete="off"></label><button type="submit">Confirmar no catálogo</button></div></form>`:''}</details>`;
  }
  function historyPanel(run) {
    return `<details class="game-card game-details" id="gameRunHistory"><summary>Diário da run · ${run.cursor} registros${run.cursor<run.history.length?` · ${run.history.length-run.cursor} desfeitos`:''}</summary><p class="game-help">Guarde uma cópia com “Exportar run”. As anotações incluem os valores antes e depois de cada registro para investigar diferenças.</p><ol class="game-history">${run.history.slice(0,run.cursor).map((entry,i)=>`<li><details><summary>${i+1}. ${esc(entry.type==='result'?`Resultado ${entry.choice+1}.${entry.result+1}`:entry.type==='observation'?'Resultado diferente do Atlas':entry.type==='goal'?'Confirmação de objetivo':entry.type==='catalog'?'Catálogo conferido':'Correção da ficha')}${entry.eventKey?' — '+esc(labelEvent(index.events.get(entry.eventKey))):''}</summary><p>${esc(entry.note||'Sem anotação adicional.')}</p>${entry.context?`<p class="game-help">Objetivos no momento: ${esc(entry.context.goals.map(goalLabel).join(' · ')||'nenhum informado')}. Perfil: ${entry.context.profile==='expected'?'média conhecida':'prudente'}.</p>`:''}${entry.issues.length?`<p class="game-help">Lacunas identificadas no momento: ${esc(entry.issues.join('; '))}</p>`:''}<pre>${esc(JSON.stringify({antes:entry.before,depois:entry.after},null,2))}</pre></details></li>`).join('')||'<li>Nenhum resultado registrado ainda.</li>'}</ol></details>`;
  }
  function closeMobileSidebar() {
    if(window.matchMedia('(max-width: 650px)').matches)window.AtlasLayout?.setSidebarOpen(false,{persist:true,focusReturn:true});
  }
  function renderSideNav(run,editing) {
    const side=$('gameSideNav');if(!side)return;
    const locked=editing||newForm;
    side.hidden=false;
    side.innerHTML=`<div class="game-side-heading"><span class="eyebrow">SUA RUN</span><h2>${esc(run?.name||'Nova aventura')}</h2></div><label>Run salva<select id="gameRunSwitcher" ${locked||!run?'disabled':''}>${session.runs.length?session.runs.map(r=>`<option value="${r.id}" ${run?.id===r.id?'selected':''}>${esc(r.name)}${r.status==='ended'?' · encerrada':''}</option>`).join(''):'<option>Crie ou importe uma run</option>'}</select></label><nav class="game-side-links" aria-label="Painéis da run">${[['companion','▷','Acompanhar no celular'],['sheet','◇','Ficha da run'],['goals','◎','Ver / editar objetivos'],['history','↶','Diário da run'],['catalog','✧','Catálogo confirmado'],['runs','☷','Gerenciar runs']].map(([key,icon,label])=>`<button type="button" data-game-panel="${key}" ${locked||(!run&&!['companion','runs'].includes(key))?'disabled':''} ${panel===key?'aria-current="page"':''}>${icon} ${label}${key==='sheet'&&run?.state.pending.length?` <span>${run.state.pending.length}</span>`:''}</button>`).join('')}</nav><label>Como acompanhar<select id="gameExperience" ${locked?'disabled':''}><option value="technical" ${experience==='technical'?'selected':''}>Modo técnico</option><option value="direct" ${experience==='direct'?'selected':''}>Modo direto</option></select></label><p class="game-help">${experience==='direct'?'Resultados em um toque. A comparação mantém as escolhas futuras.':'Detalhes, revisão da ficha e confirmação de cada registro.'}</p><div class="game-side-tools"><button type="button" data-game-action="edit-state" ${locked||!run||run.status!=='active'?'disabled':''}>Conferir / corrigir ficha</button><button type="button" data-game-action="undo" ${locked||!run||!run.cursor||run.status!=='active'?'disabled':''}>Desfazer último registro</button><button type="button" data-game-action="redo" ${locked||!run||run.cursor>=run.history.length||run.status!=='active'?'disabled':''}>Refazer</button></div>`;
  }
  function runsPanel(run) {
    return `<section class="game-card"><h2>Gerenciar runs</h2><div class="game-actions"><button type="button" data-game-action="new-run">Nova run</button><button type="button" data-game-action="export-run" ${!run?'disabled':''}>Exportar run</button><label class="game-file-button">Importar run<input id="gameImport" type="file" accept=".json,application/json"></label></div><p class="game-help">A run fica neste navegador e não lê seu celular. Exporte uma cópia antes de trocar de aparelho ou limpar os dados do navegador.</p></section>${run?dashboard(run):''}`;
  }
  function render() {
    ensure();isVisible=true;
    flowController?.destroy();flowController=null;
    if(window.ATLAS_DATA.runModelVersion!==1){host.innerHTML='<p>O pacote de dados do Modo de Jogo não está atualizado. Recarregue a página.</p>';return;}
    if(!eventSearch.size)for(const [key,e] of index.events)eventSearch.set(key,E.normalize(`${e.id} ${e.group} ${JSON.stringify(e.data)}`));
    const run=active(),editing=!!editor&&editor.mode!=='setup';
    let content;
    if(newForm||(!run&&panel!=='runs'))content=renderSetup();
    else if(review)content=renderReview(run);
    else if(editing)content=renderCorrection(run);
    else if(panel==='runs')content=runsPanel(run);
    else if(panel==='sheet')content=dashboard(run);
    else if(panel==='goals')content=goalCards(run);
    else if(panel==='history')content=historyPanel(run);
    else if(panel==='catalog')content=collectionPanel(run);
    else if(run.status!=='active')content='<section class="game-card"><h2>Run encerrada</h2><p>O diário e o backup continuam disponíveis na barra lateral.</p><button type="button" data-game-action="toggle-status">Reabrir run</button></section>';
    else content=searchPanel(run)+(run.selectedEvent?'<section class="game-event-flow" id="gameFlowCard"><div id="gameFlow"></div></section>':'')+encounterPanel(run);
    renderSideNav(run,editing);
    host.dataset.experience=experience;host.dataset.panel=panel;
    host.innerHTML=`<div class="game-experience-heading"><strong>${esc(run?.name||'Modo de Jogo')}</strong><span class="badge">${experience==='direct'?'Modo direto':'Modo técnico'}</span></div><p id="gameMessage" class="game-message" role="status" aria-live="polite"></p><p id="gameWarning" class="game-warning" role="status"></p>${recoveryRaw?'<button type="button" data-game-action="export-recovery">Exportar os dados antigos para recuperação</button>':''}<div id="gameConflict" class="game-pending" hidden>Há alterações em outra aba. <button type="button" data-game-action="reload-storage">Carregar dados da outra aba</button></div>${run&&panel!=='companion'&&!editing&&!newForm?'<div class="game-panel-heading"><button type="button" data-game-panel="companion">← Voltar ao acompanhamento</button></div>':''}${content}${options()}`;
    renderMessages();
    if(editor)renderEditorLists();
    if(run&&!newForm&&!editing&&!review){
      if(panel==='goals')renderGoalFields();
      if(panel==='companion'&&run.status==='active'){
        renderSearchResults();
        if(run.selectedEvent&&window.AtlasFlow){const context=E.continuationContext(run,index),root=context?.path[0]||run.selectedEvent;flowController=window.AtlasFlow.mount($('gameFlow'),index.events.get(root),index,{currentEventKey:run.selectedEvent,technical:experience==='technical',onOpenEvent:key=>navigate(key)});}
      }
    }
  }
  function selectEvent(key) {
    ensure();const run=active();
    if(!run){message='Crie uma run antes de selecionar o encontro.';navigate('game');render();return;}
    if(run.status!=='active')throw new Error('Reabra a run antes de selecionar um encontro.');
    if(!index.events.has(key))throw new Error('Encontro não encontrado.');
    const next=E.clone(run);next.selectedEvent=key;next.availability={};saveRun(next);review=null;editor=null;newForm=false;
    panel='companion';message='Encontro selecionado. Compare as opções e registre o resultado que aconteceu no celular.';
    navigate('game');render();$('gameEncounter')?.scrollIntoView({block:'start'});
  }
  function onClick(event) {
    const panelButton=event.target.closest('[data-game-panel]');
    if(panelButton){event.preventDefault();if(panelButton.disabled||editor?.mode==='review'||editor?.mode==='correction')return;panel=panelButton.dataset.gamePanel;newForm=false;editor=null;review=null;render();closeMobileSidebar();host.scrollIntoView({block:'start'});return;}
    const button=event.target.closest('[data-game-action]');if(!button||button.disabled)return;
    event.preventDefault();const action=button.dataset.gameAction,run=active(),key=button.dataset.key;
    message='';
    try {
      if(action==='new-run'){newForm=true;editor={mode:'setup',state:E.blankState()};review=null;render();return;}
      if(action==='cancel-editor'){newForm=false;editor=null;review=null;render();return;}
      if(action==='reload-storage'){
        const raw=localStorage.getItem(KEY);session=raw?validateSession(JSON.parse(raw)):{version:1,runs:[],activeId:null};cachedRaw=raw;recoveryRaw=null;conflict=false;editor=null;review=null;newForm=false;message='Dados salvos carregados.';render();return;
      }
      if(action==='select-event'){selectEvent(key);return;}
      if(action==='export-run'){exportRun(run);return;}
      if(action==='export-recovery'){download(recoveryRaw,'atlas-runs-recuperacao.txt','text/plain');return;}
      if(action.startsWith('add-')||action.startsWith('remove-item')||action.startsWith('remove-trait')||action.startsWith('remove-ability')){
        if(!editor)throw new Error('Abra a edição da ficha primeiro.');
        const s=editor.state;
        if(action==='add-item'){const r=pick('gameItemPick','item'),amount=Number($('gameItemAmount').value);if(!$('gameItemAmount').value||!Number.isInteger(amount)||amount<0)throw new Error('Informe uma quantidade inteira, a partir de zero.');s.items[r.id]=amount;$('gameItemPick').value='';}
        if(action==='add-trait'){const r=pick('gameTraitPick','trait');if(!s.traits.includes(r.id))s.traits.push(r.id);$('gameTraitPick').value='';}
        if(action==='add-ability'){const r=pick('gameAbilityPick','ability'),value=Number($('gameAbilityValue').value);if(!$('gameAbilityValue').value||!E.finite(value))throw new Error('Informe o valor efetivo da habilidade.');s.abilities[r.id]=value;$('gameAbilityPick').value='';}
        if(action==='remove-item')delete s.items[key];if(action==='remove-trait')s.traits=s.traits.filter(v=>v!==key);if(action==='remove-ability')delete s.abilities[key];
        renderEditorLists();return;
      }
      if(!run)throw new Error('Selecione uma run.');
      if(action==='edit-state'){panel='sheet';closeMobileSidebar();editor={mode:'correction',state:E.clone(run.state)};review=null;render();return;}
      if(action==='undo'||action==='redo'){panel='companion';closeMobileSidebar();saveRun(action==='undo'?E.undo(run):E.redo(run,index));message=action==='undo'?'Último registro desfeito. Você pode refazê-lo ou registrar outro resultado.':'Registro refeito.';render();return;}
      if(action==='toggle-status'){const next=E.clone(run);next.status=run.status==='active'?'ended':'active';saveRun(next);message=next.status==='ended'?'Run encerrada. O histórico foi preservado.':'Run reaberta.';render();return;}
      if(action==='clear-event'){const next=E.clone(run);next.selectedEvent=null;next.availability={};saveRun(next);render();return;}
      if(action==='quick-result'){
        if(experience!=='direct'||run.status!=='active')throw new Error('Abra uma run ativa no modo direto.');
        if(button.dataset.encounter!==run.selectedEvent)throw new Error('As opções mudaram. Confira a etapa atual.');
        const event=index.events.get(run.selectedEvent),choice=Number(button.dataset.choice),result=Number(button.dataset.result);
        const preview=E.previewResult(event,choice,result,run.state,index);
        if(currentAnalysis?.rows[choice]?.available===false||currentAnalysis?.rows[choice]?.outcomes[result]?.eligible===false)preview.issues.push('O resultado diverge dos requisitos da ficha; confira os valores do celular.');
        if(preview.controls.length){preview.state.stats[0]=null;preview.state.stats[1]=null;preview.issues.push('Combate iniciado: confira saúde e sanidade após a luta na ficha.');}
        preview.state.pending=[...new Set([...preview.state.pending,...preview.issues])];
        const next=E.commit(run,preview.state,index,{type:'result',eventKey:run.selectedEvent,choice,result,note:'Resultado informado no modo direto.',issues:preview.issues});
        saveRun(next);panel='companion';query='';message=next.selectedEvent?'Resultado registrado. Próxima etapa aberta.':'Resultado registrado. Informe o próximo encontro quando aparecer.';
        if(preview.issues.length)message+=' Há efeitos para conferir na ficha.';
        render();$('gameEncounter')?.scrollIntoView({block:'start'});return;
      }
      if(action==='review-result'||action==='manual-result'){
        if(run.status!=='active')throw new Error('Reabra a run para registrar o resultado.');
        const event=index.events.get(run.selectedEvent);if(!event)throw new Error('Selecione o encontro primeiro.');
        const choice=action==='manual-result'?null:Number(button.dataset.choice),result=action==='manual-result'?null:Number(button.dataset.result);
        const preview=choice===null?{state:E.clone(run.state),changes:[],issues:['Resultado diferente do conjunto extraído; conferir efeitos manualmente.']}:E.previewResult(event,choice,result,run.state,index);
        if(choice!==null && (currentAnalysis?.rows[choice]?.available===false || currentAnalysis?.rows[choice]?.outcomes[result]?.eligible===false))preview.issues.push('O requisito não correspondia à ficha informada; conferir as condições da escolha/resultado.');
        review={eventKey:run.selectedEvent,choice,result,preview};editor={mode:'review',state:E.clone(preview.state)};render();host.scrollIntoView({block:'start'});return;
      }
      if(action==='remove-goal'||action==='promote-goal'){
        if(run.status!=='active')throw new Error('Reabra a run para alterar objetivos.');
        const next=E.clone(run),goal=next.goals.find(g=>g.id===key);
        next.goals=next.goals.filter(g=>g.id!==key);if(action==='promote-goal'&&goal)next.goals.unshift(goal);
        saveRun(next);render();return;
      }
      if(action==='confirm-goal'){
        const g=run.goals.find(g=>g.id===key),s=E.clone(run.state),p=E.goalProgress(g,s);
        if(g.type==='story')s.completedGoals=p.complete?s.completedGoals.filter(id=>id!==g.id):[...s.completedGoals,g.id];
        else if(g.type==='ending'){const [,group,ident]=g.target.split(':');s.endings[group]=p.complete?s.endings[group].filter(id=>id!==Number(ident)):[...s.endings[group],Number(ident)];}
        else {const kind=g.type==='catalog_item'?'item':'monster';s.catalog[kind]=p.complete?s.catalog[kind].filter(k=>k!==g.target):[...s.catalog[kind],g.target];}
        saveRun(E.commit(run,s,index,{type:'goal',note:`${p.complete?'Removi a confirmação':'Confirmei no jogo'}: ${goalLabel(g)}`}));message='Confirmação registrada no diário.';render();return;
      }
      if(action==='unmark-catalog'){
        const s=E.clone(run.state),kind=index.records.get(key).kind;s.catalog[kind]=s.catalog[kind].filter(k=>k!==key);
        saveRun(E.commit(run,s,index,{type:'catalog',note:`Removi a confirmação de ${recordName(key)}.`}));render();return;
      }
    } catch(err){error(err);}
  }
  function onSubmit(event) {
    event.preventDefault();const run=active();message='';
    try {
      if(event.target.id==='gameSetup') {
        const state=readState();if($('gameCopyCatalog')?.checked&&run)state.catalog=E.clone(run.state.catalog);
        const next=E.newRun({name:$('gameRunName').value,difficulty:$('gameDifficulty').value,profile:$('gameProfile').value,
          mainStory:$('gameMainStory').value,tales:$('gameTales').value,state},index);
        saveRun(next);newForm=false;editor=null;review=null;panel='goals';query='';message='Run criada. Defina os objetivos e depois selecione o encontro que apareceu.';render();$('gameGoalType')?.focus();return;
      }
      if(!run)throw new Error('Selecione uma run.');
      if(event.target.id==='gameGoalForm') {
        const type=$('gameGoalType').value,kind={item:'item',ending:'ending',catalog_item:'item',catalog_monster:'monster'}[type];
        const g={id:E.id(),type,amount:$('gameGoalAmount')?Number($('gameGoalAmount').value):1,target:'',label:''};
        if(kind)g.target=pick('gameGoalTarget',kind).key;
        if(type==='story'){g.label=$('gameGoalLabel').value.trim();if($('gameGoalEnding').value.trim())g.endingTarget=pick('gameGoalEnding','ending').key;}
        const next=E.clone(run);next.goals=E.cleanGoals([...run.goals,g],index);saveRun(next);message='Objetivo adicionado.';render();return;
      }
      if(event.target.id==='gameObservationForm') {
        if(!$('gameConfirmObservation').checked)throw new Error('Confira o resultado com o jogo antes de salvar.');
        const s=readState(),note=$('gameObservationNote').value.trim();
        if(review.choice===null&&!note)throw new Error('Descreva o resultado diferente que aconteceu.');
        if(!$('gameResolveEffects')?.checked)s.pending=[...new Set([...s.pending,...review.preview.issues])];
        for(const input of event.target.querySelectorAll('input[name="gameCatalogConfirm"]')){
          const kind=index.records.get(input.value).kind;if(input.checked){if(!s.catalog[kind].includes(input.value))s.catalog[kind].push(input.value);}else s.catalog[kind]=s.catalog[kind].filter(k=>k!==input.value);
        }
        const next=E.commit(run,s,index,{type:review.choice===null?'observation':'result',eventKey:review.eventKey,choice:review.choice,result:review.result,note,issues:review.preview.issues});
        saveRun(next);editor=null;review=null;panel='companion';query='';message=next.selectedEvent?'Resultado observado salvo. As próximas escolhas deste encontro estão abaixo.':'Resultado observado salvo. Esta etapa não tem continuação direta; selecione o próximo encontro quando aparecer no jogo.';render();if(next.selectedEvent)$('gameEncounter')?.scrollIntoView({block:'start'});return;
      }
      if(event.target.id==='gameCorrectionForm'){
        const s=readState();if($('gameClearPending')?.checked)s.pending=[];
        saveRun(E.commit(run,s,index,{type:'correction',note:$('gameCorrectionNote').value.trim()}));editor=null;panel='sheet';message='Correção salva. Você pode desfazê-la pelo histórico.';render();return;
      }
      if(event.target.id==='gameCatalogForm'){
        const kind=$('gameCatalogKind').value,record=pick('gameCatalogTarget',kind),s=E.clone(run.state);
        if(!s.catalog[kind].includes(record.key))s.catalog[kind].push(record.key);
        saveRun(E.commit(run,s,index,{type:'catalog',note:`Conferi ${record.title} no catálogo do jogo.`}));message='Registro confirmado no catálogo desta run.';render();return;
      }
    }catch(err){error(err);}
  }
  let searchTimer;
  function onInput(event) {
    if(editor){
      const key=event.target.id;
      if(/^gs\d+$/.test(key))editor.state.stats[key.slice(2)]=event.target.value.trim()===''?null:Number(event.target.value);
      if(key==='gs3'){editor.state.alignmentRange=E.finite(editor.state.stats[3])?null:($('gameAlignmentBand').value==='keep'?JSON.parse($('gameAlignmentBand').dataset.range):E.alignmentRangeForBand($('gameAlignmentBand').value));const info=E.alignmentInfo(editor.state);if(info.value!==null)$('gameAlignmentBand').value=info.bands[0];$('gameAlignmentHint').textContent=alignmentLabel(editor.state);}
      if(key==='gsScore')editor.state.score=event.target.value.trim()===''?null:Number(event.target.value);
      if(key==='gameFlags')editor.flagsText=event.target.value;
      if(['gameObservationNote','gameCorrectionNote'].includes(key))editor.note=event.target.value;
      const fields={gameRunName:'name',gameMainStory:'mainStory',gameTales:'tales'};
      if(fields[key]){editor.config||={};editor.config[fields[key]]=event.target.value;}
    }
    if(event.target.id==='gameEventQuery'){
      query=event.target.value;clearTimeout(searchTimer);searchTimer=setTimeout(()=>{if($('gameEventResults'))renderSearchResults();},120);
    }
  }
  async function onChange(event) {
    try {
      if(editor){
        if(event.target.id==='gameAlignmentBand'){
          $('gs3').value='';editor.state.stats[3]=null;
          editor.state.alignmentRange=event.target.value==='keep'?JSON.parse(event.target.dataset.range):E.alignmentRangeForBand(event.target.value);
          $('gameAlignmentHint').textContent=alignmentLabel(editor.state);return;
        }
        if(event.target.id==='gameInventoryComplete')editor.state.inventoryComplete=event.target.checked;
        if(event.target.id==='gameTraitsComplete')editor.state.traitsComplete=event.target.checked;
        if(event.target.id==='gameDifficulty'||event.target.id==='gameProfile'){editor.config||={};editor.config[event.target.id==='gameDifficulty'?'difficulty':'profile']=event.target.value;}
      }
      if(event.target.id==='gameExperience'){
        if(editor?.mode==='review'||editor?.mode==='correction')return;
        experience=event.target.value==='direct'?'direct':'technical';try{localStorage.setItem(EXPERIENCE_KEY,experience);}catch{}
        message=experience==='direct'?'Modo direto: registre o resultado em um toque. A análise das escolhas futuras continua ativa.':'Modo técnico: revisão dos dados antes de cada registro.';render();closeMobileSidebar();return;
      }
      if(event.target.id==='gameGoalType'){renderGoalFields();return;}
      if(event.target.id==='gameEventCategory'){category=event.target.value;renderSearchResults();return;}
      if(event.target.id==='gameRunSwitcher'){
        const next=E.clone(session);next.activeId=event.target.value;persist(next);editor=null;review=null;panel='companion';query='';newForm=false;message='Run carregada.';render();return;
      }
      if(event.target.id==='gameCatalogKind'){$('gameCatalogTarget').value='';$('gameCatalogTarget').setAttribute('list',`game-${event.target.value}-options`);return;}
      if(event.target.matches('[data-game-available]')){
        const next=E.clone(active()),key=event.target.dataset.gameAvailable;
        if(event.target.checked)next.availability[key]=true;else delete next.availability[key];
        saveRun(next);render();return;
      }
      if(event.target.id==='gameImport') {
        const file=event.target.files[0];if(!file)return;
        if(file.size>8*1024*1024)throw new Error('Arquivo muito grande. Use um backup de até 8 MB.');
        const payload=JSON.parse(await file.text());
        if(payload.format!=='life-in-adventure-run'||payload.version!==1)throw new Error('Este arquivo não é um backup de run do Atlas.');
        const imported=E.validateRun(payload.run,index);imported.id=E.id();imported.name=short(imported.name+' (importada)',80);
        saveRun(imported);editor=null;review=null;newForm=false;panel='companion';query='';message='Backup importado como uma nova run. As runs anteriores foram preservadas.';render();return;
      }
    }catch(err){error(err);}
  }
  function exportRun(run) {
    if(!run)return;
    const data={format:'life-in-adventure-run',version:1,exportedAt:new Date().toISOString(),run};
    download(JSON.stringify(data,null,2),'atlas-run-'+run.id+'.json','application/json');
    message='Backup exportado. Guarde o arquivo para restaurar a run ou compartilhar as diferenças encontradas.';renderMessages();
  }
  function download(data,name,type){const url=URL.createObjectURL(new Blob([data],{type}));const a=document.createElement('a');a.href=url;a.download=name;a.click();setTimeout(()=>URL.revokeObjectURL(url),1000);}
  window.AtlasGame={init:callback=>{navigate=callback;},render,hide:()=>{isVisible=false;flowController?.destroy();flowController=null;if($('gameSideNav'))$('gameSideNav').hidden=true;},chooseEvent:key=>{try{selectEvent(key);}catch(err){navigate('game');render();error(err);}}};
})();
