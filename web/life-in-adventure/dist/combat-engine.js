/* Experimental, deterministic combat estimates; independent from the run journal. */
'use strict';
((root,factory)=>{const api=factory(typeof module==='object'&&module.exports?require('./ability-engine.js'):root.AtlasAbilities);if(typeof module==='object'&&module.exports)module.exports=api;else root.AtlasCombat=api;})(globalThis,A=>{
  const VERSION=1,STATS={5:'Força',6:'Destreza',7:'Inteligência',12:'Carisma',13:'Constituição',14:'Sabedoria'};
  const SLOTS={main:'Mão principal',off:'Mão secundária',armor:'Armadura',accessory:'Acessório'};
  const PLACES=['Planície','Floresta','Vulcão','Ambiente aquático','Área urbana','Deserto','Caverna','Masmorra','Litoral','Campo nevado','Interior de edifício','Coliseu','Litoral à noite','Ruínas urbanas','Planície à noite','Navio devorador de almas'];
  const finite=v=>typeof v==='number'&&Number.isFinite(v),clone=v=>JSON.parse(JSON.stringify(v)),clamp=(v,a,b)=>Math.max(a,Math.min(b,v));
  const records=index=>index.records||new Map(index.catalogs.map(r=>[r.key,r]));
  const record=(index,kind,id)=>records(index).get(`${kind}:${id}${kind==='ability'?':0':''}`);
  const unique=list=>[...new Set(list)];
  // Extracted CSVs occasionally contain invisible direction-format marks (Kior).
  const numeric=v=>v===null||v===undefined||String(v).trim()===''?NaN:Number(String(v).replace(/\p{Cf}/gu,'').trim());
  const OVERRIDES={attack:[0,1e7],defense:[1,1e9],speed:[.1,20],critical:[0,1],dodge:[0,.75],criticalMultiplier:[1,10]};
  function blankSetup(){return {version:VERSION,level:null,equippedKnown:false,equipment:Object.fromEntries(Object.keys(SLOTS).map(k=>[k,null])),abilities:{},overrides:{},place:0};}
  function cleanSetup(input,index){
    if(input===undefined||input===null)return blankSetup();
    if(typeof input!=='object'||Array.isArray(input)||(input.version!==undefined&&input.version!==VERSION))throw new Error('Configuração de combate inválida.');
    const s=blankSetup();
    if(input.level!==null&&input.level!==undefined){if(!Number.isInteger(input.level)||input.level<0||input.level>1000)throw new Error('Informe um grau entre 0 e 1000.');s.level=input.level;}
    s.equippedKnown=input.equippedKnown===true;
    if(input.place!==undefined){if(!Number.isInteger(input.place)||input.place<0||input.place>=PLACES.length)throw new Error('Cenário de combate inválido.');s.place=input.place;}
    for(const key of Object.keys(SLOTS)){
      const e=input.equipment?.[key];if(e===null||e===undefined)continue;
      if(typeof e!=='object'||Array.isArray(e)||typeof e.id!=='string'||!/^\d+$/.test(e.id))throw new Error('Item equipado inválido.');
      const r=record(index,'item',e.id),cat=Number(r?.raw.category);
      if(!r||!({main:[0,1],off:[0,2],armor:[3],accessory:[4]})[key].includes(cat))throw new Error(`Escolha um item compatível com ${SLOTS[key].toLowerCase()}.`);
      if(e.upgrade!==undefined&&e.upgrade!==0&&e.upgrade!==1)throw new Error('Melhoria do item inválida.');
      s.equipment[key]={id:e.id,upgrade:e.upgrade===1?1:0};
    }
    if(s.equipment.main&&Number(record(index,'item',s.equipment.main.id).raw.category)===1&&s.equipment.off)throw new Error('A arma de duas mãos ocupa também a mão secundária.');
    for(const [key,v] of Object.entries(input.abilities||{})){
      if(!/^\d+$/.test(key)||!record(index,'ability',key)||!Number.isInteger(v)||Math.abs(v)>100)throw new Error('Nível efetivo de habilidade inválido.');
      s.abilities[key]=v;
    }
    for(const [key,v] of Object.entries(input.overrides||{})){
      if(!Object.hasOwn(OVERRIDES,key)||!finite(v)||v<OVERRIDES[key][0]||v>OVERRIDES[key][1])throw new Error('Valor de combate observado inválido.');s.overrides[key]=v;
    }
    return s;
  }
  function tokens(raw){return String(raw||'').split('|').map(s=>s.split('_')).filter(p=>p.length===2&&/^\d+$/.test(p[0])&&Number.isInteger(Number(p[1]))).map(([id,n])=>[Number(id),Number(n)]);}
  function addAbilities(out,source){for(const [id,n] of tokens(source))out[id]=(out[id]||0)+n;}
  function formula(raw,stats){
    if(raw===undefined||raw===null||String(raw).trim()==='')return null;
    let value=0;for(const p of String(raw).split('|')){const a=p.split('_');let n;
      if(a.length===1)n=Number(a[0]);
      else if(a.length===3&&a[0]==='0'&&finite(stats[a[1]]))n=Math.fround(stats[a[1]])*Math.fround(Number(a[2]));
      else return null;
      if(!Number.isFinite(n))return null;value=Math.fround(value+Math.fround(n));
    }return value;
  }
  const boosts={2:5,3:6,4:7,5:12,6:13,7:14,22:5,23:6,24:7,25:12,26:13,27:14,33:14};
  // Constants below come from the native Equipment helpers; special attacks
  // requiring unported status/AI logic remain explicitly outside this model.
  const scalarSkills=new Set([0,2,4,5,6,9,10,24,25,27,28,29,30,31,32,33,34,38,40,41,43,44,46,48,51,52,55,56,57,58,59,60,64,66,70,71,72,74,75,86,88,89,90]);
  const partialSkills={9:'redução de dano ao bloquear',25:'esquiva inicial',70:'regras de categoria da maestria',71:'regras de categoria da maestria',72:'regras de categoria da maestria',89:'regras de categoria da maestria',90:'regras de categoria da maestria'};
  function abilityName(index,id){return record(index,'ability',id)?.title||`Habilidade #${id}`;}
  function piece(level,low,high){return level>0?level*(level>=4?high:low):0;}
  function components(unit){
    const a=unit.abilities,L=id=>a[id]||0;
    unit.speed=clamp((1+.1*L(56))*(1+piece(L(51),.03,.04)),.1,20);
    unit.dodge=clamp(.15+.04*L(57)+Math.max(0,L(9))*.02+(L(10)>0?.08:0)+piece(L(25),.02,.03)+(L(38)>0?.05:0)+piece(L(51),.025,.03),0,.75);
    unit.critical=clamp(.15+.1*L(59)+Math.max(0,L(6))*.05,0,1);unit.criticalMultiplier=2+Math.max(0,L(64))*.5;
    unit.damageReduction=L(48)>0?.05:0;
    if(L(30)>0)unit.damageReduction=1-(1-unit.damageReduction)*(1-clamp(.05*L(30)+.05,0,.9));
    if(L(88)>0){unit.speed=clamp(unit.speed*(1+unit.dodge),.1,20);unit.dodge=0;}
    if(L(86)>0)unit.damageReduction=1-(1-unit.damageReduction)*.7;
    unit.accuracy=L(86)>0?.75:1;
    Object.assign(unit,unit.overrides||{});
    unit.power=power(unit);return unit;
  }
  function power(unit){
    // A reference index inspired by UnitCtrl.GetBattlePoint, adjusted for DPS.
    const dps=unit.attack*unit.speed*(1+unit.critical*(unit.criticalMultiplier-1));
    return Math.max(0,unit.defense*Math.pow(1+unit.dodge,1+unit.dodge)*dps/(1-unit.damageReduction)*.925*.04-10);
  }
  function player(input,index){
    const setup=cleanSetup(input.setup,index),missing=[],notes=[],stats={};
    for(const key of Object.keys(STATS)){const v=input.stats?.[key];if(!finite(v)||v<0||v>1e6)missing.push(STATS[key]);else stats[key]=v;}
    if(setup.level===null)missing.push('grau do aventureiro');
    if(!setup.equippedKnown)missing.push('equipamento confirmado');
    if(missing.length)return {ready:false,missing,notes,power:null};
    const traits=unique((input.traits||[]).map(String)),abilities={},unknown=[];
    for(const id of traits){
      const t=record(index,'trait',id);if(!t){missing.push('traço válido');continue;}
      if(input.statsMode==='base'&&boosts[id])stats[boosts[id]]+=4;
      if([8,9,28,29].includes(Number(id)))notes.push(`O bônus condicional de ${t.title}, baseado na chance de vitória, ainda não é simulado.`);
    }
    const equipped=Object.entries(setup.equipment).filter(([,v])=>v).map(([slot,v])=>({slot,...v,record:record(index,'item',v.id)}));
    if(input.inventory){const needed={};for(const e of equipped)needed[e.id]=(needed[e.id]||0)+1;for(const [id,n] of Object.entries(needed))if(finite(input.inventory[id])&&input.inventory[id]<n||input.inventoryComplete&&!Object.hasOwn(input.inventory,id))missing.push(`quantidade equipada de ${record(index,'item',id).title}`);}
    if(missing.length)return {ready:false,missing,notes,power:null};
    const abilityDerivation=A.derive({stats:{...input.stats,...stats},alignmentRange:input.alignmentRange,traits,traitsComplete:input.traitsComplete??true,
      abilities:input.effectiveAbilities||{},combat:setup,pending:input.effectsPending?['efeitos a conferir']:[],flagsUncertain:input.flagsUncertain===true,
      difficulty:input.difficulty,hardLevel:input.hardLevel},index);
    for(const [id,n] of Object.entries(abilityDerivation.levels))abilities[id]=n===null?0:n;
    notes.push(...abilityDerivation.notes);
    if(abilityDerivation.unknown.length)notes.push(`Níveis efetivos a conferir: ${abilityDerivation.unknown.slice(0,8).map(id=>abilityName(index,id)).join(', ')}${abilityDerivation.unknown.length>8?` e mais ${abilityDerivation.unknown.length-8}`:''}. Essas parcelas foram omitidas da estimativa.`);
    for(const [id,n] of Object.entries(abilities)){
      if(n!==0&&!scalarSkills.has(Number(id)))unknown.push(abilityName(index,id));
      if(n>0&&partialSkills[id])notes.push(`${abilityName(index,id)}: ${partialSkills[id]} ainda não reproduzidas integralmente.`);
      if(n>=4&&[5,24,52].includes(Number(id)))notes.push(`${abilityName(index,id)}: o modelo usa a taxa básica também nos níveis evoluídos.`);
    }
    const L=id=>abilities[id]||0,damageBonus=(raw,base)=>{
      const magical=Number(raw.dmgType||0)===1;
      let value=base*(1+piece(L(magical?0:46),.1,.12));
      if(!magical)value*=1+piece(L(60),.1,.12);
      if(L(48)>0)value*=1.1;
      return value;
    };
    let attacks=[];
    const weapon=(slot,unarmed=false)=>{
      const e=equipped.find(e=>e.slot===slot),raw=e?.record.raw;
      if(!raw&&!unarmed)return;
      if(raw&&!raw.dmg)return;
      const term=formula(raw?.dmg||'2|0_5_0.03|0_6_0.03',stats);
      if(term===null){missing.push('fórmula de dano suportada');return;}
      const bonus=(setup.level*.2+2.5)*(Number(raw?.category)===1?2:1);
      attacks.push({damage:damageBonus(raw||{},(term+bonus)*(e?.upgrade===1?1.1:1)),type:Number(raw?.dmgType||0),slot});
    };
    weapon('main',true);weapon('off');
    const perCycle=attacks.reduce((sum,a)=>sum+a.damage,0);
    // The model treats two weapons as one combined attack cycle. Native timing
    // and special secondary attacks are not yet reproduced.
    if(attacks.length>1)notes.push('O ritmo exato de duas armas ainda não é reproduzido; o ciclo combinado é uma aproximação.');
    let defense=0,hasArmor=false;
    for(const e of equipped){
      if(!e.record.raw.hp)continue;
      hasArmor||=e.slot==='armor';let v=formula(e.record.raw.hp,stats);
      if(v===null){missing.push('fórmula de defesa suportada');continue;}
      v=(v+setup.level*1.75+30)*(e.upgrade===1?1.1:1)*(1+L(58)*.1);
      const cat=Number(e.record.raw.category),sub=Number(e.record.raw.subCategory);
      if((cat===2&&sub===0&&L(70)>0)||(cat===2&&sub===1&&L(72)>0)||(cat===3&&sub===0&&L(71)>0)||(cat===3&&sub===1&&L(89)>0)||(cat===3&&sub===2&&L(90)>0))v*=1.25;
      defense+=v;
    }
    if(!hasArmor)defense+=(formula('40|0_13_0.4|0_14_0.4',stats)+setup.level*1.75+30)*(1+L(58)*.1);
    if(input.difficulty==='hard')notes.push('Modificadores próprios do modo difícil ainda não são reproduzidos; calibre os valores observados.');
    if(!input.traitsComplete&&input.traitsComplete!==undefined)notes.push('A lista de traços da run está incompleta.');
    if(input.effectsPending)notes.push('Há efeitos pendentes na ficha da run. Confira se os atributos e as habilidades continuam atuais.');
    if(missing.length)return {ready:false,missing,notes,power:null};
    const main=attacks[0]||{type:0};
    const unit=components({ready:true,name:'Seu personagem',attack:perCycle,defense,abilities,damageType:main.type,attacks,overrides:setup.overrides,
      stats,traits,level:setup.level,place:setup.place,unknown:unique(unknown),notes:unique(notes),setup,abilityDerivation,kind:0,partial:unknown.length>0||notes.length>0});
    return unit;
  }
  function monster(row,index,{variant=null,choice=null,place=0}={}){
    if(!row||row.kind!=='monster')throw new Error('Monstro inválido.');
    const raw=row.raw,abilities={};addAbilities(abilities,raw.fixAbility);
    if(choice!==null)addAbilities(abilities,choice);
    const factor=variant===1?.8:variant===2?1.2:1;
    const unknown=[],notes=[];
    for(const [id,n] of Object.entries(abilities)){
      if(n!==0&&!scalarSkills.has(Number(id)))unknown.push(abilityName(index,id));
      if(n>0&&partialSkills[id])notes.push(`${abilityName(index,id)}: ${partialSkills[id]} ainda não reproduzidas integralmente.`);
      if(n>=4&&[5,24,52].includes(Number(id)))notes.push(`${abilityName(index,id)}: taxa evoluída aproximada pela básica.`);
    }
    if(variant===4)notes.push('O estado inicial especial deste combate ainda não é reproduzido.');
    const magical=Number(raw.dmgType)===1,L=id=>abilities[id]||0;
    const attack=numeric(raw.dmg)*factor*(1+piece(L(magical?0:46),.1,.12))*(magical?1:1+piece(L(60),.1,.12))*(L(48)>0?1.1:1);
    const defense=numeric(raw.hp)*factor*(1+L(58)*.1);
    const unit=components({ready:true,name:row.title,key:row.key,attack,defense,
      abilities,damageType:Number(raw.dmgType)||0,kind:Number(raw.type),unknown:unique(unknown),notes,partial:unknown.length>0||notes.length>0,place,variant});
    if(!finite(unit.attack)||unit.attack<0||!finite(unit.defense)||unit.defense<=0)throw new Error('Valores de monstro inválidos.');
    return unit;
  }
  function hash(value){let h=2166136261;for(const c of String(value)){h^=c.charCodeAt(0);h=Math.imul(h,16777619);}return h>>>0;}
  function rng(seed){let x=seed>>>0;return ()=>{x+=0x6d2b79f5;let t=x;t=Math.imul(t^(t>>>15),t|1);t^=t+Math.imul(t^(t>>>7),t|61);return ((t^(t>>>14))>>>0)/4294967296;};}
  function wilson(w,n){const z=1.96,p=w/n,d=1+z*z/n,c=(p+z*z/(2*n))/d,m=z*Math.sqrt(p*(1-p)/n+z*z/(4*n*n))/d;return [clamp(c-m,0,1),clamp(c+m,0,1)];}
  function duel(left,right,random,{maxSeconds=120}={}){
    const units=[left,right].map(u=>({...u,hp:u.defense,next:1/u.speed,first:true,hasBeenHit:false,immuneUntil:0,stunUntil:0,revived:false}));
    let time=0,actions=0;
    const A=(u,id)=>(u.abilities[id]||0)>0;
    function tick(dt){for(const u of units){const regen=Math.max(0,u.abilities[2]||0)*2.5+u.defense*(Math.max(0,u.abilities[29]||0)*.01+(A(u,31)&&u.place===3?.02:0));u.hp=Math.min(u.defense,u.hp+regen*dt);}}
    function incoming(v,attacker,amount){
      if(v.immuneUntil>time)return 0;
      let m=1-v.damageReduction;
      if(A(v,33)&&!A(attacker,55)&&!A(attacker,4))m*=.85;
      if(A(v,67))m*=1.1;
      if(A(v,38)&&attacker.damageType===0)m*=.9;
      const damage=amount*m;v.hp-=damage;
      if(v.hp<=0&&A(v,41)&&!v.revived){v.hp=1;v.revived=true;v.immuneUntil=time+2;}
      return damage;
    }
    function strike(u,v){
      if(u.stunUntil>time||u.hp<=0)return;
      const dodge=clamp(v.dodge+(A(v,43)&&!v.hasBeenHit&&!A(u,27)?.2:0)+(A(v,32)&&[1,6].includes(v.place)?.1:0)-(A(u,28)?.05:0),0,.75);
      if(random()>u.accuracy||random()<dodge)return false;
      const critical=(u.first&&A(u,66))||random()<clamp(u.critical+(A(u,43)&&!u.hasBeenHit&&!A(v,27)?.2:0)+(u.first?Math.max(0,u.abilities[5]||0)*.1:0),0,1);
      let amount=u.attack*(critical?u.criticalMultiplier:1);
      const damage=incoming(v,u,amount);v.hasBeenHit=true;u.first=false;
      if(A(u,44)&&damage>0)u.hp=Math.min(u.defense,u.hp+damage*Math.max(0,u.abilities[44])*.15);
      if(A(u,34)&&random()<.15)v.stunUntil=Math.max(v.stunUntil,time+1);
      if(A(u,24)&&random()<clamp(u.abilities[24]*.09,0,1))v.stunUntil=Math.max(v.stunUntil,time+1);
      return true;
    }
    while(time<maxSeconds&&actions<2000&&units.every(u=>u.hp>0)){
      const t=Math.min(units[0].next,units[1].next,maxSeconds);tick(t-time);time=t;
      for(let i=0;i<2;i++)if(units[i].next<=time+1e-9){const u=units[i],v=units[1-i];strike(u,v);if(v.hp>0&&A(u,52)&&random()<clamp(u.abilities[52]*.07,0,1))strike(u,v);const frenzy=A(u,40)&&u.hp/u.defense<.2?1.5:1;u.next=time+1/(u.speed*frenzy);actions++;}
      if(t===maxSeconds)break;
    }
    return units[0].hp>0&&units[1].hp<=0?1:units[0].hp<=0?-1:0;
  }
  function simulate(left,right,{trials=400,seed=1,maxSeconds=120}={}){
    if(!Number.isInteger(trials)||trials<1||trials>5000||!Number.isInteger(seed)||!finite(maxSeconds)||maxSeconds<=0||maxSeconds>300)throw new Error('Opções de simulação inválidas.');
    if(!left.ready||!right.ready)return {ready:false,probability:null};
    const random=rng(seed),runs={wins:0,losses:0,unresolved:0};
    for(let i=0;i<trials;i++){const result=duel(left,right,random,{maxSeconds});if(result>0)runs.wins++;else if(result<0)runs.losses++;else runs.unresolved++;}
    return {ready:true,...runs,trials,probability:runs.unresolved?null:runs.wins/trials,
      min:runs.wins/trials,max:(runs.wins+runs.unresolved)/trials,interval:[wilson(runs.wins,trials)[0],wilson(runs.wins+runs.unresolved,trials)[1]],
      partial:left.partial||right.partial||runs.unresolved>0,notes:unique([...left.notes,...right.notes,...left.unknown.map(n=>'Efeito do personagem não simulado: '+n),...right.unknown.map(n=>'Efeito do monstro não simulado: '+n),...(runs.unresolved?['Algumas lutas atingiram o limite de tempo; não foram consideradas derrotas.']:[])])};
  }
  const cache=new Map();
  function compare(unit,row,index,{variant=null,place=unit.place||0,trials=400,seed=1}={}){
    if(!unit.ready)return {ready:false,missing:unit.missing,probability:null,notes:unit.notes};
    if(variant===4)return {ready:false,missing:['estado inicial especial ainda não modelado'],probability:null,notes:[]};
    if(tokens(row.raw.fixAbility).some(([id,n])=>id===110&&n>0))return {ready:false,missing:['monstro com equipamento derivado da ficha: transformação ainda não modelada'],probability:null,notes:[]};
    unit={...unit,place};
    const choices=String(row.raw.choiceAbility||'').split('|').filter(Boolean),variants=choices.length?choices:[null];
    const signature=JSON.stringify([unit,row.key,variant,place,trials,seed]);if(cache.has(signature))return cache.get(signature);
    const results=variants.map(choice=>{
      const enemy=monster(row,index,{variant,choice,place});
      const result=simulate(unit,enemy,{trials,seed:hash(signature+'|'+choice)});
      return {...result,choice,enemyPower:enemy.power};
    });
    const lower=Math.min(...results.map(r=>r.min)),upper=Math.max(...results.map(r=>r.max));
    const result={ready:true,monsterKey:row.key,name:row.title,min:lower,max:upper,probability:results.length===1?results[0].probability:null,
      variants:results,partial:results.some(r=>r.partial),notes:unique(results.flatMap(r=>r.notes)),trials,variable:results.length>1,
      risk:upper<.35?'high':lower>=.65?'low':'mixed'};
    if(results.length>1)result.notes.push('Há variações de habilidade do monstro; a faixa compara os cenários, sem presumir o peso de sorteio.');
    if(cache.size>=500)cache.clear();cache.set(signature,result);return result;
  }
  function fromRun(run,state=run.state){return {setup:clone(state.combat||blankSetup()),stats:state.stats,alignmentRange:state.alignmentRange,traits:state.traits,traitsComplete:state.traitsComplete,statsMode:'effective',difficulty:run.difficulty,hardLevel:state.scoring?.hardLevel??run.hardLevel,inventory:state.items,inventoryComplete:state.inventoryComplete,effectiveAbilities:state.abilities,effectsPending:state.pending?.length>0,flagsUncertain:state.flagsUncertain};}
  function eventMonsters(event,control,index){
    if(control.enemyKey){const r=records(index).get(control.enemyKey);return r?[r]:[];}
    return unique(String(event.data.monster||'').split('|').map(t=>t.split('_')[0]).filter(t=>/^\d+$/.test(t))).map(id=>record(index,'monster',id)).filter(Boolean);
  }
  function assessment(run,event,control,index,state=run.state,place){
    const input=fromRun(run,state),unit=player(input,index),location=Number.isInteger(place)?place:input.setup.place;
    const enemies=eventMonsters(event,control,index);
    return {unit,enemies:enemies.map(row=>({row,result:compare(unit,row,index,{variant:control.model.initial_state,place:location,trials:400})})),unknownEnemy:!enemies.length};
  }
  return {VERSION,STATS,SLOTS,PLACES,blankSetup,cleanSetup,formula,numeric,player,monster,power,duel,simulate,compare,fromRun,eventMonsters,assessment,hash,clearCache:()=>cache.clear()};
});
