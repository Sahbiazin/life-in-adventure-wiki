/* Native weighted result selection, stat checks included; no DOM or mutation. */
'use strict';
((root,factory)=>{const api=factory(root);if(typeof module==='object'&&module.exports)module.exports=api;else root.AtlasTests=api;})(globalThis,root=>{
  const SOURCE='native-weighted',F=Math.fround,HARD_EVENT_FACTOR=F(1.2),finite=n=>typeof n==='number'&&Number.isFinite(n),unique=a=>[...new Set(a)];
  const STAT_NAMES={0:'Saúde',1:'Sanidade',2:'EXP',3:'Alinhamento',4:'Ouro',5:'Força',6:'Destreza',7:'Inteligência',8:'Saúde máxima',9:'Sanidade máxima',12:'Carisma',13:'Constituição',14:'Sabedoria'};
  const ABILITY_NAMES={4:'Graciosidade',45:'Fedor',51:'Acrobacia',60:'Super Força',87:'Truque',111:'Fome Insaciável',113:'Intelecto Transcendente'};
  const validInt=n=>Number.isInteger(n)&&n>=-2147483648&&n<=2147483647;
  function parse(raw){
    if(typeof raw!=='string'||!raw.trim())return null;
    const terms=[];
    for(const token of raw.split('|')){
      const p=token.split('_');
      if(p.length===1&&/^[+-]?(?:\d+(?:\.\d*)?|\.\d+)$/.test(p[0]))terms.push({type:'constant',coefficient:F(Number(p[0]))});
      else if(p.length===3&&p[0]==='0'&&/^\d+$/.test(p[1])&&/^[+-]?(?:\d+(?:\.\d*)?|\.\d+)$/.test(p[2]))terms.push({type:'stat',index:Number(p[1]),coefficient:F(Number(p[2]))});
      else return null;
    }
    return terms.every(t=>finite(t.coefficient))?terms:null;
  }
  function baseWeight(raw,stats){
    const terms=parse(raw),missing=[];
    if(!terms)return {ready:false,value:null,terms:[],missing:['fórmula de peso não reconhecida']};
    let value=0;
    for(const term of terms){
      let v=term.coefficient;
      if(term.type==='stat'){
        if(!finite(stats?.[term.index])){missing.push(STAT_NAMES[term.index]||`atributo #${term.index}`);continue;}
        v=F(F(stats[term.index])*term.coefficient);
      }
      const n=Math.trunc(v);
      if(!validInt(n)||!validInt(value+n))missing.push('peso fora da faixa de inteiros do jogo');else value+=n;
    }
    return {ready:!missing.length,value:missing.length?null:value,terms,missing:unique(missing)};
  }
  function abilities(state,options){
    if(options.effectiveAbilities)return {levels:options.effectiveAbilities,presence:options.abilityPresence,sources:options.abilitySources,complete:options.abilitiesComplete===true,notes:[],missing:[]};
    let A=root.AtlasAbilities;
    if(!A&&typeof module==='object'&&module.exports&&options.index)A=require('./ability-engine.js');
    if(A&&options.index)return A.derive(state,options.index,{difficulty:options.difficulty,hardLevel:options.hardLevel});
    return {levels:state.abilities||{},complete:options.abilitiesComplete===true,notes:[],missing:[]};
  }
  function level(id,state,options,resolved,missing){
    const n=resolved.levels?.[id];
    if(finite(n)&&Number.isInteger(n))return n;
    if(n===undefined&&resolved.complete)return 0;
    // Fome Insaciável is installed by HardModeMgr, not a normal-mode penalty.
    if(id===111&&options.difficulty==='normal'&&n===undefined)return 0;
    missing.push(`nível efetivo de ${ABILITY_NAMES[id]||'habilidade #'+id}`);return null;
  }
  function present(id,state,options,resolved,missing){
    if(typeof resolved.presence?.[id]==='boolean')return resolved.presence[id];
    // Exists(id) and GetAbilityValue(id)>0 differ for an explicit zero entry.
    for(const map of [options.effectiveAbilities,state.combat?.abilities,state.abilities]){
      if(map&&Object.hasOwn(map,id)&&finite(map[id]))return true;
    }
    if(resolved.sources?.[id]?.length)return true;
    const n=level(id,state,options,resolved,missing);return n===null?null:n!==0;
  }
  const extra=(weight,n,rate)=>validInt(weight*n)?Math.max(0,Math.ceil(F(F(weight*n)*F(rate)))):NaN;
  function resultWeight(raw,state,options,resolved,count){
    const base=baseWeight(raw.chance,state.stats),missing=[...base.missing],notes=[];
    if(!base.ready)return {...base,notes};
    let w=base.value;
    const L=id=>level(id,state,options,resolved,missing);
    if(Number(raw.type)===0){
      const intelligence=state.stats?.[7];
      if(!finite(intelligence))missing.push('Inteligência');
      else if(F(intelligence)>=10)w+=Math.max(0,Math.ceil(F(F(F(intelligence)*F(w))*F(.01))));
      const trick=L(87),transcendent=L(113);
      if(trick>0)w+=3;if(transcendent>0)w+=1;
      for(const term of base.terms){
        if(term.type!=='stat')continue;
        const skill=term.index===5?60:term.index===6?51:term.index===12?4:null;
        if(skill===null)continue;
        const n=L(skill);
        if(n>0)w+=extra(w,n,n<4?.05:.1);
        if(term.index===12){const odor=L(45);if(odor>0)w=Math.max(0,w-extra(w,odor,.1));}
      }
    }else if(Number(raw.type)===1&&count>=2){
      const hunger=present(111,state,options,resolved,missing);
      if(hunger===true){
        const factor=options.hardModeEventFactor===undefined?HARD_EVENT_FACTOR:options.hardModeEventFactor;
        if(!finite(factor)||factor<1||factor>100)missing.push('multiplicador de falha do modo difícil');
        else w=Math.trunc(F(F(w)+Math.max(1,Math.trunc(F(F(F(factor)*F(w))-F(w))))));
      }
    }
    if(!validInt(w))missing.push('peso modificado fora da faixa de inteiros do jogo');
    return {ready:!missing.length,value:missing.length?null:Math.max(0,w),base:base.value,terms:base.terms,missing:unique(missing),notes};
  }
  function choice(event,ci,state,options={}){
    options={difficulty:'normal',...options};
    const raw=event?.data?.choice?.[ci],view=event?.rules?.choices?.[ci],results=raw?.result;
    const empty={source:SOURCE,ready:false,complete:false,partial:true,probabilities:(results||[]).map(()=>null),weights:(results||[]).map(()=>null),successProbability:null,missing:[],notes:[]};
    if(!Array.isArray(results)||!results.length)return {...empty,missing:['resultados da escolha']};
    const eligible=results.map((r,ri)=>{
      if(!r.required&&!view?.results?.[ri]?.required)return true;
      if(r.required&&!view?.results?.[ri]?.required)return null;
      return options.requirement?options.requirement(view?.results?.[ri]?.required,state):null;
    });
    if(eligible.some(v=>v!==true&&v!==false))return {...empty,missing:['disponibilidade de resultados condicionais'],eligible};
    const count=eligible.filter(Boolean).length;
    if(!count)return {...empty,eligible,missing:['resultado elegível'],notes:['Nenhum resultado atende aos requisitos conhecidos.']};
    const resolved=abilities(state,options),weights=[],missing=[],notes=[...(resolved.notes||[])];
    for(const [ri,r] of results.entries()){
      if(!eligible[ri]){weights.push(0);continue;}
      const computed=resultWeight(r,state,options,resolved,count);weights.push(computed.value);missing.push(...computed.missing);notes.push(...computed.notes);
    }
    const modelPartial=options.modelPartial===true||resolved.partial===true;
    if(missing.length){
      const needsAbilities=missing.some(label=>label.startsWith('nível efetivo de '));
      const causes=needsAbilities?(resolved.missing||[]).filter(label=>['equipamento confirmado','lista completa de traços','efeitos pendentes ou desconhecidos da run','nível do modo difícil'].includes(label)):[];
      if(missing.includes(`nível efetivo de ${ABILITY_NAMES[4]}`)&&resolved.derived?.[4]===null&&finite(state.stats?.[12])&&state.stats[12]>=27)causes.push('Alinhamento');
      return {...empty,weights,eligible,missing:unique([...causes,...missing]),notes:unique(notes)};
    }
    const total=weights.reduce((a,b)=>a+b,0);
    if(!validInt(total)||total<=0)return {...empty,weights,eligible,missing:['soma positiva de pesos'],notes:unique([...notes,'A urna vazia do jogo usa uma saída especial; não foi transformada em sucesso garantido.'])};
    const probabilities=weights.map(w=>w/total),hasSuccess=results.some((r,ri)=>eligible[ri]&&Number(r.type)===0);
    return {source:SOURCE,ready:true,complete:!modelPartial,partial:modelPartial,probabilities,weights,total,eligible,
      successProbability:hasSuccess?probabilities.reduce((sum,p,ri)=>sum+(Number(results[ri].type)===0?p:0),0):null,missing:[],notes:unique(notes)};
  }
  return {SOURCE,HARD_EVENT_FACTOR,parse,baseWeight,resultWeight,choice};
});
