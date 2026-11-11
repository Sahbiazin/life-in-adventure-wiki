System_Collections_IEnumerator_o* EventCtrl__ShowChoicePanel (EventCtrl_o* __this, float fadeTime, const MethodInfo* method);
// RVA 0x1a9070c to 0x1a90784
01a9070c  str       d8, [sp, #-0x30]!                              
01a90710  stp       x30, x21, [sp, #0x10]                          
01a90714  stp       x20, x19, [sp, #0x20]                          
01a90718  fmov      s8, s0                                         
01a9071c  adrp      x20, #0x3d14000                                
01a90720  adrp      x21, #0x3a8c000                                
01a90724  ldrb      w8, [x20, #0xcd1]                              
01a90728  ldr       x21, [x21, #0x750]                             
01a9072c  mov       x19, x0                                        
01a90730  tbnz      w8, #0, #0x1a90748                             
01a90734  adrp      x0, #0x3a8c000                                 
01a90738  ldr       x0, [x0, #0x750]                               
01a9073c  bl        #0x183db90                                     
01a90740  mov       w8, #1                                         
01a90744  strb      w8, [x20, #0xcd1]                              
01a90748  ldr       x0, [x21]                                      
01a9074c  bl        #0x183ddcc                                     
01a90750  mov       w1, wzr                                        
01a90754  mov       x2, xzr                                        
01a90758  mov       x20, x0                                        
01a9075c  bl        #0x1ab484c                                     // EventCtrl.<ShowChoicePanel>d__91$$.ctor
01a90760  cbz       x20, #0x1a90780                                
01a90764  str       x19, [x20, #0x20]                              
01a90768  mov       x0, x20                                        
01a9076c  str       s8, [x20, #0x28]                               
01a90770  ldp       x20, x19, [sp, #0x20]                          
01a90774  ldp       x30, x21, [sp, #0x10]                          
01a90778  ldr       d8, [sp], #0x30                                
01a9077c  ret                                                      
01a90780  bl        #0x183dddc                                     