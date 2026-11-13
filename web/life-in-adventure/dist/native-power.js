/* Equipment.GetTotalBattlePoint: native scalar score, distinct from the combat simulator's index. */
'use strict';
((root,factory)=>{const api=factory(typeof module==='object'&&module.exports?require('./combat-engine.js'):root.AtlasCombat,typeof module==='object'&&module.exports?require('./ability-engine.js'):root.AtlasAbilities);if(typeof module==='object'&&module.exports)module.exports=api;else root.AtlasNativePower=api;})(globalThis,(C,A)=>{
  const f=Math.fround,finite=v=>typeof v==='number'&&Number.isFinite(v),add=(a,b)=>f(f(a)+f(b)),mul=(a,b)=>f(f(a)*f(b)),div=(a,b)=>f(f(a)/f(b));
  const clamp=(v,a,b)=>Math.max(a,Math.min(b,v)),piece=(n,a,b)=>mul(n,n>=4?b:a);
  const STATS=[5,6,7,12,13,14],SLOTS=['main','armor','off','accessory'];
  const records=index=>index.records||new Map((index.catalogs||index.data.catalogs).map(r=>[r.key,r]));
  // These helpers have additional branches not yet ported below. They are never
  // silently interpreted as zero when active in the native score.
  const UNSUPPORTED=new Set([68,69,73,83,92,94,95,99,100,103,104]);
  const RELEVANT=new Set([0,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,24,25,28,29,30,31,32,33,34,35,38,39,40,41,42,44,45,46,47,48,49,50,51,52,53,54,56,57,58,59,60,61,62,64,67,68,69,70,71,72,73,83,86,87,88,89,90,91,92,93,94,95,97,99,100,103,104,105,106,113]);
  function signature(input){
    const setup=input.setup||{},canonical=o=>Object.entries(o||{}).sort(([a],[b])=>a.localeCompare(b));
    return JSON.stringify([[...STATS,3].map(k=>input.stats?.[k]??null),input.alignmentRange||null,input.flagsUncertain===true,input.effectsPending===true,input.hardLevel??null,setup.level??null,setup.equippedKnown===true,SLOTS.map(k=>setup.equipment?.[k]||null),[...(input.traits||[])].map(String).sort(),input.traitsComplete===true,canonical(input.effectiveAbilities),canonical(setup.abilities),input.statsMode||'effective',input.difficulty||'normal']);
  }
  function observe(value,input){if(!finite(value)||value<0||value>1e9)throw new Error('Poder de combate observado inválido.');return {value,signature:signature(input)};}
  function resistance(abilities){
    const out=Array(10).fill(1),apply=(indices,value)=>{for(const i of indices)out[i]=mul(out[i],value);},all=()=>out.map((_,i)=>i);
    for(const [idText,n] of Object.entries(abilities)){const id=Number(idText);if(!finite(n)||n===0)continue;
      if(id===3){if(n>0)apply(all(),.95);apply([2],add(1,mul(n,-.1)));apply([3],add(1,mul(n,.1)));}
      else if(id===7||id===11)apply([id===7?1:0],add(1,mul(n,Math.abs(n)>=4?(id===7?-.2:-.17):-.15)));
      else if([8,13,15,17,19,21].includes(id)){
        const target={8:4,13:5,15:6,17:8,19:7,21:9}[id],factor=n>=3?0:n<=-3?2:add(1,mul(n,-.33));apply([target],factor);
      } else if(n>0){
        if(id===9)apply(all(),add(1,mul(n,-.025)));
        else if(id===30)apply(all(),add(add(1,mul(n,-.05)),-.05));
        else if(id===38)apply([0],.9);
        else if(id===45||id===106)apply(all(),add(1,mul(n,-.05)));
        else if(id===48)apply(all(),.95);
        else if(id===67)apply(all(),1.1);
        else if(id===86)apply(all(),.7);
        else if(id===97)apply(all(),1.25);
      }
    }return out;
  }
  function abilityFactor(a){
    const L=id=>a[id]||0,has=id=>L(id)!==0;let value=has(40)?f(1.13):1;
    if(has(41))value=add(value,.3);
    if(has(29))value=add(value,piece(L(29),.09,.11));
    if(has(2))value=add(value,piece(L(2),.05,.06));
    for(const [id,coefficient] of [[39,.08],[42,.05]])if(has(id))value=add(value,mul(L(id),coefficient));
    if(has(47))value=add(value,add(mul(L(47),.05),.2));
    if(has(22))value=add(value,piece(L(22),.1,.11));
    for(const id of [53,54])if(has(id))value=add(value,mul(L(id),.1));
    if(has(67))value=add(value,.1);
    if(L(3)<0)value=add(value,mul(-L(3),.03));
    for(const [id,coefficient] of [[50,.21],[33,.17],[52,.09]])if(has(id))value=add(value,mul(L(id),coefficient));
    for(const id of [45,34])if(has(id))value=add(value,.1);
    if(has(28))value=add(value,.09);
    for(const [id,coefficient] of [[35,.09],[25,.08],[24,.07],[5,.05],[44,.05],[31,.025],[49,.022],[32,.02]])if(has(id))value=add(value,mul(L(id),coefficient));
    for(const id of [87,113])if(has(id))value=add(value,.08);
    return value;
  }
  function formula({damage,additionalDamage=0,defense,speed,critical,criticalMultiplier,dodge,abilities={}}){
    const matrix=resistance(abilities),hp=matrix.map(n=>div(defense,Math.max(f(.2),n)));
    // Match the native aggregation order: 0/1 at 5/12 each, the other eight
    // entries at 1/48 each, followed by evasion and critical weighting.
    let other=add(hp[5],hp[4]);other=add(other,hp[3]);other=add(other,hp[2]);other=add(other,hp[8]);other=add(other,hp[6]);other=add(other,hp[7]);other=add(other,hp[9]);
    const effectiveHp=div(add(div(mul(mul(add(hp[0],hp[1]),.5),5),6),div(mul(other,.125),6)),add(1,-dodge));
    const combined=add(damage,additionalDamage),criticalDamage=add(mul(combined,add(1,-critical)),mul(mul(combined,critical),criticalMultiplier));
    let value=mul(mul(mul(speed,.5),criticalDamage),(abilities[86]||0)!==0?.75:1);
    value=mul(value,effectiveHp);value=add(value,-1500);value=mul(value,abilityFactor(abilities));value=mul(value,40);value=div(value,300);value=mul(value,.7);
    return Math.max(0,value);
  }
  function estimate(input,index){
    const sig=signature(input),observed=input.observedPower;
    if(observed&&finite(observed.value)&&observed.value>=0&&observed.value<=1e9&&observed.signature===sig)return {ready:true,value:observed.value,exact:true,partial:false,missing:[],notes:[],source:'observed-native-power',signature:sig};
    let setup;try{setup=C.cleanSetup(input.setup,index);}catch(error){return {ready:false,value:null,exact:false,partial:true,missing:[error.message],notes:[],source:'native-power',signature:sig};}
    const unit=C.player({...input,setup},index);if(!unit.ready)return {ready:false,value:null,exact:false,partial:true,missing:unit.missing,notes:[],source:'native-power',signature:sig};
    const effectiveStats={...input.stats,...unit.stats},state={...input,stats:effectiveStats,combat:setup},derived=unit.abilityDerivation||A.derive(state,index,{stats:effectiveStats,effectiveAbilities:input.effectiveAbilities,overrides:setup.abilities}),a=derived.levels,L=id=>a[id]||0;
    const notes=[],unknown=[...RELEVANT].filter(id=>a[id]===null);
    if(unknown.length)notes.push(`Níveis de habilidade desconhecidos para o poder: ${unknown.join(', ')}.`);
    const unsupported=[...UNSUPPORTED].filter(id=>L(id)!==0);if(unsupported.length)notes.push(`Modificadores de poder ainda não reproduzidos: ${unsupported.join(', ')}.`);
    const zeroPresent=[40,41,67,45,34,28,87,113,86].filter(id=>derived.presence?.[id]===true&&a[id]===0);
    if(zeroPresent.length)notes.push(`Habilidades presentes em nível zero exigem conferência do poder: ${zeroPresent.join(', ')}.`);
    if(input.difficulty==='hard')notes.push('Os modificadores externos do modo difícil exigem conferência dos níveis efetivos.');
    const rec=key=>records(index).get('item:'+key),equipped=SLOTS.filter(k=>setup.equipment[k]).map(slot=>({slot,...setup.equipment[slot],raw:rec(setup.equipment[slot].id).raw}));
    // Item.dmgType (offset 0x68) controls mastery and extra-damage helpers.
    // It is independent from the attackType animation/damage descriptor.
    const mastery=(raw,base)=>{const magic=Number(raw?.dmgType||0)===1;let v=mul(base,add(1,piece(Math.max(0,L(magic?0:46)),.1,.12)));if(!magic)v=mul(v,add(1,piece(Math.max(0,L(60)),.1,.12)));if(L(48)>0)v=mul(v,1.1);return v;};
    const getDmg=(e,defaultBody=false)=>{
      const raw=e?.raw,term=C.formula(raw?.dmg||'2|0_5_0.03|0_6_0.03',unit.stats);let bonus=add(mul(setup.level,.2),2.5);if(Number(raw?.category)===1)bonus=add(bonus,bonus);
      let value=add(term,bonus);if(e?.upgrade===1)value=mul(value,1.1);return value;
    };
    let damage=0,additionalDamage=0;
    const weapons=equipped.filter(e=>e.raw.dmg&&['main','off'].includes(e.slot));
    if(!setup.equipment.main){if(weapons.some(e=>e.slot==='off'))notes.push('A combinação de mão principal vazia e arma secundária ainda exige conferência.');else weapons.unshift(null);}
    if(weapons.length>1)notes.push('A combinação de duas armas ainda exige conferência dos componentes nativos.');
    for(const e of weapons){const base=mastery(e?.raw,getDmg(e));damage=add(damage,base);const type=Number(e?.raw.dmgType||0);
      for(const id of [3,12,14,16,18,20,61,62,106]){const n=L(id);if(!n||(id===61&&type!==0)||(id===62&&type!==1))continue;
        let coefficient;if(id===3){coefficient=Math.abs(n)>=4?.12:.1;}else if(id===106){if(n<1)continue;coefficient=.1;}else {if(n<1)continue;coefficient=[61,62].includes(id)?(n>=4?.2:.15):(n>=4?.175:.16);}
        additionalDamage=add(additionalDamage,mul(mul(base,id===3?Math.abs(n):n),coefficient));
      }
    }
    if(damage===0)damage=1;
    let defense=0;const defensive=equipped.filter(e=>e.raw.hp);if(!equipped.some(e=>e.slot==='armor'))defensive.push({raw:{hp:'40|0_13_0.4|0_14_0.4'},upgrade:0});
    // GetHpAbilities applies negative Hardness too (e.g. CON below four).
    for(const e of defensive){let value=add(C.formula(e.raw.hp,unit.stats),add(mul(setup.level,1.75),30));if(e.upgrade===1)value=mul(value,1.1);value=mul(value,add(1,mul(L(58),.1)));
      for(const [id,cat,sub] of [[70,2,0],[71,3,0],[72,2,1],[89,3,1],[90,3,2]])if(L(id)>0&&Number(e.raw.category)===cat&&Number(e.raw.subCategory)===sub)value=mul(value,1.25);defense=add(defense,value);
    }
    let dodge=add(f(.15),mul(L(57),.04));dodge=add(dodge,mul(Math.max(0,L(9)),.02));if(L(10)>0)dodge=add(dodge,.08);dodge=add(dodge,piece(Math.max(0,L(25)),.02,.03));if(L(38)>0)dodge=add(dodge,.05);dodge=add(dodge,piece(Math.max(0,L(51)),.025,.03));if(L(93)>0)dodge=add(dodge,.2);if(L(113)>0)dodge=add(dodge,.1);dodge=clamp(dodge,0,.75);
    let speed=mul(add(1,mul(L(56),.1)),add(1,piece(Math.max(0,L(51)),.03,.04)));if(L(88)>0){speed=mul(speed,add(1,dodge));dodge=0;}speed=mul(speed,add(1,piece(Math.max(0,L(91)),.04,.05)));if(L(93)>0)speed=mul(speed,.8);speed=mul(speed,add(1,mul(Math.max(0,L(105)),.1)));if(speed<0)speed=f(.1);
    let critical=add(f(.15),mul(L(59),.1));critical=add(critical,mul(Math.max(0,L(6)),.05));critical=add(critical,piece(Math.max(0,L(91)),.04,.05));if(L(94)>0)critical=add(critical,-.25);if(L(113)>0)critical=add(critical,.1);critical=Math.max(0,critical);
    const criticalMultiplier=add(2,mul(Math.max(0,L(64)),.5)),components={damage,additionalDamage,defense,speed,critical,criticalMultiplier,dodge,abilities:a};
    const value=formula(components);if(!finite(value))return {ready:false,value:null,exact:false,partial:true,missing:['componentes de poder não finitos'],notes,source:'native-power',signature:sig};
    return {ready:true,value,exact:notes.length===0,partial:notes.length>0,missing:unknown.map(String),notes,source:notes.length?'native-power-partial':'native-power-formula',components,signature:sig};
  }
  function fromRun(run,state=run.state){return C.fromRun(run,state);}
  return {estimate,fromRun,signature,observe,resistance,abilityFactor,formula,RELEVANT:[...RELEVANT]};
});
