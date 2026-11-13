/* Confirmed Equipment.GetAbility attribute grants. Effective observations replace sums. */
'use strict';
((root,factory)=>{const api=factory();if(typeof module==='object'&&module.exports)module.exports=api;else root.AtlasAbilities=api;})(globalThis,()=>{
  const finite=v=>typeof v==='number'&&Number.isFinite(v),own=(o,k)=>Object.hasOwn(o||{},k);
  const IDS=Array.from({length:114},(_,i)=>String(i));
  const STAT_IDS=[5,6,7,12,13,14],SLOTS=['main','armor','off','accessory'];
  const records=index=>index?.records||new Map((index?.catalogs||index?.data?.catalogs||[]).map(r=>[r.key,r]));
  const readTokens=raw=>String(raw||'').split('|').map(s=>s.match(/^(\d+)_(-?\d+)$/)).filter(Boolean).map(m=>[m[1],Number(m[2])]);
  const threshold=(stats,key,low=18,high=27)=>finite(stats[key])?stats[key]>=high?2:stats[key]>=low?1:0:null;
  const paired=(stats,a,b)=>finite(stats[a])&&stats[a]<13||finite(stats[b])&&stats[b]<13?0:!finite(stats[a])||!finite(stats[b])?null:stats[a]>=20&&stats[b]>=20?2:1;
  function alignmentValues(state,fn){
    const value=state.stats?.[3];if(finite(value))return fn(Math.fround(value));
    const range=state.alignmentRange;if(!range)return null;
    const min=range.min===null?-Infinity:Math.fround(range.min),max=range.max===null?Infinity:Math.fround(range.max);
    const samples=[min,max,...[-24,-9,10,25].flatMap(v=>[v,v-0.0001]).filter(v=>v>=min&&v<=max)],values=samples.map(fn);
    return values.every(v=>v===values[0])?values[0]:null;
  }
  function derived(state){
    const stats=Object.fromEntries(Object.entries(state.stats||{}).map(([k,v])=>[k,finite(v)?Math.fround(v):null])),out={};
    const add=(id,v)=>{out[id]=out[id]===null||v===null?null:(out[id]||0)+v;};
    add(0,threshold(stats,7));add(0,threshold(stats,12));
    add(1,finite(stats[12])&&stats[12]<27?0:!finite(stats[12])?null:alignmentValues(state,a=>a< -24?2:a< -9?1:0));
    add(2,paired(stats,13,14));
    add(3,alignmentValues(state,a=>a>=25?1:a< -24?-1:0));
    add(4,finite(stats[12])&&stats[12]<27?0:!finite(stats[12])?null:alignmentValues(state,a=>a>=25?2:a>=10?1:0));
    add(51,threshold(stats,6));
    add(25,!finite(stats[14])?null:stats[14]>=42?3:threshold(stats,14));
    add(30,threshold(stats,13));add(42,paired(stats,6,13));add(46,paired(stats,5,6));add(58,paired(stats,5,13));add(60,threshold(stats,5));
    const baseMagic=state.baseLevels?.[0],hasMagic=baseMagic===null||out[0]===null?null:(baseMagic||0)+(out[0]||0);
    add(91,hasMagic===0?0:hasMagic===null?null:paired(stats,12,14));
    STAT_IDS.forEach((key,i)=>add(92+i,finite(stats[key])?(stats[key]<4?1:0):null));
    add(58,finite(stats[13])?(stats[13]<4?-2:0):null);
    add(113,finite(stats[7])?(stats[7]>=42?1:0):null);
    return out;
  }
  function derive(state,index,options={}){
    const catalog=records(index),stats=options.stats||state.stats||{},traits=options.traits||state.traits||[],equipment=options.equipment||state.combat?.equipment||{},
      equippedKnown=options.equippedKnown??state.combat?.equippedKnown??false,traitsComplete=options.traitsComplete??state.traitsComplete??false;
    const sums=Object.fromEntries(IDS.map(id=>[id,0])),sources={},notes=[],missing=[];
    const append=(raw,source)=>{for(const [id,n] of readTokens(raw)){sums[id]=(sums[id]||0)+n;(sources[id]||=[]).push({source,quantity:n});}};
    if(!equippedKnown)missing.push('equipamento confirmado');
    if(!traitsComplete)missing.push('lista completa de traços');
    for(const id of [...new Set(traits.map(String))]){
      const trait=catalog.get(`trait:${id}`);if(!trait){missing.push(`traço #${id}`);continue;}
      append(String(trait.raw?.effect||'').split('|').map(t=>t.match(/^addAb_(\d+)_(-?\d+)$/)).filter(Boolean).map(m=>m[1]+'_'+m[2]).join('|'),`trait:${id}`);
    }
    for(const slot of SLOTS){const e=equipment[slot];if(!e)continue;const item=catalog.get(`item:${e.id}`);if(!item){missing.push(`item equipado em ${slot}`);continue;}append(item.raw?.Ab,`item:${e.id}`);}
    const observations={...(state.abilities||{}),...(options.effectiveAbilities||{}),...(state.combat?.abilities||{}),...(options.overrides||{})};
    // Native armor masteries add the absolute level of each armor ability:
    // positive levels double; negative penalties cancel. This precedes stat grants.
    const armor=equipment.armor?catalog.get(`item:${equipment.armor.id}`):null;
    const effective=id=>own(observations,id)?observations[id]:sums[id];
    if(armor&&Number(armor.raw?.category)===3&&((Number(armor.raw.subCategory)===2&&effective(90)>0)||(Number(armor.raw.subCategory)===1&&effective(89)>0))){
      for(const [id,n] of readTokens(armor.raw.Ab)){sums[id]+=Math.abs(n);(sources[id]||=[]).push({source:'armor-mastery',quantity:Math.abs(n)});}
    }
    const baseUnknown=missing.length>0||state.flagsUncertain===true||(state.pending?.length||0)>0;
    const levels=Object.fromEntries(IDS.map(id=>[id,baseUnknown?null:sums[id]]));
    const presence=Object.fromEntries(IDS.map(id=>[id,own(sources,id)?true:baseUnknown?null:false]));
    if(state.flagsUncertain===true||(state.pending?.length||0)>0){missing.push('efeitos pendentes ou desconhecidos da run');}
    const grants=derived({...state,stats,baseLevels:levels});
    for(const [id,n] of Object.entries(grants)){
      levels[id]=levels[id]===null||n===null?null:levels[id]+n;
      if(n===null&&presence[id]!==true)presence[id]=null;
      else if(n!==null&&n!==0)presence[id]=true;
      if(n===null)missing.push(`atributos ou alinhamento para habilidade #${id}`);
      else if(n)(sources[id]||=[]).push({source:'native-attributes',quantity:n});
    }
    // Effects in evolved-trait metadata are incremental. Without the original
    // trait, the missing retained levels must not be silently reconstructed.
    const inherited={30:[10,[1]],31:[11,[2]],32:[12,[0,7]],34:[13,[4,5,32]],35:[13,[4,5,32]],36:[20,[3,37]],37:[20,[3,37]],38:[15,[9,11]],39:[14,[4,5,35]],53:[44,[14,13]],54:[45,[12,8]],55:[46,[15,16]],56:[47,[17,18]],57:[48,[20,19]],58:[49,[22,44]],59:[50,[104]],60:[51,[69]],61:[52,[68]],63:[62,[103]]};
    for(const id of traits.map(String))if(inherited[id]&&!traits.map(String).includes(String(inherited[id][0]))){for(const skill of inherited[id][1]){levels[skill]=null;if(presence[skill]!==true)presence[skill]=null;}notes.push(`O traço evoluído #${id} usa efeitos incrementais; confirme os níveis retidos do traço anterior.`);}
    // Known item set: paired native IDs 336 / 337.
    const itemIds=SLOTS.map(k=>String(equipment[k]?.id));
    if(itemIds.includes('336')&&itemIds.includes('337'))for(const [id,n] of [[108,1],[46,2],[52,1]]){if(levels[id]!==null)levels[id]+=n;presence[id]=true;(sources[id]||=[]).push({source:'native-set-336-337',quantity:n});}
    // Further family/set interactions are kept explicit, without contaminating
    // the independently known test modifiers (4,45,51,60,87,111,113).
    if(sums[83]>0||sums[100]>0){for(const id of [14,24,52,61,62]){levels[id]=null;if(presence[id]!==true)presence[id]=null;}notes.push('Há uma interação especial de família/conjunto ainda não derivada; confira os níveis efetivos.');}
    if((options.difficulty||state.difficulty)==='hard'){
      const level=options.hardLevel??state.scoring?.hardLevel??state.hardLevel;
      if(Number.isInteger(level)&&level>=0){for(const [id,minimum] of [[109,1],[111,3],[112,4]])if(level>=minimum){if(levels[id]!==null)levels[id]++;presence[id]=true;(sources[id]||=[]).push({source:'native-hard-mode',quantity:1});}}
      else{for(const id of [109,111,112]){levels[id]=null;if(presence[id]!==true)presence[id]=null;}missing.push('nível do modo difícil');}
    }
    for(const [id,n] of Object.entries(observations))if(/^\d+$/.test(id)&&(n===null||Number.isInteger(n)&&Math.abs(n)<=1e6)){levels[id]=n;presence[id]=n===null?null:true;sources[id]=[{source:'observed-effective',quantity:n}];}
    for(const [id,value] of Object.entries(options.presenceOverrides||{}))if(/^\d+$/.test(id)&&[true,false,null].includes(value)){presence[id]=value;if(value===false)levels[id]=0;}
    const unknown=Object.entries(levels).filter(([,n])=>n===null).map(([id])=>id);
    return {levels,presence,derived:grants,sources,complete:unknown.length===0,unknown,missing:[...new Set(missing)],notes:[...new Set(notes)],source:'native-ability-derivation'};
  }
  return {derive,derived,readTokens};
});
