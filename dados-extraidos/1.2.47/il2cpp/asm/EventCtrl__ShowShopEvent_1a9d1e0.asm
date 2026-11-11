void EventCtrl__ShowShopEvent (EventCtrl_o* __this, int32_t eventIndex, const MethodInfo* method);
// RVA 0x1a9d1e0 to 0x1a9db28
01a9d1e0  sub       sp, sp, #0xc0                                  
01a9d1e4  str       x30, [sp, #0x70]                               
01a9d1e8  stp       x26, x25, [sp, #0x80]                          
01a9d1ec  stp       x24, x23, [sp, #0x90]                          
01a9d1f0  stp       x22, x21, [sp, #0xa0]                          
01a9d1f4  stp       x20, x19, [sp, #0xb0]                          
01a9d1f8  adrp      x20, #0x3d14000                                
01a9d1fc  adrp      x22, #0x3a8c000                                
01a9d200  mov       w21, w1                                        
01a9d204  ldrb      w8, [x20, #0xcf1]                              
01a9d208  ldr       x22, [x22, #0xa48]                             
01a9d20c  mov       x19, x0                                        
01a9d210  tbnz      w8, #0, #0x1a9d2d0                             
01a9d214  adrp      x0, #0x3a7c000                                 
01a9d218  ldr       x0, [x0, #0xc08]                               
01a9d21c  bl        #0x183db90                                     
01a9d220  adrp      x0, #0x3a8c000                                 
01a9d224  ldr       x0, [x0, #0x610]                               
01a9d228  bl        #0x183db90                                     
01a9d22c  adrp      x0, #0x3a8c000                                 
01a9d230  ldr       x0, [x0, #0xa50]                               
01a9d234  bl        #0x183db90                                     
01a9d238  adrp      x0, #0x3a8c000                                 
01a9d23c  ldr       x0, [x0, #0xa58]                               
01a9d240  bl        #0x183db90                                     
01a9d244  adrp      x0, #0x3a8c000                                 
01a9d248  ldr       x0, [x0, #0xa60]                               
01a9d24c  bl        #0x183db90                                     
01a9d250  adrp      x0, #0x3a8c000                                 
01a9d254  ldr       x0, [x0, #0xa68]                               
01a9d258  bl        #0x183db90                                     
01a9d25c  adrp      x0, #0x3a8c000                                 
01a9d260  ldr       x0, [x0, #0xa70]                               
01a9d264  bl        #0x183db90                                     
01a9d268  adrp      x0, #0x3a8c000                                 
01a9d26c  ldr       x0, [x0, #0xa78]                               
01a9d270  bl        #0x183db90                                     
01a9d274  adrp      x0, #0x3a8c000                                 
01a9d278  ldr       x0, [x0, #0xa80]                               
01a9d27c  bl        #0x183db90                                     
01a9d280  adrp      x0, #0x3a8c000                                 
01a9d284  ldr       x0, [x0, #0xa88]                               
01a9d288  bl        #0x183db90                                     
01a9d28c  adrp      x0, #0x3a8c000                                 
01a9d290  ldr       x0, [x0, #0xa90]                               
01a9d294  bl        #0x183db90                                     
01a9d298  adrp      x0, #0x3a8c000                                 
01a9d29c  ldr       x0, [x0, #0xa98]                               
01a9d2a0  bl        #0x183db90                                     
01a9d2a4  adrp      x0, #0x3a8c000                                 
01a9d2a8  ldr       x0, [x0, #0xa48]                               
01a9d2ac  bl        #0x183db90                                     
01a9d2b0  adrp      x0, #0x3a7c000                                 
01a9d2b4  ldr       x0, [x0, #0xc78]                               
01a9d2b8  bl        #0x183db90                                     
01a9d2bc  adrp      x0, #0x3a7b000                                 
01a9d2c0  ldr       x0, [x0, #0xaf0]                               
01a9d2c4  bl        #0x183db90                                     
01a9d2c8  mov       w8, #1                                         
01a9d2cc  strb      w8, [x20, #0xcf1]                              
01a9d2d0  ldr       x0, [x22]                                      
01a9d2d4  bl        #0x183ddcc                                     
01a9d2d8  mov       x1, xzr                                        
01a9d2dc  mov       x20, x0                                        
01a9d2e0  bl        #0x1ab2530                                     // EventCtrl.<>c__DisplayClass134_0$$.ctor
01a9d2e4  cbz       x20, #0x1a9db20                                
01a9d2e8  adrp      x23, #0x3a7c000                                
01a9d2ec  cmn       w21, #1                                        
01a9d2f0  ldr       x23, [x23, #0xc08]                             
01a9d2f4  str       x19, [x20, #0x10]                              
01a9d2f8  str       w21, [x20, #0x18]                              
01a9d2fc  b.ne      #0x1a9d3fc                                     
01a9d300  ldr       x8, [x23]                                      
01a9d304  ldr       x8, [x8, #0xb8]                                
01a9d308  ldr       x21, [x8]                                      
01a9d30c  cbz       x21, #0x1a9db20                                
01a9d310  add       x22, x21, #0x52c                               
01a9d314  ldr       w8, [x21, #0x53c]                              
01a9d318  add       x0, sp, #0x40                                  
01a9d31c  ldr       q0, [x22]                                      
01a9d320  mov       x1, xzr                                        
01a9d324  str       w8, [sp, #0x50]                                
01a9d328  add       x8, sp, #0x5c                                  
01a9d32c  str       q0, [sp, #0x40]                                
01a9d330  bl        #0x1945f68                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Increment
01a9d334  ldr       w8, [sp, #0x6c]                                
01a9d338  ldur      q0, [sp, #0x5c]                                
01a9d33c  ldr       x9, [x23]                                      
01a9d340  str       w8, [x21, #0x53c]                              
01a9d344  str       q0, [x22]                                      
01a9d348  ldr       x8, [x9, #0xb8]                                
01a9d34c  ldr       x0, [x8]                                       
01a9d350  cbz       x0, #0x1a9db20                                 
01a9d354  mov       w1, #2                                         
01a9d358  mov       x2, xzr                                        
01a9d35c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9d360  mov       w8, #0x42480000                                
01a9d364  fmov      s1, w8                                         
01a9d368  fcmp      s0, s1                                         
01a9d36c  b.pl      #0x1a9d390                                     
01a9d370  mov       w0, wzr                                        
01a9d374  mov       w1, #6                                         
01a9d378  mov       x2, xzr                                        
01a9d37c  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a9d380  mov       w8, #0xa                                       
01a9d384  cmp       w0, #5                                         
01a9d388  str       w0, [x20, #0x18]                               
01a9d38c  b         #0x1a9d3a8                                     
01a9d390  mov       w0, #4                                         
01a9d394  mov       w1, #9                                         
01a9d398  mov       x2, xzr                                        
01a9d39c  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a9d3a0  mov       w8, #0xa                                       
01a9d3a4  cmp       w0, #8                                         
01a9d3a8  csel      w8, w8, w0, eq                                 
01a9d3ac  ldr       x9, [x23]                                      
01a9d3b0  str       w8, [x20, #0x18]                               
01a9d3b4  ldr       x8, [x9, #0xb8]                                
01a9d3b8  ldr       x8, [x8]                                       
01a9d3bc  cbz       x8, #0x1a9db20                                 
01a9d3c0  add       x9, x8, #0x52c                                 
01a9d3c4  ldr       w8, [x8, #0x53c]                               
01a9d3c8  add       x0, sp, #0x20                                  
01a9d3cc  ldr       q0, [x9]                                       
01a9d3d0  mov       x1, xzr                                        
01a9d3d4  str       w8, [sp, #0x30]                                
01a9d3d8  str       q0, [sp, #0x20]                                
01a9d3dc  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9d3e0  and       w8, w0, #0x80000003                            
01a9d3e4  cmp       w8, #1                                         
01a9d3e8  b.ne      #0x1a9d3f8                                     
01a9d3ec  mov       w21, #8                                        
01a9d3f0  str       w21, [x20, #0x18]                              
01a9d3f4  b         #0x1a9d3fc                                     
01a9d3f8  ldr       w21, [x20, #0x18]                              
01a9d3fc  ldr       x8, [x23]                                      
01a9d400  ldr       x8, [x8, #0xb8]                                
01a9d404  ldr       x9, [x8]                                       
01a9d408  cbz       x9, #0x1a9db20                                 
01a9d40c  ldr       x8, [x19, #0x200]                              
01a9d410  cbz       x8, #0x1a9db20                                 
01a9d414  ldr       x10, [x8, #0x10]                               
01a9d418  ldr       w11, [x10]                                     
01a9d41c  cmp       w21, w11                                       
01a9d420  b.hs      #0x1a9db24                                     
01a9d424  ldrsw     x9, [x9, #0x5cc]                               
01a9d428  ldr       x10, [x10, #0x10]                              
01a9d42c  cmp       w9, w10                                        
01a9d430  b.hs      #0x1a9db24                                     
01a9d434  sxtw      x11, w21                                       
01a9d438  adrp      x24, #0x3a7b000                                
01a9d43c  mov       x2, xzr                                        
01a9d440  ldr       x24, [x24, #0xaf0]                             
01a9d444  nop                                                      
01a9d448  madd      x9, x10, x11, x9                               
01a9d44c  ldr       x0, [x24]                                      
01a9d450  add       x8, x8, x9, lsl #3                             
01a9d454  ldr       x1, [x8, #0x20]                                
01a9d458  bl        #0x2c63780                                     // System.String$$Concat
01a9d45c  mov       x1, x0                                         
01a9d460  mov       x0, x19                                        
01a9d464  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a9d468  mov       x1, x0                                         
01a9d46c  mov       x0, x19                                        
01a9d470  mov       x2, xzr                                        
01a9d474  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a9d478  ldr       x8, [x23]                                      
01a9d47c  str       x0, [x19, #0x188]                              
01a9d480  ldr       x8, [x8, #0xb8]                                
01a9d484  ldr       x8, [x8]                                       
01a9d488  cbz       x8, #0x1a9db20                                 
01a9d48c  ldr       w3, [x20, #0x18]                               
01a9d490  mov       w9, #-1                                        
01a9d494  mov       w2, wzr                                        
01a9d498  mov       w4, wzr                                        
01a9d49c  mov       w5, wzr                                        
01a9d4a0  mov       w6, wzr                                        
01a9d4a4  str       w9, [sp, #8]                                   
01a9d4a8  mov       w9, #1                                         
01a9d4ac  mov       x0, x8                                         
01a9d4b0  mov       w1, #4                                         
01a9d4b4  mov       w7, #-1                                        
01a9d4b8  str       xzr, [sp, #0x10]                               
01a9d4bc  strb      w9, [sp]                                       
01a9d4c0  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a9d4c4  mov       x0, x19                                        
01a9d4c8  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a9d4cc  ldr       w8, [x20, #0x18]                               
01a9d4d0  cmp       w8, #8                                         
01a9d4d4  b.ne      #0x1a9d728                                     
01a9d4d8  ldr       x8, [x23]                                      
01a9d4dc  ldr       x8, [x8, #0xb8]                                
01a9d4e0  ldr       x0, [x8]                                       
01a9d4e4  cbz       x0, #0x1a9db20                                 
01a9d4e8  mov       w1, #2                                         
01a9d4ec  mov       x2, xzr                                        
01a9d4f0  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9d4f4  mov       w8, #0x42480000                                
01a9d4f8  ldr       x0, [x19, #0xb8]                               
01a9d4fc  fmov      s1, w8                                         
01a9d500  fcmp      s0, s1                                         
01a9d504  b.pl      #0x1a9d864                                     
01a9d508  cbz       x0, #0x1a9db20                                 
01a9d50c  adrp      x25, #0x3a8c000                                
01a9d510  mov       w1, wzr                                        
01a9d514  ldr       x25, [x25, #0x610]                             
01a9d518  ldr       x2, [x25]                                      
01a9d51c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d520  adrp      x26, #0x3a7c000                                
01a9d524  mov       x21, x0                                        
01a9d528  ldr       x26, [x26, #0xc78]                             
01a9d52c  ldr       x8, [x26]                                      
01a9d530  mov       x0, x8                                         
01a9d534  bl        #0x183ddcc                                     
01a9d538  adrp      x8, #0x3a8c000                                 
01a9d53c  mov       x1, x20                                        
01a9d540  mov       x3, xzr                                        
01a9d544  ldr       x8, [x8, #0xa50]                               
01a9d548  mov       x22, x0                                        
01a9d54c  ldr       x2, [x8]                                       
01a9d550  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d554  ldr       x8, [x23]                                      
01a9d558  ldr       x8, [x8, #0xb8]                                
01a9d55c  ldr       x9, [x8]                                       
01a9d560  cbz       x9, #0x1a9db20                                 
01a9d564  ldr       x8, [x19, #0x210]                              
01a9d568  cbz       x8, #0x1a9db20                                 
01a9d56c  ldr       x10, [x8, #0x10]                               
01a9d570  ldr       w11, [x10]                                     
01a9d574  cbz       w11, #0x1a9db24                                
01a9d578  ldrsw     x9, [x9, #0x5cc]                               
01a9d57c  ldr       w10, [x10, #0x10]                              
01a9d580  cmp       w9, w10                                        
01a9d584  b.hs      #0x1a9db24                                     
01a9d588  add       x8, x8, x9, lsl #3                             
01a9d58c  ldr       x7, [x24]                                      
01a9d590  mov       x0, x19                                        
01a9d594  mov       x1, x21                                        
01a9d598  mov       w2, #1                                         
01a9d59c  mov       x3, x22                                        
01a9d5a0  ldr       x4, [x8, #0x20]                                
01a9d5a4  mov       x5, xzr                                        
01a9d5a8  mov       w6, wzr                                        
01a9d5ac  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9d5b0  ldr       x0, [x19, #0xb8]                               
01a9d5b4  cbz       x0, #0x1a9db20                                 
01a9d5b8  ldr       x2, [x25]                                      
01a9d5bc  mov       w1, #1                                         
01a9d5c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d5c4  ldr       x8, [x26]                                      
01a9d5c8  mov       x21, x0                                        
01a9d5cc  mov       x0, x8                                         
01a9d5d0  bl        #0x183ddcc                                     
01a9d5d4  adrp      x8, #0x3a8c000                                 
01a9d5d8  mov       x1, x20                                        
01a9d5dc  mov       x3, xzr                                        
01a9d5e0  ldr       x8, [x8, #0xa58]                               
01a9d5e4  mov       x22, x0                                        
01a9d5e8  ldr       x2, [x8]                                       
01a9d5ec  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d5f0  ldr       x8, [x23]                                      
01a9d5f4  ldr       x8, [x8, #0xb8]                                
01a9d5f8  ldr       x9, [x8]                                       
01a9d5fc  cbz       x9, #0x1a9db20                                 
01a9d600  ldr       x8, [x19, #0x210]                              
01a9d604  cbz       x8, #0x1a9db20                                 
01a9d608  ldr       x10, [x8, #0x10]                               
01a9d60c  ldr       w11, [x10]                                     
01a9d610  tst       w11, #0xfffffffe                               
01a9d614  b.eq      #0x1a9db24                                     
01a9d618  ldrsw     x9, [x9, #0x5cc]                               
01a9d61c  ldr       x10, [x10, #0x10]                              
01a9d620  cmp       w9, w10                                        
01a9d624  b.hs      #0x1a9db24                                     
01a9d628  add       x9, x10, x9                                    
01a9d62c  ldr       x7, [x24]                                      
01a9d630  mov       x0, x19                                        
01a9d634  add       x8, x8, x9, lsl #3                             
01a9d638  mov       x1, x21                                        
01a9d63c  mov       w2, #1                                         
01a9d640  mov       x3, x22                                        
01a9d644  mov       x5, xzr                                        
01a9d648  mov       w6, wzr                                        
01a9d64c  ldr       x4, [x8, #0x20]                                
01a9d650  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9d654  ldr       x0, [x19, #0xb8]                               
01a9d658  cbz       x0, #0x1a9db20                                 
01a9d65c  ldr       x2, [x25]                                      
01a9d660  mov       w1, #2                                         
01a9d664  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d668  ldr       x8, [x26]                                      
01a9d66c  mov       x21, x0                                        
01a9d670  mov       x0, x8                                         
01a9d674  bl        #0x183ddcc                                     
01a9d678  adrp      x8, #0x3a8c000                                 
01a9d67c  mov       x1, x20                                        
01a9d680  mov       x3, xzr                                        
01a9d684  ldr       x8, [x8, #0xa60]                               
01a9d688  mov       x22, x0                                        
01a9d68c  ldr       x2, [x8]                                       
01a9d690  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d694  ldr       x8, [x23]                                      
01a9d698  ldr       x8, [x8, #0xb8]                                
01a9d69c  ldr       x9, [x8]                                       
01a9d6a0  cbz       x9, #0x1a9db20                                 
01a9d6a4  ldr       x8, [x19, #0x210]                              
01a9d6a8  cbz       x8, #0x1a9db20                                 
01a9d6ac  ldr       x10, [x8, #0x10]                               
01a9d6b0  ldr       w11, [x10]                                     
01a9d6b4  cmp       w11, #2                                        
01a9d6b8  b.ls      #0x1a9db24                                     
01a9d6bc  ldrsw     x9, [x9, #0x5cc]                               
01a9d6c0  ldr       x10, [x10, #0x10]                              
01a9d6c4  cmp       w9, w10                                        
01a9d6c8  b.hs      #0x1a9db24                                     
01a9d6cc  add       x9, x9, x10, lsl #1                            
01a9d6d0  ldr       x7, [x24]                                      
01a9d6d4  mov       x0, x19                                        
01a9d6d8  mov       x1, x21                                        
01a9d6dc  mov       w2, #1                                         
01a9d6e0  mov       x3, x22                                        
01a9d6e4  add       x8, x8, x9, lsl #3                             
01a9d6e8  mov       x5, xzr                                        
01a9d6ec  mov       w6, wzr                                        
01a9d6f0  ldr       x4, [x8, #0x20]                                
01a9d6f4  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9d6f8  ldr       x0, [x19, #0xb8]                               
01a9d6fc  cbz       x0, #0x1a9db20                                 
01a9d700  ldr       x2, [x25]                                      
01a9d704  mov       w1, #3                                         
01a9d708  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d70c  ldr       x8, [x26]                                      
01a9d710  mov       x21, x0                                        
01a9d714  mov       x0, x8                                         
01a9d718  bl        #0x183ddcc                                     
01a9d71c  adrp      x8, #0x3a8c000                                 
01a9d720  ldr       x8, [x8, #0xa68]                               
01a9d724  b         #0x1a9da80                                     
01a9d728  ldr       x0, [x19, #0xb8]                               
01a9d72c  cbz       x0, #0x1a9db20                                 
01a9d730  adrp      x25, #0x3a8c000                                
01a9d734  mov       w1, wzr                                        
01a9d738  ldr       x25, [x25, #0x610]                             
01a9d73c  ldr       x2, [x25]                                      
01a9d740  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d744  adrp      x26, #0x3a7c000                                
01a9d748  mov       x21, x0                                        
01a9d74c  ldr       x26, [x26, #0xc78]                             
01a9d750  ldr       x8, [x26]                                      
01a9d754  mov       x0, x8                                         
01a9d758  bl        #0x183ddcc                                     
01a9d75c  adrp      x8, #0x3a8c000                                 
01a9d760  mov       x1, x20                                        
01a9d764  mov       x3, xzr                                        
01a9d768  ldr       x8, [x8, #0xa90]                               
01a9d76c  mov       x22, x0                                        
01a9d770  ldr       x2, [x8]                                       
01a9d774  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d778  ldr       x8, [x23]                                      
01a9d77c  ldr       x8, [x8, #0xb8]                                
01a9d780  ldr       x9, [x8]                                       
01a9d784  cbz       x9, #0x1a9db20                                 
01a9d788  ldr       x8, [x19, #0x208]                              
01a9d78c  cbz       x8, #0x1a9db20                                 
01a9d790  ldr       x11, [x8, #0x10]                               
01a9d794  ldrsw     x10, [x20, #0x18]                              
01a9d798  ldr       w12, [x11]                                     
01a9d79c  cmp       w10, w12                                       
01a9d7a0  b.hs      #0x1a9db24                                     
01a9d7a4  ldrsw     x9, [x9, #0x5cc]                               
01a9d7a8  ldr       x11, [x11, #0x10]                              
01a9d7ac  cmp       w9, w11                                        
01a9d7b0  b.hs      #0x1a9db24                                     
01a9d7b4  madd      x9, x11, x10, x9                               
01a9d7b8  ldr       x7, [x24]                                      
01a9d7bc  mov       x0, x19                                        
01a9d7c0  mov       x1, x21                                        
01a9d7c4  mov       w2, #1                                         
01a9d7c8  mov       x3, x22                                        
01a9d7cc  mov       x5, xzr                                        
01a9d7d0  mov       w6, wzr                                        
01a9d7d4  add       x8, x8, x9, lsl #3                             
01a9d7d8  ldr       x4, [x8, #0x20]                                
01a9d7dc  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9d7e0  ldr       x0, [x19, #0xb8]                               
01a9d7e4  cbz       x0, #0x1a9db20                                 
01a9d7e8  ldr       x2, [x25]                                      
01a9d7ec  mov       w1, #1                                         
01a9d7f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d7f4  ldr       x8, [x26]                                      
01a9d7f8  mov       x21, x0                                        
01a9d7fc  mov       x0, x8                                         
01a9d800  bl        #0x183ddcc                                     
01a9d804  adrp      x8, #0x3a8c000                                 
01a9d808  mov       x1, x20                                        
01a9d80c  mov       x3, xzr                                        
01a9d810  ldr       x8, [x8, #0xa98]                               
01a9d814  mov       x22, x0                                        
01a9d818  ldr       x2, [x8]                                       
01a9d81c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d820  ldr       x8, [x23]                                      
01a9d824  ldr       x8, [x8, #0xb8]                                
01a9d828  ldr       x9, [x8]                                       
01a9d82c  cbz       x9, #0x1a9db20                                 
01a9d830  ldr       x8, [x19, #0x218]                              
01a9d834  cbz       x8, #0x1a9db20                                 
01a9d838  ldr       x11, [x8, #0x10]                               
01a9d83c  ldrsw     x10, [x20, #0x18]                              
01a9d840  ldr       w12, [x11]                                     
01a9d844  cmp       w10, w12                                       
01a9d848  b.hs      #0x1a9db24                                     
01a9d84c  ldrsw     x9, [x9, #0x5cc]                               
01a9d850  ldr       x11, [x11, #0x10]                              
01a9d854  cmp       w9, w11                                        
01a9d858  b.hs      #0x1a9db24                                     
01a9d85c  madd      x9, x11, x10, x9                               
01a9d860  b         #0x1a9dad4                                     
01a9d864  cbz       x0, #0x1a9db20                                 
01a9d868  adrp      x25, #0x3a8c000                                
01a9d86c  mov       w1, wzr                                        
01a9d870  ldr       x25, [x25, #0x610]                             
01a9d874  ldr       x2, [x25]                                      
01a9d878  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d87c  adrp      x26, #0x3a7c000                                
01a9d880  mov       x21, x0                                        
01a9d884  ldr       x26, [x26, #0xc78]                             
01a9d888  ldr       x8, [x26]                                      
01a9d88c  mov       x0, x8                                         
01a9d890  bl        #0x183ddcc                                     
01a9d894  adrp      x8, #0x3a8c000                                 
01a9d898  mov       x1, x20                                        
01a9d89c  mov       x3, xzr                                        
01a9d8a0  ldr       x8, [x8, #0xa70]                               
01a9d8a4  mov       x22, x0                                        
01a9d8a8  ldr       x2, [x8]                                       
01a9d8ac  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d8b0  ldr       x8, [x23]                                      
01a9d8b4  ldr       x8, [x8, #0xb8]                                
01a9d8b8  ldr       x9, [x8]                                       
01a9d8bc  cbz       x9, #0x1a9db20                                 
01a9d8c0  ldr       x8, [x19, #0x210]                              
01a9d8c4  cbz       x8, #0x1a9db20                                 
01a9d8c8  ldr       x10, [x8, #0x10]                               
01a9d8cc  ldr       w11, [x10]                                     
01a9d8d0  cbz       w11, #0x1a9db24                                
01a9d8d4  ldrsw     x9, [x9, #0x5cc]                               
01a9d8d8  ldr       w10, [x10, #0x10]                              
01a9d8dc  cmp       w9, w10                                        
01a9d8e0  b.hs      #0x1a9db24                                     
01a9d8e4  add       x8, x8, x9, lsl #3                             
01a9d8e8  ldr       x7, [x24]                                      
01a9d8ec  mov       x0, x19                                        
01a9d8f0  mov       x1, x21                                        
01a9d8f4  mov       w2, #1                                         
01a9d8f8  mov       x3, x22                                        
01a9d8fc  ldr       x4, [x8, #0x20]                                
01a9d900  mov       x5, xzr                                        
01a9d904  mov       w6, wzr                                        
01a9d908  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9d90c  ldr       x0, [x19, #0xb8]                               
01a9d910  cbz       x0, #0x1a9db20                                 
01a9d914  ldr       x2, [x25]                                      
01a9d918  mov       w1, #1                                         
01a9d91c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d920  ldr       x8, [x26]                                      
01a9d924  mov       x21, x0                                        
01a9d928  mov       x0, x8                                         
01a9d92c  bl        #0x183ddcc                                     
01a9d930  adrp      x8, #0x3a8c000                                 
01a9d934  mov       x1, x20                                        
01a9d938  mov       x3, xzr                                        
01a9d93c  ldr       x8, [x8, #0xa78]                               
01a9d940  mov       x22, x0                                        
01a9d944  ldr       x2, [x8]                                       
01a9d948  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d94c  ldr       x8, [x23]                                      
01a9d950  ldr       x8, [x8, #0xb8]                                
01a9d954  ldr       x9, [x8]                                       
01a9d958  cbz       x9, #0x1a9db20                                 
01a9d95c  ldr       x8, [x19, #0x210]                              
01a9d960  cbz       x8, #0x1a9db20                                 
01a9d964  ldr       x10, [x8, #0x10]                               
01a9d968  ldr       w11, [x10]                                     
01a9d96c  tst       w11, #0xfffffffe                               
01a9d970  b.eq      #0x1a9db24                                     
01a9d974  ldrsw     x9, [x9, #0x5cc]                               
01a9d978  ldr       x10, [x10, #0x10]                              
01a9d97c  cmp       w9, w10                                        
01a9d980  b.hs      #0x1a9db24                                     
01a9d984  add       x9, x10, x9                                    
01a9d988  ldr       x7, [x24]                                      
01a9d98c  mov       x0, x19                                        
01a9d990  add       x8, x8, x9, lsl #3                             
01a9d994  mov       x1, x21                                        
01a9d998  mov       w2, #1                                         
01a9d99c  mov       x3, x22                                        
01a9d9a0  mov       x5, xzr                                        
01a9d9a4  mov       w6, wzr                                        
01a9d9a8  ldr       x4, [x8, #0x20]                                
01a9d9ac  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9d9b0  ldr       x0, [x19, #0xb8]                               
01a9d9b4  cbz       x0, #0x1a9db20                                 
01a9d9b8  ldr       x2, [x25]                                      
01a9d9bc  mov       w1, #2                                         
01a9d9c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d9c4  ldr       x8, [x26]                                      
01a9d9c8  mov       x21, x0                                        
01a9d9cc  mov       x0, x8                                         
01a9d9d0  bl        #0x183ddcc                                     
01a9d9d4  adrp      x8, #0x3a8c000                                 
01a9d9d8  mov       x1, x20                                        
01a9d9dc  mov       x3, xzr                                        
01a9d9e0  ldr       x8, [x8, #0xa80]                               
01a9d9e4  mov       x22, x0                                        
01a9d9e8  ldr       x2, [x8]                                       
01a9d9ec  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d9f0  ldr       x8, [x23]                                      
01a9d9f4  ldr       x8, [x8, #0xb8]                                
01a9d9f8  ldr       x9, [x8]                                       
01a9d9fc  cbz       x9, #0x1a9db20                                 
01a9da00  ldr       x8, [x19, #0x210]                              
01a9da04  cbz       x8, #0x1a9db20                                 
01a9da08  ldr       x10, [x8, #0x10]                               
01a9da0c  ldr       w11, [x10]                                     
01a9da10  cmp       w11, #2                                        
01a9da14  b.ls      #0x1a9db24                                     
01a9da18  ldrsw     x9, [x9, #0x5cc]                               
01a9da1c  ldr       x10, [x10, #0x10]                              
01a9da20  cmp       w9, w10                                        
01a9da24  b.hs      #0x1a9db24                                     
01a9da28  add       x9, x9, x10, lsl #1                            
01a9da2c  ldr       x7, [x24]                                      
01a9da30  mov       x0, x19                                        
01a9da34  mov       x1, x21                                        
01a9da38  mov       w2, #1                                         
01a9da3c  mov       x3, x22                                        
01a9da40  add       x8, x8, x9, lsl #3                             
01a9da44  mov       x5, xzr                                        
01a9da48  mov       w6, wzr                                        
01a9da4c  ldr       x4, [x8, #0x20]                                
01a9da50  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9da54  ldr       x0, [x19, #0xb8]                               
01a9da58  cbz       x0, #0x1a9db20                                 
01a9da5c  ldr       x2, [x25]                                      
01a9da60  mov       w1, #3                                         
01a9da64  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9da68  ldr       x8, [x26]                                      
01a9da6c  mov       x21, x0                                        
01a9da70  mov       x0, x8                                         
01a9da74  bl        #0x183ddcc                                     
01a9da78  adrp      x8, #0x3a8c000                                 
01a9da7c  ldr       x8, [x8, #0xa88]                               
01a9da80  ldr       x2, [x8]                                       
01a9da84  mov       x1, x20                                        
01a9da88  mov       x3, xzr                                        
01a9da8c  mov       x22, x0                                        
01a9da90  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9da94  ldr       x8, [x23]                                      
01a9da98  ldr       x8, [x8, #0xb8]                                
01a9da9c  ldr       x9, [x8]                                       
01a9daa0  cbz       x9, #0x1a9db20                                 
01a9daa4  ldr       x8, [x19, #0x210]                              
01a9daa8  cbz       x8, #0x1a9db20                                 
01a9daac  ldr       x10, [x8, #0x10]                               
01a9dab0  ldr       w11, [x10]                                     
01a9dab4  tst       w11, #0xfffffffc                               
01a9dab8  b.eq      #0x1a9db24                                     
01a9dabc  ldrsw     x9, [x9, #0x5cc]                               
01a9dac0  ldr       x10, [x10, #0x10]                              
01a9dac4  cmp       w9, w10                                        
01a9dac8  b.hs      #0x1a9db24                                     
01a9dacc  add       x10, x10, x10, lsl #1                          
01a9dad0  add       x9, x10, x9                                    
01a9dad4  add       x8, x8, x9, lsl #3                             
01a9dad8  ldr       x7, [x24]                                      
01a9dadc  mov       x0, x19                                        
01a9dae0  mov       x1, x21                                        
01a9dae4  mov       w2, #1                                         
01a9dae8  mov       x3, x22                                        
01a9daec  ldr       x4, [x8, #0x20]                                
01a9daf0  mov       x5, xzr                                        
01a9daf4  mov       w6, wzr                                        
01a9daf8  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9dafc  mov       x0, x19                                        
01a9db00  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a9db04  ldp       x20, x19, [sp, #0xb0]                          
01a9db08  ldr       x30, [sp, #0x70]                               
01a9db0c  ldp       x22, x21, [sp, #0xa0]                          
01a9db10  ldp       x24, x23, [sp, #0x90]                          
01a9db14  ldp       x26, x25, [sp, #0x80]                          
01a9db18  add       sp, sp, #0xc0                                  
01a9db1c  ret                                                      
01a9db20  bl        #0x183dddc                                     
01a9db24  bl        #0x183dde4                                     