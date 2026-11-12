/* Pure, conservative model for the manual run companion. No DOM or storage. */
'use strict';
((root, factory) => {
  const api = factory();
  if (typeof module === 'object' && module.exports) module.exports = api;
  else root.AtlasRun = api;
})(globalThis, () => {
  const VERSION = 1;
  const STATS = {0:'Saúde',1:'Sanidade',2:'EXP',3:'Alinhamento',4:'Ouro',5:'Força',6:'Destreza',7:'Inteligência',8:'Saúde máxima',9:'Sanidade máxima',12:'Carisma',13:'Constituição',14:'Sabedoria'};
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

  const ALIGNMENT_BANDS = [
    {id:'evil',name:'Maligno',min:null,upper:-24},
    {id:'impure',name:'Impuro',min:-24,upper:-9},
    {id:'neutral',name:'Neutro',min:-9,upper:10},
    {id:'moral',name:'Justo',min:10,upper:25},
    {id:'good',name:'Bondoso',min:25,upper:null}
  ];
  function alignmentRangeForBand(id) {
    const band=ALIGNMENT_BANDS.find(b=>b.id===id);if(!band)return null;
    // Ranges have inclusive endpoints. Keep the last native float below an exclusive threshold.
    let max=null;
    if(band.upper!==null){const floats=new Float32Array([band.upper]),bits=new Uint32Array(floats.buffer);bits[0]+=band.upper>0?-1:1;max=floats[0];}
    return {min:band.min,max};
  }
  function alignmentInfo(state) {
    const value=finite(state.stats[3])?Math.fround(state.stats[3]):null,range=state.alignmentRange;
    const bands=ALIGNMENT_BANDS.filter(b=>finite(value)?(b.min===null||value>=b.min)&&(b.upper===null||value<b.upper):range&&(range.max===null||b.min===null||range.max>=b.min)&&(range.min===null||b.upper===null||range.min<b.upper));
    return {value:finite(value)?value:null,bands:bands.map(b=>b.id),label:bands.length?bands.map(b=>b.name).join(' ou '):'Não informado'};
  }
  function alignmentComparison(range,comparison,quantity) {
    if(!range)return null;
    if(comparison==='>=')return range.min!==null&&range.min>=quantity?true:range.max!==null&&range.max<quantity?false:null;
    if(comparison==='<')return range.max!==null&&range.max<quantity?true:range.min!==null&&range.min>=quantity?false:null;
    const excluded=(range.min!==null&&quantity<range.min)||(range.max!==null&&quantity>range.max);
    if(comparison==='==')return excluded?false:range.min===quantity&&range.max===quantity?true:null;
    if(comparison==='!=')return excluded?true:range.min===quantity&&range.max===quantity?false:null;
    return null;
  }
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
  // A positive nextEvent points to the next node of this encounter in the same table.
  function continuationKey(event,ci,ri,index) {
    const target=event?.data.choice?.[ci]?.result?.[ri]?.nextEvent;
    const key=`${event?.group}:${target}`;
    return Number.isInteger(target)&&target>=0&&index.events.has(key)?key:null;
  }
  function sequenceGraph(event,index,{maxDepth=4,maxEvents=32}={}) {
    const root=`${event.group}:${event.id}`,nodes=[{key:root,event,depth:0}],seen=new Map([[root,0]]),edges=[];
    let truncated=false;
    for(let i=0;i<nodes.length;i++) {
      const node=nodes[i];
      for(const [ci,c] of (node.event.data.choice||[]).entries()) for(const [ri,r] of (c.result||[]).entries()) {
        const target=continuationKey(node.event,ci,ri,index);
        if(target&&!seen.has(target)) {
          if(node.depth<maxDepth&&nodes.length<maxEvents){seen.set(target,node.depth+1);nodes.push({key:target,event:index.events.get(target),depth:node.depth+1});}
          else truncated=true;
        }
        edges.push({from:node.key,choice:ci,result:ri,target,value:r.nextEvent});
      }
    }
    return {nodes,edges,truncated};
  }
  function continuationContext(run,index) {
    let expected=run.selectedEvent,previous=null;const path=expected?[expected]:[];
    if(!expected)return null;
    for(let i=run.cursor-1;i>=0;i--) {
      const entry=run.history[i];
      if(!['result','observation'].includes(entry.type))continue;
      const event=index.events.get(entry.eventKey);
      if(entry.type!=='result'||continuationKey(event,entry.choice,entry.result,index)!==expected)break;
      if(!previous)previous={entry,text:event.data.choice[entry.choice].result[entry.result].text};
      path.unshift(entry.eventKey);expected=entry.eventKey;
    }
    return previous?{...previous,path}:null;
  }
  function blankState() {
    return {stats:Object.fromEntries(Object.keys(STATS).map(k=>[k,null])),alignmentRange:null,items:{},inventoryComplete:false,
      traits:[],traitsComplete:false,abilities:{},states:Object.fromEntries(FAMILIES.map(f=>[f,{}])),
      endings:{main:[],sub:[]},catalog:{item:[],monster:[],ending:[]},completedGoals:[],score:null,pending:[],flagsUncertain:false};
  }
  function cleanState(input,index) {
    if(!input || typeof input!=='object' || Array.isArray(input))fail('Estado da run inválido.');
    const s=blankState();
    for(const k of Object.keys(STATS)) {
      const v=input.stats?.[k];
      if(v!==undefined && v!==null && (!finite(v)||(k!=='3'&&v<0)||Math.abs(v)>1e9))fail(`Valor inválido em ${STATS[k]}.`);
      s.stats[k]=k==='3'&&finite(v)?Math.fround(v):v??null;
    }
    if(input.alignmentRange!==undefined&&input.alignmentRange!==null) {
      const range=input.alignmentRange;
      if(!range||typeof range!=='object'||Array.isArray(range)||!['min','max'].every(k=>range[k]===null||(finite(range[k])&&Math.abs(range[k])<=1e9)))fail('Faixa de alinhamento inválida.');
      const min=range.min===null?null:Math.fround(range.min),max=range.max===null?null:Math.fround(range.max);
      if((min===null&&max===null)||(min!==null&&max!==null&&min>max))fail('Faixa de alinhamento inválida.');
      if(s.stats[3]===null)s.alignmentRange={min,max};
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
      if(m.domain==='userData_effective'){
        value=s.stats[m.index];
        if(String(m.index)==='3'&&!finite(value))return alignmentComparison(s.alignmentRange,m.comparison,m.quantity);
      }
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
    const next=clone(state),issues=[],changes=[],controls=[];
    if(raw.reward && !view?.reward?.tokens?.length)issues.push('Recompensa sem modelo disponível.');
    for(const t of view?.reward?.tokens||[]) {
      const m=t.model;
      if(!t.known||!m){issues.push(`Efeito não modelado: ${t.raw}`);next.flagsUncertain=true;continue;}
      const k=String(m.index),q=m.quantity;
      if(m.operation==='start_combat') {
        const key=m.monster_id===null?null:`monster:${m.monster_id}`;
        const enemy=key?(index.records.get(key)?.title||`Monstro #${m.monster_id}`):'inimigo atual do encontro';
        controls.push({type:'combat',raw:t.raw,enemyKey:key,enemy,text:t.text,model:clone(m)});
        changes.push(`Iniciar combate contra ${enemy}`);
      } else if(m.operation==='change_user_data') {
        if(!own(STATS,k)){issues.push(`Atributo de índice ${k}: conferir a alteração ${q}.`);continue;}
        if(k==='3'&&!finite(next.stats[3])&&next.alignmentRange){
          for(const endpoint of ['min','max'])if(next.alignmentRange[endpoint]!==null)next.alignmentRange[endpoint]=Math.fround(next.alignmentRange[endpoint]+q);
          changes.push(`Alinhamento: ${q>=0?'+':''}${q} (estimativa pela faixa informada)`);continue;
        }
        if(!finite(next.stats[k])){issues.push(`${STATS[k]} não informado; conferir a alteração ${q}.`);continue;}
        next.stats[k]=k==='3'?Math.fround(next.stats[k]+q):Math.max(0,next.stats[k]+q);
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
    return {state:next,issues,changes,controls,raw,view};
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
  const PLANNER_LIMITS = Object.freeze({maxDepth:64,maxTransitions:6000});
  const rewardOperations = new Set(['change_user_data','add_item','remove_item','set_chain_state','set_sub_state','set_main_state','record_main_ending','record_sub_ending','remove_main_ending','remove_sub_ending']);
  const outcomeNode = event => (event.data.choice||[]).length>0&&event.data.choice.every(c=>!plain(c.text));
  const unique = values => [...new Set(values)];
  function staticProbability(value) {
    if(typeof value!=='string'||!/^\d+(?:\/\d+)?$/.test(value))return null;
    const [n,d=1]=value.split('/').map(Number),p=n/d;
    return finite(p)&&p>=0&&p<=1?p:null;
  }
  // An expectimax/minimax search over the *state* at each step. It never writes a run.
  // Limits, unknown effects and unresolved loops are reported, not turned into endpoints.
  function analyze(event,run,index,availability={},limits={}) {
    const active=run.goals.filter(g=>!goalProgress(g,run.state).complete);
    const primary=active[0],supported=primary&&(['item','ending','gold','catalog_item','catalog_monster'].includes(primary.type)||primary.endingTarget);
    const missingPrimary=primary?.type==='gold'&&!finite(run.state.stats[4]);
    const config={...PLANNER_LIMITS,...limits},memo=new Map();
    const summary={transitions:0,states:0,maxDepth:0,limited:false};
    const emptyLedger=()=>({minimum:{},items:{},monsters:{}});
    const partial=note=>({score:null,min:null,max:null,expected:null,complete:false,feasible:true,uncertain:true,route:[],notes:[note],reasons:[],cycle:false,lethal:false});
    const blocked=note=>({...partial(note),score:-Infinity,complete:true,feasible:false});
    function enter(ev,ledger) {
      const next=clone(ledger);
      for(const g of active)if(g.type==='catalog_monster'&&(ev.references||[]).some(r=>r.key===g.target&&r.relation==='Monstro listado no encontro'))next.monsters[g.target]=true;
      return next;
    }
    function track(ledger,view) {
      const next=clone(ledger);
      for(const t of view?.reward?.tokens||[]) {
        const m=t.model;if(!t.known||!m)continue;
        if(m.operation==='add_item'||m.operation==='remove_item') {
          const key=`item:${m.index}`;
          next.minimum[key]=Math.max(0,(next.minimum[key]||0)+(m.operation==='add_item'?m.quantity:-m.quantity));
          if(m.operation==='add_item'&&m.quantity>0)next.items[key]=true;
        }
      }
      return next;
    }
    function endpoint(s,ledger) {
      let score=0,uncertain=false;const reasons=[];
      active.forEach((g,i)=>{
        const before=goalProgress(g,run.state),after=goalProgress(g,s),label=g.label||index.records.get(g.target)?.title||(g.type==='gold'?'meta de ouro':g.type);
        let progress=0;
        if(['item','gold','ending'].includes(g.type)&&finite(before.value)&&finite(after.value))progress=(after.value-before.value)/Math.max(1,g.amount-before.value);
        else if(g.type==='item'&&ledger.minimum[g.target]>0){progress=.5*Math.min(1,ledger.minimum[g.target]/g.amount);uncertain=true;reasons.push(`Pode obter ${label}; quantidade inicial desconhecida, confirme no jogo.`);}
        if(g.type==='catalog_item'&&ledger.items[g.target]){progress=.5;uncertain=true;reasons.push(`Pode ajudar a registrar ${label}; o catálogo exige confirmação manual.`);}
        if(g.type==='catalog_monster'&&ledger.monsters[g.target]){progress=.25;uncertain=true;reasons.push(`Monstro ${label} listado no caminho; encontro não comprova vitória ou registro no catálogo.`);}
        if(g.type==='story'&&g.endingTarget){const [,group,id]=g.endingTarget.split(':');if(s.endings[group].includes(Number(id))){progress=.8;uncertain=true;reasons.push(`Registra o epílogo alvo de ${label}; confirme a conclusão da história.`);}}
        if(progress&&['item','gold','ending'].includes(g.type)&&finite(before.value)&&finite(after.value))reasons.push(`${progress>0?'Avança':'Afasta'} ao fim do caminho: ${label}.`);
        score+=Math.max(-1,Math.min(1,progress))*(i===0?100:10);
      });
      for(const [k,scale] of [['4',1000],['0',100]]) {
        if(finite(run.state.stats[k])&&finite(s.stats[k])) {
          const delta=s.stats[k]-run.state.stats[k];score+=Math.max(-.9,Math.min(.9,delta/scale));
          if(delta)reasons.push(`Saldo conhecido até o fim — ${STATS[k]}: ${delta>0?'+':''}${Number(delta.toFixed(3))}.`);
        }
      }
      const lethal=finite(s.stats[0])&&s.stats[0]===0;
      if(lethal){score-=10000;reasons.push('O caminho pode levar a saúde a zero; confira sobrevivência e ressurreição.');}
      return {score,min:score,max:score,expected:score,complete:true,feasible:true,uncertain,route:[],notes:[],reasons,cycle:false,lethal};
    }
    function combine(entries,combat=false) {
      const possible=entries.filter(e=>e.eligible!==false&&e.probability!==0);
      if(!possible.length)return blocked('Nenhum resultado atende às condições simuladas.');
      const complete=possible.every(e=>e.plan.complete),feasible=possible.every(e=>e.plan.feasible);
      const ranked=possible.filter(e=>e.plan.score!==null).sort((a,b)=>a.plan.score-b.plan.score||a.plan.route.length-b.plan.route.length);
      const representative=ranked[0]||possible[0],values=ranked.map(e=>e.plan.score);
      const weights=!combat&&possible.every(e=>e.eligible===true&&e.probability!==null)&&Math.abs(possible.reduce((sum,e)=>sum+e.probability,0)-1)<1e-9;
      const expected=complete&&feasible&&weights&&possible.every(e=>finite(e.plan.score))?possible.reduce((sum,e)=>sum+e.plan.score*e.probability,0):null;
      const score=run.profile==='expected'&&expected!==null?expected:values.length?Math.min(...values):null;
      const cycle=possible.some(e=>e.plan.cycle);
      return {score,min:values.length?Math.min(...values):null,max:values.length?Math.max(...values):null,expected,
        complete:complete&&!(cycle&&possible.length>1),feasible,uncertain:combat||possible.some(e=>e.eligible===null||e.plan.uncertain)||(!weights&&possible.length>1),
        route:representative.plan.route,notes:unique(possible.flatMap(e=>e.plan.notes).concat(combat?['Desfechos de combate comparados pelo pior caso, sem prever vitória ou escolher o desfecho.']:[],!weights&&possible.length>1?['Probabilidades não confirmadas: usado o pior resultado conhecido nesta etapa.']:[],cycle&&possible.length>1?['Sorteios que retornam ao mesmo estado não foram resolvidos como repetições infinitas.']:[])),
        reasons:representative.plan.reasons,cycle,lethal:possible.some(e=>e.plan.lethal)};
    }
    function evaluateRow(ev,ci,s,ledger,depth,stack,isRoot) {
      const choice=ev.data.choice[ci],cv=ev.rules?.choices?.[ci];
      const available=isRoot&&own(availability,String(ci))?availability[ci]:requirement(cv?.required,s);
      const outcomes=(choice.result||[]).map((raw,ri)=>{
        const view=cv?.results?.[ri],eligible=requirement(view?.required,s),preview=previewResult(ev,ci,ri,s,index),probability=staticProbability(view?.probability);
        let plan;
        if(available===false||eligible===false||probability===0)plan=blocked('Ramo excluído pelas condições ou por probabilidade estática zero.');
        else if(summary.transitions>=config.maxTransitions&&!(isRoot&&raw.nextEvent===-2)){summary.limited=true;plan=partial('Limite de resultados analisados atingido; continuação não concluída.');}
        else {
          if(summary.transitions<config.maxTransitions)summary.transitions++;
          const nextLedger=track(ledger,view),unknown=Boolean(raw.reward&&(!view?.reward?.tokens?.length||view.reward.tokens.some(t=>!t.known||(!rewardOperations.has(t.model?.operation)&&t.model?.operation!=='start_combat'))));
          const target=continuationKey(ev,ci,ri,index);
          if(unknown)plan=partial('Há efeitos ainda não modelados; a continuação deste ramo precisa ser conferida no jogo.');
          else if(preview.controls.length)plan=partial('O comando inicia um combate. Vitória, derrota e alterações da ficha precisam ser observadas no jogo antes de comparar a continuação.');
          else if(raw.nextEvent===-2)plan=endpoint(preview.state,nextLedger);
          else if(!target)plan=partial('Destino especial ou não identificado; não foi tratado como encerramento garantido.');
          else if(preview.state.stats[0]===0)plan=partial('Saúde pode chegar a zero antes da próxima etapa; a continuação depende de sobrevivência ou ressurreição.');
          else plan=visit(index.events.get(target),preview.state,nextLedger,depth+1,stack);
          const internalChanges=new Set((view?.reward?.tokens||[]).filter(t=>['set_chain_state','set_sub_state','set_main_state'].includes(t.model?.operation)).map(t=>t.text));
          const step={changes:preview.changes.filter(change=>!internalChanges.has(change)),eventKey:`${ev.group}:${ev.id}`,choice:ci,result:ri,label:plain(choice.text)||'Desfecho / ramo '+(ci+1),outcome:view?.testOutcome||`Resultado ${ri+1}`,nextKey:target};
          plan={...plan,route:[step,...plan.route],uncertain:plan.uncertain||eligible===null||preview.issues.length>0,notes:unique([...preview.issues,...plan.notes])};
        }
        return {ri,raw,view,eligible,preview,probability,plan};
      });
      const combined=combine(outcomes);
      return {...combined,ci,available,outcomes,uncertain:combined.uncertain||available===null,reasons:combined.reasons,profile:run.profile};
    }
    function visit(ev,s,incoming,depth,stack,isRoot=false) {
      summary.maxDepth=Math.max(summary.maxDepth,depth);
      if(depth>=config.maxDepth){summary.limited=true;return partial('Limite de etapas analisadas atingido; o fim deste caminho não foi alcançado.');}
      const ledger=enter(ev,incoming),signature=JSON.stringify([`${ev.group}:${ev.id}`,s,ledger]),cacheKey=`${config.maxDepth-depth}:${signature}`;
      if(stack.has(signature))return {...blocked('Retorno ao mesmo nó e estado sem progresso; repetição não usada como caminho para finalizar.'),cycle:true};
      if(!isRoot&&memo.has(cacheKey))return memo.get(cacheKey);
      summary.states++;
      const nextStack=new Set(stack);nextStack.add(signature);
      const rows=(ev.data.choice||[]).map((c,ci)=>evaluateRow(ev,ci,s,ledger,depth,nextStack,isRoot));
      let result;
      if(outcomeNode(ev)) {
        // These are observed outcomes, not decisions the player can optimize.
        result=combine(rows.filter(r=>r.available!==false).flatMap(r=>r.outcomes),true);
      } else {
        const known=rows.filter(r=>r.available===true),conditional=rows.some(r=>r.available===null);
        const candidates=known.filter(r=>r.feasible&&finite(r.score)).sort((a,b)=>b.score-a.score||a.route.length-b.route.length);
        if(candidates.length) {
          const best=candidates[0];
          result={...best,complete:best.complete&&known.every(r=>r.complete)&&!conditional,
            uncertain:best.uncertain||conditional||known.some(r=>!r.complete),cycle:known.some(r=>r.cycle),
            notes:unique([...best.notes,...known.flatMap(r=>r.complete?[]:r.notes),...(conditional?['Há escolhas futuras com requisitos desconhecidos; elas não foram presumidas disponíveis.']:[])])};
        } else if(conditional||known.some(r=>!r.complete))result=partial(conditional?'Não foi possível confirmar uma escolha disponível na continuação.':'Nenhum caminho até o fim pôde ser avaliado com as regras disponíveis.');
        else result=blocked('Não há escolha disponível que leve a um encerramento avaliado.');
      }
      if(isRoot)return {...result,rows};
      // Cycles depend on ancestors; only cache complete, cycle-free evaluations.
      const compact={...result};delete compact.outcomes;delete compact.rows;delete compact.ci;
      if(result.complete&&!result.cycle)memo.set(cacheKey,compact);
      return compact;
    }
    const root=visit(event,run.state,emptyLedger(),0,new Set(),true),rows=root.rows||[];
    const candidates=rows.filter(r=>r.available!==false&&r.feasible&&finite(r.score)).sort((a,b)=>b.score-a.score||a.route.length-b.route.length);
    const comparisonComplete=rows.filter(r=>r.available!==false).every(r=>r.complete);
    let recommendation=null;
    if(!outcomeNode(event)&&supported&&!missingPrimary&&comparisonComplete&&candidates.length&&(candidates.length===1||candidates[0].score-candidates[1].score>1e-6))recommendation=candidates[0].ci;
    const message=outcomeNode(event)?'Este nó registra desfechos. Informe o resultado observado no jogo; o Atlas não escolhe vitória ou derrota.':!active.length?'Adicione um objetivo ou escolha uma nova meta para orientar a comparação.':!supported?'Este objetivo precisa de confirmação manual. Ainda não há modelo para calcular a melhor escolha para ele.':missingPrimary?'Informe o ouro atual na ficha para comparar os saldos finais deste objetivo.':!comparisonComplete?'Comparação parcial: alguns caminhos futuros não puderam ser avaliados até o fim. Confira os planos e as pendências; não há indicação de melhor escolha para o encontro inteiro.':recommendation===null?'Não há uma opção claramente melhor pelos saldos conhecidos ao fim dos caminhos. Compare as alternativas.':'Indicação baseada nos efeitos conhecidos acumulados e nas próximas decisões até o fim do encontro, conforme os objetivos desta run. Continua provisória: confira o resultado no jogo.';
    return {rows,recommendation,provisional:recommendation!==null,summary:{...summary,comparisonComplete,hasFinishedRoute:candidates.some(r=>r.complete),limits:config},message};
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
    if(entry.type==='result')next.selectedEvent=continuationKey(index.events.get(entry.eventKey),entry.choice,entry.result,index);
    else if(entry.type==='observation')next.selectedEvent=null;
    next.availability={};return next;
  }
  function undo(run) {
    const next=clone(run);if(next.cursor===0)return next;
    const entry=next.history[--next.cursor];next.state=clone(entry.before);next.status='active';
    if(entry.eventKey)next.selectedEvent=entry.eventKey;next.availability={};next.updatedAt=new Date().toISOString();return next;
  }
  function redo(run,index) {
    const next=clone(run);if(next.cursor>=next.history.length)return next;
    const entry=next.history[next.cursor++];next.state=clone(entry.after);
    if(entry.type==='result')next.selectedEvent=continuationKey(index.events.get(entry.eventKey),entry.choice,entry.result,index);
    else if(entry.type==='observation')next.selectedEvent=null;
    next.availability={};next.updatedAt=new Date().toISOString();return next;
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
  return {VERSION,PLANNER_LIMITS,STATS,ALIGNMENT_BANDS,alignmentInfo,alignmentRangeForBand,TYPES,FAMILIES,clone,id,normalize,plain,finite,blankState,createIndex,continuationKey,sequenceGraph,continuationContext,newRun,cleanState,cleanGoals,requirement,previewResult,goalProgress,analyze,commit,undo,redo,validateRun};
});
