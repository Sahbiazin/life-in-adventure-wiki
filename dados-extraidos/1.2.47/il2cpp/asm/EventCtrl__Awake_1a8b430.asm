void EventCtrl__Awake (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8b430 to 0x1a8b588
01a8b430  stp       x30, x23, [sp, #-0x30]!                        
01a8b434  stp       x22, x21, [sp, #0x10]                          
01a8b438  stp       x20, x19, [sp, #0x20]                          
01a8b43c  adrp      x20, #0x3d14000                                
01a8b440  mov       x19, x0                                        
01a8b444  ldrb      w8, [x20, #0xcc4]                              
01a8b448  tbnz      w8, #0, #0x1a8b460                             
01a8b44c  adrp      x0, #0x3a7b000                                 
01a8b450  ldr       x0, [x0, #0xc10]                               
01a8b454  bl        #0x183db90                                     
01a8b458  mov       w8, #1                                         
01a8b45c  strb      w8, [x20, #0xcc4]                              
01a8b460  adrp      x23, #0x3d14000                                
01a8b464  adrp      x21, #0x3a7b000                                
01a8b468  ldrb      w8, [x23, #0x67e]                              
01a8b46c  ldr       x21, [x21, #0xc10]                             
01a8b470  cbnz      w8, #0x1a8b488                                 
01a8b474  adrp      x0, #0x3a7c000                                 
01a8b478  ldr       x0, [x0, #0xfd8]                               
01a8b47c  bl        #0x183db90                                     
01a8b480  mov       w8, #1                                         
01a8b484  strb      w8, [x23, #0x67e]                              
01a8b488  adrp      x22, #0x3a7c000                                
01a8b48c  ldr       x22, [x22, #0xfd8]                             
01a8b490  ldr       x0, [x21]                                      
01a8b494  ldr       x8, [x22]                                      
01a8b498  ldr       w9, [x0, #0xe4]                                
01a8b49c  ldr       x8, [x8, #0xb8]                                
01a8b4a0  ldr       x20, [x8]                                      
01a8b4a4  cbnz      w9, #0x1a8b4ac                                 
01a8b4a8  bl        #0x183dcb0                                     
01a8b4ac  mov       x0, x20                                        
01a8b4b0  mov       x1, xzr                                        
01a8b4b4  mov       x2, xzr                                        
01a8b4b8  bl        #0x35c9cb8                                     // UnityEngine.Object$$op_Equality
01a8b4bc  tbz       w0, #0, #0x1a8b4f0                             
01a8b4c0  adrp      x20, #0x3d14000                                
01a8b4c4  ldrb      w8, [x20, #0xd04]                              
01a8b4c8  cbnz      w8, #0x1a8b4e0                                 
01a8b4cc  adrp      x0, #0x3a7c000                                 
01a8b4d0  ldr       x0, [x0, #0xfd8]                               
01a8b4d4  bl        #0x183db90                                     
01a8b4d8  mov       w8, #1                                         
01a8b4dc  strb      w8, [x20, #0xd04]                              
01a8b4e0  ldr       x8, [x22]                                      
01a8b4e4  ldr       x8, [x8, #0xb8]                                
01a8b4e8  str       x19, [x8]                                      
01a8b4ec  b         #0x1a8b578                                     
01a8b4f0  ldrb      w8, [x23, #0x67e]                              
01a8b4f4  cbnz      w8, #0x1a8b50c                                 
01a8b4f8  adrp      x0, #0x3a7c000                                 
01a8b4fc  ldr       x0, [x0, #0xfd8]                               
01a8b500  bl        #0x183db90                                     
01a8b504  mov       w8, #1                                         
01a8b508  strb      w8, [x23, #0x67e]                              
01a8b50c  ldr       x8, [x22]                                      
01a8b510  ldr       x0, [x21]                                      
01a8b514  ldr       x8, [x8, #0xb8]                                
01a8b518  ldr       w9, [x0, #0xe4]                                
01a8b51c  ldr       x20, [x8]                                      
01a8b520  cbnz      w9, #0x1a8b528                                 
01a8b524  bl        #0x183dcb0                                     
01a8b528  mov       x0, x20                                        
01a8b52c  mov       x1, x19                                        
01a8b530  mov       x2, xzr                                        
01a8b534  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a8b538  tbz       w0, #0, #0x1a8b578                             
01a8b53c  mov       x0, x19                                        
01a8b540  mov       x1, xzr                                        
01a8b544  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8b548  ldr       x8, [x21]                                      
01a8b54c  mov       x19, x0                                        
01a8b550  ldr       w9, [x8, #0xe4]                                
01a8b554  cbnz      w9, #0x1a8b560                                 
01a8b558  mov       x0, x8                                         
01a8b55c  bl        #0x183dcb0                                     
01a8b560  mov       x0, x19                                        
01a8b564  ldp       x20, x19, [sp, #0x20]                          
01a8b568  ldp       x22, x21, [sp, #0x10]                          
01a8b56c  mov       x1, xzr                                        
01a8b570  ldp       x30, x23, [sp], #0x30                          
01a8b574  b         #0x35ce474                                     // UnityEngine.Object$$Destroy
01a8b578  ldp       x20, x19, [sp, #0x20]                          
01a8b57c  ldp       x22, x21, [sp, #0x10]                          
01a8b580  ldp       x30, x23, [sp], #0x30                          
01a8b584  ret                                                      