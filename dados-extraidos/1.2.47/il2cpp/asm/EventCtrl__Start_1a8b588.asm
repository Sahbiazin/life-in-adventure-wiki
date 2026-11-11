void EventCtrl__Start (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8b588 to 0x1a8b644
01a8b588  stp       x30, x21, [sp, #-0x20]!                        
01a8b58c  stp       x20, x19, [sp, #0x10]                          
01a8b590  adrp      x20, #0x3d14000                                
01a8b594  adrp      x21, #0x3a7c000                                
01a8b598  mov       x19, x0                                        
01a8b59c  ldrb      w8, [x20, #0xcc5]                              
01a8b5a0  ldr       x21, [x21, #0xc08]                             
01a8b5a4  tbnz      w8, #0, #0x1a8b5c8                             
01a8b5a8  adrp      x0, #0x3a7e000                                 
01a8b5ac  ldr       x0, [x0, #0xd98]                               
01a8b5b0  bl        #0x183db90                                     
01a8b5b4  adrp      x0, #0x3a7c000                                 
01a8b5b8  ldr       x0, [x0, #0xc08]                               
01a8b5bc  bl        #0x183db90                                     
01a8b5c0  mov       w8, #1                                         
01a8b5c4  strb      w8, [x20, #0xcc5]                              
01a8b5c8  ldr       x8, [x21]                                      
01a8b5cc  ldr       x8, [x8, #0xb8]                                
01a8b5d0  ldr       x0, [x8]                                       
01a8b5d4  cbz       x0, #0x1a8b640                                 
01a8b5d8  adrp      x8, #0x3a7e000                                 
01a8b5dc  ldr       x8, [x8, #0xd98]                               
01a8b5e0  ldr       x1, [x8]                                       
01a8b5e4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b5e8  cbz       x0, #0x1a8b640                                 
01a8b5ec  mov       x1, xzr                                        
01a8b5f0  bl        #0x1ab527c                                     // EventDataBase$$GetEventDataList
01a8b5f4  str       x0, [x19, #0x118]                              
01a8b5f8  mov       x0, xzr                                        
01a8b5fc  bl        #0x35a448c                                     // UnityEngine.Screen$$get_height
01a8b600  scvtf     s0, w0                                         
01a8b604  adrp      x8, #0xa13000                                  
01a8b608  mov       x0, x19                                        
01a8b60c  ldr       s1, [x8, #0xd4]                                
01a8b610  fmul      s0, s0, s1                                     
01a8b614  str       s0, [x19, #0x1d8]                              
01a8b618  bl        #0x1a8b644                                     // EventCtrl$$ResetText
01a8b61c  bl        #0x1a8bb4c                                     // EventCtrl$$IsArabicLanguage
01a8b620  tbz       w0, #0, #0x1a8b634                             
01a8b624  mov       x0, x19                                        
01a8b628  ldp       x20, x19, [sp, #0x10]                          
01a8b62c  ldp       x30, x21, [sp], #0x20                          
01a8b630  b         #0x1a8bba8                                     // EventCtrl$$SettingChoicePanelForRTL
01a8b634  ldp       x20, x19, [sp, #0x10]                          
01a8b638  ldp       x30, x21, [sp], #0x20                          
01a8b63c  ret                                                      
01a8b640  bl        #0x183dddc                                     