
/* ===== VAULT SEQUENCE (<=3s) ===== */
(function(){
  const buttons=[
    {id:'swat',min:2,max:3},
    {id:'fortune',min:1,max:1},
    {id:'ghost',min:4,max:5},
    {id:'ci',min:1,max:2},
    {id:'pb',min:1,max:2}
  ];
  function rand(a,b){return Math.floor(Math.random()*(b-a+1))+a;}
  async function spin(el,turns,ms){
    if(!el) return;
    el.style.transition=`transform ${ms}ms cubic-bezier(.22,.61,.36,1)`;
    el.style.transform=`rotate(${turns*360}deg)`;
    await new Promise(r=>setTimeout(r,ms+80));
  }
  window.runVaultSequence=async function(){
    const start=performance.now();
    const seq=[...buttons].sort(()=>Math.random()-0.5);
    for(const b of seq){
      if(performance.now()-start>2800) break;
      const el=document.querySelector(`[data-planet="${b.id}"],#${b.id}`);
      await spin(el,rand(b.min,b.max),400);
    }
    document.body.classList.add('vault-open');
    setTimeout(()=>{
      const modal=document.querySelector('.vault-modal');
      modal && modal.classList.add('is-lit');
    },350);
  };
})();
