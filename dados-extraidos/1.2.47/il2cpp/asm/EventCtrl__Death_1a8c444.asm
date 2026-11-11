void EventCtrl__Death (EventCtrl_o* __this, bool isLoad, const MethodInfo* method);
// RVA 0x1a8c444 to 0x1a8c9e0
01a8c444  sub       sp, sp, #0xd0                                  
01a8c448  str       d8, [sp, #0x90]                                
01a8c44c  str       x30, [sp, #0x98]                               
01a8c450  stp       x24, x23, [sp, #0xa0]                          
01a8c454  stp       x22, x21, [sp, #0xb0]                          
01a8c458  stp       x20, x19, [sp, #0xc0]                          
01a8c45c  adrp      x21, #0x3d14000                                
01a8c460  mov       w20, w1                                        
01a8c464  mov       x19, x0                                        
01a8c468  ldrb      w8, [x21, #0xcc9]                              
01a8c46c  tbnz      w8, #0, #0x1a8c520                             
01a8c470  adrp      x0, #0x3a7c000                                 
01a8c474  ldr       x0, [x0, #0xc08]                               
01a8c478  bl        #0x183db90                                     
01a8c47c  adrp      x0, #0x3a8c000                                 
01a8c480  ldr       x0, [x0, #0x638]                               
01a8c484  bl        #0x183db90                                     
01a8c488  adrp      x0, #0x3a7c000                                 
01a8c48c  ldr       x0, [x0, #0xc10]                               
01a8c490  bl        #0x183db90                                     
01a8c494  adrp      x0, #0x3a7c000                                 
01a8c498  ldr       x0, [x0, #0xff0]                               
01a8c49c  bl        #0x183db90                                     
01a8c4a0  adrp      x0, #0x3a8c000                                 
01a8c4a4  ldr       x0, [x0, #0x640]                               
01a8c4a8  bl        #0x183db90                                     
01a8c4ac  adrp      x0, #0x3a7d000                                 
01a8c4b0  ldr       x0, [x0, #0x768]                               
01a8c4b4  bl        #0x183db90                                     
01a8c4b8  adrp      x0, #0x3a8c000                                 
01a8c4bc  ldr       x0, [x0, #0x648]                               
01a8c4c0  bl        #0x183db90                                     
01a8c4c4  adrp      x0, #0x3a8c000                                 
01a8c4c8  ldr       x0, [x0, #0x650]                               
01a8c4cc  bl        #0x183db90                                     
01a8c4d0  adrp      x0, #0x3a8c000                                 
01a8c4d4  ldr       x0, [x0, #0x658]                               
01a8c4d8  bl        #0x183db90                                     
01a8c4dc  adrp      x0, #0x3a8c000                                 
01a8c4e0  ldr       x0, [x0, #0x660]                               
01a8c4e4  bl        #0x183db90                                     
01a8c4e8  adrp      x0, #0x3a8c000                                 
01a8c4ec  ldr       x0, [x0, #0x668]                               
01a8c4f0  bl        #0x183db90                                     
01a8c4f4  adrp      x0, #0x3a8c000                                 
01a8c4f8  ldr       x0, [x0, #0x670]                               
01a8c4fc  bl        #0x183db90                                     
01a8c500  adrp      x0, #0x3a8c000                                 
01a8c504  ldr       x0, [x0, #0x678]                               
01a8c508  bl        #0x183db90                                     
01a8c50c  adrp      x0, #0x3a8c000                                 
01a8c510  ldr       x0, [x0, #0x680]                               
01a8c514  bl        #0x183db90                                     
01a8c518  mov       w8, #1                                         
01a8c51c  strb      w8, [x21, #0xcc9]                              
01a8c520  adrp      x23, #0x3a7c000                                
01a8c524  mov       x0, x19                                        
01a8c528  mov       w1, #1                                         
01a8c52c  ldr       x23, [x23, #0xc08]                             
01a8c530  mov       w2, wzr                                        
01a8c534  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a8c538  mov       x0, x19                                        
01a8c53c  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01a8c540  tbnz      w20, #0, #0x1a8c740                            
01a8c544  adrp      x8, #0x3a8c000                                 
01a8c548  adrp      x21, #0x3a8c000                                
01a8c54c  mov       w1, #3                                         
01a8c550  ldr       x8, [x8, #0x648]                               
01a8c554  ldr       x21, [x21, #0x638]                             
01a8c558  ldr       x0, [x8]                                       
01a8c55c  bl        #0x183dc20                                     
01a8c560  ldr       x8, [x21]                                      
01a8c564  mov       x20, x0                                        
01a8c568  ldr       w9, [x8, #0xe4]                                
01a8c56c  cbnz      w9, #0x1a8c578                                 
01a8c570  mov       x0, x8                                         
01a8c574  bl        #0x183dcb0                                     
01a8c578  ldr       x8, [x23]                                      
01a8c57c  ldr       x8, [x8, #0xb8]                                
01a8c580  ldr       x8, [x8]                                       
01a8c584  cbz       x8, #0x1a8c9cc                                 
01a8c588  ldr       x9, [x21]                                      
01a8c58c  ldur      q0, [x8, #0xf8]                                
01a8c590  add       x0, sp, #0x70                                  
01a8c594  ldr       w8, [x8, #0x108]                               
01a8c598  mov       x1, xzr                                        
01a8c59c  ldr       x9, [x9, #0xb8]                                
01a8c5a0  str       q0, [sp, #0x70]                                
01a8c5a4  str       w8, [sp, #0x80]                                
01a8c5a8  ldr       x22, [x9, #0x258]                              
01a8c5ac  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8c5b0  adrp      x24, #0x3a8c000                                
01a8c5b4  mov       w21, w0                                        
01a8c5b8  ldr       x24, [x24, #0x650]                             
01a8c5bc  ldr       x8, [x24]                                      
01a8c5c0  mov       x0, x8                                         
01a8c5c4  bl        #0x183ddcc                                     
01a8c5c8  sub       w8, w21, #1                                    
01a8c5cc  mov       x1, x22                                        
01a8c5d0  mov       x3, xzr                                        
01a8c5d4  sxtw      x2, w8                                         
01a8c5d8  mov       x21, x0                                        
01a8c5dc  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a8c5e0  cbz       x20, #0x1a8c9cc                                
01a8c5e4  cbz       x21, #0x1a8c5fc                                
01a8c5e8  ldr       x8, [x20]                                      
01a8c5ec  mov       x0, x21                                        
01a8c5f0  ldr       x1, [x8, #0x40]                                
01a8c5f4  bl        #0x183dcb4                                     
01a8c5f8  cbz       x0, #0x1a8c9d4                                 
01a8c5fc  ldr       w8, [x20, #0x18]                               
01a8c600  cbz       w8, #0x1a8c9d0                                 
01a8c604  str       x21, [x20, #0x20]                              
01a8c608  ldr       x8, [x23]                                      
01a8c60c  ldr       x8, [x8, #0xb8]                                
01a8c610  ldr       x8, [x8]                                       
01a8c614  cbz       x8, #0x1a8c9cc                                 
01a8c618  ldur      q0, [x8, #0xf8]                                
01a8c61c  ldr       w8, [x8, #0x108]                               
01a8c620  add       x0, sp, #0x50                                  
01a8c624  mov       x1, xzr                                        
01a8c628  str       q0, [sp, #0x50]                                
01a8c62c  str       w8, [sp, #0x60]                                
01a8c630  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8c634  ldr       x8, [x24]                                      
01a8c638  mov       w21, w0                                        
01a8c63c  mov       x0, x8                                         
01a8c640  bl        #0x183ddcc                                     
01a8c644  adrp      x8, #0x3a8c000                                 
01a8c648  sub       w9, w21, #1                                    
01a8c64c  mov       x3, xzr                                        
01a8c650  ldr       x8, [x8, #0x678]                               
01a8c654  sxtw      x2, w9                                         
01a8c658  mov       x21, x0                                        
01a8c65c  ldr       x1, [x8]                                       
01a8c660  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a8c664  cbz       x21, #0x1a8c67c                                
01a8c668  ldr       x8, [x20]                                      
01a8c66c  mov       x0, x21                                        
01a8c670  ldr       x1, [x8, #0x40]                                
01a8c674  bl        #0x183dcb4                                     
01a8c678  cbz       x0, #0x1a8c9d4                                 
01a8c67c  ldr       w8, [x20, #0x18]                               
01a8c680  tst       w8, #0xfffffffe                                
01a8c684  b.eq      #0x1a8c9d0                                     
01a8c688  str       x21, [x20, #0x28]                              
01a8c68c  ldr       x8, [x23]                                      
01a8c690  ldr       x8, [x8, #0xb8]                                
01a8c694  ldr       x8, [x8]                                       
01a8c698  cbz       x8, #0x1a8c9cc                                 
01a8c69c  ldr       x0, [x8, #0x20]                                
01a8c6a0  cbz       x0, #0x1a8c9cc                                 
01a8c6a4  adrp      x8, #0x3a7d000                                 
01a8c6a8  mov       w1, #2                                         
01a8c6ac  ldr       x8, [x8, #0x768]                               
01a8c6b0  ldr       x2, [x8]                                       
01a8c6b4  add       x8, sp, #0x38                                  
01a8c6b8  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01a8c6bc  ldur      q0, [sp, #0x38]                                
01a8c6c0  ldr       x8, [sp, #0x48]                                
01a8c6c4  add       x0, sp, #0x20                                  
01a8c6c8  mov       x1, xzr                                        
01a8c6cc  str       q0, [sp, #0x20]                                
01a8c6d0  str       x8, [sp, #0x30]                                
01a8c6d4  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01a8c6d8  ldr       x0, [x24]                                      
01a8c6dc  fmov      s8, s0                                         
01a8c6e0  bl        #0x183ddcc                                     
01a8c6e4  adrp      x8, #0x3a8c000                                 
01a8c6e8  fcvt      d0, s8                                         
01a8c6ec  mov       x2, xzr                                        
01a8c6f0  ldr       x8, [x8, #0x680]                               
01a8c6f4  mov       x21, x0                                        
01a8c6f8  ldr       x1, [x8]                                       
01a8c6fc  bl        #0x1b34de0                                     // Firebase.Analytics.Parameter$$.ctor
01a8c700  cbz       x21, #0x1a8c718                                
01a8c704  ldr       x8, [x20]                                      
01a8c708  mov       x0, x21                                        
01a8c70c  ldr       x1, [x8, #0x40]                                
01a8c710  bl        #0x183dcb4                                     
01a8c714  cbz       x0, #0x1a8c9d4                                 
01a8c718  ldr       w8, [x20, #0x18]                               
01a8c71c  cmp       w8, #2                                         
01a8c720  b.ls      #0x1a8c9d0                                     
01a8c724  adrp      x8, #0x3a8c000                                 
01a8c728  mov       x1, x20                                        
01a8c72c  mov       x2, xzr                                        
01a8c730  ldr       x8, [x8, #0x670]                               
01a8c734  str       x21, [x20, #0x30]                              
01a8c738  ldr       x0, [x8]                                       
01a8c73c  bl        #0x1b32abc                                     // Firebase.Analytics.FirebaseAnalytics$$LogEvent
01a8c740  ldr       x8, [x23]                                      
01a8c744  ldr       x8, [x8, #0xb8]                                
01a8c748  ldr       x0, [x8]                                       
01a8c74c  cbz       x0, #0x1a8c9cc                                 
01a8c750  mov       w1, wzr                                        
01a8c754  mov       w2, #1                                         
01a8c758  mov       x3, xzr                                        
01a8c75c  bl        #0x1af3728                                     // DataMgr$$AddAndReportAchievement
01a8c760  ldr       x8, [x23]                                      
01a8c764  ldr       x8, [x8, #0xb8]                                
01a8c768  ldr       x8, [x8]                                       
01a8c76c  cbz       x8, #0x1a8c9cc                                 
01a8c770  adrp      x24, #0x3a8c000                                
01a8c774  ldr       x24, [x24, #0x668]                             
01a8c778  ldr       x20, [x8, #0x138]                              
01a8c77c  ldr       x0, [x24]                                      
01a8c780  ldr       w9, [x0, #0xe4]                                
01a8c784  cbnz      w9, #0x1a8c790                                 
01a8c788  bl        #0x183dcb0                                     
01a8c78c  ldr       x0, [x24]                                      
01a8c790  ldr       x8, [x0, #0xb8]                                
01a8c794  ldr       x21, [x8, #8]                                  
01a8c798  cbnz      x21, #0x1a8c7ec                                
01a8c79c  ldr       w9, [x0, #0xe4]                                
01a8c7a0  cbnz      w9, #0x1a8c7b0                                 
01a8c7a4  bl        #0x183dcb0                                     
01a8c7a8  ldr       x8, [x24]                                      
01a8c7ac  ldr       x8, [x8, #0xb8]                                
01a8c7b0  adrp      x9, #0x3a8c000                                 
01a8c7b4  ldr       x9, [x9, #0x658]                               
01a8c7b8  ldr       x22, [x8]                                      
01a8c7bc  ldr       x0, [x9]                                       
01a8c7c0  bl        #0x183ddcc                                     
01a8c7c4  adrp      x8, #0x3a8c000                                 
01a8c7c8  mov       x1, x22                                        
01a8c7cc  mov       x3, xzr                                        
01a8c7d0  ldr       x8, [x8, #0x660]                               
01a8c7d4  mov       x21, x0                                        
01a8c7d8  ldr       x2, [x8]                                       
01a8c7dc  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a8c7e0  ldr       x8, [x24]                                      
01a8c7e4  ldr       x8, [x8, #0xb8]                                
01a8c7e8  str       x21, [x8, #8]                                  
01a8c7ec  cbz       x20, #0x1a8c9cc                                
01a8c7f0  adrp      x8, #0x3a8c000                                 
01a8c7f4  mov       x0, x20                                        
01a8c7f8  mov       x1, x21                                        
01a8c7fc  ldr       x8, [x8, #0x640]                               
01a8c800  ldr       x2, [x8]                                       
01a8c804  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a8c808  tbz       w0, #0, #0x1a8c870                             
01a8c80c  ldr       x8, [x23]                                      
01a8c810  ldr       x8, [x8, #0xb8]                                
01a8c814  ldr       x8, [x8]                                       
01a8c818  cbz       x8, #0x1a8c9cc                                 
01a8c81c  ldr       x20, [x8, #0x170]                              
01a8c820  bl        #0x1a8cbc8                                     // EventCtrl$$GetDeathMainEp
01a8c824  cbz       x20, #0x1a8c9cc                                
01a8c828  adrp      x9, #0x3a7c000                                 
01a8c82c  ldr       x9, [x9, #0xc10]                               
01a8c830  ldr       w10, [x20, #0x1c]                              
01a8c834  ldr       x8, [x20, #0x10]                               
01a8c838  ldr       x9, [x9]                                       
01a8c83c  add       w10, w10, #1                                   
01a8c840  str       w10, [x20, #0x1c]                              
01a8c844  cbz       x8, #0x1a8c9cc                                 
01a8c848  ldrsw     x10, [x20, #0x18]                              
01a8c84c  ldr       w11, [x8, #0x18]                               
01a8c850  mov       w1, w0                                         
01a8c854  cmp       w10, w11                                       
01a8c858  b.hs      #0x1a8c8ec                                     
01a8c85c  add       x8, x8, x10, lsl #2                            
01a8c860  add       w9, w10, #1                                    
01a8c864  str       w9, [x20, #0x18]                               
01a8c868  str       w1, [x8, #0x20]                                
01a8c86c  b         #0x1a8c900                                     
01a8c870  ldr       x0, [x19, #0x150]                              
01a8c874  cbz       x0, #0x1a8c9cc                                 
01a8c878  mov       w1, wzr                                        
01a8c87c  mov       x2, xzr                                        
01a8c880  bl        #0x19c1564                                     // Shop$$Hide
01a8c884  mov       x0, x19                                        
01a8c888  bl        #0x1a8c080                                     // EventCtrl$$ResetEvent
01a8c88c  ldr       x8, [x23]                                      
01a8c890  ldr       x8, [x8, #0xb8]                                
01a8c894  ldr       x0, [x8]                                       
01a8c898  cbz       x0, #0x1a8c9cc                                 
01a8c89c  mov       x1, xzr                                        
01a8c8a0  bl        #0x1af8618                                     // DataMgr$$ResetGame
01a8c8a4  adrp      x19, #0x3d14000                                
01a8c8a8  ldrb      w8, [x19, #0x70e]                              
01a8c8ac  cbnz      w8, #0x1a8c8c4                                 
01a8c8b0  adrp      x0, #0x3a7d000                                 
01a8c8b4  ldr       x0, [x0, #0x438]                               
01a8c8b8  bl        #0x183db90                                     
01a8c8bc  mov       w8, #1                                         
01a8c8c0  strb      w8, [x19, #0x70e]                              
01a8c8c4  adrp      x8, #0x3a7d000                                 
01a8c8c8  ldr       x8, [x8, #0x438]                               
01a8c8cc  ldr       x8, [x8]                                       
01a8c8d0  ldr       x8, [x8, #0xb8]                                
01a8c8d4  ldr       x0, [x8]                                       
01a8c8d8  cbz       x0, #0x1a8c9cc                                 
01a8c8dc  mov       w1, #1                                         
01a8c8e0  mov       x2, xzr                                        
01a8c8e4  bl        #0x19c56a0                                     // StatusCtrl$$UpdateDisplay
01a8c8e8  b         #0x1a8c9b0                                     
01a8c8ec  ldr       x8, [x9, #0x20]                                
01a8c8f0  mov       x0, x20                                        
01a8c8f4  ldr       x8, [x8, #0xc0]                                
01a8c8f8  ldr       x2, [x8, #0x70]                                
01a8c8fc  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a8c900  ldr       x8, [x23]                                      
01a8c904  ldr       x8, [x8, #0xb8]                                
01a8c908  ldr       x0, [x8]                                       
01a8c90c  cbz       x0, #0x1a8c9cc                                 
01a8c910  ldr       x8, [x0, #0x178]                               
01a8c914  cbz       x8, #0x1a8c9cc                                 
01a8c918  ldr       w9, [x8, #0x1c]                                
01a8c91c  mov       w2, wzr                                        
01a8c920  mov       w3, wzr                                        
01a8c924  mov       w4, wzr                                        
01a8c928  mov       w5, wzr                                        
01a8c92c  mov       w6, wzr                                        
01a8c930  add       w9, w9, #1                                     
01a8c934  mov       w1, #5                                         
01a8c938  mov       w7, #-1                                        
01a8c93c  stp       wzr, w9, [x8, #0x18]                           
01a8c940  mov       w8, #-1                                        
01a8c944  str       w8, [sp, #8]                                   
01a8c948  mov       w8, #1                                         
01a8c94c  str       xzr, [sp, #0x10]                               
01a8c950  strb      w8, [sp]                                       
01a8c954  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a8c958  ldrb      w8, [x19, #0x116]                              
01a8c95c  cbz       w8, #0x1a8c9a4                                 
01a8c960  adrp      x19, #0x3d14000                                
01a8c964  ldrb      w8, [x19, #0x780]                              
01a8c968  cbnz      w8, #0x1a8c980                                 
01a8c96c  adrp      x0, #0x3a7d000                                 
01a8c970  ldr       x0, [x0, #0xbd8]                               
01a8c974  bl        #0x183db90                                     
01a8c978  mov       w8, #1                                         
01a8c97c  strb      w8, [x19, #0x780]                              
01a8c980  adrp      x8, #0x3a7d000                                 
01a8c984  ldr       x8, [x8, #0xbd8]                               
01a8c988  ldr       x8, [x8]                                       
01a8c98c  ldr       x8, [x8, #0xb8]                                
01a8c990  ldr       x0, [x8]                                       
01a8c994  cbz       x0, #0x1a8c9cc                                 
01a8c998  mov       x1, xzr                                        
01a8c99c  bl        #0x19879f0                                     // EventTest$$Show
01a8c9a0  b         #0x1a8c9b0                                     
01a8c9a4  mov       x0, x19                                        
01a8c9a8  mov       w1, wzr                                        
01a8c9ac  bl        #0x1a8cda0                                     // EventCtrl$$ShowEpilogue
01a8c9b0  ldp       x20, x19, [sp, #0xc0]                          
01a8c9b4  ldr       x30, [sp, #0x98]                               
01a8c9b8  ldp       x22, x21, [sp, #0xb0]                          
01a8c9bc  ldr       d8, [sp, #0x90]                                
01a8c9c0  ldp       x24, x23, [sp, #0xa0]                          
01a8c9c4  add       sp, sp, #0xd0                                  
01a8c9c8  ret                                                      
01a8c9cc  bl        #0x183dddc                                     
01a8c9d0  bl        #0x183dde4                                     
01a8c9d4  bl        #0x183de00                                     
01a8c9d8  mov       x1, xzr                                        
01a8c9dc  bl        #0x183dca0                                     