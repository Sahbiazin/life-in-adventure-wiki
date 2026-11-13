/* Native event-combat routing and hypothetical aftermath; never saves a run. */
'use strict';
((root,factory)=>{const api=factory(typeof module==='object'&&module.exports?require('./combat-engine.js'):root.AtlasCombat);if(typeof module==='object'&&module.exports)module.exports=api;else root.AtlasOutcomes=api;})(globalThis,C=>{
  const clone=v=>JSON.parse(JSON.stringify(v)),finite=v=>typeof v==='number'&&Number.isFinite(v),unique=xs=>[...new Set(xs)];
  // FameLevel.requireFame, global-metadata.dat offset 0x5af090 (11 int32).
  const FAME_THRESHOLDS=Object.freeze([0,5,10,15,20,30,40,50,60,70,80]);
  function degreeAfterExperience(level,experience){
    if(!Number.isInteger(level)||level<0||level>=FAME_THRESHOLDS.length)return {known:false,level:null,changed:false};
    if(level===FAME_THRESHOLDS.length-1)return {known:true,level,changed:false};
    if(!finite(experience))return {known:false,level:null,changed:false};
    const changed=experience>=FAME_THRESHOLDS[level+1];
    return {known:true,level:level+(changed?1:0),changed};
  }
  function classify(event,context){
    const combat=context?.kind==='combat'||context?.type==='combat'||context?.model?.operation==='start_combat'||context?.control?.model?.operation==='start_combat';
    if(!combat)return {ready:false,reason:'Sem contexto explícito de combate.'};
    const key=`${event?.group}:${event?.id}`;
    if(context.targetKey&&context.targetKey!==key)return {ready:false,reason:'O nó não é a continuação direta deste combate.'};
    if(!event?.data?.choice?.[0]||!event.data.choice[1])return {ready:false,reason:'Os ramos nativos de vitória e derrota não constam no evento.'};
    return {ready:true,kind:'combat',victoryChoice:0,defeatChoice:1,choices:[{choice:0,victory:true,label:'Vitória'},{choice:1,victory:false,label:'Derrota'}],evidence:'EventCtrl.ResultBattle 0x1aa09a4 → ClickEventButton(0/1)'};
  }
  function battle(event,control,run,index,state=run.state){
    if(control?.model?.operation!=='start_combat')return {kind:'combat',ready:false,win:{min:0,max:1,probability:null},enemies:[],issues:['Comando de combate inválido.'],partial:true};
    const candidates=(event.data.choice||[]).flatMap(c=>c.result||[]).filter(r=>String(r.reward||'').split('|').some(raw=>raw.trim()===control.raw));
    const places=unique(candidates.filter(r=>r.place!==''&&r.place!==undefined&&r.place!==null).map(r=>Number(r.place)).filter(Number.isInteger));
    const suppliedPlace=Number.isInteger(control.place)?control.place:places.length===1?places[0]:undefined;
    const assessment=C.assessment(run,event,control,index,state,suppliedPlace),issues=[],ready=assessment.unit.ready&&!assessment.unknownEnemy&&assessment.enemies.every(e=>e.result.ready);
    if(places.length>1&&suppliedPlace===undefined)issues.push('O cenário depende do resultado de origem; foi usado o cenário configurado na ficha.');
    if(!assessment.unit.ready)issues.push(...assessment.unit.missing.map(n=>`Ficha de combate incompleta: ${n}.`));
    if(assessment.unknownEnemy)issues.push('O inimigo atual não foi identificado pelos dados do evento.');
    for(const {result} of assessment.enemies){issues.push(...(result.notes||[]));if(!result.ready)issues.push(...(result.missing||[]));}
    const results=assessment.enemies.filter(e=>e.result.ready).map(e=>e.result),knownMin=results.length?Math.min(...results.map(r=>r.min)):0,knownMax=results.length?Math.max(...results.map(r=>r.max)):1;
    const win={min:ready?knownMin:0,max:ready?knownMax:1,probability:ready&&results.length===1?results[0].probability:null};
    if(assessment.enemies.length>1)issues.push('A lista do encontro tem mais de um inimigo; a faixa não presume a frequência de sorteio.');
    issues.push('As chances de combate são estimativas experimentais; efeitos especiais podem mudar o resultado.');
    const targets=unique(candidates.filter(r=>Number.isInteger(r.nextEvent)&&r.nextEvent>=0).map(r=>`${event.group}:${r.nextEvent}`));
    return {kind:'combat',ready,eventKey:`${event.group}:${event.id}`,targetKey:targets.length===1?targets[0]:null,control:clone(control),difficulty:run.difficulty||'normal',hardLevel:state.scoring?.hardLevel??run.hardLevel??null,unit:assessment.unit,enemies:assessment.enemies,win,partial:true,issues:unique(issues)};
  }
  function roundEven(value){const lo=Math.floor(value),fraction=value-lo;return fraction<.5?lo:fraction>.5?lo+1:lo%2===0?lo:lo+1;}
  function goldPenalty(value,active){
    if(!finite(value))throw new Error('Valor de ouro inválido.');
    const v=Math.fround(value);if(!active)return v;
    // ApplyHardModeGoldPenalty truncates the amount lost, with minimum loss 1.
    // Multiplying the final reward by 0.8 produces different answers.
    const lost=Math.max(Math.trunc(Math.fround(v-Math.fround(v*Math.fround(.8)))),1);
    return Math.fround(roundEven(Math.fround(v-lost)));
  }
  function transition(state,context,victory,index,{enemyKey=null,projectCatalog=false}={}){
    if(typeof victory!=='boolean')throw new Error('Informe vitória ou derrota para projetar o desfecho.');
    const next=clone(state),issues=[],changes=[],options=context?.enemies||[];
    const enemies=enemyKey?options.filter(e=>e.row.key===enemyKey):options;
    const unit=context?.unit||{},abilities=unit.abilities||{},knownTraits=state.traitsComplete===true;
    if(enemyKey&&!enemies.length)throw new Error('Inimigo fora dos candidatos deste combate.');
    const add=(key,quantity,label)=>{if(finite(next.stats[key]))next.stats[key]=Math.max(0,Math.fround(next.stats[key]+quantity));else issues.push(`${label} inicial desconhecido: não foi inventado um total.`);if(quantity)changes.push(`${label}: ${quantity>=0?'+':''}${quantity}`);};
    if(!enemies.length){if(victory){next.stats[2]=null;next.stats[4]=null;}issues.push('Inimigo indefinido: recompensas genéricas de combate desconhecidas.');}
    else if(victory){
      const exp=unique(enemies.map(e=>C.numeric(e.row.raw.fame)));
      if(exp.length===1&&finite(exp[0]))add(2,exp[0],'EXP');else{next.stats[2]=null;issues.push('Os candidatos têm EXP diferente ou desconhecida.');}
      let multiplier=null;
      if((state.traits||[]).some(id=>['1','21'].includes(String(id))))multiplier=Math.fround(1.15);
      else if(knownTraits)multiplier=1;
      const hardLevel=state.scoring?.hardLevel??context.hardLevel;
      // Exists(id=111) tests presence, not a positive level. The simulation's
      // numeric map zeroes unknown effects, so use the native derivation first.
      const observed111=Object.hasOwn(abilities,111)&&finite(abilities[111]);
      const presence=unit.abilityDerivation?.presence?.[111];
      const hardActive=presence===true||presence===false||presence===null?presence:observed111?abilities[111]>0:context.difficulty!=='hard'?false:Number.isInteger(hardLevel)&&hardLevel>=0?hardLevel>=3:null;
      if(hardActive===null||multiplier===null){next.stats[4]=null;issues.push(hardActive===null?'O nível da dificuldade difícil não foi informado; não é possível decidir se há penalidade de ouro.':'A lista incompleta de traços não permite excluir o bônus de ouro de Ganancioso.');}
      else{
        const money=unique(enemies.map(e=>Math.max(0,roundEven(goldPenalty(Math.fround(C.numeric(e.row.raw.money)*multiplier),hardActive)))));
        if(money.length===1&&finite(money[0]))add(4,money[0],'Ouro');else{next.stats[4]=null;issues.push('Os candidatos têm recompensas de ouro diferentes ou desconhecidas.');}
      }
      if(next.combat){
        const degree=degreeAfterExperience(next.combat.level,next.stats[2]);next.combat.level=degree.level;
        if(!degree.known)issues.push('EXP ou grau desconhecido: o grau do próximo combate precisa ser conferido.');
        else if(degree.changed){changes.push(`Grau: ${degree.level}.`);issues.push('Houve subida de grau. A futura distribuição dos pontos de atributo ainda não foi escolhida.');}
      }
    }else if((abilities[75]||0)>0){
      const money=unique(enemies.map(e=>roundEven(C.numeric(e.row.raw.challenge)*2)));
      if(money.length===1&&finite(money[0]))add(4,money[0],'Ouro');else{next.stats[4]=null;issues.push('O ouro da habilidade de compensação depende do inimigo.');}
    }
    if(projectCatalog&&enemies.length===1){const key=enemies[0].row.key;if(!next.catalog.monster.includes(key))next.catalog.monster.push(key);changes.push(`Registro projetado no catálogo: ${enemies[0].row.title}.`);}
    else if(projectCatalog&&enemies.length>1)issues.push('O monstro efetivamente registrado depende de qual candidato apareceu.');
    // No generic HP/SAN loss is applied here. In event battles those changes
    // belong to the selected event-result reward, after branch 0/1 is chosen.
    const alternatives=[];
    if(victory&&(abilities[74]||0)>0){
      alternatives.push({probability:.7,state:clone(next),changes:[...changes]});
      for(const [stat,max,label] of [[0,8,'Saúde'],[1,9,'Sanidade']]){
        const s=clone(next);if(finite(s.stats[stat])&&finite(s.stats[max]))s.stats[stat]=Math.min(s.stats[max],s.stats[stat]+1);else{s.stats[stat]=null;issues.push(`O limite de ${label} para a restauração está desconhecido.`);}
        alternatives.push({probability:.15,state:s,changes:[...changes,`${label}: restauração possível de 1 ponto.`]});
      }
    }else alternatives.push({probability:1,state:clone(next),changes:[...changes]});
    if(!knownTraits)issues.push('Há traços não informados; efeitos adicionais do pós-combate permanecem parciais.');
    return {state:next,partial:context?.partial===true||issues.length>0,issues:unique(issues),changes,alternatives,victory,enemyKey:enemies.length===1?enemies[0].row.key:null};
  }
  return {FAME_THRESHOLDS,degreeAfterExperience,classify,battle,transition,roundEven,goldPenalty};
});
