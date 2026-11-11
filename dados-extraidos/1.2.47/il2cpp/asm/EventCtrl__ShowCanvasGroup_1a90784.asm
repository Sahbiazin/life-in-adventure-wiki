System_Collections_IEnumerator_o* EventCtrl__ShowCanvasGroup (EventCtrl_o* __this, UnityEngine_CanvasGroup_o* obj, float fadeTime, const MethodInfo* method);
// RVA 0x1a90784 to 0x1a907fc
01a90784  str       d8, [sp, #-0x30]!                              
01a90788  stp       x30, x21, [sp, #0x10]                          
01a9078c  stp       x20, x19, [sp, #0x20]                          
01a90790  fmov      s8, s0                                         
01a90794  adrp      x20, #0x3d14000                                
01a90798  adrp      x21, #0x3a8c000                                
01a9079c  ldrb      w8, [x20, #0xcd2]                              
01a907a0  ldr       x21, [x21, #0x758]                             
01a907a4  mov       x19, x1                                        
01a907a8  tbnz      w8, #0, #0x1a907c0                             
01a907ac  adrp      x0, #0x3a8c000                                 
01a907b0  ldr       x0, [x0, #0x758]                               
01a907b4  bl        #0x183db90                                     
01a907b8  mov       w8, #1                                         
01a907bc  strb      w8, [x20, #0xcd2]                              
01a907c0  ldr       x0, [x21]                                      
01a907c4  bl        #0x183ddcc                                     
01a907c8  mov       w1, wzr                                        
01a907cc  mov       x2, xzr                                        
01a907d0  mov       x20, x0                                        
01a907d4  bl        #0x1ab46b0                                     // EventCtrl.<ShowCanvasGroup>d__92$$.ctor
01a907d8  cbz       x20, #0x1a907f8                                
01a907dc  str       x19, [x20, #0x20]                              
01a907e0  mov       x0, x20                                        
01a907e4  str       s8, [x20, #0x28]                               
01a907e8  ldp       x20, x19, [sp, #0x20]                          
01a907ec  ldp       x30, x21, [sp, #0x10]                          
01a907f0  ldr       d8, [sp], #0x30                                
01a907f4  ret                                                      
01a907f8  bl        #0x183dddc                                     