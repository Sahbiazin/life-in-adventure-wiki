System_Collections_IEnumerator_o* EventCtrl__CheckSkip (EventCtrl_o* __this, float time, const MethodInfo* method);
// RVA 0x1a90694 to 0x1a9070c
01a90694  str       d8, [sp, #-0x30]!                              
01a90698  stp       x30, x21, [sp, #0x10]                          
01a9069c  stp       x20, x19, [sp, #0x20]                          
01a906a0  fmov      s8, s0                                         
01a906a4  adrp      x20, #0x3d14000                                
01a906a8  adrp      x21, #0x3a8c000                                
01a906ac  ldrb      w8, [x20, #0xcd0]                              
01a906b0  ldr       x21, [x21, #0x748]                             
01a906b4  mov       x19, x0                                        
01a906b8  tbnz      w8, #0, #0x1a906d0                             
01a906bc  adrp      x0, #0x3a8c000                                 
01a906c0  ldr       x0, [x0, #0x748]                               
01a906c4  bl        #0x183db90                                     
01a906c8  mov       w8, #1                                         
01a906cc  strb      w8, [x20, #0xcd0]                              
01a906d0  ldr       x0, [x21]                                      
01a906d4  bl        #0x183ddcc                                     
01a906d8  mov       w1, wzr                                        
01a906dc  mov       x2, xzr                                        
01a906e0  mov       x20, x0                                        
01a906e4  bl        #0x1ab2e70                                     // EventCtrl.<CheckSkip>d__90$$.ctor
01a906e8  cbz       x20, #0x1a90708                                
01a906ec  str       x19, [x20, #0x28]                              
01a906f0  mov       x0, x20                                        
01a906f4  str       s8, [x20, #0x20]                               
01a906f8  ldp       x20, x19, [sp, #0x20]                          
01a906fc  ldp       x30, x21, [sp, #0x10]                          
01a90700  ldr       d8, [sp], #0x30                                
01a90704  ret                                                      
01a90708  bl        #0x183dddc                                     