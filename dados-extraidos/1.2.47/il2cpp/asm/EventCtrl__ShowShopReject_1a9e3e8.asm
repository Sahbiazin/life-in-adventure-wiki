void EventCtrl__ShowShopReject (EventCtrl_o* __this, int32_t index, const MethodInfo* method);
// RVA 0x1a9e3e8 to 0x1a9e5d4
01a9e3e8  sub       sp, sp, #0x50                                  
01a9e3ec  str       x30, [sp, #0x20]                               
01a9e3f0  stp       x22, x21, [sp, #0x30]                          
01a9e3f4  stp       x20, x19, [sp, #0x40]                          
01a9e3f8  adrp      x21, #0x3d14000                                
01a9e3fc  adrp      x22, #0x3a7c000                                
01a9e400  mov       w20, w1                                        
01a9e404  ldrb      w8, [x21, #0xcf3]                              
01a9e408  ldr       x22, [x22, #0xc08]                             
01a9e40c  mov       x19, x0                                        
01a9e410  tbnz      w8, #0, #0x1a9e458                             
01a9e414  adrp      x0, #0x3a7c000                                 
01a9e418  ldr       x0, [x0, #0xc08]                               
01a9e41c  bl        #0x183db90                                     
01a9e420  adrp      x0, #0x3a8c000                                 
01a9e424  ldr       x0, [x0, #0xac8]                               
01a9e428  bl        #0x183db90                                     
01a9e42c  adrp      x0, #0x3a8c000                                 
01a9e430  ldr       x0, [x0, #0x610]                               
01a9e434  bl        #0x183db90                                     
01a9e438  adrp      x0, #0x3a7c000                                 
01a9e43c  ldr       x0, [x0, #0xc78]                               
01a9e440  bl        #0x183db90                                     
01a9e444  adrp      x0, #0x3a7b000                                 
01a9e448  ldr       x0, [x0, #0xaf0]                               
01a9e44c  bl        #0x183db90                                     
01a9e450  mov       w8, #1                                         
01a9e454  strb      w8, [x21, #0xcf3]                              
01a9e458  ldr       x8, [x22]                                      
01a9e45c  ldr       x8, [x8, #0xb8]                                
01a9e460  ldr       x9, [x8]                                       
01a9e464  cbz       x9, #0x1a9e5cc                                 
01a9e468  ldr       x8, [x19, #0x220]                              
01a9e46c  cbz       x8, #0x1a9e5cc                                 
01a9e470  ldr       x10, [x8, #0x10]                               
01a9e474  ldr       w11, [x10]                                     
01a9e478  cmp       w11, w20                                       
01a9e47c  b.ls      #0x1a9e5d0                                     
01a9e480  ldrsw     x9, [x9, #0x5cc]                               
01a9e484  ldr       x10, [x10, #0x10]                              
01a9e488  cmp       w9, w10                                        
01a9e48c  b.hs      #0x1a9e5d0                                     
01a9e490  sxtw      x11, w20                                       
01a9e494  mov       x0, x19                                        
01a9e498  madd      x9, x10, x11, x9                               
01a9e49c  add       x8, x8, x9, lsl #3                             
01a9e4a0  ldr       x1, [x8, #0x20]                                
01a9e4a4  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a9e4a8  mov       x1, x0                                         
01a9e4ac  mov       x0, x19                                        
01a9e4b0  mov       x2, xzr                                        
01a9e4b4  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a9e4b8  ldr       x8, [x22]                                      
01a9e4bc  str       x0, [x19, #0x188]                              
01a9e4c0  ldr       x8, [x8, #0xb8]                                
01a9e4c4  ldr       x8, [x8]                                       
01a9e4c8  cbz       x8, #0x1a9e5cc                                 
01a9e4cc  mov       w9, #-1                                        
01a9e4d0  mov       w4, wzr                                        
01a9e4d4  mov       w5, wzr                                        
01a9e4d8  mov       w6, wzr                                        
01a9e4dc  str       w9, [sp, #8]                                   
01a9e4e0  mov       w9, #1                                         
01a9e4e4  mov       x0, x8                                         
01a9e4e8  mov       w1, #4                                         
01a9e4ec  mov       w2, #1                                         
01a9e4f0  mov       w3, w20                                        
01a9e4f4  mov       w7, #-1                                        
01a9e4f8  str       xzr, [sp, #0x10]                               
01a9e4fc  strb      w9, [sp]                                       
01a9e500  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a9e504  mov       x0, x19                                        
01a9e508  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a9e50c  ldr       x0, [x19, #0xb8]                               
01a9e510  cbz       x0, #0x1a9e5cc                                 
01a9e514  adrp      x8, #0x3a8c000                                 
01a9e518  adrp      x20, #0x3a7c000                                
01a9e51c  adrp      x21, #0x3a8c000                                
01a9e520  ldr       x8, [x8, #0x610]                               
01a9e524  ldr       x20, [x20, #0xc78]                             
01a9e528  ldr       x21, [x21, #0xac8]                             
01a9e52c  mov       w1, wzr                                        
01a9e530  ldr       x2, [x8]                                       
01a9e534  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e538  ldr       x8, [x20]                                      
01a9e53c  mov       x20, x0                                        
01a9e540  mov       x0, x8                                         
01a9e544  bl        #0x183ddcc                                     
01a9e548  ldr       x2, [x21]                                      
01a9e54c  mov       x1, x19                                        
01a9e550  mov       x3, xzr                                        
01a9e554  mov       x21, x0                                        
01a9e558  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9e55c  ldr       x8, [x22]                                      
01a9e560  ldr       x8, [x8, #0xb8]                                
01a9e564  ldr       x9, [x8]                                       
01a9e568  cbz       x9, #0x1a9e5cc                                 
01a9e56c  ldr       x8, [x19, #0x228]                              
01a9e570  cbz       x8, #0x1a9e5cc                                 
01a9e574  ldrsw     x9, [x9, #0x5cc]                               
01a9e578  ldr       w10, [x8, #0x18]                               
01a9e57c  cmp       w9, w10                                        
01a9e580  b.hs      #0x1a9e5d0                                     
01a9e584  adrp      x10, #0x3a7b000                                
01a9e588  add       x8, x8, x9, lsl #3                             
01a9e58c  mov       x0, x19                                        
01a9e590  ldr       x10, [x10, #0xaf0]                             
01a9e594  mov       x1, x20                                        
01a9e598  mov       w2, #1                                         
01a9e59c  ldr       x4, [x8, #0x20]                                
01a9e5a0  mov       x3, x21                                        
01a9e5a4  mov       x5, xzr                                        
01a9e5a8  ldr       x7, [x10]                                      
01a9e5ac  mov       w6, wzr                                        
01a9e5b0  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9e5b4  mov       x0, x19                                        
01a9e5b8  ldp       x20, x19, [sp, #0x40]                          
01a9e5bc  ldp       x22, x21, [sp, #0x30]                          
01a9e5c0  ldr       x30, [sp, #0x20]                               
01a9e5c4  add       sp, sp, #0x50                                  
01a9e5c8  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a9e5cc  bl        #0x183dddc                                     
01a9e5d0  bl        #0x183dde4                                     