/* Current (build 366) HardModeMgr scoring. Does not use the obsolete ScorePopup. */
'use strict';
((root,factory)=>{const api=factory(typeof module==='object'&&module.exports?require('./combat-engine.js'):root.AtlasCombat,typeof module==='object'&&module.exports?require('./native-power.js'):root.AtlasNativePower);if(typeof module==='object'&&module.exports)module.exports=api;else root.AtlasScore=api;})(globalThis,(C,NativePower)=>{
  const VERSION=1,CURRENT_SCORE_VERSION=3,ATTRS=['5','6','7','12','13','14'];
  const NAMES=['Inimigos Derrotados','Nêmesis Derrotada','Bolsos Pesados','Coletor','Virtuoso','Vilão','Golpe de Sorte','Mãos Desajeitadas','Usa Todos os Meios','Casado','Entusiasta de Poções','Rápido em Tudo','Avançado','Reviravolta','Sabor do Sucesso','Talentoso','Poder de Combate','Imortal','Invicto','Experiência','Espírito de Desafio','Punho Nuclear','Irritado, não é?','Morte Superada','Sequência de Vitórias','Mestre das Escolhas','Última Resistência','Sequência de Derrotas','Azarado'];
  const finite=v=>typeof v==='number'&&Number.isFinite(v),own=(o,k)=>Object.hasOwn(o,k),f=Math.fround;
  const unique=a=>[...new Set(a)],clone=v=>JSON.parse(JSON.stringify(v));
  const record=(index,kind,id)=>index.records?.get(`${kind}:${id}`)||index.catalogs?.find(r=>r.key===`${kind}:${id}`);
  function blankSetup(){return {version:VERSION,scoreVersion:CURRENT_SCORE_VERSION,battlePower:null,battleAnchor:null,counters:{},countersComplete:false,steps:null,hardLevel:null,offsets:{},uncertainCounters:{}};}
  function cleanSetup(input){
    if(input===undefined||input===null)return blankSetup();
    if(typeof input!=='object'||Array.isArray(input)||(input.version!==undefined&&input.version!==VERSION))throw new Error('Configuração de pontuação inválida.');
    const s=blankSetup();
    if(input.scoreVersion!==undefined){if(input.scoreVersion!==null&&(!Number.isInteger(input.scoreVersion)||input.scoreVersion< -1||input.scoreVersion>100))throw new Error('Versão de pontuação inválida.');s.scoreVersion=input.scoreVersion;}
    for(const key of ['battlePower','steps'])if(input[key]!==undefined){const n=input[key];if(n!==null&&(!finite(n)||n<0||n>1e9||key==='steps'&&!Number.isInteger(n)))throw new Error('Valor de pontuação inválido.');s[key]=n;}
    if(input.battleAnchor!==undefined&&input.battleAnchor!==null){if(typeof input.battleAnchor!=='string'||input.battleAnchor.length>100000)throw new Error('Assinatura do poder inválida.');s.battleAnchor=input.battleAnchor;}
    if(input.counters!==undefined){if(!input.counters||typeof input.counters!=='object'||Array.isArray(input.counters))throw new Error('Contadores de pontuação inválidos.');
      for(const [k,n] of Object.entries(input.counters)){if(!/^\d+$/.test(k)||Number(k)>28)throw new Error('Categoria de pontuação inválida.');const list=Array.isArray(n)?n:[n];if(list.length>10000||list.some(v=>!Number.isInteger(v)||v< -1e9||v>1e9))throw new Error('Contador de pontuação inválido.');s.counters[k]=Array.isArray(n)?[...n]:n;}}
    if(input.hardLevel!==undefined&&input.hardLevel!==null){if(!Number.isInteger(input.hardLevel)||input.hardLevel<0||input.hardLevel>10)throw new Error('Grau do modo difícil inválido.');s.hardLevel=input.hardLevel;}
    for(const key of ['offsets','uncertainCounters'])if(input[key]!==undefined){if(!input[key]||typeof input[key]!=='object'||Array.isArray(input[key]))throw new Error('Projeção de pontuação inválida.');for(const [id,n] of Object.entries(input[key])){if(!/^\d+$/.test(id)||Number(id)>28||!Number.isInteger(n)||Math.abs(n)>1e9)throw new Error('Projeção de pontuação inválida.');s[key][id]=n;}}
    s.countersComplete=input.countersComplete===true;return s;
  }
  function anchor(state){return JSON.stringify([ATTRS.map(k=>state.stats?.[k]??null),state.stats?.[2]??null,state.stats?.[3]??null,state.alignmentRange||null,state.scoring?.hardLevel??null,state.flagsUncertain===true,state.pending||[],state.combat?.level??null,state.combat?.equipment||{},[...(state.traits||[])].sort(),state.traitsComplete===true,Object.entries(state.abilities||{}).sort(),state.combat?.abilities||{},state.combat?.overrides||{}]);}
  const multiplier=version=>version===null?null:f(Math.max(1,f(f(version+1)*1.5)));
  function battlePower(state,index,options={}){
    const setup=cleanSetup(state.scoring);
    if(finite(setup.battlePower)&&setup.battleAnchor===anchor(state))return {ready:true,value:setup.battlePower,exact:true,notes:[],source:'observed'};
    const P=options.nativePower||NativePower||globalThis.AtlasNativePower;
    if(P){const result=P.estimate(P.fromRun({state,difficulty:options.difficulty||'normal'},state),index);if(result.ready)return result;}
    return {ready:false,value:null,exact:false,notes:[finite(setup.battlePower)?'O poder nativo observado precisa ser conferido após a mudança de atributos ou equipamento.':'A parcela de poder exige poder nativo conferido ou modelo nativo completo.']};
  }
  function itemWealth(state,index){
    let value=0,upper=0,known=state.inventoryComplete===true,notes=[];const equipment=state.combat?.equipment||{};
    // The run inventory already includes equipment. Never count equipped copies twice.
    const upgraded={},equipped={};for(const e of Object.values(equipment))if(e){equipped[e.id]=(equipped[e.id]||0)+1;if(e.upgrade===1)upgraded[e.id]=(upgraded[e.id]||0)+1;}
    for(const [id,n] of Object.entries(state.items||{})){
      const row=record(index,'item',id),price=Number(row?.raw.price);
      if(!Number.isInteger(n)||n<0||!Number.isFinite(price)){known=false;upper=Infinity;continue;}
      const improved=Math.min(n,upgraded[id]||0);value+=Math.trunc(price)*(n-improved)+Math.trunc(f(f(price)*1.5))*improved;const unmodified=Math.max(0,(equipped[id]||0)-improved);upper+=Math.trunc(price)*unmodified+Math.trunc(f(f(price)*1.5))*(n-unmodified);
    }
    if(!known)notes.push('O patrimônio total exige a mochila completa, incluindo os itens equipados.');
    if(state.combat?.equippedKnown!==true&&Object.keys(state.items||{}).length)notes.push('Melhorias de itens fora dos espaços equipados não estão registradas; podem alterar o valor do patrimônio.');
    return {value,min:value,max:known?upper:Infinity,known:known&&upper===value,notes};
  }
  function rawCounterScore(id,counter,index){
    const n=Array.isArray(counter)?counter[0]??0:counter,series=Array.isArray(counter)?counter:[counter];
    if(counter===null||counter===undefined)return null;
    if([17,18,20].includes(id))return 0;
    const linear={0:100,6:400,7:500,13:600,14:100,15:1000,16:20,19:100,26:100};
    if(own(linear,id))return n*linear[id];
    if(id===1){if(counter===0)return 0;let sum=0;for(const mid of series){const row=record(index,'monster',mid),challenge=Number(row?.raw.challenge);if(!Number.isFinite(challenge))return null;sum+=challenge*150;}return sum;}
    if(id===2)return n>=5000?3000:n>=4000?2000:n>=3000?1000:0;
    if(id===3)return n>=5?n*100:0;
    if(id===4||id===12)return n!==0?3000:0;
    if(id===5||id===9)return n!==0?2000:0;
    if(id===10)return n>6?n*100:0;
    if(id===11)return n<=160?4000:0;
    if(id===21)return n>=3?4000:n===2?3000:n===1?2000:0;
    if(id===22)return n>=3?4000:n>=1?3000:0;
    if(id===23)return n!==0?10000:0;
    if([24,25,27,28].includes(id)){
      const thresholds={24:[10,30,200,1000],25:[5,10,1000,0],27:[5,15,200,2000],28:[5,10,1000,0]},[minimum,cap,scale,base]=thresholds[id];
      return n>=minimum?Math.min(cap,n)*scale+base:0;
    }
    if(id===8){if(!Array.isArray(counter))return n>=8?2000:0;const types=new Set();for(const id of counter){const item=record(index,'item',id);if(!item)return null;types.add(`${item.raw.category}_${item.raw.subCategory}`);}return types.size>=8?2000:0;}
    return null;
  }
  function collectorCount(state,index){
    if(!state.inventoryComplete||!state.combat?.equippedKnown)return null;
    const copies={};for(const piece of Object.values(state.combat.equipment||{}))if(piece)copies[piece.id]=(copies[piece.id]||0)+1;
    const groups={};
    for(const [id,count] of Object.entries(state.items||{})){
      const category=Number(record(index,'item',id)?.raw.category);
      if(!Number.isInteger(count)||count<0||!Number.isInteger(category)||category<0||category>9)return null;
      const inBag=count-(copies[id]||0);if(inBag<0)return null;
      groups[category]=(groups[category]||0)+inBag;
    }
    // Native CheckItemMoreThanSeven counts Inventory only, not Equipment.
    return Math.max(0,...Object.values(groups));
  }
  function talents(state,index){
    const A=globalThis.AtlasAbilities||(typeof module==='object'&&module.exports?require('./ability-engine.js'):null);
    if(!A||!index)return null;
    const levels=Object.values(A.derive(state,index).levels);
    return levels.every(finite)?levels.filter(value=>value>=4).length:null;
  }
  function rows(state,index,options={}){
    const setup=cleanSetup(state.scoring),mult=multiplier(setup.scoreVersion),wealth=itemWealth(state,index),power=battlePower(state,index,options),out=[];
    const finish=(id,count,source,dependency,known=true,notes=[],baseOverride=undefined)=>{
      const offset=setup.offsets[id]||0,uncertain=setup.uncertainCounters[id]||0;
      const base=known?(baseOverride===undefined?rawCounterScore(id,count,index):baseOverride):null,raw=base===null?null:base+offset,scaled=raw===null||mult===null?null:f(f(raw)*mult);
      const value=scaled===null||uncertain!==0||!finite(scaled)||scaled< -2147483648||scaled>2147483647?null:Math.trunc(scaled);
      out.push({id,label:NAMES[id],count,source,dependency:JSON.stringify([dependency,uncertain]),offset,value,raw,known:value!==null,exact:known&&(id!==16||power.exact===true),notes});
    };
    for(let id=0;id<29;id++){
      const historical=own(setup.counters,id)?setup.counters[id]:setup.countersComplete?0:null;
      if(id===2){const gold=state.stats?.[4],lo=finite(gold)?Math.trunc(f(f(gold)+f(wealth.min))):null,hi=finite(gold)?Math.trunc(f(f(gold)+f(wealth.max))):null,known=lo!==null&&rawCounterScore(2,lo,index)===rawCounterScore(2,hi,index);finish(id,known?lo:null,'wealth',[gold,state.items,state.combat?.equipment,state.inventoryComplete],known,wealth.notes);}
      else if(id===3){const count=collectorCount(state,index),current=count!==null&&count>=7;finish(id,current?count:historical,'inventory-category',[count,historical,state.items,state.combat?.equipment,state.inventoryComplete],current||historical!==null&&count!==null);}
      else if(id===4||id===5){const v=state.stats?.[3],present=finite(v)&&(id===4?v>=25:v<=-25),count=present?1:historical;finish(id,count,'alignment-feat',[count],count!==null);}
      else if(id===16){const values=ATTRS.map(k=>state.stats?.[k]),known=values.every(finite)&&power.ready;let count=null;if(known){let sum=values.reduce((a,b)=>f(a+f(b)),0);count=Math.trunc(f(f(sum+f(power.value))/7.5));}finish(id,count,power.source||'native-power',[anchor(state),setup.battlePower,setup.battleAnchor],known,power.notes||[]);}
      else if(id===19){const xp=state.stats?.[2];finish(id,finite(xp)?Math.trunc(xp):null,'experience',[xp],finite(xp));}
      else if(id===11){
        const xp=state.stats?.[2],steps=setup.steps,eligible=finite(xp)&&xp>=100&&finite(steps)&&steps<=160;
        const priorAward=historical!==null&&historical!==0&&rawCounterScore(11,historical,index)>0;
        if(priorAward)finish(id,historical,'counter',[historical],true);
        else if(eligible)finish(id,steps,'pages',[steps],true);
        else if(finite(xp)&&xp<100||finite(steps)&&steps>160)finish(id,historical,'counter',[historical,'not-eligible'],historical!==null,[],historical===0?0:undefined);
        else finish(id,null,'counter',[historical,finite(xp)?xp>=100:null,steps],false);
      }
      else finish(id,historical,'counter',[historical,setup.countersComplete],historical!==null);
    }
    return {setup,mult,rows:out,notes:mult===null?['Informe a versão da pontuação; a versão atual do build 366 é 3.']:[]};
  }
  function estimate(input,index,options={}){
    const state=input.state||input,result=rows(state,index,options),known=result.rows.filter(r=>r.known),complete=known.length===29&&result.rows.every(r=>r.exact),subtotal=known.reduce((s,r)=>s+r.value,0);
    const notes=unique([...result.notes,...result.rows.flatMap(r=>r.notes),...result.rows.filter(r=>!r.known).map(r=>`Parcela a conferir: ${r.label}.`)]);
    return {value:complete?subtotal:null,total:complete?subtotal:null,knownSubtotal:subtotal,min:subtotal,max:complete?subtotal:null,complete,partial:!complete,notes,breakdown:result.rows,scoreVersion:result.setup.scoreVersion,multiplier:result.mult};
  }
  function compare(before,after,index,options={}){
    before=before.state||before;after=after.state||after;
    const a=rows(before,index,options),b=rows(after,index,options),breakdown=[];let sum=0,complete=true,bounded=true,extraMin=0,extraMax=0,notes=[...a.notes,...b.notes];
    for(let i=0;i<29;i++){
      const x=a.rows[i],y=b.rows[i],invariant=x.dependency===y.dependency&&a.mult===b.mult;
      if(invariant){const difference=y.offset-x.offset,value=a.mult===null?null:Math.trunc(f(difference*a.mult));if(value===null&&difference!==0)complete=false;else sum+=value||0;breakdown.push({id:i,label:NAMES[i],value:value||0,complete:value!==null||difference===0,invariant:true});continue;}
      const dirtyDelta=(b.setup.uncertainCounters[i]||0)-(a.setup.uncertainCounters[i]||0);
      if(i===13&&a.mult!==null&&a.mult===b.mult&&JSON.stringify(x.count)===JSON.stringify(y.count)&&dirtyDelta>0){
        const guaranteed=Math.trunc(f((y.offset-x.offset)*a.mult)),upper=Math.trunc(f(600*dirtyDelta*a.mult));
        sum+=guaranteed;extraMax+=upper;complete=false;
        notes.push('Reviravolta: a chance nativa da vitória improvável é desconhecida; o bônus adicional fica entre zero e o máximo da categoria.');
        breakdown.push({id:i,label:NAMES[i],value:null,min:guaranteed,max:guaranteed+upper,complete:false,bounded:true,invariant:false});continue;
      }
      const known=x.known&&y.known,delta=known?y.value-x.value:null,exact=known&&x.exact&&y.exact;
      if(delta!==null)sum+=delta;if(!exact){complete=false;bounded=false;}
      breakdown.push({id:i,label:NAMES[i],before:x.value,after:y.value,value:delta,complete:exact,invariant:false});
      if(!exact)notes.push(`Variação de ${NAMES[i]} ainda parcial.`,...x.notes,...y.notes);
    }
    if(!complete&&breakdown.some(row=>row.invariant&&row.complete===false))bounded=false;
    return {value:complete?sum:null,expected:sum,min:bounded?sum+extraMin:null,max:bounded?sum+extraMax:null,complete,intervalComplete:bounded,partial:!complete,notes:unique(notes),breakdown};
  }
  function project(input,action={},index){
    const state=clone(input),s=cleanSetup(state.scoring),notes=[];state.scoring=s;
    const get=id=>own(s.counters,id)?s.counters[id]:s.countersComplete?0:null;
    const dirty=id=>{s.uncertainCounters[id]=(s.uncertainCounters[id]||0)+1;};
    const add=(id,points,count=1)=>{const old=get(id);if(old!==null&&!Array.isArray(old))s.counters[id]=old+count;else s.offsets[id]=(s.offsets[id]||0)+points;};
    const streak=(id,success)=>{const old=get(id);if(old===null){dirty(id);return;}const pair=Array.isArray(old)?[old[0]||0,old[1]||0]:[old,0];pair[1]=success?pair[1]+1:0;pair[0]=Math.max(pair[0],pair[1]);s.counters[id]=pair;};
    if(typeof action.success==='boolean'){if(action.success)add(14,100);streak(25,action.success);streak(28,!action.success);}
    if(typeof action.battleVictory==='boolean'){
      streak(24,action.battleVictory);streak(27,!action.battleVictory);
      if(action.battleVictory){const row=action.monster,challenge=Number(row?.raw?.challenge);
        if(Number.isFinite(challenge)&&row){if(challenge<17)add(0,100);else{const old=get(1);if(Array.isArray(old)||old===0)s.counters[1]=[...(Array.isArray(old)?old:[]),Number(row.id)];else s.offsets[1]=(s.offsets[1]||0)+challenge*150;}}
        else{dirty(0);dirty(1);notes.push('O desafio do inimigo não está confirmado para a pontuação.');}
        if(action.winProbabilityExact===true&&finite(action.winProbability)){if(action.winProbability<.2)add(13,600);}else{dirty(13);notes.push('O bônus por vitória improvável depende da chance calculada pelo próprio jogo.');}
        const prior=action.before||input;if(prior.stats?.[0]===1||prior.stats?.[1]===1)add(26,100);
      }
    }
    if(Number.isInteger(action.dice)&&action.dice===20)add(6,400);if(action.dice===1)add(7,500);
    if(Number.isInteger(action.steps)&&action.steps>=0)s.steps=action.steps;
    if(action.before&&anchor(action.before)!==anchor(state)){
      const before=talents(action.before,index),after=talents(state,index);
      if(after!==before&&(after===null||after>0)){
        dirty(15);notes.push('O feito Talentoso depende do registro nativo das habilidades evoluídas; confira o contador após a mudança da ficha.');
      }
    }
    const alignment=state.stats?.[3];if(finite(alignment)){if(alignment>=25)s.counters[4]=1;if(alignment<=-25)s.counters[5]=1;}
    return {state,notes,partial:notes.length>0||Object.keys(s.uncertainCounters).length>0};
  }
  function reconcile(input,counters,countersComplete,confirmed=false){
    const old=cleanSetup(input),next=cleanSetup({...old,counters,countersComplete});
    const fullConfirmation=countersComplete&&(!old.countersComplete||confirmed);
    const ids=fullConfirmation?Array.from({length:29},(_,i)=>String(i)):Object.keys(next.counters).filter(id=>confirmed||JSON.stringify(next.counters[id])!==JSON.stringify(old.counters[id]));
    for(const id of ids){delete next.offsets[id];delete next.uncertainCounters[id];}
    return next;
  }
  return {VERSION,CURRENT_SCORE_VERSION,ATTRS,NAMES,blankSetup,cleanSetup,anchor,multiplier,battlePower,itemWealth,rawCounterScore,estimate,compare,delta:compare,project,reconcile};
});
