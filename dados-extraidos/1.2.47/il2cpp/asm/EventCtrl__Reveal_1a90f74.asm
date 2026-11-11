System_Collections_IEnumerator_o* EventCtrl__Reveal (EventCtrl_o* __this, System_String_o* contents, const MethodInfo* method);
// RVA 0x1a90f74 to 0x1a90fe8
01a90f74  str       x30, [sp, #-0x30]!                             
01a90f78  stp       x22, x21, [sp, #0x10]                          
01a90f7c  stp       x20, x19, [sp, #0x20]                          
01a90f80  adrp      x21, #0x3d14000                                
01a90f84  adrp      x22, #0x3a8c000                                
01a90f88  mov       x19, x1                                        
01a90f8c  ldrb      w8, [x21, #0xcd5]                              
01a90f90  ldr       x22, [x22, #0x760]                             
01a90f94  mov       x20, x0                                        
01a90f98  tbnz      w8, #0, #0x1a90fb0                             
01a90f9c  adrp      x0, #0x3a8c000                                 
01a90fa0  ldr       x0, [x0, #0x760]                               
01a90fa4  bl        #0x183db90                                     
01a90fa8  mov       w8, #1                                         
01a90fac  strb      w8, [x21, #0xcd5]                              
01a90fb0  ldr       x0, [x22]                                      
01a90fb4  bl        #0x183ddcc                                     
01a90fb8  mov       w1, wzr                                        
01a90fbc  mov       x2, xzr                                        
01a90fc0  mov       x21, x0                                        
01a90fc4  bl        #0x1ab31c0                                     // EventCtrl.<Reveal>d__98$$.ctor
01a90fc8  cbz       x21, #0x1a90fe4                                
01a90fcc  stp       x20, x19, [x21, #0x20]                         
01a90fd0  mov       x0, x21                                        
01a90fd4  ldp       x20, x19, [sp, #0x20]                          
01a90fd8  ldp       x22, x21, [sp, #0x10]                          
01a90fdc  ldr       x30, [sp], #0x30                               
01a90fe0  ret                                                      
01a90fe4  bl        #0x183dddc                                     