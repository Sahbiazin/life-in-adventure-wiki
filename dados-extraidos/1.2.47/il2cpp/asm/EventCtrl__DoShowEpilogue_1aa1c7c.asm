System_Collections_IEnumerator_o* EventCtrl__DoShowEpilogue (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aa1c7c to 0x1aa1ce4
01aa1c7c  stp       x30, x21, [sp, #-0x20]!                        
01aa1c80  stp       x20, x19, [sp, #0x10]                          
01aa1c84  adrp      x20, #0x3d14000                                
01aa1c88  adrp      x21, #0x3a8c000                                
01aa1c8c  mov       x19, x0                                        
01aa1c90  ldrb      w8, [x20, #0xcf7]                              
01aa1c94  ldr       x21, [x21, #0xb50]                             
01aa1c98  tbnz      w8, #0, #0x1aa1cb0                             
01aa1c9c  adrp      x0, #0x3a8c000                                 
01aa1ca0  ldr       x0, [x0, #0xb50]                               
01aa1ca4  bl        #0x183db90                                     
01aa1ca8  mov       w8, #1                                         
01aa1cac  strb      w8, [x20, #0xcf7]                              
01aa1cb0  ldr       x0, [x21]                                      
01aa1cb4  bl        #0x183ddcc                                     
01aa1cb8  mov       w1, wzr                                        
01aa1cbc  mov       x2, xzr                                        
01aa1cc0  mov       x20, x0                                        
01aa1cc4  bl        #0x1ab2f94                                     // EventCtrl.<DoShowEpilogue>d__144$$.ctor
01aa1cc8  cbz       x20, #0x1aa1ce0                                
01aa1ccc  mov       x0, x20                                        
01aa1cd0  str       x19, [x20, #0x20]                              
01aa1cd4  ldp       x20, x19, [sp, #0x10]                          
01aa1cd8  ldp       x30, x21, [sp], #0x20                          
01aa1cdc  ret                                                      
01aa1ce0  bl        #0x183dddc                                     