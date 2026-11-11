/* Pure, conservative model for the manual run companion. No DOM or storage. */
'use strict';
((root, factory) => {
  const api = factory();
  if (typeof module === 'object' && module.exports) module.exports = api;
  else root.AtlasRun = api;
})(globalThis, () => {
  const VERSION = 1;
  const STATS = {0:'Saúde',1:'Sanidade',2:'EXP',4:'Ouro',5:'Força',6:'Destreza',7:'Inteligência',8:'Saúde máxima',9:'Sanidade máxima',12:'Carisma',13:'Constituição',14:'Sabedoria'};
  const FAMILIES = ['mainEventList','subEventList','chainEventList'];
  const TYPES = ['item','ending','catalog_item','catalog_monster','story','score','gold'];
  const clone = value => JSON.parse(JSON.stringify(value));
  const finite = v => typeof v === 'number' && Number.isFinite(v);
  const own = (obj,key) => Object.hasOwn(obj,key);
  const id = () => globalThis.crypto?.randomUUID?.() || `run-${Date.now()}-${Math.random().toString(16).slice(2)}`;
  const text = (v,n=300) => typeof v==='string' ? v.slice(0,n) : '';
  const fail = message => { throw new Error(message); };
  const normalize = value => String(value??'').normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase();
  const plain = value => String(value??'').replace(/<[^>]*>/g,'').replace(/\|[^|]*\|/g,'').trim();

  function createIndex(data) {
    const events = new Map(data.events.map(e=>[`${e.group}:${e.id}`,e]));
    const records = new Map(data.catalogs.map(c=>[c.key,c]));
    const incoming = new Map();
    for(const [key,e] of events) for(const c of e.data.choice||[]) for(const r of c.result||[]) {
      const target=`${e.group}:${r.nextEvent}`;
      if(Number.isInteger(r.nextEvent) && r.nextEvent>=0 && events.has(target)) {
        if(!incoming.has(target))incoming.set(target,new Set());
        incoming.get(target).add(key);
      }
    }
    return {data,events,records,incoming};
  }
  function blankState() {
    return {stats:Object.fromEntries(Object.keys(STATS).map(k=>[k,null])),items:{},inventoryComplete:false,
      traits:[],traitsComplete:false,abilities:{},states:Object.fromEntries(FAMILIES.map(f=>[f,{}])),
      endings:{main:[],sub:[]},catalog:{item:[],monster:[],ending:[]},completedGoals:[],score:null,pending:[],flagsUncertain:false};
  }
  function cleanState(input,index) {
    if(!input || typeof input!=='object' || Array.isArray(input))fail('Estado da run inválido.');
    const s=blankState();
    for(const k of Object.keys(STATS)) {
      const v=input.stats?.[k];
      if(v!==undefined && v!==null && (!finite(v)||v<0||v>1e9))fail(`Valor inválido em ${STATS[k]}.`);
      s.stats[k]=v??null;
    }
    const counts=(object,kind)=>{
      if(object!==undefined && (!object || typeof object!=='object'||Array.isArray(object)))fail('Lista de valores inválida.');
      const out={};
      for(const [key,value] of Object.entries(object||{})) {
        const recordKey=kind==='ability'?`ability:${key}:0`:`${kind}:${key}`;
        if(!/^\d+$/.test(key)||!index.records.has(recordKey))fail('Registro desconhecido no estado da run.');
        if(value!==null && (!finite(value)||(kind==='item' && (!Number.isInteger(value)||value<0))||Math.abs(value)>1e9))fail('Quantidade ou habilidade inválida.');
        out[key]=value;
      }
      return out;
    };
    s.items=counts(input.items,'item');s.abilities=counts(input.abilities,'ability');
    const list=(values,check)=>{
      if(!Array.isArray(values)||values.length>10000)fail('Lista da run inválida.');
      if(!values.every(check))fail('Registro inválido na lista da run.');
      return [...new Set(values)];
    };
    s.traits=list(input.traits||[],k=>typeof k==='string'&&index.records.has(`trait:${k}`));
    s.flagsUncertain=input.flagsUncertain===true;
    s.traitsComplete=input.traitsComplete===true;s.inventoryComplete=input.inventoryComplete===true;
    for(const family of FAMILIES) {
      const source=input.states?.[family]||{};
      if(!source||typeof source!=='object'||Array.isArray(source))fail('Estados de história inválidos.');
      for(const [k,v] of Object.entries(source)){
        if(!/^\d+$/.test(k)||!Number.isInteger(v)||Math.abs(v)>1e9)fail('Estado de história inválido.');
        s.states[family][k]=v;
      }
    }
    for(const group of ['main','sub'])s.endings[group]=list(input.endings?.[group]||[],v=>Number.isInteger(v)&&index.records.has(`ending:${group}:${v}`));
    for(const kind of ['item','monster','ending'])s.catalog[kind]=list(input.catalog?.[kind]||[],key=>typeof key==='string'&&index.records.get(key)?.kind===kind);
    s.completedGoals=list(input.completedGoals||[],v=>typeof v==='string'&&v.length<100);
    if(input.score!==null && input.score!==undefined && (!finite(input.score)||input.score<0||input.score>1e12))fail('Pontuação inválida.');
    s.score=input.score??null;
    s.pending=list(input.pending||[],v=>typeof v==='string'&&v.length<=600);
    return s;
  }
  function cleanGoals(goals,index) {
    if(!Array.isArray(goals)||goals.length>8)fail('Use até oito objetivos por run.');
    const seen=new Set();
    return goals.map(g=>{
      if(!g||!TYPES.includes(g.type))fail('Tipo de objetivo inválido.');
      const goal={id:text(g.id,99)||id(),type:g.type,label:text(g.label,180),target:text(g.target,120),amount:g.amount??1};
      if(!finite(goal.amount)||goal.amount<=0||goal.amount>1e9)fail('Meta inválida.');
      const kind={item:'item',ending:'ending',catalog_item:'item',catalog_monster:'monster'}[g.type];
      if(kind && index.records.get(goal.target)?.kind!==kind)fail('Selecione um alvo válido para o objetivo.');
      if(['item','catalog_item','catalog_monster','ending'].includes(g.type)&&!Number.isInteger(goal.amount))fail('Use uma quantidade inteira.');
      if(g.type==='story'&&!goal.label.trim())fail('Informe a história ou conto que deseja concluir.');
      if(g.endingTarget){if(index.records.get(g.endingTarget)?.kind!=='ending')fail('Epílogo alvo inválido.');goal.endingTarget=g.endingTarget;}
      if(seen.has(goal.id))fail('Objetivos duplicados no arquivo.');seen.add(goal.id);
      return goal;
    });
  }
  function newRun(config,index) {
    return {id:id(),version:VERSION,gameVersion:index.data.version,build:366,name:text(config.name,80).trim()||'Minha aventura',
      difficulty:config.difficulty==='hard'?'hard':'normal',profile:config.profile==='expected'?'expected':'cautious',
      mainStory:text(config.mainStory,150),tales:text(config.tales,400),createdAt:new Date().toISOString(),updatedAt:new Date().toISOString(),
      status:'active',state:cleanState(config.state||blankState(),index),goals:cleanGoals(config.goals||[],index),history:[],cursor:0,
      selectedEvent:null,availability:{}};
  }
  function requirement(view,s) {
    if(!view)return true;
    if(!view.tokens?.length)return null;
    const values=view.tokens.map(t=>{
      const m=t.model;if(!t.known||!m)return null;
      let value=null;
      if(m.domain==='userData_effective')value=s.stats[m.index];
      else if(m.domain==='inventory')value=own(s.items,String(m.index))?s.items[m.index]:s.inventoryComplete?0:null;
      else if(m.domain==='ability_effective')value=s.abilities[m.index];
      else if(FAMILIES.includes(m.domain)){
        if(s.flagsUncertain||s.pending.length||m.context_requirements?.length)return null;
        value=s.states[m.domain][m.index];
      } else if(m.domain==='traitList') {
        if(!s.traits.includes(String(m.index))&&!s.traitsComplete)return null;
        const has=s.traits.includes(String(m.index));return m.comparison==='contains'?has:!has;
      } else if(m.domain==='mainEpList'||m.domain==='subEpList') {
        const group=m.domain==='mainEpList'?'main':'sub';
        if(s.flagsUncertain||s.pending.length)return null;
        // Unreported initial flags stay unknown: only positive known membership is evaluable.
        const has=s.endings[group].includes(m.index*1000+m.quantity);
        if(!has)return null;
        return m.comparison==='contains';
      } else return null;
      if(!finite(value))return null;
      if(m.comparison==='>=')return value>=m.quantity;
      if(m.comparison==='<')return value<m.quantity;
      if(m.comparison==='==')return value===m.quantity;
      if(m.comparison==='!=')return value!==m.quantity;
      return null;
    });
    return view.operator==='OR' ? values.includes(true)?true:values.includes(null)?null:false : values.includes(false)?false:values.includes(null)?null:true;
  }
  function previewResult(event,ci,ri,state,index) {
    const raw=event.data.choice?.[ci]?.result?.[ri];
    if(!raw)fail('Resultado não encontrado.');
    const view=event.rules?.choices?.[ci]?.results?.[ri];
    const next=clone(state),issues=[],changes=[];
    if(raw.reward && !view?.reward?.tokens?.length)issues.push('Recompensa sem modelo disponível.');
    for(const t of view?.reward?.tokens||[]) {
      const m=t.model;
      if(!t.known||!m){issues.push(`Efeito não modelado: ${t.raw}`);next.flagsUncertain=true;continue;}
      const k=String(m.index),q=m.quantity;
      if(m.operation==='change_user_data') {
        if(!own(STATS,k)){issues.push(`Atributo de índice ${k}: conferir a alteração ${q}.`);continue;}
        if(!finite(next.stats[k])){issues.push(`${STATS[k]} não informado; conferir a alteração ${q}.`);continue;}
        next.stats[k]=Math.max(0,next.stats[k]+q);
        changes.push(`${STATS[k]}: ${q>=0?'+':''}${q}`);
      } else if(m.operation==='add_item'||m.operation==='remove_item') {
        const amount=own(next.items,k)?next.items[k]:next.inventoryComplete?0:null;
        const key=`item:${k}`,label=index.records.get(key)?.title||key;
        if(!index.records.has(key)){issues.push(`Item fora do catálogo extraído: ${key}.`);next.flagsUncertain=true;continue;}
        if(!finite(amount)){next.items[k]=null;issues.push(`Conferir quantidade de ${label}; inventário inicial incompleto.`);}
        else next.items[k]=Math.max(0,amount+(m.operation==='add_item'?q:-q));
        changes.push(`${m.operation==='add_item'?'Receber':'Remover'} ${q} × ${label}`);
      } else if(['set_chain_state','set_sub_state','set_main_state'].includes(m.operation)) {
        const family={set_chain_state:'chainEventList',set_sub_state:'subEventList',set_main_state:'mainEventList'}[m.operation];
        next.states[family][k]=q;changes.push(t.text);
      } else if(['record_main_ending','record_sub_ending','remove_main_ending','remove_sub_ending'].includes(m.operation)) {
        const group=m.operation.includes('main')?'main':'sub',key=`ending:${group}:${m.ending_id}`;
        if(!index.records.has(key)){issues.push(`Epílogo ${m.ending_id} não consta no catálogo extraído.`);continue;}
        if(m.operation.startsWith('remove'))next.endings[group]=next.endings[group].filter(v=>v!==m.ending_id);
        else if(!next.endings[group].includes(m.ending_id))next.endings[group].push(m.ending_id);
        changes.push(t.text);
      } else {issues.push(`Operação ainda não modelada: ${t.raw}`);next.flagsUncertain=true;}
    }
    // The suggestions are estimates. The user reviews displayed values before committing.
    for(const [current,max] of [['0','8'],['1','9']])if(finite(next.stats[current])&&finite(next.stats[max]))next.stats[current]=Math.min(next.stats[current],next.stats[max]);
    return {state:next,issues,changes,raw,view};
  }
  function goalProgress(goal,s) {
    let value=null,complete=false;
    if(goal.type==='item'){const key=goal.target.split(':')[1];value=own(s.items,key)?s.items[key]:s.inventoryComplete?0:null;complete=finite(value)&&value>=goal.amount;}
    if(goal.type==='gold'){value=s.stats[4];complete=finite(value)&&value>=goal.amount;}
    if(goal.type==='ending'){const [,group,key]=goal.target.split(':');value=s.endings[group].includes(Number(key))?1:0;complete=value===1;}
    if(goal.type.startsWith('catalog_')){const kind=goal.type==='catalog_item'?'item':'monster';value=s.catalog[kind].includes(goal.target)?1:0;complete=value===1;}
    if(goal.type==='story'){complete=s.completedGoals.includes(goal.id);value=complete?1:0;}
    if(goal.type==='score'){value=s.score;complete=false;}
    return {value,complete};
  }
  function distanceToGoal(goal,index) {
    const target=goal.type==='story'?goal.endingTarget:goal.target;
    if(!target || !['item','ending','catalog_item','catalog_monster','story'].includes(goal.type))return new Map();
    const seeds=[];
    for(const [key,e] of index.events) {
      if((e.references||[]).some(ref=>ref.key===target && ['Concede item','Registra epílogo','Monstro listado no encontro'].includes(ref.relation)))seeds.push(key);
    }
    const distances=new Map(seeds.map(key=>[key,0]));let frontier=seeds;
    for(let depth=1;depth<=3;depth++){
      const next=[];for(const key of frontier)for(const parent of index.incoming.get(key)||[])if(!distances.has(parent)){distances.set(parent,depth);next.push(parent);}frontier=next;
    }
    return distances;
  }
  function analyze(event,run,index,availability={}) {
    const active=run.goals.filter(g=>!goalProgress(g,run.state).complete);
    const guides=active.map(g=>distanceToGoal(g,index));
    const rows=(event.data.choice||[]).map((choice,ci)=>{
      const cv=event.rules?.choices?.[ci];
      const available=own(availability,String(ci))?availability[ci]:requirement(cv?.required,run.state);
      let uncertain=available===null,lethal=false;
      const possibilities=[];
      const outcomes=(choice.result||[]).map((raw,ri)=>{
        const rv=cv?.results?.[ri],eligible=requirement(rv?.required,run.state);
        const preview=previewResult(event,ci,ri,run.state,index);
        if(eligible!==false) {
          if(eligible===null||preview.issues.length)uncertain=true;
          if(finite(run.state.stats[0]) && preview.state.stats[0]===0)lethal=true;
          let benefit=0;const reasons=[];
          active.forEach((g,gi)=>{
            const before=goalProgress(g,run.state),after=goalProgress(g,preview.state);
            let progress=0;
            if(['item','gold','ending'].includes(g.type)&&finite(before.value)&&finite(after.value)){
              progress=(after.value-before.value)/Math.max(1,g.amount-(before.value||0));
              if(progress>0)reasons.push(`Avança: ${g.label||index.records.get(g.target)?.title||'meta de ouro'}`);
              if(progress<0)reasons.push(`Afasta: ${g.label||index.records.get(g.target)?.title||'meta de ouro'}`);
            }
            // A direct source command can guide discovery even when actual ownership is unknown.
            if(['item','catalog_item','ending'].includes(g.type) && !progress) {
              const match=rv?.reward?.tokens?.some(t=>t.ref===g.target&&['Concede item','Registra epílogo'].includes(t.relation));
              if(match){progress=.5;uncertain=true;reasons.push(`Pode ajudar a obter: ${index.records.get(g.target)?.title||g.label}; confirme no jogo.`);}
            }
            if(g.type==='story' && g.endingTarget && rv?.reward?.tokens?.some(t=>t.ref===g.endingTarget && t.relation==='Registra epílogo')){
              progress=.8;uncertain=true;reasons.push(`Registra o epílogo desejado para ${g.label}; a conclusão da história precisa ser confirmada por você.`);
            }
            const target=`${event.group}:${raw.nextEvent}`,distance=guides[gi].get(target);
            if(progress===0 && Number.isInteger(raw.nextEvent)&&raw.nextEvent>=0 && distance!==undefined){progress=.1/(distance+1);uncertain=true;reasons.push(`Possível caminho para ${g.label||index.records.get(g.target)?.title}: até ${distance+1} transições; requisitos futuros não avaliados.`);}
            benefit+=Math.max(-1,Math.min(1,progress))*(gi===0?100:10);
          });
          const goldBefore=run.state.stats[4],goldAfter=preview.state.stats[4];
          if(finite(goldBefore)&&finite(goldAfter))benefit+=Math.max(-.9,Math.min(.9,(goldAfter-goldBefore)/1000));
          if(finite(run.state.stats[0])&&finite(preview.state.stats[0]))benefit+=Math.max(-.9,Math.min(.9,(preview.state.stats[0]-run.state.stats[0])/100));
          possibilities.push({benefit,reasons,probability:rv?.probability});
        }
        return {ri,raw,view:rv,eligible,preview};
      });
      const benefits=possibilities.map(p=>p.benefit);
      const hasWeights=possibilities.length>0 && possibilities.every(p=>typeof p.probability==='string') && !outcomes.some(o=>o.eligible===null);
      const weight=p=>{const [a,b='1']=p.probability.split('/');return Number(a)/Number(b);};
      const expected=hasWeights?possibilities.reduce((n,p)=>n+p.benefit*weight(p),0):null;
      const score=benefits.length?(run.profile==='expected' && expected!==null?expected:Math.min(...benefits))-(lethal?10000:0):-Infinity;
      return {ci,available,uncertain,lethal,outcomes,score,min:benefits.length?Math.min(...benefits):null,max:benefits.length?Math.max(...benefits):null,
        expected,reasons:[...new Set(possibilities.flatMap(p=>p.reasons))],profile:run.profile};
    });
    const primary=active[0];
    const supported=primary && (['item','ending','gold','catalog_item','catalog_monster'].includes(primary.type)||primary.endingTarget);
    const candidates=rows.filter(r=>r.available!==false&&r.outcomes.some(o=>o.eligible!==false)).sort((a,b)=>b.score-a.score);
    let recommendation=null;
    if(active.length && supported && candidates.length && finite(candidates[0].score) && (candidates.length===1||candidates[0].score-candidates[1].score>1e-6))recommendation=candidates[0].ci;
    return {rows,recommendation,provisional:recommendation!==null && rows.some(r=>r.available!==false&&r.uncertain),
      message:!active.length?'Adicione um objetivo ou escolha uma nova meta para orientar a comparação.':!supported?'Este objetivo precisa de confirmação manual. Ainda não há modelo para calcular a melhor escolha para ele.':recommendation===null?'Não há uma opção claramente melhor com os dados atuais. Compare os resultados e requisitos abaixo.':'Indicação baseada nas consequências conhecidas e nas prioridades desta run. Não garante o melhor resultado no jogo.'};
  }
  function commit(run,after,index,meta={}) {
    if(run.status!=='active' && meta.type!=='resume')fail('Reabra a run para registrar alterações.');
    const next=clone(run),state=cleanState(after,index);
    const entry={id:id(),createdAt:new Date().toISOString(),type:text(meta.type,40)||'correction',
      eventKey:meta.eventKey||null,choice:meta.choice??null,result:meta.result??null,note:text(meta.note,3000),
      issues:(meta.issues||[]).map(v=>text(v,600)),context:{goals:cleanGoals(run.goals,index),profile:run.profile,difficulty:run.difficulty,availability:clone(run.availability)},before:clone(run.state),after:state};
    if(entry.eventKey&&!index.events.has(entry.eventKey))fail('Evento não encontrado.');
    if(entry.type==='result') {
      const result=index.events.get(entry.eventKey)?.data.choice?.[entry.choice]?.result?.[entry.result];
      if(!Number.isInteger(entry.choice)||!Number.isInteger(entry.result)||!result)fail('Escolha ou resultado inválido.');
    }
    next.history=next.history.slice(0,next.cursor);next.history.push(entry);next.cursor=next.history.length;
    next.state=state;next.updatedAt=new Date().toISOString();
    if(entry.eventKey)next.selectedEvent=entry.eventKey;
    next.availability={};return next;
  }
  function undo(run) {
    const next=clone(run);if(next.cursor===0)return next;
    const entry=next.history[--next.cursor];next.state=clone(entry.before);next.status='active';
    if(entry.eventKey)next.selectedEvent=entry.eventKey;next.availability={};next.updatedAt=new Date().toISOString();return next;
  }
  function redo(run) {
    const next=clone(run);if(next.cursor>=next.history.length)return next;
    const entry=next.history[next.cursor++];next.state=clone(entry.after);next.availability={};next.updatedAt=new Date().toISOString();return next;
  }
  function validateRun(raw,index) {
    if(!raw||raw.version!==VERSION||raw.gameVersion!==index.data.version||raw.build!==366)fail('Arquivo de run incompatível com esta versão do Atlas.');
    if(typeof raw.id!=='string'||!raw.id||raw.id.length>100)fail('Identificador de run inválido.');
    if(!Array.isArray(raw.history)||raw.history.length>5000||!Number.isInteger(raw.cursor)||raw.cursor<0||raw.cursor>raw.history.length)fail('Histórico da run inválido.');
    const result=newRun({...raw,state:raw.state,goals:raw.goals},index);
    result.id=raw.id;result.status=raw.status==='ended'?'ended':'active';
    result.createdAt=text(raw.createdAt,50);result.updatedAt=text(raw.updatedAt,50);
    result.history=raw.history.map(entry=>{
      if(!entry || !['result','correction','observation','goal','catalog','resume'].includes(entry.type))fail('Registro de histórico inválido.');
      if(entry.eventKey&&!index.events.has(entry.eventKey))fail('Histórico referencia um evento inexistente.');
      if(entry.type==='result' && (!Number.isInteger(entry.choice)||!Number.isInteger(entry.result)||!index.events.get(entry.eventKey)?.data.choice?.[entry.choice]?.result?.[entry.result]))fail('Resultado do histórico inválido.');
      return {id:text(entry.id,99)||id(),createdAt:text(entry.createdAt,50),type:entry.type,eventKey:entry.eventKey||null,
        choice:entry.choice??null,result:entry.result??null,note:text(entry.note,3000),context:entry.context?{goals:cleanGoals(entry.context.goals,index),profile:entry.context.profile==='expected'?'expected':'cautious',difficulty:entry.context.difficulty==='hard'?'hard':'normal',availability:Object.fromEntries(Object.entries(entry.context.availability||{}).filter(([key,value])=>/^\d+$/.test(key)&&value===true))}:null,issues:(Array.isArray(entry.issues)?entry.issues:[]).map(v=>text(v,600)),before:cleanState(entry.before,index),after:cleanState(entry.after,index)};
    });
    for(let i=1;i<result.history.length;i++)if(JSON.stringify(result.history[i-1].after)!==JSON.stringify(result.history[i].before))fail('Histórico inconsistente: os estados não encadeiam.');
    result.cursor=raw.cursor;
    if(result.history.length){const expected=result.cursor?result.history[result.cursor-1].after:result.history[0].before;if(JSON.stringify(result.state)!==JSON.stringify(expected))fail('Estado atual não corresponde ao histórico.');}
    result.selectedEvent=raw.selectedEvent&&index.events.has(raw.selectedEvent)?raw.selectedEvent:null;
    result.availability={};
    return result;
  }
  return {VERSION,STATS,TYPES,FAMILIES,clone,id,normalize,plain,finite,blankState,createIndex,newRun,cleanState,cleanGoals,requirement,previewResult,goalProgress,analyze,commit,undo,redo,validateRun};
});
