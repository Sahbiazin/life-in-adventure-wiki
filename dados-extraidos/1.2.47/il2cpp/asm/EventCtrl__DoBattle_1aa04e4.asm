void EventCtrl__DoBattle (EventCtrl_o* __this, int32_t buttonNum, float winrate, int32_t place, const MethodInfo* method);
// RVA 0x1aa04e4 to 0x1aa07fc
01aa04e4  sub       sp, sp, #0x60                                  
01aa04e8  str       d8, [sp, #0x20]                                
01aa04ec  str       x30, [sp, #0x28]                               
01aa04f0  stp       x24, x23, [sp, #0x30]                          
01aa04f4  stp       x22, x21, [sp, #0x40]                          
01aa04f8  stp       x20, x19, [sp, #0x50]                          
01aa04fc  fmov      s8, s0                                         
01aa0500  adrp      x22, #0x3d14000                                
01aa0504  mov       w21, w2                                        
01aa0508  ldrb      w8, [x22, #0xcee]                              
01aa050c  mov       w20, w1                                        
01aa0510  mov       x19, x0                                        
01aa0514  tbnz      w8, #0, #0x1aa0574                             
01aa0518  adrp      x0, #0x3a7c000                                 
01aa051c  ldr       x0, [x0, #0xfa0]                               
01aa0520  bl        #0x183db90                                     
01aa0524  adrp      x0, #0x3a7c000                                 
01aa0528  ldr       x0, [x0, #0xc08]                               
01aa052c  bl        #0x183db90                                     
01aa0530  adrp      x0, #0x3a7c000                                 
01aa0534  ldr       x0, [x0, #0xca8]                               
01aa0538  bl        #0x183db90                                     
01aa053c  adrp      x0, #0x3a7c000                                 
01aa0540  ldr       x0, [x0, #0x80]                                
01aa0544  bl        #0x183db90                                     
01aa0548  adrp      x0, #0x3a8c000                                 
01aa054c  ldr       x0, [x0, #0x698]                               
01aa0550  bl        #0x183db90                                     
01aa0554  adrp      x0, #0x3a8c000                                 
01aa0558  ldr       x0, [x0, #0x6a0]                               
01aa055c  bl        #0x183db90                                     
01aa0560  adrp      x0, #0x3a8c000                                 
01aa0564  ldr       x0, [x0, #0x6a8]                               
01aa0568  bl        #0x183db90                                     
01aa056c  mov       w8, #1                                         
01aa0570  strb      w8, [x22, #0xcee]                              
01aa0574  mov       x0, x19                                        
01aa0578  mov       x1, xzr                                        
01aa057c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01aa0580  cbz       x0, #0x1aa07f4                                 
01aa0584  mov       x1, xzr                                        
01aa0588  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01aa058c  cbz       x0, #0x1aa07f4                                 
01aa0590  adrp      x8, #0x3a7c000                                 
01aa0594  ldr       x8, [x8, #0xfa0]                               
01aa0598  ldr       x1, [x8]                                       
01aa059c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa05a0  cbz       x0, #0x1aa07f4                                 
01aa05a4  mov       w1, #1                                         
01aa05a8  mov       x2, xzr                                        
01aa05ac  mov       w22, #1                                        
01aa05b0  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01aa05b4  adrp      x23, #0x3d14000                                
01aa05b8  ldrb      w8, [x23, #0x67b]                              
01aa05bc  cbnz      w8, #0x1aa05d0                                 
01aa05c0  adrp      x0, #0x3a7c000                                 
01aa05c4  ldr       x0, [x0, #0xea0]                               
01aa05c8  bl        #0x183db90                                     
01aa05cc  strb      w22, [x23, #0x67b]                             
01aa05d0  adrp      x8, #0x3a7c000                                 
01aa05d4  ldr       x8, [x8, #0xea0]                               
01aa05d8  ldr       x8, [x8]                                       
01aa05dc  ldr       x8, [x8, #0xb8]                                
01aa05e0  ldr       x0, [x8]                                       
01aa05e4  cbz       x0, #0x1aa07f4                                 
01aa05e8  fmov      s0, s8                                         
01aa05ec  ldr       x1, [x19, #0x140]                              
01aa05f0  mov       w2, #1                                         
01aa05f4  mov       w3, w21                                        
01aa05f8  mov       x4, xzr                                        
01aa05fc  mov       x5, xzr                                        
01aa0600  mov       x6, xzr                                        
01aa0604  bl        #0x1962e94                                     // BattleCtrl$$Show
01aa0608  ldr       x8, [x19, #0x118]                              
01aa060c  cbz       x8, #0x1aa07f4                                 
01aa0610  ldrsw     x9, [x19, #0x13c]                              
01aa0614  ldr       w10, [x8, #0x18]                               
01aa0618  cmp       w9, w10                                        
01aa061c  b.hs      #0x1aa07f8                                     
01aa0620  add       x8, x8, x9, lsl #3                             
01aa0624  ldr       x0, [x8, #0x20]                                
01aa0628  cbz       x0, #0x1aa07f4                                 
01aa062c  adrp      x23, #0x3a8c000                                
01aa0630  ldr       x23, [x23, #0x6a8]                             
01aa0634  ldr       w1, [x19, #0xe0]                               
01aa0638  ldr       x2, [x23]                                      
01aa063c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0640  cbz       x0, #0x1aa07f4                                 
01aa0644  ldr       x0, [x0, #0x38]                                
01aa0648  cbz       x0, #0x1aa07f4                                 
01aa064c  adrp      x24, #0x3a8c000                                
01aa0650  mov       w1, w20                                        
01aa0654  ldr       x24, [x24, #0x698]                             
01aa0658  ldr       x2, [x24]                                      
01aa065c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0660  cbz       x0, #0x1aa07f4                                 
01aa0664  ldr       x0, [x0, #0x20]                                
01aa0668  cbz       x0, #0x1aa07f4                                 
01aa066c  adrp      x8, #0x3a8c000                                 
01aa0670  ldr       x8, [x8, #0x6a0]                               
01aa0674  ldr       w1, [x19, #0xe4]                               
01aa0678  ldr       x2, [x8]                                       
01aa067c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0680  cbz       x0, #0x1aa07f4                                 
01aa0684  adrp      x21, #0x3a7c000                                
01aa0688  ldr       x21, [x21, #0xca8]                             
01aa068c  ldr       w9, [x0, #0x18]                                
01aa0690  ldr       x8, [x21]                                      
01aa0694  str       w9, [x19, #0xe0]                               
01aa0698  ldr       x8, [x8, #0xb8]                                
01aa069c  ldr       x0, [x8]                                       
01aa06a0  cbz       x0, #0x1aa07f4                                 
01aa06a4  adrp      x22, #0x3a7c000                                
01aa06a8  mov       x1, xzr                                        
01aa06ac  ldr       x22, [x22, #0x80]                              
01aa06b0  bl        #0x195df38                                     // HardModeMgr$$SetBattleWinStreak
01aa06b4  ldr       x8, [x21]                                      
01aa06b8  ldr       x0, [x22]                                      
01aa06bc  mov       w1, #1                                         
01aa06c0  ldr       x8, [x8, #0xb8]                                
01aa06c4  ldr       x20, [x8]                                      
01aa06c8  bl        #0x183dc20                                     
01aa06cc  cbz       x20, #0x1aa07f4                                
01aa06d0  mov       x2, x0                                         
01aa06d4  mov       x0, x20                                        
01aa06d8  mov       w1, #0x18                                      
01aa06dc  mov       x3, xzr                                        
01aa06e0  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01aa06e4  ldr       x8, [x21]                                      
01aa06e8  ldr       x0, [x22]                                      
01aa06ec  mov       w1, #1                                         
01aa06f0  ldr       x8, [x8, #0xb8]                                
01aa06f4  ldr       x20, [x8]                                      
01aa06f8  bl        #0x183dc20                                     
01aa06fc  cbz       x0, #0x1aa07f4                                 
01aa0700  ldr       w8, [x0, #0x18]                                
01aa0704  mov       x2, x0                                         
01aa0708  cbz       w8, #0x1aa07f8                                 
01aa070c  mov       w8, #1                                         
01aa0710  str       w8, [x2, #0x20]                                
01aa0714  cbz       x20, #0x1aa07f4                                
01aa0718  mov       x0, x20                                        
01aa071c  mov       w1, #0x1b                                      
01aa0720  mov       x3, xzr                                        
01aa0724  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01aa0728  ldr       x8, [x19, #0x118]                              
01aa072c  cbz       x8, #0x1aa07f4                                 
01aa0730  ldrsw     x20, [x19, #0x13c]                             
01aa0734  ldr       w9, [x8, #0x18]                                
01aa0738  cmp       w20, w9                                        
01aa073c  b.hs      #0x1aa07f8                                     
01aa0740  add       x8, x8, x20, lsl #3                            
01aa0744  ldr       x0, [x8, #0x20]                                
01aa0748  cbz       x0, #0x1aa07f4                                 
01aa074c  adrp      x8, #0x3a7c000                                 
01aa0750  ldr       x8, [x8, #0xc08]                               
01aa0754  ldr       w21, [x19, #0xe0]                              
01aa0758  ldr       x2, [x23]                                      
01aa075c  ldr       x8, [x8]                                       
01aa0760  mov       w1, w21                                        
01aa0764  ldr       x8, [x8, #0xb8]                                
01aa0768  ldr       x22, [x8]                                      
01aa076c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0770  cbz       x0, #0x1aa07f4                                 
01aa0774  ldr       x0, [x0, #0x38]                                
01aa0778  cbz       x0, #0x1aa07f4                                 
01aa077c  ldr       x2, [x24]                                      
01aa0780  mov       w1, #1                                         
01aa0784  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0788  cbz       x0, #0x1aa07f4                                 
01aa078c  ldr       x1, [x0, #0x20]                                
01aa0790  mov       x0, x19                                        
01aa0794  bl        #0x1a992c0                                     // EventCtrl$$GetResultIndex
01aa0798  ldr       x8, [x19, #0x140]                              
01aa079c  cbz       x8, #0x1aa07f4                                 
01aa07a0  cbz       x22, #0x1aa07f4                                
01aa07a4  ldr       w9, [x8, #0xb8]                                
01aa07a8  ldr       w7, [x8, #0x10]                                
01aa07ac  mov       w5, w0                                         
01aa07b0  mov       w6, wzr                                        
01aa07b4  mov       x0, x22                                        
01aa07b8  mov       w1, #3                                         
01aa07bc  mov       w2, w20                                        
01aa07c0  mov       w3, w21                                        
01aa07c4  mov       w4, #1                                         
01aa07c8  str       xzr, [sp, #0x10]                               
01aa07cc  str       w9, [sp, #8]                                   
01aa07d0  strb      wzr, [sp]                                      
01aa07d4  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01aa07d8  ldp       x20, x19, [sp, #0x50]                          
01aa07dc  ldr       x30, [sp, #0x28]                               
01aa07e0  ldp       x22, x21, [sp, #0x40]                          
01aa07e4  ldr       d8, [sp, #0x20]                                
01aa07e8  ldp       x24, x23, [sp, #0x30]                          
01aa07ec  add       sp, sp, #0x60                                  
01aa07f0  ret                                                      
01aa07f4  bl        #0x183dddc                                     
01aa07f8  bl        #0x183dde4                                     