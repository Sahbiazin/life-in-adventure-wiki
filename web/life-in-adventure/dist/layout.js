/* Compact navigation, a persistent sidebar and an accessible mobile drawer. */
'use strict';
(() => {
  const key='life-in-adventure:sidebar:v1',root=document.documentElement;
  const sidebar=document.getElementById('atlasSidebar'),toggle=document.getElementById('sidebarToggle');
  const close=document.getElementById('sidebarClose'),backdrop=document.getElementById('sidebarBackdrop');
  const gameRoot=document.getElementById('gameRoot'),gameNav=document.getElementById('gameSideNav');
  const media=window.matchMedia('(max-width: 650px)');
  if(!sidebar||!toggle||!close||!backdrop)return;
  let preference=null,expanded=root.dataset.sidebar!=='closed';
  try{const saved=localStorage.getItem(key);if(saved==='open'||saved==='closed')preference=saved;}catch{}
  function setSidebarOpen(open,{persist=true,focusReturn=true,focusInside=false}={}) {
    const wasInside=sidebar.contains(document.activeElement);
    expanded=Boolean(open);root.dataset.sidebar=expanded?'open':'closed';sidebar.hidden=!expanded;
    toggle.setAttribute('aria-expanded',String(expanded));
    const label=expanded?'Recolher barra lateral':'Abrir barra lateral';
    toggle.setAttribute('aria-label',label);toggle.title=label;
    const modal=expanded&&media.matches;
    backdrop.hidden=!modal;document.body.classList.toggle('sidebar-mobile-open',modal);
    if(modal){sidebar.setAttribute('role','dialog');sidebar.setAttribute('aria-modal','true');}
    else{sidebar.removeAttribute('role');sidebar.removeAttribute('aria-modal');}
    if(persist){preference=expanded?'open':'closed';try{localStorage.setItem(key,preference);}catch{}}
    if(!expanded&&focusReturn&&wasInside)toggle.focus();
    else if(modal&&focusInside)close.focus();
  }
  function setGameView(game) {
    const active=Boolean(game);document.body.classList.toggle('game-view',active);
    if(gameNav)gameNav.hidden=!active;
    sidebar.setAttribute('aria-label',active?'Navegação do Modo de jogo':'Explorar e filtrar o atlas');
    const heading=sidebar.querySelector('.side-heading .eyebrow');
    if(heading)heading.textContent=active?'DURANTE SUA RUN':'EXPLORAR O ATLAS';
  }
  toggle.addEventListener('click',()=>setSidebarOpen(!expanded,{focusInside:!expanded}));
  close.addEventListener('click',()=>setSidebarOpen(false));
  backdrop.addEventListener('click',()=>{setSidebarOpen(false,{focusReturn:false});toggle.focus();});
  document.addEventListener('keydown',event=>{
    if(!media.matches||!expanded||document.querySelector('dialog[open]'))return;
    if(event.key==='Escape'){event.preventDefault();setSidebarOpen(false);toggle.focus();return;}
    if(event.key!=='Tab')return;
    const elements=[...sidebar.querySelectorAll('button:not(:disabled),a[href],input:not(:disabled),select:not(:disabled),textarea:not(:disabled),[tabindex="0"]')].filter(el=>el.getClientRects().length);
    const first=elements[0],last=elements.at(-1);
    if(!first)return;
    if(event.shiftKey&&(document.activeElement===first||!sidebar.contains(document.activeElement))){event.preventDefault();last.focus();}
    else if(!event.shiftKey&&(document.activeElement===last||!sidebar.contains(document.activeElement))){event.preventDefault();first.focus();}
  });
  document.addEventListener('click',event=>{
    const target=event.target.closest('[data-view],[data-game-panel],[data-game-action]');
    if(media.matches&&expanded&&target&&(target.hasAttribute('data-view')||event.composedPath().includes(gameNav)))setSidebarOpen(false,{focusReturn:false});
  });
  document.addEventListener('change',event=>{
    if(media.matches&&expanded&&event.composedPath().includes(gameNav)&&event.target.matches('select'))setSidebarOpen(false,{focusReturn:false});
  });
  media.addEventListener('change',()=>setSidebarOpen(preference?preference==='open':!media.matches,{persist:false,focusReturn:false}));
  window.addEventListener('storage',event=>{
    if(event.key!==key&&event.key!==null)return;
    preference=event.newValue==='open'||event.newValue==='closed'?event.newValue:null;
    setSidebarOpen(preference?preference==='open':!media.matches,{persist:false});
  });
  if(gameRoot){new MutationObserver(()=>setGameView(!gameRoot.hidden)).observe(gameRoot,{attributes:true,attributeFilter:['hidden']});setGameView(!gameRoot.hidden);}
  setSidebarOpen(preference?preference==='open':!media.matches,{persist:false,focusReturn:false});
  window.AtlasLayout={setGameView,setSidebarOpen};
})();
