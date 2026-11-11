void EventCtrl__ClickEventButton (EventCtrl_o* __this, int32_t choiceIndex, bool isLevelUp, System_String_o* battleReward, const MethodInfo* method);
// RVA 0x1a8d2f0 to 0x1a8f30c
01a8d2f0  sub       sp, sp, #0xd0                                  
01a8d2f4  str       d8, [sp, #0x60]                                
01a8d2f8  stp       x29, x30, [sp, #0x70]                          
01a8d2fc  stp       x28, x27, [sp, #0x80]                          
01a8d300  stp       x26, x25, [sp, #0x90]                          
01a8d304  stp       x24, x23, [sp, #0xa0]                          
01a8d308  stp       x22, x21, [sp, #0xb0]                          
01a8d30c  stp       x20, x19, [sp, #0xc0]                          
01a8d310  adrp      x21, #0x3d14000                                
01a8d314  adrp      x20, #0x3a8c000                                
01a8d318  mov       x25, x3                                        
01a8d31c  ldrb      w8, [x21, #0xcec]                              
01a8d320  ldr       x20, [x20, #0x690]                             
01a8d324  mov       w23, w2                                        
01a8d328  mov       w22, w1                                        
01a8d32c  mov       x19, x0                                        
01a8d330  tbnz      w8, #0, #0x1a8d540                             
01a8d334  adrp      x0, #0x3a7c000                                 
01a8d338  ldr       x0, [x0, #0xd40]                               
01a8d33c  bl        #0x183db90                                     
01a8d340  adrp      x0, #0x3a7b000                                 
01a8d344  ldr       x0, [x0, #0xf88]                               
01a8d348  bl        #0x183db90                                     
01a8d34c  adrp      x0, #0x3a7c000                                 
01a8d350  ldr       x0, [x0, #0xc08]                               
01a8d354  bl        #0x183db90                                     
01a8d358  adrp      x0, #0x3a8c000                                 
01a8d35c  ldr       x0, [x0, #0x638]                               
01a8d360  bl        #0x183db90                                     
01a8d364  adrp      x0, #0x3a7c000                                 
01a8d368  ldr       x0, [x0, #0xca8]                               
01a8d36c  bl        #0x183db90                                     
01a8d370  adrp      x0, #0x3a7c000                                 
01a8d374  ldr       x0, [x0, #0x80]                                
01a8d378  bl        #0x183db90                                     
01a8d37c  adrp      x0, #0x3a7e000                                 
01a8d380  ldr       x0, [x0, #0x158]                               
01a8d384  bl        #0x183db90                                     
01a8d388  adrp      x0, #0x3a8c000                                 
01a8d38c  ldr       x0, [x0, #0x698]                               
01a8d390  bl        #0x183db90                                     
01a8d394  adrp      x0, #0x3a8c000                                 
01a8d398  ldr       x0, [x0, #0x610]                               
01a8d39c  bl        #0x183db90                                     
01a8d3a0  adrp      x0, #0x3a8c000                                 
01a8d3a4  ldr       x0, [x0, #0x6a0]                               
01a8d3a8  bl        #0x183db90                                     
01a8d3ac  adrp      x0, #0x3a7c000                                 
01a8d3b0  ldr       x0, [x0, #0xc30]                               
01a8d3b4  bl        #0x183db90                                     
01a8d3b8  adrp      x0, #0x3a8c000                                 
01a8d3bc  ldr       x0, [x0, #0x6a8]                               
01a8d3c0  bl        #0x183db90                                     
01a8d3c4  adrp      x0, #0x3a8c000                                 
01a8d3c8  ldr       x0, [x0, #0x648]                               
01a8d3cc  bl        #0x183db90                                     
01a8d3d0  adrp      x0, #0x3a8c000                                 
01a8d3d4  ldr       x0, [x0, #0x650]                               
01a8d3d8  bl        #0x183db90                                     
01a8d3dc  adrp      x0, #0x3a7c000                                 
01a8d3e0  ldr       x0, [x0, #0xde8]                               
01a8d3e4  bl        #0x183db90                                     
01a8d3e8  adrp      x0, #0x3a7b000                                 
01a8d3ec  ldr       x0, [x0, #0x7c8]                               
01a8d3f0  bl        #0x183db90                                     
01a8d3f4  adrp      x0, #0x3a8c000                                 
01a8d3f8  ldr       x0, [x0, #0x6b0]                               
01a8d3fc  bl        #0x183db90                                     
01a8d400  adrp      x0, #0x3a8c000                                 
01a8d404  ldr       x0, [x0, #0x6b8]                               
01a8d408  bl        #0x183db90                                     
01a8d40c  adrp      x0, #0x3a8c000                                 
01a8d410  ldr       x0, [x0, #0x6c0]                               
01a8d414  bl        #0x183db90                                     
01a8d418  adrp      x0, #0x3a8c000                                 
01a8d41c  ldr       x0, [x0, #0x6c8]                               
01a8d420  bl        #0x183db90                                     
01a8d424  adrp      x0, #0x3a8c000                                 
01a8d428  ldr       x0, [x0, #0x6d0]                               
01a8d42c  bl        #0x183db90                                     
01a8d430  adrp      x0, #0x3a8c000                                 
01a8d434  ldr       x0, [x0, #0x6d8]                               
01a8d438  bl        #0x183db90                                     
01a8d43c  adrp      x0, #0x3a8c000                                 
01a8d440  ldr       x0, [x0, #0x6e0]                               
01a8d444  bl        #0x183db90                                     
01a8d448  adrp      x0, #0x3a8c000                                 
01a8d44c  ldr       x0, [x0, #0x6e8]                               
01a8d450  bl        #0x183db90                                     
01a8d454  adrp      x0, #0x3a8c000                                 
01a8d458  ldr       x0, [x0, #0x690]                               
01a8d45c  bl        #0x183db90                                     
01a8d460  adrp      x0, #0x3a8c000                                 
01a8d464  ldr       x0, [x0, #0x6f0]                               
01a8d468  bl        #0x183db90                                     
01a8d46c  adrp      x0, #0x3a8c000                                 
01a8d470  ldr       x0, [x0, #0x6f8]                               
01a8d474  bl        #0x183db90                                     
01a8d478  adrp      x0, #0x3a8c000                                 
01a8d47c  ldr       x0, [x0, #0x700]                               
01a8d480  bl        #0x183db90                                     
01a8d484  adrp      x0, #0x3a7c000                                 
01a8d488  ldr       x0, [x0, #0xc78]                               
01a8d48c  bl        #0x183db90                                     
01a8d490  adrp      x0, #0x3a7c000                                 
01a8d494  ldr       x0, [x0, #0x4e0]                               
01a8d498  bl        #0x183db90                                     
01a8d49c  adrp      x0, #0x3a7c000                                 
01a8d4a0  ldr       x0, [x0, #0xee8]                               
01a8d4a4  bl        #0x183db90                                     
01a8d4a8  adrp      x0, #0x3a8c000                                 
01a8d4ac  ldr       x0, [x0, #0x708]                               
01a8d4b0  bl        #0x183db90                                     
01a8d4b4  adrp      x0, #0x3a8c000                                 
01a8d4b8  ldr       x0, [x0, #0x710]                               
01a8d4bc  bl        #0x183db90                                     
01a8d4c0  adrp      x0, #0x3a8c000                                 
01a8d4c4  ldr       x0, [x0, #0x718]                               
01a8d4c8  bl        #0x183db90                                     
01a8d4cc  adrp      x0, #0x3a7d000                                 
01a8d4d0  ldr       x0, [x0, #0x98]                                
01a8d4d4  bl        #0x183db90                                     
01a8d4d8  adrp      x0, #0x3a7c000                                 
01a8d4dc  ldr       x0, [x0, #0x5e0]                               
01a8d4e0  bl        #0x183db90                                     
01a8d4e4  adrp      x0, #0x3a7d000                                 
01a8d4e8  ldr       x0, [x0, #0x130]                               
01a8d4ec  bl        #0x183db90                                     
01a8d4f0  adrp      x0, #0x3a7e000                                 
01a8d4f4  ldr       x0, [x0, #0x470]                               
01a8d4f8  bl        #0x183db90                                     
01a8d4fc  adrp      x0, #0x3a7b000                                 
01a8d500  ldr       x0, [x0, #0xbc8]                               
01a8d504  bl        #0x183db90                                     
01a8d508  adrp      x0, #0x3a8c000                                 
01a8d50c  ldr       x0, [x0, #0x720]                               
01a8d510  bl        #0x183db90                                     
01a8d514  adrp      x0, #0x3a7b000                                 
01a8d518  ldr       x0, [x0, #0xaf0]                               
01a8d51c  bl        #0x183db90                                     
01a8d520  adrp      x0, #0x3a81000                                 
01a8d524  ldr       x0, [x0, #0xc08]                               
01a8d528  bl        #0x183db90                                     
01a8d52c  adrp      x0, #0x3a8c000                                 
01a8d530  ldr       x0, [x0, #0x678]                               
01a8d534  bl        #0x183db90                                     
01a8d538  mov       w8, #1                                         
01a8d53c  strb      w8, [x21, #0xcec]                              
01a8d540  ldr       x0, [x20]                                      
01a8d544  str       wzr, [sp, #0x6c]                               
01a8d548  bl        #0x183ddcc                                     
01a8d54c  mov       x1, xzr                                        
01a8d550  mov       x20, x0                                        
01a8d554  bl        #0x1ab21c4                                     // EventCtrl.<>c__DisplayClass123_0$$.ctor
01a8d558  cbz       x20, #0x1a8f2f8                                
01a8d55c  and       w8, w23, #1                                    
01a8d560  mov       x0, x19                                        
01a8d564  mov       w1, wzr                                        
01a8d568  mov       w2, wzr                                        
01a8d56c  str       x19, [x20, #0x10]                              
01a8d570  str       w22, [x20, #0x18]                              
01a8d574  strb      w8, [x19, #0x117]                              
01a8d578  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a8d57c  ldr       x8, [x19, #0x118]                              
01a8d580  cbz       x8, #0x1a8f2f8                                 
01a8d584  ldrsw     x9, [x19, #0x13c]                              
01a8d588  ldr       w10, [x8, #0x18]                               
01a8d58c  cmp       w9, w10                                        
01a8d590  b.hs      #0x1a8f2fc                                     
01a8d594  add       x8, x8, x9, lsl #3                             
01a8d598  ldr       x0, [x8, #0x20]                                
01a8d59c  cbz       x0, #0x1a8f2f8                                 
01a8d5a0  adrp      x23, #0x3a8c000                                
01a8d5a4  ldr       x23, [x23, #0x6a8]                             
01a8d5a8  ldr       w1, [x19, #0xe0]                               
01a8d5ac  ldr       x2, [x23]                                      
01a8d5b0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d5b4  cbz       x0, #0x1a8f2f8                                 
01a8d5b8  ldr       x0, [x0, #0x38]                                
01a8d5bc  cbz       x0, #0x1a8f2f8                                 
01a8d5c0  adrp      x26, #0x3a8c000                                
01a8d5c4  ldr       x26, [x26, #0x698]                             
01a8d5c8  ldr       w1, [x20, #0x18]                               
01a8d5cc  ldr       x2, [x26]                                      
01a8d5d0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d5d4  cbz       x0, #0x1a8f2f8                                 
01a8d5d8  adrp      x24, #0x3a7c000                                
01a8d5dc  ldr       x24, [x24, #0xca8]                             
01a8d5e0  ldr       x1, [x0, #0x20]                                
01a8d5e4  mov       x0, x19                                        
01a8d5e8  bl        #0x1a992c0                                     // EventCtrl$$GetResultIndex
01a8d5ec  ldr       x8, [x24]                                      
01a8d5f0  str       w0, [x19, #0xe4]                               
01a8d5f4  ldr       x8, [x8, #0xb8]                                
01a8d5f8  ldr       x8, [x8]                                       
01a8d5fc  cbz       x8, #0x1a8f2f8                                 
01a8d600  adrp      x29, #0x3a8c000                                
01a8d604  ldrb      w8, [x8, #0x20]                                
01a8d608  ldr       x29, [x29, #0x6a0]                             
01a8d60c  cbz       w8, #0x1a8d81c                                 
01a8d610  ldr       x8, [x19, #0x118]                              
01a8d614  cbz       x8, #0x1a8f2f8                                 
01a8d618  ldrsw     x9, [x19, #0x13c]                              
01a8d61c  ldr       w10, [x8, #0x18]                               
01a8d620  cmp       w9, w10                                        
01a8d624  b.hs      #0x1a8f2fc                                     
01a8d628  add       x8, x8, x9, lsl #3                             
01a8d62c  ldr       x0, [x8, #0x20]                                
01a8d630  cbz       x0, #0x1a8f2f8                                 
01a8d634  ldr       w1, [x19, #0xe0]                               
01a8d638  ldr       x2, [x23]                                      
01a8d63c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d640  cbz       x0, #0x1a8f2f8                                 
01a8d644  ldr       x0, [x0, #0x38]                                
01a8d648  cbz       x0, #0x1a8f2f8                                 
01a8d64c  ldr       w1, [x20, #0x18]                               
01a8d650  ldr       x2, [x26]                                      
01a8d654  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d658  cbz       x0, #0x1a8f2f8                                 
01a8d65c  ldr       x0, [x0, #0x20]                                
01a8d660  cbz       x0, #0x1a8f2f8                                 
01a8d664  ldr       w1, [x19, #0xe4]                               
01a8d668  ldr       x2, [x29]                                      
01a8d66c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d670  cbz       x0, #0x1a8f2f8                                 
01a8d674  ldr       w8, [x0, #0x1c]                                
01a8d678  cbz       w8, #0x1a8d75c                                 
01a8d67c  ldr       x8, [x19, #0x118]                              
01a8d680  cbz       x8, #0x1a8f2f8                                 
01a8d684  ldrsw     x9, [x19, #0x13c]                              
01a8d688  ldr       w10, [x8, #0x18]                               
01a8d68c  cmp       w9, w10                                        
01a8d690  b.hs      #0x1a8f2fc                                     
01a8d694  add       x8, x8, x9, lsl #3                             
01a8d698  ldr       x0, [x8, #0x20]                                
01a8d69c  cbz       x0, #0x1a8f2f8                                 
01a8d6a0  ldr       w1, [x19, #0xe0]                               
01a8d6a4  ldr       x2, [x23]                                      
01a8d6a8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d6ac  cbz       x0, #0x1a8f2f8                                 
01a8d6b0  ldr       x0, [x0, #0x38]                                
01a8d6b4  cbz       x0, #0x1a8f2f8                                 
01a8d6b8  ldr       w1, [x20, #0x18]                               
01a8d6bc  ldr       x2, [x26]                                      
01a8d6c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d6c4  cbz       x0, #0x1a8f2f8                                 
01a8d6c8  ldr       x0, [x0, #0x20]                                
01a8d6cc  cbz       x0, #0x1a8f2f8                                 
01a8d6d0  ldr       w1, [x19, #0xe4]                               
01a8d6d4  ldr       x2, [x29]                                      
01a8d6d8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d6dc  cbz       x0, #0x1a8f2f8                                 
01a8d6e0  ldr       w8, [x0, #0x1c]                                
01a8d6e4  cmp       w8, #1                                         
01a8d6e8  b.ne      #0x1a8d81c                                     
01a8d6ec  ldr       x8, [x24]                                      
01a8d6f0  adrp      x21, #0x3a7c000                                
01a8d6f4  mov       w1, #1                                         
01a8d6f8  ldr       x8, [x8, #0xb8]                                
01a8d6fc  ldr       x21, [x21, #0x80]                              
01a8d700  ldr       x0, [x21]                                      
01a8d704  ldr       x22, [x8]                                      
01a8d708  bl        #0x183dc20                                     
01a8d70c  cbz       x22, #0x1a8f2f8                                
01a8d710  mov       x2, x0                                         
01a8d714  mov       x0, x22                                        
01a8d718  mov       w1, #0x19                                      
01a8d71c  mov       x3, xzr                                        
01a8d720  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01a8d724  ldr       x8, [x24]                                      
01a8d728  ldr       x0, [x21]                                      
01a8d72c  mov       w1, #1                                         
01a8d730  ldr       x8, [x8, #0xb8]                                
01a8d734  ldr       x22, [x8]                                      
01a8d738  bl        #0x183dc20                                     
01a8d73c  cbz       x0, #0x1a8f2f8                                 
01a8d740  ldr       w8, [x0, #0x18]                                
01a8d744  mov       x2, x0                                         
01a8d748  cbz       w8, #0x1a8f2fc                                 
01a8d74c  mov       w8, #1                                         
01a8d750  str       w8, [x2, #0x20]                                
01a8d754  cbnz      x22, #0x1a8d80c                                
01a8d758  b         #0x1a8f2f8                                     
01a8d75c  ldr       x8, [x24]                                      
01a8d760  adrp      x21, #0x3a7c000                                
01a8d764  mov       w1, #1                                         
01a8d768  ldr       x8, [x8, #0xb8]                                
01a8d76c  ldr       x21, [x21, #0x80]                              
01a8d770  ldr       x0, [x21]                                      
01a8d774  ldr       x22, [x8]                                      
01a8d778  bl        #0x183dc20                                     
01a8d77c  cbz       x0, #0x1a8f2f8                                 
01a8d780  ldr       w8, [x0, #0x18]                                
01a8d784  mov       x2, x0                                         
01a8d788  cbz       w8, #0x1a8f2fc                                 
01a8d78c  mov       w8, #1                                         
01a8d790  str       w8, [x2, #0x20]                                
01a8d794  cbz       x22, #0x1a8f2f8                                
01a8d798  mov       x0, x22                                        
01a8d79c  mov       w1, #0xe                                       
01a8d7a0  mov       x3, xzr                                        
01a8d7a4  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01a8d7a8  ldr       x8, [x24]                                      
01a8d7ac  ldr       x0, [x21]                                      
01a8d7b0  mov       w1, #1                                         
01a8d7b4  ldr       x8, [x8, #0xb8]                                
01a8d7b8  ldr       x22, [x8]                                      
01a8d7bc  bl        #0x183dc20                                     
01a8d7c0  cbz       x0, #0x1a8f2f8                                 
01a8d7c4  ldr       w8, [x0, #0x18]                                
01a8d7c8  mov       x2, x0                                         
01a8d7cc  cbz       w8, #0x1a8f2fc                                 
01a8d7d0  mov       w8, #1                                         
01a8d7d4  str       w8, [x2, #0x20]                                
01a8d7d8  cbz       x22, #0x1a8f2f8                                
01a8d7dc  mov       x0, x22                                        
01a8d7e0  mov       w1, #0x19                                      
01a8d7e4  mov       x3, xzr                                        
01a8d7e8  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01a8d7ec  ldr       x8, [x24]                                      
01a8d7f0  ldr       x0, [x21]                                      
01a8d7f4  mov       w1, #1                                         
01a8d7f8  ldr       x8, [x8, #0xb8]                                
01a8d7fc  ldr       x22, [x8]                                      
01a8d800  bl        #0x183dc20                                     
01a8d804  cbz       x22, #0x1a8f2f8                                
01a8d808  mov       x2, x0                                         
01a8d80c  mov       x0, x22                                        
01a8d810  mov       w1, #0x1c                                      
01a8d814  mov       x3, xzr                                        
01a8d818  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01a8d81c  adrp      x28, #0x3a7b000                                
01a8d820  ldr       x28, [x28, #0xaf0]                             
01a8d824  ldr       w1, [x19, #0x13c]                              
01a8d828  ldr       w3, [x20, #0x18]                               
01a8d82c  ldp       w2, w4, [x19, #0xe0]                           
01a8d830  ldr       x8, [x28]                                      
01a8d834  str       x8, [x19, #0xf0]                               
01a8d838  bl        #0x1a9f440                                     // EventCtrl$$CheckAchievement
01a8d83c  ldr       x8, [x19, #0x118]                              
01a8d840  strb      wzr, [x19, #0x1e0]                             
01a8d844  cbz       x8, #0x1a8f2f8                                 
01a8d848  ldrsw     x9, [x19, #0x13c]                              
01a8d84c  ldr       w10, [x8, #0x18]                               
01a8d850  cmp       w9, w10                                        
01a8d854  b.hs      #0x1a8f2fc                                     
01a8d858  add       x8, x8, x9, lsl #3                             
01a8d85c  ldr       x0, [x8, #0x20]                                
01a8d860  cbz       x0, #0x1a8f2f8                                 
01a8d864  ldr       w1, [x19, #0xe0]                               
01a8d868  ldr       x2, [x23]                                      
01a8d86c  ldr       x22, [x28]                                     
01a8d870  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d874  cbz       x0, #0x1a8f2f8                                 
01a8d878  ldr       x0, [x0, #0x38]                                
01a8d87c  cbz       x0, #0x1a8f2f8                                 
01a8d880  ldr       w1, [x20, #0x18]                               
01a8d884  ldr       x2, [x26]                                      
01a8d888  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d88c  cbz       x0, #0x1a8f2f8                                 
01a8d890  ldr       x0, [x0, #0x20]                                
01a8d894  cbz       x0, #0x1a8f2f8                                 
01a8d898  ldr       w1, [x19, #0xe4]                               
01a8d89c  ldr       x2, [x29]                                      
01a8d8a0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d8a4  cbz       x0, #0x1a8f2f8                                 
01a8d8a8  adrp      x27, #0x3a7c000                                
01a8d8ac  ldr       w8, [x0, #0x1c]                                
01a8d8b0  ldr       x27, [x27, #0xc08]                             
01a8d8b4  cbz       w8, #0x1a8d9b0                                 
01a8d8b8  ldr       x8, [x19, #0x118]                              
01a8d8bc  cbz       x8, #0x1a8f2f8                                 
01a8d8c0  ldrsw     x9, [x19, #0x13c]                              
01a8d8c4  ldr       w10, [x8, #0x18]                               
01a8d8c8  cmp       w9, w10                                        
01a8d8cc  b.hs      #0x1a8f2fc                                     
01a8d8d0  add       x8, x8, x9, lsl #3                             
01a8d8d4  ldr       x0, [x8, #0x20]                                
01a8d8d8  cbz       x0, #0x1a8f2f8                                 
01a8d8dc  ldr       w1, [x19, #0xe0]                               
01a8d8e0  ldr       x2, [x23]                                      
01a8d8e4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d8e8  cbz       x0, #0x1a8f2f8                                 
01a8d8ec  ldr       x0, [x0, #0x38]                                
01a8d8f0  cbz       x0, #0x1a8f2f8                                 
01a8d8f4  ldr       w1, [x20, #0x18]                               
01a8d8f8  ldr       x2, [x26]                                      
01a8d8fc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d900  cbz       x0, #0x1a8f2f8                                 
01a8d904  ldr       x0, [x0, #0x20]                                
01a8d908  cbz       x0, #0x1a8f2f8                                 
01a8d90c  ldr       w1, [x19, #0xe4]                               
01a8d910  ldr       x2, [x29]                                      
01a8d914  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d918  cbz       x0, #0x1a8f2f8                                 
01a8d91c  ldr       w8, [x0, #0x1c]                                
01a8d920  cmp       w8, #1                                         
01a8d924  b.ne      #0x1a8da3c                                     
01a8d928  adrp      x21, #0x3a7c000                                
01a8d92c  ldr       x21, [x21, #0xde8]                             
01a8d930  ldr       x0, [x21]                                      
01a8d934  ldr       w8, [x0, #0xe4]                                
01a8d938  cbnz      w8, #0x1a8d944                                 
01a8d93c  bl        #0x183dcb0                                     
01a8d940  ldr       x0, [x21]                                      
01a8d944  ldr       x8, [x27]                                      
01a8d948  ldr       x8, [x8, #0xb8]                                
01a8d94c  ldr       x9, [x8]                                       
01a8d950  cbz       x9, #0x1a8f2f8                                 
01a8d954  ldr       x8, [x0, #0xb8]                                
01a8d958  ldr       x8, [x8, #0xf8]                                
01a8d95c  cbz       x8, #0x1a8f2f8                                 
01a8d960  ldrsw     x9, [x9, #0x5cc]                               
01a8d964  ldr       w10, [x8, #0x18]                               
01a8d968  cmp       w9, w10                                        
01a8d96c  b.hs      #0x1a8f2fc                                     
01a8d970  adrp      x10, #0x3a7d000                                
01a8d974  add       x8, x8, x9, lsl #3                             
01a8d978  adrp      x9, #0x3a81000                                 
01a8d97c  ldr       x10, [x10, #0x98]                              
01a8d980  ldr       x9, [x9, #0xc08]                               
01a8d984  mov       x3, xzr                                        
01a8d988  ldr       x1, [x8, #0x20]                                
01a8d98c  ldr       x0, [x10]                                      
01a8d990  ldr       x2, [x9]                                       
01a8d994  bl        #0x2c6dcf0                                     // System.String$$Concat
01a8d998  mov       x22, x0                                        
01a8d99c  mov       x0, xzr                                        
01a8d9a0  bl        #0x19bb370                                     // SoundMgr$$get_ins
01a8d9a4  cbz       x0, #0x1a8f2f8                                 
01a8d9a8  mov       w1, #0x14                                      
01a8d9ac  b         #0x1a8da34                                     
01a8d9b0  adrp      x21, #0x3a7c000                                
01a8d9b4  ldr       x21, [x21, #0xde8]                             
01a8d9b8  ldr       x0, [x21]                                      
01a8d9bc  ldr       w8, [x0, #0xe4]                                
01a8d9c0  cbnz      w8, #0x1a8d9cc                                 
01a8d9c4  bl        #0x183dcb0                                     
01a8d9c8  ldr       x0, [x21]                                      
01a8d9cc  ldr       x8, [x27]                                      
01a8d9d0  ldr       x8, [x8, #0xb8]                                
01a8d9d4  ldr       x9, [x8]                                       
01a8d9d8  cbz       x9, #0x1a8f2f8                                 
01a8d9dc  ldr       x8, [x0, #0xb8]                                
01a8d9e0  ldr       x8, [x8, #0xf0]                                
01a8d9e4  cbz       x8, #0x1a8f2f8                                 
01a8d9e8  ldrsw     x9, [x9, #0x5cc]                               
01a8d9ec  ldr       w10, [x8, #0x18]                               
01a8d9f0  cmp       w9, w10                                        
01a8d9f4  b.hs      #0x1a8f2fc                                     
01a8d9f8  adrp      x10, #0x3a8c000                                
01a8d9fc  add       x8, x8, x9, lsl #3                             
01a8da00  adrp      x9, #0x3a81000                                 
01a8da04  ldr       x10, [x10, #0x720]                             
01a8da08  ldr       x9, [x9, #0xc08]                               
01a8da0c  mov       x3, xzr                                        
01a8da10  ldr       x1, [x8, #0x20]                                
01a8da14  ldr       x0, [x10]                                      
01a8da18  ldr       x2, [x9]                                       
01a8da1c  bl        #0x2c6dcf0                                     // System.String$$Concat
01a8da20  mov       x22, x0                                        
01a8da24  mov       x0, xzr                                        
01a8da28  bl        #0x19bb370                                     // SoundMgr$$get_ins
01a8da2c  cbz       x0, #0x1a8f2f8                                 
01a8da30  mov       w1, #0x15                                      
01a8da34  mov       x2, xzr                                        
01a8da38  bl        #0x19bb4fc                                     // SoundMgr$$PlayEffectSound
01a8da3c  ldr       x8, [x19, #0x118]                              
01a8da40  cbz       x8, #0x1a8f2f8                                 
01a8da44  ldrsw     x9, [x19, #0x13c]                              
01a8da48  ldr       w10, [x8, #0x18]                               
01a8da4c  cmp       w9, w10                                        
01a8da50  b.hs      #0x1a8f2fc                                     
01a8da54  add       x8, x8, x9, lsl #3                             
01a8da58  ldr       x0, [x8, #0x20]                                
01a8da5c  cbz       x0, #0x1a8f2f8                                 
01a8da60  ldr       w1, [x19, #0xe0]                               
01a8da64  ldr       x2, [x23]                                      
01a8da68  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8da6c  cbz       x0, #0x1a8f2f8                                 
01a8da70  ldr       x0, [x0, #0x38]                                
01a8da74  cbz       x0, #0x1a8f2f8                                 
01a8da78  ldr       w1, [x20, #0x18]                               
01a8da7c  ldr       x2, [x26]                                      
01a8da80  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8da84  cbz       x0, #0x1a8f2f8                                 
01a8da88  ldr       x0, [x0, #0x20]                                
01a8da8c  cbz       x0, #0x1a8f2f8                                 
01a8da90  ldr       w1, [x19, #0xe4]                               
01a8da94  ldr       x2, [x29]                                      
01a8da98  str       x25, [sp, #0x18]                               
01a8da9c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8daa0  cbz       x0, #0x1a8f2f8                                 
01a8daa4  adrp      x24, #0x3a7c000                                
01a8daa8  mov       x2, xzr                                        
01a8daac  ldr       x24, [x24, #0xd40]                             
01a8dab0  ldr       x0, [x0, #0x30]                                
01a8dab4  ldr       x1, [x28]                                      
01a8dab8  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a8dabc  tbz       w0, #0, #0x1a8e028                             
01a8dac0  ldr       x8, [x19, #0x118]                              
01a8dac4  cbz       x8, #0x1a8f2f8                                 
01a8dac8  ldrsw     x9, [x19, #0x13c]                              
01a8dacc  ldr       w10, [x8, #0x18]                               
01a8dad0  cmp       w9, w10                                        
01a8dad4  adrp      x10, #0x3a8c000                                
01a8dad8  ldr       x10, [x10, #0x6a8]                             
01a8dadc  b.hs      #0x1a8f2fc                                     
01a8dae0  add       x8, x8, x9, lsl #3                             
01a8dae4  ldr       x0, [x8, #0x20]                                
01a8dae8  cbz       x0, #0x1a8f2f8                                 
01a8daec  ldr       w1, [x19, #0xe0]                               
01a8daf0  ldr       x2, [x10]                                      
01a8daf4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8daf8  cbz       x0, #0x1a8f2f8                                 
01a8dafc  ldr       x0, [x0, #0x38]                                
01a8db00  cbz       x0, #0x1a8f2f8                                 
01a8db04  ldr       w1, [x20, #0x18]                               
01a8db08  ldr       x2, [x26]                                      
01a8db0c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8db10  cbz       x0, #0x1a8f2f8                                 
01a8db14  ldr       x0, [x0, #0x20]                                
01a8db18  cbz       x0, #0x1a8f2f8                                 
01a8db1c  ldr       w1, [x19, #0xe4]                               
01a8db20  ldr       x2, [x29]                                      
01a8db24  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8db28  cbz       x0, #0x1a8f2f8                                 
01a8db2c  ldr       x1, [x0, #0x30]                                
01a8db30  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a8db34  mov       x23, x0                                        
01a8db38  mov       x0, x19                                        
01a8db3c  mov       w2, wzr                                        
01a8db40  mov       x1, x23                                        
01a8db44  bl        #0x1a91980                                     // EventCtrl$$GiveRewardAndSetRewardText
01a8db48  cbz       x23, #0x1a8f2f8                                
01a8db4c  ldr       w8, [x23, #0x18]                               
01a8db50  cmp       w8, #1                                         
01a8db54  b.lt      #0x1a8e028                                     
01a8db58  bic       w9, w8, w8, asr #31                            
01a8db5c  mov       w25, wzr                                       
01a8db60  cmp       w8, w25                                        
01a8db64  b.eq      #0x1a8f2fc                                     
01a8db68  add       x21, x23, w25, sxtw #3                         
01a8db6c  ldr       x10, [x21, #0x20]!                             
01a8db70  cbz       x10, #0x1a8f2f8                                
01a8db74  ldr       w11, [x10, #0x10]                              
01a8db78  cmp       w11, #6                                        
01a8db7c  b.eq      #0x1a8db90                                     
01a8db80  add       w25, w25, #1                                   
01a8db84  cmp       w9, w25                                        
01a8db88  b.ne      #0x1a8db60                                     
01a8db8c  b         #0x1a8e028                                     
01a8db90  adrp      x8, #0x3a7b000                                 
01a8db94  ldr       x8, [x8, #0xf88]                               
01a8db98  ldr       x24, [x10, #0x18]                              
01a8db9c  ldr       x0, [x8]                                       
01a8dba0  ldr       w8, [x0, #0xe4]                                
01a8dba4  cbnz      w8, #0x1a8dbac                                 
01a8dba8  bl        #0x183dcb0                                     
01a8dbac  mov       x0, x24                                        
01a8dbb0  mov       x1, xzr                                        
01a8dbb4  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a8dbb8  cbz       w0, #0x1a8dc80                                 
01a8dbbc  ldr       w8, [x23, #0x18]                               
01a8dbc0  cmp       w25, w8                                        
01a8dbc4  b.hs      #0x1a8f2fc                                     
01a8dbc8  ldr       x8, [x21]                                      
01a8dbcc  cbz       x8, #0x1a8f2f8                                 
01a8dbd0  adrp      x9, #0x3a7b000                                 
01a8dbd4  ldr       x9, [x9, #0xf88]                               
01a8dbd8  ldr       x24, [x8, #0x18]                               
01a8dbdc  ldr       x0, [x9]                                       
01a8dbe0  ldr       w9, [x0, #0xe4]                                
01a8dbe4  cbnz      w9, #0x1a8dbec                                 
01a8dbe8  bl        #0x183dcb0                                     
01a8dbec  mov       x0, x24                                        
01a8dbf0  mov       x1, xzr                                        
01a8dbf4  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a8dbf8  ldr       w8, [x23, #0x18]                               
01a8dbfc  cmp       w0, #1                                         
01a8dc00  b.ne      #0x1a8dcfc                                     
01a8dc04  adrp      x24, #0x3a7c000                                
01a8dc08  cmp       w25, w8                                        
01a8dc0c  ldr       x24, [x24, #0xd40]                             
01a8dc10  b.hs      #0x1a8f2fc                                     
01a8dc14  ldr       x8, [x21]                                      
01a8dc18  cbz       x8, #0x1a8f2f8                                 
01a8dc1c  adrp      x9, #0x3a7b000                                 
01a8dc20  ldr       x9, [x9, #0xf88]                               
01a8dc24  ldr       s8, [x8, #0x20]                                
01a8dc28  ldr       x0, [x9]                                       
01a8dc2c  ldr       w9, [x0, #0xe4]                                
01a8dc30  cbnz      w9, #0x1a8dc38                                 
01a8dc34  bl        #0x183dcb0                                     
01a8dc38  fmov      s0, s8                                         
01a8dc3c  mov       x0, xzr                                        
01a8dc40  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a8dc44  cmp       w0, #2                                         
01a8dc48  b.ne      #0x1a8dde0                                     
01a8dc4c  ldr       x8, [x19, #0x140]                              
01a8dc50  cbz       x8, #0x1a8f2f8                                 
01a8dc54  ldp       w9, w10, [x8, #0x44]                           
01a8dc58  cmp       w9, #0                                         
01a8dc5c  cinc      w9, w9, lt                                     
01a8dc60  cmp       w10, #0                                        
01a8dc64  cinc      w10, w10, lt                                   
01a8dc68  asr       w9, w9, #1                                     
01a8dc6c  asr       w10, w10, #1                                   
01a8dc70  stp       w9, w10, [x8, #0x44]                           
01a8dc74  mov       w9, #1                                         
01a8dc78  str       w9, [x8, #0x6c]                                
01a8dc7c  b         #0x1a8e020                                     
01a8dc80  ldr       x8, [x27]                                      
01a8dc84  adrp      x24, #0x3a7c000                                
01a8dc88  ldr       x8, [x8, #0xb8]                                
01a8dc8c  ldr       x0, [x8]                                       
01a8dc90  ldr       x24, [x24, #0xd40]                             
01a8dc94  cbz       x0, #0x1a8f2f8                                 
01a8dc98  ldr       x1, [x24]                                      
01a8dc9c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8dca0  ldr       w8, [x23, #0x18]                               
01a8dca4  cmp       w25, w8                                        
01a8dca8  b.hs      #0x1a8f2fc                                     
01a8dcac  ldr       x8, [x21]                                      
01a8dcb0  cbz       x8, #0x1a8f2f8                                 
01a8dcb4  adrp      x9, #0x3a7b000                                 
01a8dcb8  mov       x23, x0                                        
01a8dcbc  ldr       x9, [x9, #0xf88]                               
01a8dcc0  ldr       s8, [x8, #0x20]                                
01a8dcc4  ldr       x0, [x9]                                       
01a8dcc8  ldr       w9, [x0, #0xe4]                                
01a8dccc  cbnz      w9, #0x1a8dcd4                                 
01a8dcd0  bl        #0x183dcb0                                     
01a8dcd4  fmov      s0, s8                                         
01a8dcd8  mov       x0, xzr                                        
01a8dcdc  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a8dce0  cbz       x23, #0x1a8f2f8                                
01a8dce4  mov       w1, w0                                         
01a8dce8  mov       x0, x23                                        
01a8dcec  mov       x2, xzr                                        
01a8dcf0  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a8dcf4  str       x0, [x19, #0x140]                              
01a8dcf8  b         #0x1a8e020                                     
01a8dcfc  cmp       w25, w8                                        
01a8dd00  b.hs      #0x1a8f2fc                                     
01a8dd04  ldr       x8, [x21]                                      
01a8dd08  cbz       x8, #0x1a8f2f8                                 
01a8dd0c  adrp      x9, #0x3a7b000                                 
01a8dd10  ldr       x9, [x9, #0xf88]                               
01a8dd14  ldr       x24, [x8, #0x18]                               
01a8dd18  ldr       x0, [x9]                                       
01a8dd1c  ldr       w9, [x0, #0xe4]                                
01a8dd20  cbnz      w9, #0x1a8dd28                                 
01a8dd24  bl        #0x183dcb0                                     
01a8dd28  mov       x0, x24                                        
01a8dd2c  mov       x1, xzr                                        
01a8dd30  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a8dd34  cmp       w0, #2                                         
01a8dd38  b.ne      #0x1a8de64                                     
01a8dd3c  ldr       x8, [x27]                                      
01a8dd40  adrp      x24, #0x3a7c000                                
01a8dd44  ldr       x8, [x8, #0xb8]                                
01a8dd48  ldr       x0, [x8]                                       
01a8dd4c  ldr       x24, [x24, #0xd40]                             
01a8dd50  cbz       x0, #0x1a8f2f8                                 
01a8dd54  ldr       x1, [x24]                                      
01a8dd58  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8dd5c  ldr       w8, [x23, #0x18]                               
01a8dd60  cmp       w25, w8                                        
01a8dd64  b.hs      #0x1a8f2fc                                     
01a8dd68  ldr       x8, [x21]                                      
01a8dd6c  cbz       x8, #0x1a8f2f8                                 
01a8dd70  adrp      x9, #0x3a7b000                                 
01a8dd74  mov       x23, x0                                        
01a8dd78  ldr       x9, [x9, #0xf88]                               
01a8dd7c  ldr       s8, [x8, #0x20]                                
01a8dd80  ldr       x0, [x9]                                       
01a8dd84  ldr       w9, [x0, #0xe4]                                
01a8dd88  cbnz      w9, #0x1a8dd90                                 
01a8dd8c  bl        #0x183dcb0                                     
01a8dd90  fmov      s0, s8                                         
01a8dd94  mov       x0, xzr                                        
01a8dd98  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a8dd9c  cbz       x23, #0x1a8f2f8                                
01a8dda0  mov       w1, w0                                         
01a8dda4  mov       x0, x23                                        
01a8dda8  mov       x2, xzr                                        
01a8ddac  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a8ddb0  str       x0, [x19, #0x140]                              
01a8ddb4  cbz       x0, #0x1a8f2f8                                 
01a8ddb8  ldp       w8, w9, [x0, #0x44]                            
01a8ddbc  cmp       w8, #0                                         
01a8ddc0  cinc      w8, w8, lt                                     
01a8ddc4  cmp       w9, #0                                         
01a8ddc8  cinc      w9, w9, lt                                     
01a8ddcc  asr       w8, w8, #1                                     
01a8ddd0  asr       w9, w9, #1                                     
01a8ddd4  stp       w8, w9, [x0, #0x44]                            
01a8ddd8  mov       w8, #1                                         
01a8dddc  b         #0x1a8e01c                                     
01a8dde0  ldr       w8, [x23, #0x18]                               
01a8dde4  cmp       w25, w8                                        
01a8dde8  b.hs      #0x1a8f2fc                                     
01a8ddec  ldr       x8, [x21]                                      
01a8ddf0  cbz       x8, #0x1a8f2f8                                 
01a8ddf4  adrp      x9, #0x3a7b000                                 
01a8ddf8  ldr       x9, [x9, #0xf88]                               
01a8ddfc  ldr       s8, [x8, #0x20]                                
01a8de00  ldr       x0, [x9]                                       
01a8de04  ldr       w9, [x0, #0xe4]                                
01a8de08  cbnz      w9, #0x1a8de10                                 
01a8de0c  bl        #0x183dcb0                                     
01a8de10  fmov      s0, s8                                         
01a8de14  mov       x0, xzr                                        
01a8de18  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a8de1c  cmp       w0, #3                                         
01a8de20  b.ne      #0x1a8e020                                     
01a8de24  ldr       x8, [x19, #0x140]                              
01a8de28  cbz       x8, #0x1a8f2f8                                 
01a8de2c  ldur      d0, [x8, #0x44]                                
01a8de30  fmov      v1.2s, #1.50000000                             
01a8de34  mov       w9, #0x7f800000                                
01a8de38  dup       v2.2s, w9                                      
01a8de3c  mov       w9, #2                                         
01a8de40  scvtf     v0.2s, v0.2s                                   
01a8de44  str       w9, [x8, #0x6c]                                
01a8de48  fmul      v0.2s, v0.2s, v1.2s                            
01a8de4c  movi      v1.2s, #0x80, lsl #24                          
01a8de50  fcmeq     v2.2s, v0.2s, v2.2s                            
01a8de54  fcvtzs    v0.2s, v0.2s                                   
01a8de58  bit       v0.8b, v1.8b, v2.8b                            
01a8de5c  stur      d0, [x8, #0x44]                                
01a8de60  b         #0x1a8e020                                     
01a8de64  ldr       w8, [x23, #0x18]                               
01a8de68  cmp       w25, w8                                        
01a8de6c  b.hs      #0x1a8f2fc                                     
01a8de70  ldr       x8, [x21]                                      
01a8de74  cbz       x8, #0x1a8f2f8                                 
01a8de78  adrp      x9, #0x3a7b000                                 
01a8de7c  ldr       x9, [x9, #0xf88]                               
01a8de80  ldr       x24, [x8, #0x18]                               
01a8de84  ldr       x0, [x9]                                       
01a8de88  ldr       w9, [x0, #0xe4]                                
01a8de8c  cbnz      w9, #0x1a8de94                                 
01a8de90  bl        #0x183dcb0                                     
01a8de94  mov       x0, x24                                        
01a8de98  mov       x1, xzr                                        
01a8de9c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a8dea0  cmp       w0, #3                                         
01a8dea4  b.ne      #0x1a8df58                                     
01a8dea8  ldr       x8, [x27]                                      
01a8deac  adrp      x24, #0x3a7c000                                
01a8deb0  ldr       x8, [x8, #0xb8]                                
01a8deb4  ldr       x0, [x8]                                       
01a8deb8  ldr       x24, [x24, #0xd40]                             
01a8debc  cbz       x0, #0x1a8f2f8                                 
01a8dec0  ldr       x1, [x24]                                      
01a8dec4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8dec8  ldr       w8, [x23, #0x18]                               
01a8decc  cmp       w25, w8                                        
01a8ded0  b.hs      #0x1a8f2fc                                     
01a8ded4  ldr       x8, [x21]                                      
01a8ded8  cbz       x8, #0x1a8f2f8                                 
01a8dedc  adrp      x9, #0x3a7b000                                 
01a8dee0  mov       x23, x0                                        
01a8dee4  ldr       x9, [x9, #0xf88]                               
01a8dee8  ldr       s8, [x8, #0x20]                                
01a8deec  ldr       x0, [x9]                                       
01a8def0  ldr       w9, [x0, #0xe4]                                
01a8def4  cbnz      w9, #0x1a8defc                                 
01a8def8  bl        #0x183dcb0                                     
01a8defc  fmov      s0, s8                                         
01a8df00  mov       x0, xzr                                        
01a8df04  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a8df08  cbz       x23, #0x1a8f2f8                                
01a8df0c  mov       w1, w0                                         
01a8df10  mov       x0, x23                                        
01a8df14  mov       x2, xzr                                        
01a8df18  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a8df1c  str       x0, [x19, #0x140]                              
01a8df20  cbz       x0, #0x1a8f2f8                                 
01a8df24  ldur      d0, [x0, #0x44]                                
01a8df28  fmov      v1.2s, #1.50000000                             
01a8df2c  mov       w8, #0x7f800000                                
01a8df30  dup       v2.2s, w8                                      
01a8df34  mov       w8, #2                                         
01a8df38  scvtf     v0.2s, v0.2s                                   
01a8df3c  fmul      v0.2s, v0.2s, v1.2s                            
01a8df40  movi      v1.2s, #0x80, lsl #24                          
01a8df44  fcmeq     v2.2s, v0.2s, v2.2s                            
01a8df48  fcvtzs    v0.2s, v0.2s                                   
01a8df4c  bit       v0.8b, v1.8b, v2.8b                            
01a8df50  stur      d0, [x0, #0x44]                                
01a8df54  b         #0x1a8e01c                                     
01a8df58  ldr       w8, [x23, #0x18]                               
01a8df5c  cmp       w25, w8                                        
01a8df60  b.hs      #0x1a8f2fc                                     
01a8df64  ldr       x8, [x21]                                      
01a8df68  cbz       x8, #0x1a8f2f8                                 
01a8df6c  adrp      x9, #0x3a7b000                                 
01a8df70  ldr       x9, [x9, #0xf88]                               
01a8df74  ldr       x24, [x8, #0x18]                               
01a8df78  ldr       x0, [x9]                                       
01a8df7c  ldr       w9, [x0, #0xe4]                                
01a8df80  cbnz      w9, #0x1a8df88                                 
01a8df84  bl        #0x183dcb0                                     
01a8df88  mov       x0, x24                                        
01a8df8c  mov       x1, xzr                                        
01a8df90  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a8df94  adrp      x24, #0x3a7c000                                
01a8df98  cmp       w0, #4                                         
01a8df9c  ldr       x24, [x24, #0xd40]                             
01a8dfa0  b.ne      #0x1a8e020                                     
01a8dfa4  ldr       x8, [x27]                                      
01a8dfa8  ldr       x8, [x8, #0xb8]                                
01a8dfac  ldr       x0, [x8]                                       
01a8dfb0  cbz       x0, #0x1a8f2f8                                 
01a8dfb4  ldr       x1, [x24]                                      
01a8dfb8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8dfbc  ldr       w8, [x23, #0x18]                               
01a8dfc0  cmp       w25, w8                                        
01a8dfc4  b.hs      #0x1a8f2fc                                     
01a8dfc8  ldr       x8, [x21]                                      
01a8dfcc  cbz       x8, #0x1a8f2f8                                 
01a8dfd0  adrp      x9, #0x3a7b000                                 
01a8dfd4  mov       x23, x0                                        
01a8dfd8  ldr       x9, [x9, #0xf88]                               
01a8dfdc  ldr       s8, [x8, #0x20]                                
01a8dfe0  ldr       x0, [x9]                                       
01a8dfe4  ldr       w9, [x0, #0xe4]                                
01a8dfe8  cbnz      w9, #0x1a8dff0                                 
01a8dfec  bl        #0x183dcb0                                     
01a8dff0  fmov      s0, s8                                         
01a8dff4  mov       x0, xzr                                        
01a8dff8  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a8dffc  cbz       x23, #0x1a8f2f8                                
01a8e000  mov       w1, w0                                         
01a8e004  mov       x0, x23                                        
01a8e008  mov       x2, xzr                                        
01a8e00c  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a8e010  str       x0, [x19, #0x140]                              
01a8e014  cbz       x0, #0x1a8f2f8                                 
01a8e018  mov       w8, #4                                         
01a8e01c  str       w8, [x0, #0x6c]                                
01a8e020  mov       w8, #1                                         
01a8e024  strb      w8, [x19, #0x1e0]                              
01a8e028  ldr       x8, [x27]                                      
01a8e02c  ldr       x21, [x19, #0x140]                             
01a8e030  ldr       x8, [x8, #0xb8]                                
01a8e034  ldr       x0, [x8]                                       
01a8e038  cbz       x21, #0x1a8e0c0                                
01a8e03c  cbz       x0, #0x1a8f2f8                                 
01a8e040  ldr       x1, [x24]                                      
01a8e044  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8e048  ldr       x8, [x19, #0x140]                              
01a8e04c  cbz       x8, #0x1a8f2f8                                 
01a8e050  adrp      x25, #0x3a8c000                                
01a8e054  ldr       x25, [x25, #0x6a8]                             
01a8e058  cbz       x0, #0x1a8f2f8                                 
01a8e05c  ldr       x1, [x8, #0xb0]                                
01a8e060  mov       x2, xzr                                        
01a8e064  bl        #0x1ab0690                                     // MonsterDataBase$$GetChoiceAbIndex
01a8e068  ldr       x8, [x19, #0x140]                              
01a8e06c  str       w0, [x21, #0xb8]                               
01a8e070  cbz       x8, #0x1a8f2f8                                 
01a8e074  ldr       x9, [x27]                                      
01a8e078  ldr       x9, [x9, #0xb8]                                
01a8e07c  ldr       x0, [x9]                                       
01a8e080  cbz       x0, #0x1a8f2f8                                 
01a8e084  ldrb      w9, [x19, #0x117]                              
01a8e088  ldr       w2, [x19, #0x13c]                              
01a8e08c  mov       w1, #3                                         
01a8e090  ldp       w3, w5, [x19, #0xe0]                           
01a8e094  ldr       w4, [x20, #0x18]                               
01a8e098  cmp       w9, #0                                         
01a8e09c  ldr       w9, [x8, #0xb8]                                
01a8e0a0  ldr       w7, [x8, #0x10]                                
01a8e0a4  cset      w6, ne                                         
01a8e0a8  mov       w8, #1                                         
01a8e0ac  str       xzr, [sp, #0x10]                               
01a8e0b0  str       w9, [sp, #8]                                   
01a8e0b4  strb      w8, [sp]                                       
01a8e0b8  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a8e0bc  b         #0x1a8e0fc                                     
01a8e0c0  cbz       x0, #0x1a8f2f8                                 
01a8e0c4  ldp       w3, w5, [x19, #0xe0]                           
01a8e0c8  ldrb      w6, [x19, #0x117]                              
01a8e0cc  ldr       w4, [x20, #0x18]                               
01a8e0d0  mov       w8, #-1                                        
01a8e0d4  ldr       w2, [x19, #0x13c]                              
01a8e0d8  mov       w9, #1                                         
01a8e0dc  mov       w1, #3                                         
01a8e0e0  mov       w7, #-1                                        
01a8e0e4  str       xzr, [sp, #0x10]                               
01a8e0e8  str       w8, [sp, #8]                                   
01a8e0ec  strb      w9, [sp]                                       
01a8e0f0  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a8e0f4  adrp      x25, #0x3a8c000                                
01a8e0f8  ldr       x25, [x25, #0x6a8]                             
01a8e0fc  adrp      x11, #0x3a7b000                                
01a8e100  adrp      x21, #0x3a7c000                                
01a8e104  ldr       x11, [x11, #0x7c8]                             
01a8e108  ldr       x8, [x19, #0x140]                              
01a8e10c  ldr       x21, [x21, #0xee8]                             
01a8e110  cbz       x8, #0x1a8e148                                 
01a8e114  ldr       x9, [x27]                                      
01a8e118  ldr       x9, [x9, #0xb8]                                
01a8e11c  ldr       x9, [x9]                                       
01a8e120  cbz       x9, #0x1a8f2f8                                 
01a8e124  ldr       x8, [x8, #0x20]                                
01a8e128  cbz       x8, #0x1a8f2f8                                 
01a8e12c  ldrsw     x9, [x9, #0x5cc]                               
01a8e130  ldr       w10, [x8, #0x18]                               
01a8e134  cmp       w9, w10                                        
01a8e138  b.hs      #0x1a8f2fc                                     
01a8e13c  add       x8, x8, x9, lsl #3                             
01a8e140  ldr       x24, [x8, #0x20]                               
01a8e144  b         #0x1a8e14c                                     
01a8e148  ldr       x24, [x28]                                     
01a8e14c  ldr       x0, [x11]                                      
01a8e150  mov       w1, #5                                         
01a8e154  bl        #0x183dc20                                     
01a8e158  cbz       x0, #0x1a8f2f8                                 
01a8e15c  ldr       w8, [x0, #0x18]                                
01a8e160  mov       x23, x0                                        
01a8e164  cbz       w8, #0x1a8f2fc                                 
01a8e168  cmp       w8, #1                                         
01a8e16c  str       x22, [x23, #0x20]                              
01a8e170  b.eq      #0x1a8f2fc                                     
01a8e174  ldr       x9, [sp, #0x18]                                
01a8e178  cmp       w8, #2                                         
01a8e17c  str       x9, [x23, #0x28]                               
01a8e180  b.ls      #0x1a8f2fc                                     
01a8e184  ldr       x9, [x19, #0xf0]                               
01a8e188  cmp       w8, #3                                         
01a8e18c  str       x9, [x23, #0x30]                               
01a8e190  b.eq      #0x1a8f2fc                                     
01a8e194  ldr       x8, [x21]                                      
01a8e198  str       x8, [x23, #0x38]                               
01a8e19c  ldr       x8, [x19, #0x118]                              
01a8e1a0  cbz       x8, #0x1a8f2f8                                 
01a8e1a4  ldrsw     x9, [x19, #0x13c]                              
01a8e1a8  ldr       w10, [x8, #0x18]                               
01a8e1ac  cmp       w9, w10                                        
01a8e1b0  b.hs      #0x1a8f2fc                                     
01a8e1b4  add       x8, x8, x9, lsl #3                             
01a8e1b8  ldr       x0, [x8, #0x20]                                
01a8e1bc  cbz       x0, #0x1a8f2f8                                 
01a8e1c0  ldr       w1, [x19, #0xe0]                               
01a8e1c4  ldr       x2, [x25]                                      
01a8e1c8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e1cc  cbz       x0, #0x1a8f2f8                                 
01a8e1d0  ldr       x0, [x0, #0x38]                                
01a8e1d4  cbz       x0, #0x1a8f2f8                                 
01a8e1d8  ldr       w1, [x20, #0x18]                               
01a8e1dc  ldr       x2, [x26]                                      
01a8e1e0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e1e4  cbz       x0, #0x1a8f2f8                                 
01a8e1e8  ldr       x0, [x0, #0x20]                                
01a8e1ec  cbz       x0, #0x1a8f2f8                                 
01a8e1f0  ldr       w1, [x19, #0xe4]                               
01a8e1f4  ldr       x2, [x29]                                      
01a8e1f8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e1fc  cbz       x0, #0x1a8f2f8                                 
01a8e200  ldr       x8, [x27]                                      
01a8e204  ldr       x8, [x8, #0xb8]                                
01a8e208  ldr       x8, [x8]                                       
01a8e20c  cbz       x8, #0x1a8f2f8                                 
01a8e210  ldr       x0, [x0, #0x20]                                
01a8e214  ldr       x2, [x8, #0x40]                                
01a8e218  mov       x1, x24                                        
01a8e21c  mov       x3, xzr                                        
01a8e220  bl        #0x2c6e654                                     // System.String$$Format
01a8e224  ldr       w8, [x23, #0x18]                               
01a8e228  cmp       w8, #4                                         
01a8e22c  b.ls      #0x1a8f2fc                                     
01a8e230  str       x0, [x23, #0x40]                               
01a8e234  mov       x0, x23                                        
01a8e238  mov       x1, xzr                                        
01a8e23c  bl        #0x2c6e35c                                     // System.String$$Concat
01a8e240  ldr       x8, [x19, #0x118]                              
01a8e244  cbz       x8, #0x1a8f2f8                                 
01a8e248  ldrsw     x9, [x19, #0x13c]                              
01a8e24c  ldr       w10, [x8, #0x18]                               
01a8e250  cmp       w9, w10                                        
01a8e254  b.hs      #0x1a8f2fc                                     
01a8e258  add       x8, x8, x9, lsl #3                             
01a8e25c  mov       x21, x0                                        
01a8e260  ldr       x0, [x8, #0x20]                                
01a8e264  cbz       x0, #0x1a8f2f8                                 
01a8e268  ldr       w1, [x19, #0xe0]                               
01a8e26c  ldr       x2, [x25]                                      
01a8e270  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e274  cbz       x0, #0x1a8f2f8                                 
01a8e278  ldr       x0, [x0, #0x38]                                
01a8e27c  cbz       x0, #0x1a8f2f8                                 
01a8e280  ldr       w1, [x20, #0x18]                               
01a8e284  ldr       x2, [x26]                                      
01a8e288  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e28c  cbz       x0, #0x1a8f2f8                                 
01a8e290  ldr       x0, [x0, #0x20]                                
01a8e294  cbz       x0, #0x1a8f2f8                                 
01a8e298  ldr       w1, [x19, #0xe4]                               
01a8e29c  ldr       x2, [x29]                                      
01a8e2a0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e2a4  cbz       x0, #0x1a8f2f8                                 
01a8e2a8  ldr       w8, [x0, #0x18]                                
01a8e2ac  cmn       w8, #3                                         
01a8e2b0  b.eq      #0x1a8e398                                     
01a8e2b4  ldr       x8, [x27]                                      
01a8e2b8  ldr       x8, [x8, #0xb8]                                
01a8e2bc  ldr       x0, [x8]                                       
01a8e2c0  cbz       x0, #0x1a8f2f8                                 
01a8e2c4  mov       w1, wzr                                        
01a8e2c8  mov       x2, xzr                                        
01a8e2cc  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8e2d0  fcmp      s0, #0.0                                       
01a8e2d4  b.ls      #0x1a8e338                                     
01a8e2d8  ldr       x8, [x27]                                      
01a8e2dc  ldr       x8, [x8, #0xb8]                                
01a8e2e0  ldr       x0, [x8]                                       
01a8e2e4  cbz       x0, #0x1a8f2f8                                 
01a8e2e8  mov       w1, #1                                         
01a8e2ec  mov       x2, xzr                                        
01a8e2f0  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8e2f4  fcmp      s0, #0.0                                       
01a8e2f8  b.hi      #0x1a8e398                                     
01a8e2fc  adrp      x22, #0x3a7c000                                
01a8e300  ldr       x22, [x22, #0xde8]                             
01a8e304  ldr       x0, [x22]                                      
01a8e308  ldr       w8, [x0, #0xe4]                                
01a8e30c  cbnz      w8, #0x1a8e318                                 
01a8e310  bl        #0x183dcb0                                     
01a8e314  ldr       x0, [x22]                                      
01a8e318  ldr       x8, [x27]                                      
01a8e31c  ldr       x8, [x8, #0xb8]                                
01a8e320  ldr       x9, [x8]                                       
01a8e324  cbz       x9, #0x1a8f2f8                                 
01a8e328  ldr       x8, [x0, #0xb8]                                
01a8e32c  ldr       x8, [x8, #0xd8]                                
01a8e330  cbnz      x8, #0x1a8e370                                 
01a8e334  b         #0x1a8f2f8                                     
01a8e338  adrp      x22, #0x3a7c000                                
01a8e33c  ldr       x22, [x22, #0xde8]                             
01a8e340  ldr       x0, [x22]                                      
01a8e344  ldr       w8, [x0, #0xe4]                                
01a8e348  cbnz      w8, #0x1a8e354                                 
01a8e34c  bl        #0x183dcb0                                     
01a8e350  ldr       x0, [x22]                                      
01a8e354  ldr       x8, [x27]                                      
01a8e358  ldr       x8, [x8, #0xb8]                                
01a8e35c  ldr       x9, [x8]                                       
01a8e360  cbz       x9, #0x1a8f2f8                                 
01a8e364  ldr       x8, [x0, #0xb8]                                
01a8e368  ldr       x8, [x8, #0xd0]                                
01a8e36c  cbz       x8, #0x1a8f2f8                                 
01a8e370  ldr       w9, [x9, #0x5cc]                               
01a8e374  ldr       w10, [x8, #0x18]                               
01a8e378  cmp       w9, w10                                        
01a8e37c  b.hs      #0x1a8f2fc                                     
01a8e380  add       x8, x8, w9, sxtw #3                            
01a8e384  mov       x0, x21                                        
01a8e388  mov       x2, xzr                                        
01a8e38c  ldr       x1, [x8, #0x20]                                
01a8e390  bl        #0x2c63780                                     // System.String$$Concat
01a8e394  mov       x21, x0                                        
01a8e398  ldrb      w8, [x19, #0x117]                              
01a8e39c  cbz       w8, #0x1a8e554                                 
01a8e3a0  adrp      x24, #0x3a8c000                                
01a8e3a4  adrp      x23, #0x3a8c000                                
01a8e3a8  ldr       x24, [x24, #0x638]                             
01a8e3ac  ldr       x0, [x24]                                      
01a8e3b0  ldr       w8, [x0, #0xe4]                                
01a8e3b4  ldr       x23, [x23, #0x648]                             
01a8e3b8  cbnz      w8, #0x1a8e3c4                                 
01a8e3bc  bl        #0x183dcb0                                     
01a8e3c0  ldr       x0, [x24]                                      
01a8e3c4  ldr       x8, [x0, #0xb8]                                
01a8e3c8  ldr       x0, [x23]                                      
01a8e3cc  mov       w1, #2                                         
01a8e3d0  ldr       x22, [x8, #0x70]                               
01a8e3d4  bl        #0x183dc20                                     
01a8e3d8  ldr       x8, [x27]                                      
01a8e3dc  ldr       x8, [x8, #0xb8]                                
01a8e3e0  ldr       x8, [x8]                                       
01a8e3e4  cbz       x8, #0x1a8f2f8                                 
01a8e3e8  ldr       x9, [x24]                                      
01a8e3ec  adrp      x28, #0x3a8c000                                
01a8e3f0  ldur      q0, [x8, #0x28]                                
01a8e3f4  mov       x23, x0                                        
01a8e3f8  add       x0, sp, #0x40                                  
01a8e3fc  mov       x1, xzr                                        
01a8e400  ldr       x9, [x9, #0xb8]                                
01a8e404  ldr       x28, [x28, #0x650]                             
01a8e408  ldr       w8, [x8, #0x38]                                
01a8e40c  str       q0, [sp, #0x40]                                
01a8e410  ldr       x25, [x9, #0x250]                              
01a8e414  str       w8, [sp, #0x50]                                
01a8e418  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8e41c  ldr       x8, [x28]                                      
01a8e420  mov       w24, w0                                        
01a8e424  mov       x0, x8                                         
01a8e428  bl        #0x183ddcc                                     
01a8e42c  sxtw      x2, w24                                        
01a8e430  mov       x1, x25                                        
01a8e434  mov       x3, xzr                                        
01a8e438  mov       x24, x0                                        
01a8e43c  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a8e440  cbz       x23, #0x1a8f2f8                                
01a8e444  cbz       x24, #0x1a8e45c                                
01a8e448  ldr       x8, [x23]                                      
01a8e44c  mov       x0, x24                                        
01a8e450  ldr       x1, [x8, #0x40]                                
01a8e454  bl        #0x183dcb4                                     
01a8e458  cbz       x0, #0x1a8f300                                 
01a8e45c  ldr       w8, [x23, #0x18]                               
01a8e460  cbz       w8, #0x1a8f2fc                                 
01a8e464  str       x24, [x23, #0x20]                              
01a8e468  ldr       x8, [x27]                                      
01a8e46c  ldr       x8, [x8, #0xb8]                                
01a8e470  ldr       x8, [x8]                                       
01a8e474  cbz       x8, #0x1a8f2f8                                 
01a8e478  ldur      q0, [x8, #0xf8]                                
01a8e47c  ldr       w8, [x8, #0x108]                               
01a8e480  adrp      x25, #0x3a8c000                                
01a8e484  ldr       x25, [x25, #0x678]                             
01a8e488  add       x0, sp, #0x20                                  
01a8e48c  mov       x1, xzr                                        
01a8e490  str       q0, [sp, #0x20]                                
01a8e494  str       w8, [sp, #0x30]                                
01a8e498  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8e49c  ldr       x8, [x28]                                      
01a8e4a0  mov       w24, w0                                        
01a8e4a4  mov       x0, x8                                         
01a8e4a8  bl        #0x183ddcc                                     
01a8e4ac  sub       w8, w24, #1                                    
01a8e4b0  ldr       x1, [x25]                                      
01a8e4b4  mov       x3, xzr                                        
01a8e4b8  sxtw      x2, w8                                         
01a8e4bc  mov       x24, x0                                        
01a8e4c0  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a8e4c4  cbz       x24, #0x1a8e4dc                                
01a8e4c8  ldr       x8, [x23]                                      
01a8e4cc  mov       x0, x24                                        
01a8e4d0  ldr       x1, [x8, #0x40]                                
01a8e4d4  bl        #0x183dcb4                                     
01a8e4d8  cbz       x0, #0x1a8f300                                 
01a8e4dc  ldr       w8, [x23, #0x18]                               
01a8e4e0  adrp      x28, #0x3a7b000                                
01a8e4e4  adrp      x25, #0x3a8c000                                
01a8e4e8  ldr       x28, [x28, #0xaf0]                             
01a8e4ec  ldr       x25, [x25, #0x6a8]                             
01a8e4f0  tst       w8, #0xfffffffe                                
01a8e4f4  b.eq      #0x1a8f2fc                                     
01a8e4f8  mov       x0, x22                                        
01a8e4fc  mov       x1, x23                                        
01a8e500  mov       x2, xzr                                        
01a8e504  str       x24, [x23, #0x28]                              
01a8e508  bl        #0x1b32abc                                     // Firebase.Analytics.FirebaseAnalytics$$LogEvent
01a8e50c  adrp      x22, #0x3d14000                                
01a8e510  ldrb      w8, [x22, #0x677]                              
01a8e514  cbnz      w8, #0x1a8e52c                                 
01a8e518  adrp      x0, #0x3a7c000                                 
01a8e51c  ldr       x0, [x0, #0xc98]                               
01a8e520  bl        #0x183db90                                     
01a8e524  mov       w8, #1                                         
01a8e528  strb      w8, [x22, #0x677]                              
01a8e52c  adrp      x8, #0x3a7c000                                 
01a8e530  ldr       x8, [x8, #0xc98]                               
01a8e534  ldr       x8, [x8]                                       
01a8e538  ldr       x8, [x8, #0xb8]                                
01a8e53c  ldr       x8, [x8]                                       
01a8e540  cbz       x8, #0x1a8f2f8                                 
01a8e544  ldr       x0, [x8, #0x78]                                
01a8e548  cbz       x0, #0x1a8f2f8                                 
01a8e54c  mov       x1, xzr                                        
01a8e550  bl        #0x1977704                                     // LevelUpPopup$$Show
01a8e554  ldrb      w8, [x19, #0x1e0]                              
01a8e558  cbz       w8, #0x1a8e630                                 
01a8e55c  adrp      x8, #0x3a7b000                                 
01a8e560  mov       w1, #5                                         
01a8e564  ldr       x8, [x8, #0x7c8]                               
01a8e568  ldr       x0, [x8]                                       
01a8e56c  bl        #0x183dc20                                     
01a8e570  cbz       x0, #0x1a8f2f8                                 
01a8e574  ldr       w8, [x0, #0x18]                                
01a8e578  mov       x22, x0                                        
01a8e57c  cbz       w8, #0x1a8f2fc                                 
01a8e580  cmp       w8, #1                                         
01a8e584  str       x21, [x22, #0x20]                              
01a8e588  b.eq      #0x1a8f2fc                                     
01a8e58c  adrp      x9, #0x3a7c000                                 
01a8e590  ldr       x9, [x9, #0x5e0]                               
01a8e594  ldr       x9, [x9]                                       
01a8e598  str       x9, [x22, #0x28]                               
01a8e59c  ldr       x9, [x19, #0x140]                              
01a8e5a0  cbz       x9, #0x1a8f2f8                                 
01a8e5a4  cmp       w8, #2                                         
01a8e5a8  b.ls      #0x1a8f2fc                                     
01a8e5ac  ldr       x9, [x9, #0x80]                                
01a8e5b0  cmp       w8, #3                                         
01a8e5b4  str       x9, [x22, #0x30]                               
01a8e5b8  b.eq      #0x1a8f2fc                                     
01a8e5bc  adrp      x8, #0x3a7b000                                 
01a8e5c0  ldr       x8, [x8, #0xbc8]                               
01a8e5c4  ldr       x8, [x8]                                       
01a8e5c8  str       x8, [x22, #0x38]                               
01a8e5cc  ldr       x8, [x27]                                      
01a8e5d0  ldr       x8, [x8, #0xb8]                                
01a8e5d4  ldr       x9, [x8]                                       
01a8e5d8  cbz       x9, #0x1a8f2f8                                 
01a8e5dc  ldr       x8, [x19, #0x140]                              
01a8e5e0  cbz       x8, #0x1a8f2f8                                 
01a8e5e4  ldr       x0, [x9, #0x1f8]                               
01a8e5e8  cbz       x0, #0x1a8f2f8                                 
01a8e5ec  adrp      x9, #0x3a7c000                                 
01a8e5f0  ldr       x9, [x9, #0xc30]                               
01a8e5f4  ldr       w1, [x8, #0x10]                                
01a8e5f8  ldr       x2, [x9]                                       
01a8e5fc  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a8e600  str       w0, [sp, #0x6c]                                
01a8e604  add       x0, sp, #0x6c                                  
01a8e608  mov       x1, xzr                                        
01a8e60c  bl        #0x2dcd834                                     // System.Int32$$ToString
01a8e610  ldr       w8, [x22, #0x18]                               
01a8e614  cmp       w8, #4                                         
01a8e618  b.ls      #0x1a8f2fc                                     
01a8e61c  str       x0, [x22, #0x40]                               
01a8e620  mov       x0, x22                                        
01a8e624  mov       x1, xzr                                        
01a8e628  bl        #0x2c6e35c                                     // System.String$$Concat
01a8e62c  mov       x21, x0                                        
01a8e630  mov       x0, x19                                        
01a8e634  mov       x1, x21                                        
01a8e638  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a8e63c  mov       x1, x0                                         
01a8e640  mov       x0, x19                                        
01a8e644  mov       x2, xzr                                        
01a8e648  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a8e64c  str       x0, [x19, #0x188]                              
01a8e650  mov       x0, x19                                        
01a8e654  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a8e658  ldr       x8, [x19, #0x118]                              
01a8e65c  cbz       x8, #0x1a8f2f8                                 
01a8e660  ldrsw     x9, [x19, #0x13c]                              
01a8e664  ldr       w10, [x8, #0x18]                               
01a8e668  cmp       w9, w10                                        
01a8e66c  b.hs      #0x1a8f2fc                                     
01a8e670  add       x8, x8, x9, lsl #3                             
01a8e674  ldr       x0, [x8, #0x20]                                
01a8e678  cbz       x0, #0x1a8f2f8                                 
01a8e67c  ldr       w1, [x19, #0xe0]                               
01a8e680  ldr       x2, [x25]                                      
01a8e684  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e688  cbz       x0, #0x1a8f2f8                                 
01a8e68c  ldr       x0, [x0, #0x38]                                
01a8e690  cbz       x0, #0x1a8f2f8                                 
01a8e694  ldr       w1, [x20, #0x18]                               
01a8e698  ldr       x2, [x26]                                      
01a8e69c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e6a0  cbz       x0, #0x1a8f2f8                                 
01a8e6a4  ldr       x0, [x0, #0x20]                                
01a8e6a8  cbz       x0, #0x1a8f2f8                                 
01a8e6ac  ldr       w1, [x19, #0xe4]                               
01a8e6b0  ldr       x2, [x29]                                      
01a8e6b4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e6b8  cbz       x0, #0x1a8f2f8                                 
01a8e6bc  ldr       w8, [x0, #0x18]                                
01a8e6c0  cmn       w8, #1                                         
01a8e6c4  b.eq      #0x1a8e958                                     
01a8e6c8  ldr       x8, [x19, #0x118]                              
01a8e6cc  cbz       x8, #0x1a8f2f8                                 
01a8e6d0  ldrsw     x9, [x19, #0x13c]                              
01a8e6d4  ldr       w10, [x8, #0x18]                               
01a8e6d8  cmp       w9, w10                                        
01a8e6dc  b.hs      #0x1a8f2fc                                     
01a8e6e0  add       x8, x8, x9, lsl #3                             
01a8e6e4  ldr       x0, [x8, #0x20]                                
01a8e6e8  cbz       x0, #0x1a8f2f8                                 
01a8e6ec  ldr       w1, [x19, #0xe0]                               
01a8e6f0  ldr       x2, [x25]                                      
01a8e6f4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e6f8  cbz       x0, #0x1a8f2f8                                 
01a8e6fc  ldr       x0, [x0, #0x38]                                
01a8e700  cbz       x0, #0x1a8f2f8                                 
01a8e704  ldr       w1, [x20, #0x18]                               
01a8e708  ldr       x2, [x26]                                      
01a8e70c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e710  cbz       x0, #0x1a8f2f8                                 
01a8e714  ldr       x0, [x0, #0x20]                                
01a8e718  cbz       x0, #0x1a8f2f8                                 
01a8e71c  ldr       w1, [x19, #0xe4]                               
01a8e720  ldr       x2, [x29]                                      
01a8e724  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e728  cbz       x0, #0x1a8f2f8                                 
01a8e72c  ldr       w8, [x0, #0x18]                                
01a8e730  cmn       w8, #3                                         
01a8e734  b.eq      #0x1a8e87c                                     
01a8e738  ldr       x8, [x27]                                      
01a8e73c  ldr       x8, [x8, #0xb8]                                
01a8e740  ldr       x0, [x8]                                       
01a8e744  cbz       x0, #0x1a8f2f8                                 
01a8e748  mov       w1, wzr                                        
01a8e74c  mov       x2, xzr                                        
01a8e750  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8e754  fcmp      s0, #0.0                                       
01a8e758  b.ls      #0x1a8e87c                                     
01a8e75c  ldr       x8, [x27]                                      
01a8e760  ldr       x8, [x8, #0xb8]                                
01a8e764  ldr       x0, [x8]                                       
01a8e768  cbz       x0, #0x1a8f2f8                                 
01a8e76c  mov       w1, #1                                         
01a8e770  mov       x2, xzr                                        
01a8e774  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8e778  fcmp      s0, #0.0                                       
01a8e77c  b.ls      #0x1a8e87c                                     
01a8e780  ldr       x8, [x19, #0x118]                              
01a8e784  cbz       x8, #0x1a8f2f8                                 
01a8e788  ldrsw     x9, [x19, #0x13c]                              
01a8e78c  ldr       w10, [x8, #0x18]                               
01a8e790  cmp       w9, w10                                        
01a8e794  b.hs      #0x1a8f2fc                                     
01a8e798  add       x8, x8, x9, lsl #3                             
01a8e79c  ldr       x0, [x8, #0x20]                                
01a8e7a0  cbz       x0, #0x1a8f2f8                                 
01a8e7a4  ldr       w1, [x19, #0xe0]                               
01a8e7a8  ldr       x2, [x25]                                      
01a8e7ac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e7b0  cbz       x0, #0x1a8f2f8                                 
01a8e7b4  ldr       x0, [x0, #0x38]                                
01a8e7b8  cbz       x0, #0x1a8f2f8                                 
01a8e7bc  ldr       w1, [x20, #0x18]                               
01a8e7c0  ldr       x2, [x26]                                      
01a8e7c4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e7c8  cbz       x0, #0x1a8f2f8                                 
01a8e7cc  ldr       x0, [x0, #0x20]                                
01a8e7d0  cbz       x0, #0x1a8f2f8                                 
01a8e7d4  ldr       w1, [x19, #0xe4]                               
01a8e7d8  ldr       x2, [x29]                                      
01a8e7dc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e7e0  cbz       x0, #0x1a8f2f8                                 
01a8e7e4  ldr       w8, [x0, #0x18]                                
01a8e7e8  cmn       w8, #2                                         
01a8e7ec  b.ne      #0x1a8ec68                                     
01a8e7f0  ldr       x0, [x19, #0xb8]                               
01a8e7f4  cbz       x0, #0x1a8f2f8                                 
01a8e7f8  adrp      x8, #0x3a8c000                                 
01a8e7fc  mov       w1, wzr                                        
01a8e800  ldr       x8, [x8, #0x610]                               
01a8e804  ldr       x2, [x8]                                       
01a8e808  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e80c  adrp      x8, #0x3a7c000                                 
01a8e810  mov       x21, x0                                        
01a8e814  ldr       x8, [x8, #0xc78]                               
01a8e818  ldr       x8, [x8]                                       
01a8e81c  mov       x0, x8                                         
01a8e820  bl        #0x183ddcc                                     
01a8e824  adrp      x8, #0x3a8c000                                 
01a8e828  mov       x1, x20                                        
01a8e82c  mov       x3, xzr                                        
01a8e830  ldr       x8, [x8, #0x6c0]                               
01a8e834  mov       x22, x0                                        
01a8e838  ldr       x2, [x8]                                       
01a8e83c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8e840  adrp      x20, #0x3a7c000                                
01a8e844  ldr       x20, [x20, #0xde8]                             
01a8e848  ldr       x0, [x20]                                      
01a8e84c  ldr       w8, [x0, #0xe4]                                
01a8e850  cbnz      w8, #0x1a8e85c                                 
01a8e854  bl        #0x183dcb0                                     
01a8e858  ldr       x0, [x20]                                      
01a8e85c  ldr       x8, [x27]                                      
01a8e860  ldr       x8, [x8, #0xb8]                                
01a8e864  ldr       x9, [x8]                                       
01a8e868  cbz       x9, #0x1a8f2f8                                 
01a8e86c  ldr       x8, [x0, #0xb8]                                
01a8e870  ldr       x8, [x8, #0xa8]                                
01a8e874  cbnz      x8, #0x1a8ec04                                 
01a8e878  b         #0x1a8f2f8                                     
01a8e87c  adrp      x8, #0x3a7c000                                 
01a8e880  ldr       x8, [x8, #0xca8]                               
01a8e884  ldr       x8, [x8]                                       
01a8e888  ldr       x8, [x8, #0xb8]                                
01a8e88c  ldr       x21, [x8]                                      
01a8e890  cbz       x21, #0x1a8f2f8                                
01a8e894  ldrb      w8, [x21, #0x20]                               
01a8e898  cbz       w8, #0x1a8e8d8                                 
01a8e89c  adrp      x8, #0x3a7c000                                 
01a8e8a0  mov       w1, #1                                         
01a8e8a4  ldr       x8, [x8, #0x80]                                
01a8e8a8  ldr       x0, [x8]                                       
01a8e8ac  bl        #0x183dc20                                     
01a8e8b0  cbz       x0, #0x1a8f2f8                                 
01a8e8b4  ldr       w8, [x0, #0x18]                                
01a8e8b8  mov       x2, x0                                         
01a8e8bc  cbz       w8, #0x1a8f2fc                                 
01a8e8c0  mov       w8, #1                                         
01a8e8c4  mov       x0, x21                                        
01a8e8c8  mov       w1, #0x11                                      
01a8e8cc  mov       x3, xzr                                        
01a8e8d0  str       w8, [x2, #0x20]                                
01a8e8d4  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01a8e8d8  adrp      x8, #0x3a7e000                                 
01a8e8dc  ldr       x8, [x8, #0x158]                               
01a8e8e0  strb      wzr, [x19, #0x115]                             
01a8e8e4  ldr       x8, [x8]                                       
01a8e8e8  ldr       x8, [x8, #0xb8]                                
01a8e8ec  ldr       x0, [x8]                                       
01a8e8f0  cbz       x0, #0x1a8f2f8                                 
01a8e8f4  mov       x1, xzr                                        
01a8e8f8  bl        #0x198ff3c                                     // InventoryCtrl$$Hide
01a8e8fc  ldr       x8, [x27]                                      
01a8e900  ldr       x8, [x8, #0xb8]                                
01a8e904  ldr       x8, [x8]                                       
01a8e908  cbz       x8, #0x1a8f2f8                                 
01a8e90c  ldr       w9, [x8, #0x10c]                               
01a8e910  ldr       w10, [x8, #0x70]                               
01a8e914  cmp       w9, w10                                        
01a8e918  b.ge      #0x1a8e9e4                                     
01a8e91c  ldr       x0, [x8, #0x2b8]                               
01a8e920  ldr       w1, [x8, #0x2c0]                               
01a8e924  mov       x2, xzr                                        
01a8e928  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a8e92c  ldr       x8, [x27]                                      
01a8e930  ldr       x8, [x8, #0xb8]                                
01a8e934  ldr       x8, [x8]                                       
01a8e938  tbz       w0, #0, #0x1a8ea54                             
01a8e93c  cbz       x8, #0x1a8f2f8                                 
01a8e940  ldr       w8, [x8, #0x10c]                               
01a8e944  cbz       w8, #0x1a8ea68                                 
01a8e948  ldr       w9, [x19, #0x110]                              
01a8e94c  add       w8, w8, w9                                     
01a8e950  sub       w21, w8, #1                                    
01a8e954  b         #0x1a8ea6c                                     
01a8e958  ldr       x0, [x19, #0xb8]                               
01a8e95c  cbz       x0, #0x1a8f2f8                                 
01a8e960  adrp      x8, #0x3a8c000                                 
01a8e964  mov       w1, wzr                                        
01a8e968  ldr       x8, [x8, #0x610]                               
01a8e96c  ldr       x2, [x8]                                       
01a8e970  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8e974  adrp      x8, #0x3a7c000                                 
01a8e978  mov       x21, x0                                        
01a8e97c  ldr       x8, [x8, #0xc78]                               
01a8e980  ldr       x8, [x8]                                       
01a8e984  mov       x0, x8                                         
01a8e988  bl        #0x183ddcc                                     
01a8e98c  adrp      x8, #0x3a8c000                                 
01a8e990  mov       x1, x20                                        
01a8e994  mov       x3, xzr                                        
01a8e998  ldr       x8, [x8, #0x6b0]                               
01a8e99c  mov       x22, x0                                        
01a8e9a0  ldr       x2, [x8]                                       
01a8e9a4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8e9a8  adrp      x20, #0x3a7c000                                
01a8e9ac  ldr       x20, [x20, #0xde8]                             
01a8e9b0  ldr       x0, [x20]                                      
01a8e9b4  ldr       w8, [x0, #0xe4]                                
01a8e9b8  cbnz      w8, #0x1a8e9c4                                 
01a8e9bc  bl        #0x183dcb0                                     
01a8e9c0  ldr       x0, [x20]                                      
01a8e9c4  ldr       x8, [x27]                                      
01a8e9c8  ldr       x8, [x8, #0xb8]                                
01a8e9cc  ldr       x9, [x8]                                       
01a8e9d0  cbz       x9, #0x1a8f2f8                                 
01a8e9d4  ldr       x8, [x0, #0xb8]                                
01a8e9d8  ldr       x8, [x8, #0xb8]                                
01a8e9dc  cbnz      x8, #0x1a8ec04                                 
01a8e9e0  b         #0x1a8f2f8                                     
01a8e9e4  ldr       x0, [x19, #0xb8]                               
01a8e9e8  cbz       x0, #0x1a8f2f8                                 
01a8e9ec  adrp      x8, #0x3a8c000                                 
01a8e9f0  mov       w1, wzr                                        
01a8e9f4  ldr       x8, [x8, #0x610]                               
01a8e9f8  ldr       x2, [x8]                                       
01a8e9fc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ea00  adrp      x8, #0x3a7c000                                 
01a8ea04  mov       x21, x0                                        
01a8ea08  ldr       x8, [x8, #0xc78]                               
01a8ea0c  ldr       x8, [x8]                                       
01a8ea10  mov       x0, x8                                         
01a8ea14  bl        #0x183ddcc                                     
01a8ea18  adrp      x8, #0x3a8c000                                 
01a8ea1c  mov       x1, x20                                        
01a8ea20  mov       x3, xzr                                        
01a8ea24  ldr       x8, [x8, #0x6b8]                               
01a8ea28  mov       x22, x0                                        
01a8ea2c  ldr       x2, [x8]                                       
01a8ea30  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8ea34  adrp      x20, #0x3a7c000                                
01a8ea38  ldr       x20, [x20, #0xde8]                             
01a8ea3c  ldr       x0, [x20]                                      
01a8ea40  ldr       w8, [x0, #0xe4]                                
01a8ea44  cbnz      w8, #0x1a8ebe8                                 
01a8ea48  bl        #0x183dcb0                                     
01a8ea4c  ldr       x0, [x20]                                      
01a8ea50  b         #0x1a8ebe8                                     
01a8ea54  cbz       x8, #0x1a8f2f8                                 
01a8ea58  ldr       w9, [x19, #0x110]                              
01a8ea5c  ldr       w8, [x8, #0x10c]                               
01a8ea60  add       w21, w8, w9                                    
01a8ea64  b         #0x1a8ea6c                                     
01a8ea68  mov       w21, wzr                                       
01a8ea6c  ldr       x0, [x19, #0xb8]                               
01a8ea70  cbz       x0, #0x1a8f2f8                                 
01a8ea74  adrp      x26, #0x3a8c000                                
01a8ea78  mov       w1, wzr                                        
01a8ea7c  ldr       x26, [x26, #0x610]                             
01a8ea80  ldr       x2, [x26]                                      
01a8ea84  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ea88  adrp      x25, #0x3a7c000                                
01a8ea8c  mov       x22, x0                                        
01a8ea90  ldr       x25, [x25, #0xc78]                             
01a8ea94  ldr       x8, [x25]                                      
01a8ea98  mov       x0, x8                                         
01a8ea9c  bl        #0x183ddcc                                     
01a8eaa0  adrp      x8, #0x3a8c000                                 
01a8eaa4  mov       x1, x20                                        
01a8eaa8  mov       x3, xzr                                        
01a8eaac  ldr       x8, [x8, #0x6c8]                               
01a8eab0  mov       x23, x0                                        
01a8eab4  ldr       x2, [x8]                                       
01a8eab8  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8eabc  adrp      x24, #0x3a7c000                                
01a8eac0  ldr       x24, [x24, #0xde8]                             
01a8eac4  ldr       x0, [x24]                                      
01a8eac8  ldr       w8, [x0, #0xe4]                                
01a8eacc  cbnz      w8, #0x1a8ead8                                 
01a8ead0  bl        #0x183dcb0                                     
01a8ead4  ldr       x0, [x24]                                      
01a8ead8  ldr       x8, [x27]                                      
01a8eadc  ldr       x8, [x8, #0xb8]                                
01a8eae0  ldr       x9, [x8]                                       
01a8eae4  cbz       x9, #0x1a8f2f8                                 
01a8eae8  ldr       x8, [x0, #0xb8]                                
01a8eaec  ldr       x8, [x8, #0xc0]                                
01a8eaf0  cbz       x8, #0x1a8f2f8                                 
01a8eaf4  ldr       x11, [x8, #0x10]                               
01a8eaf8  ldrsw     x10, [x9, #0x10c]                              
01a8eafc  ldr       w12, [x11]                                     
01a8eb00  cmp       w10, w12                                       
01a8eb04  b.hs      #0x1a8f2fc                                     
01a8eb08  ldrsw     x9, [x9, #0x5cc]                               
01a8eb0c  ldr       x11, [x11, #0x10]                              
01a8eb10  cmp       w9, w11                                        
01a8eb14  b.hs      #0x1a8f2fc                                     
01a8eb18  madd      x9, x11, x10, x9                               
01a8eb1c  ldr       x7, [x28]                                      
01a8eb20  mov       x0, x19                                        
01a8eb24  mov       x1, x22                                        
01a8eb28  mov       w2, #1                                         
01a8eb2c  mov       x3, x23                                        
01a8eb30  mov       x5, xzr                                        
01a8eb34  mov       w6, w21                                        
01a8eb38  add       x8, x8, x9, lsl #3                             
01a8eb3c  ldr       x4, [x8, #0x20]                                
01a8eb40  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a8eb44  ldr       x8, [x27]                                      
01a8eb48  ldr       x8, [x8, #0xb8]                                
01a8eb4c  ldr       x8, [x8]                                       
01a8eb50  cbz       x8, #0x1a8f2f8                                 
01a8eb54  ldr       x0, [x8, #0x2b8]                               
01a8eb58  ldr       w1, [x8, #0x2c0]                               
01a8eb5c  mov       x2, xzr                                        
01a8eb60  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a8eb64  tbnz      w0, #0, #0x1a8eb94                             
01a8eb68  ldr       x8, [x27]                                      
01a8eb6c  ldr       x8, [x8, #0xb8]                                
01a8eb70  ldr       x8, [x8]                                       
01a8eb74  cbz       x8, #0x1a8f2f8                                 
01a8eb78  ldr       w9, [x8, #0x10c]                               
01a8eb7c  cbnz      w9, #0x1a8eb94                                 
01a8eb80  ldr       x0, [x8, #0x98]                                
01a8eb84  ldr       w1, [x8, #0xa0]                                
01a8eb88  mov       x2, xzr                                        
01a8eb8c  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a8eb90  tbz       w0, #0, #0x1a8ed4c                             
01a8eb94  ldr       x0, [x19, #0xb8]                               
01a8eb98  cbz       x0, #0x1a8f2f8                                 
01a8eb9c  ldr       x2, [x26]                                      
01a8eba0  mov       w1, #1                                         
01a8eba4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8eba8  ldr       x8, [x25]                                      
01a8ebac  mov       x21, x0                                        
01a8ebb0  mov       x0, x8                                         
01a8ebb4  bl        #0x183ddcc                                     
01a8ebb8  adrp      x8, #0x3a8c000                                 
01a8ebbc  mov       x1, x20                                        
01a8ebc0  mov       x3, xzr                                        
01a8ebc4  ldr       x8, [x8, #0x6e0]                               
01a8ebc8  mov       x22, x0                                        
01a8ebcc  ldr       x2, [x8]                                       
01a8ebd0  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8ebd4  ldr       x0, [x24]                                      
01a8ebd8  ldr       w8, [x0, #0xe4]                                
01a8ebdc  cbnz      w8, #0x1a8ebe8                                 
01a8ebe0  bl        #0x183dcb0                                     
01a8ebe4  ldr       x0, [x24]                                      
01a8ebe8  ldr       x8, [x27]                                      
01a8ebec  ldr       x8, [x8, #0xb8]                                
01a8ebf0  ldr       x9, [x8]                                       
01a8ebf4  cbz       x9, #0x1a8f2f8                                 
01a8ebf8  ldr       x8, [x0, #0xb8]                                
01a8ebfc  ldr       x8, [x8, #0xc8]                                
01a8ec00  cbz       x8, #0x1a8f2f8                                 
01a8ec04  ldrsw     x9, [x9, #0x5cc]                               
01a8ec08  ldr       w10, [x8, #0x18]                               
01a8ec0c  cmp       w9, w10                                        
01a8ec10  b.hs      #0x1a8f2fc                                     
01a8ec14  add       x8, x8, x9, lsl #3                             
01a8ec18  ldr       x7, [x28]                                      
01a8ec1c  mov       x0, x19                                        
01a8ec20  mov       x1, x21                                        
01a8ec24  mov       w2, #1                                         
01a8ec28  mov       x3, x22                                        
01a8ec2c  ldr       x4, [x8, #0x20]                                
01a8ec30  mov       x5, xzr                                        
01a8ec34  mov       w6, wzr                                        
01a8ec38  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a8ec3c  mov       x0, x19                                        
01a8ec40  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a8ec44  ldp       x20, x19, [sp, #0xc0]                          
01a8ec48  ldr       d8, [sp, #0x60]                                
01a8ec4c  ldp       x22, x21, [sp, #0xb0]                          
01a8ec50  ldp       x24, x23, [sp, #0xa0]                          
01a8ec54  ldp       x26, x25, [sp, #0x90]                          
01a8ec58  ldp       x28, x27, [sp, #0x80]                          
01a8ec5c  ldp       x29, x30, [sp, #0x70]                          
01a8ec60  add       sp, sp, #0xd0                                  
01a8ec64  ret                                                      
01a8ec68  ldrb      w8, [x19, #0x1e0]                              
01a8ec6c  cbz       w8, #0x1a8ee68                                 
01a8ec70  adrp      x8, #0x3a8c000                                 
01a8ec74  ldr       x8, [x8, #0x700]                               
01a8ec78  ldr       x0, [x8]                                       
01a8ec7c  bl        #0x183ddcc                                     
01a8ec80  mov       x1, xzr                                        
01a8ec84  mov       x21, x0                                        
01a8ec88  bl        #0x1ab23b0                                     // EventCtrl.<>c__DisplayClass123_1$$.ctor
01a8ec8c  cbz       x21, #0x1a8f2f8                                
01a8ec90  ldr       x8, [x19, #0x118]                              
01a8ec94  str       x20, [x21, #0x18]                              
01a8ec98  cbz       x8, #0x1a8f2f8                                 
01a8ec9c  ldrsw     x9, [x19, #0x13c]                              
01a8eca0  ldr       w10, [x8, #0x18]                               
01a8eca4  cmp       w9, w10                                        
01a8eca8  b.hs      #0x1a8f2fc                                     
01a8ecac  add       x8, x8, x9, lsl #3                             
01a8ecb0  ldr       x0, [x8, #0x20]                                
01a8ecb4  cbz       x0, #0x1a8f2f8                                 
01a8ecb8  ldr       w1, [x19, #0xe0]                               
01a8ecbc  ldr       x2, [x25]                                      
01a8ecc0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ecc4  cbz       x0, #0x1a8f2f8                                 
01a8ecc8  ldr       x8, [x21, #0x18]                               
01a8eccc  cbz       x8, #0x1a8f2f8                                 
01a8ecd0  ldr       x0, [x0, #0x38]                                
01a8ecd4  cbz       x0, #0x1a8f2f8                                 
01a8ecd8  ldr       w1, [x8, #0x18]                                
01a8ecdc  ldr       x2, [x26]                                      
01a8ece0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ece4  cbz       x0, #0x1a8f2f8                                 
01a8ece8  ldr       x0, [x0, #0x20]                                
01a8ecec  cbz       x0, #0x1a8f2f8                                 
01a8ecf0  ldr       w1, [x19, #0xe4]                               
01a8ecf4  ldr       x2, [x29]                                      
01a8ecf8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ecfc  cbz       x0, #0x1a8f2f8                                 
01a8ed00  ldr       w1, [x0, #0x38]                                
01a8ed04  mov       x0, x19                                        
01a8ed08  bl        #0x1a9e368                                     // EventCtrl$$GetWinRateStrByPercent
01a8ed0c  adrp      x8, #0x3a7d000                                 
01a8ed10  mov       x20, x21                                       
01a8ed14  mov       x2, xzr                                        
01a8ed18  ldr       x8, [x8, #0x130]                               
01a8ed1c  str       s0, [x20, #0x10]!                              
01a8ed20  mov       x0, x20                                        
01a8ed24  ldr       x1, [x8]                                       
01a8ed28  bl        #0x2de259c                                     // System.Single$$ToString
01a8ed2c  adrp      x8, #0xa13000                                  
01a8ed30  ldr       s0, [x20]                                      
01a8ed34  ldr       s1, [x8, #0xc8]                                
01a8ed38  fcmp      s0, s1                                         
01a8ed3c  b.pl      #0x1a8eee0                                     
01a8ed40  adrp      x8, #0x3a8c000                                 
01a8ed44  ldr       x8, [x8, #0x710]                               
01a8ed48  b         #0x1a8eefc                                     
01a8ed4c  ldr       x0, [x19, #0xb8]                               
01a8ed50  cbz       x0, #0x1a8f2f8                                 
01a8ed54  ldr       x2, [x26]                                      
01a8ed58  mov       w1, #1                                         
01a8ed5c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ed60  ldr       x8, [x25]                                      
01a8ed64  mov       x21, x0                                        
01a8ed68  mov       x0, x8                                         
01a8ed6c  bl        #0x183ddcc                                     
01a8ed70  adrp      x8, #0x3a8c000                                 
01a8ed74  mov       x1, x20                                        
01a8ed78  mov       x3, xzr                                        
01a8ed7c  ldr       x8, [x8, #0x6d0]                               
01a8ed80  mov       x22, x0                                        
01a8ed84  ldr       x2, [x8]                                       
01a8ed88  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8ed8c  ldr       x0, [x24]                                      
01a8ed90  ldr       w8, [x0, #0xe4]                                
01a8ed94  cbnz      w8, #0x1a8eda0                                 
01a8ed98  bl        #0x183dcb0                                     
01a8ed9c  ldr       x0, [x24]                                      
01a8eda0  ldr       x8, [x27]                                      
01a8eda4  ldr       x8, [x8, #0xb8]                                
01a8eda8  ldr       x9, [x8]                                       
01a8edac  cbz       x9, #0x1a8f2f8                                 
01a8edb0  ldr       x8, [x0, #0xb8]                                
01a8edb4  ldr       x8, [x8, #0xc0]                                
01a8edb8  cbz       x8, #0x1a8f2f8                                 
01a8edbc  ldr       x11, [x8, #0x10]                               
01a8edc0  ldrsw     x10, [x9, #0x10c]                              
01a8edc4  ldr       w12, [x11]                                     
01a8edc8  cmp       w10, w12                                       
01a8edcc  b.hs      #0x1a8f2fc                                     
01a8edd0  ldrsw     x9, [x9, #0x5cc]                               
01a8edd4  ldr       x11, [x11, #0x10]                              
01a8edd8  cmp       w9, w11                                        
01a8eddc  b.hs      #0x1a8f2fc                                     
01a8ede0  madd      x9, x11, x10, x9                               
01a8ede4  ldr       x7, [x28]                                      
01a8ede8  mov       x0, x19                                        
01a8edec  mov       x1, x21                                        
01a8edf0  mov       w2, #1                                         
01a8edf4  mov       x3, x22                                        
01a8edf8  mov       x5, xzr                                        
01a8edfc  mov       w6, #-1                                        
01a8ee00  add       x8, x8, x9, lsl #3                             
01a8ee04  ldr       x4, [x8, #0x20]                                
01a8ee08  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a8ee0c  ldr       x0, [x19, #0xb8]                               
01a8ee10  cbz       x0, #0x1a8f2f8                                 
01a8ee14  ldr       x2, [x26]                                      
01a8ee18  mov       w1, #2                                         
01a8ee1c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ee20  ldr       x8, [x25]                                      
01a8ee24  mov       x21, x0                                        
01a8ee28  mov       x0, x8                                         
01a8ee2c  bl        #0x183ddcc                                     
01a8ee30  adrp      x8, #0x3a8c000                                 
01a8ee34  mov       x1, x20                                        
01a8ee38  mov       x3, xzr                                        
01a8ee3c  ldr       x8, [x8, #0x6d8]                               
01a8ee40  mov       x22, x0                                        
01a8ee44  ldr       x2, [x8]                                       
01a8ee48  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8ee4c  ldr       x8, [x27]                                      
01a8ee50  ldr       x8, [x8, #0xb8]                                
01a8ee54  ldr       x9, [x8]                                       
01a8ee58  cbz       x9, #0x1a8f2f8                                 
01a8ee5c  ldr       x8, [x24]                                      
01a8ee60  ldr       x8, [x8, #0xb8]                                
01a8ee64  b         #0x1a8ebfc                                     
01a8ee68  ldr       x8, [x19, #0x118]                              
01a8ee6c  cbz       x8, #0x1a8f2f8                                 
01a8ee70  ldrsw     x9, [x19, #0x13c]                              
01a8ee74  ldr       w10, [x8, #0x18]                               
01a8ee78  cmp       w9, w10                                        
01a8ee7c  b.hs      #0x1a8f2fc                                     
01a8ee80  add       x8, x8, x9, lsl #3                             
01a8ee84  ldr       x0, [x8, #0x20]                                
01a8ee88  cbz       x0, #0x1a8f2f8                                 
01a8ee8c  ldr       w1, [x19, #0xe0]                               
01a8ee90  ldr       x2, [x25]                                      
01a8ee94  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ee98  cbz       x0, #0x1a8f2f8                                 
01a8ee9c  ldr       x0, [x0, #0x38]                                
01a8eea0  cbz       x0, #0x1a8f2f8                                 
01a8eea4  ldr       w1, [x20, #0x18]                               
01a8eea8  ldr       x2, [x26]                                      
01a8eeac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8eeb0  cbz       x0, #0x1a8f2f8                                 
01a8eeb4  ldr       x0, [x0, #0x20]                                
01a8eeb8  cbz       x0, #0x1a8f2f8                                 
01a8eebc  ldr       w1, [x19, #0xe4]                               
01a8eec0  ldr       x2, [x29]                                      
01a8eec4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8eec8  cbz       x0, #0x1a8f2f8                                 
01a8eecc  ldr       w8, [x0, #0x18]                                
01a8eed0  mov       x0, x19                                        
01a8eed4  str       w8, [x19, #0xe0]                               
01a8eed8  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01a8eedc  b         #0x1a8ec3c                                     
01a8eee0  adrp      x8, #0xa13000                                  
01a8eee4  mov       x20, x0                                        
01a8eee8  ldr       s1, [x8, #0x1c4]                               
01a8eeec  fcmp      s0, s1                                         
01a8eef0  b.le      #0x1a8ef00                                     
01a8eef4  adrp      x8, #0x3a8c000                                 
01a8eef8  ldr       x8, [x8, #0x708]                               
01a8eefc  ldr       x20, [x8]                                      
01a8ef00  ldr       x0, [x19, #0xb8]                               
01a8ef04  cbz       x0, #0x1a8f2f8                                 
01a8ef08  adrp      x29, #0x3a8c000                                
01a8ef0c  mov       w1, wzr                                        
01a8ef10  ldr       x29, [x29, #0x610]                             
01a8ef14  ldr       x2, [x29]                                      
01a8ef18  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ef1c  adrp      x26, #0x3a7c000                                
01a8ef20  mov       x22, x0                                        
01a8ef24  ldr       x26, [x26, #0xc78]                             
01a8ef28  ldr       x8, [x26]                                      
01a8ef2c  mov       x0, x8                                         
01a8ef30  bl        #0x183ddcc                                     
01a8ef34  adrp      x8, #0x3a8c000                                 
01a8ef38  mov       x1, x21                                        
01a8ef3c  mov       x3, xzr                                        
01a8ef40  ldr       x8, [x8, #0x6f0]                               
01a8ef44  mov       x23, x0                                        
01a8ef48  ldr       x2, [x8]                                       
01a8ef4c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8ef50  adrp      x8, #0x3a7b000                                 
01a8ef54  mov       w1, #6                                         
01a8ef58  ldr       x8, [x8, #0x7c8]                               
01a8ef5c  ldr       x0, [x8]                                       
01a8ef60  bl        #0x183dc20                                     
01a8ef64  adrp      x25, #0x3a7c000                                
01a8ef68  mov       x24, x0                                        
01a8ef6c  ldr       x25, [x25, #0xde8]                             
01a8ef70  ldr       x8, [x25]                                      
01a8ef74  ldr       w9, [x8, #0xe4]                                
01a8ef78  cbnz      w9, #0x1a8ef88                                 
01a8ef7c  mov       x0, x8                                         
01a8ef80  bl        #0x183dcb0                                     
01a8ef84  ldr       x8, [x25]                                      
01a8ef88  ldr       x9, [x27]                                      
01a8ef8c  ldr       x9, [x9, #0xb8]                                
01a8ef90  ldr       x10, [x9]                                      
01a8ef94  cbz       x10, #0x1a8f2f8                                
01a8ef98  ldr       x8, [x8, #0xb8]                                
01a8ef9c  ldr       x9, [x8, #0x90]                                
01a8efa0  cbz       x9, #0x1a8f2f8                                 
01a8efa4  ldrsw     x10, [x10, #0x5cc]                             
01a8efa8  ldr       w8, [x9, #0x18]                                
01a8efac  cmp       w10, w8                                        
01a8efb0  b.hs      #0x1a8f2fc                                     
01a8efb4  cbz       x24, #0x1a8f2f8                                
01a8efb8  ldr       w8, [x24, #0x18]                               
01a8efbc  cbz       w8, #0x1a8f2fc                                 
01a8efc0  add       x9, x9, x10, lsl #3                            
01a8efc4  cmp       w8, #1                                         
01a8efc8  ldr       x9, [x9, #0x20]                                
01a8efcc  str       x9, [x24, #0x20]                               
01a8efd0  b.eq      #0x1a8f2fc                                     
01a8efd4  adrp      x9, #0x3a8c000                                 
01a8efd8  ldr       x9, [x9, #0x718]                               
01a8efdc  ldr       x9, [x9]                                       
01a8efe0  str       x9, [x24, #0x28]                               
01a8efe4  ldr       x9, [x27]                                      
01a8efe8  ldr       x9, [x9, #0xb8]                                
01a8efec  ldr       x10, [x9]                                      
01a8eff0  cbz       x10, #0x1a8f2f8                                
01a8eff4  ldr       x9, [x25]                                      
01a8eff8  ldr       x9, [x9, #0xb8]                                
01a8effc  ldr       x9, [x9, #0xe8]                                
01a8f000  cbz       x9, #0x1a8f2f8                                 
01a8f004  ldrsw     x10, [x10, #0x5cc]                             
01a8f008  ldr       w11, [x9, #0x18]                               
01a8f00c  cmp       w10, w11                                       
01a8f010  b.hs      #0x1a8f2fc                                     
01a8f014  cmp       w8, #2                                         
01a8f018  b.ls      #0x1a8f2fc                                     
01a8f01c  add       x9, x9, x10, lsl #3                            
01a8f020  cmp       w8, #3                                         
01a8f024  ldr       x9, [x9, #0x20]                                
01a8f028  str       x9, [x24, #0x30]                               
01a8f02c  b.eq      #0x1a8f2fc                                     
01a8f030  adrp      x9, #0x3a7c000                                 
01a8f034  cmp       w8, #4                                         
01a8f038  ldr       x9, [x9, #0x4e0]                               
01a8f03c  ldr       x9, [x9]                                       
01a8f040  str       x9, [x24, #0x38]                               
01a8f044  b.ls      #0x1a8f2fc                                     
01a8f048  cmp       w8, #5                                         
01a8f04c  str       x20, [x24, #0x40]                              
01a8f050  b.eq      #0x1a8f2fc                                     
01a8f054  adrp      x8, #0x3a7e000                                 
01a8f058  mov       x0, x24                                        
01a8f05c  mov       x1, xzr                                        
01a8f060  ldr       x8, [x8, #0x470]                               
01a8f064  ldr       x8, [x8]                                       
01a8f068  str       x8, [x24, #0x48]                               
01a8f06c  bl        #0x2c6e35c                                     // System.String$$Concat
01a8f070  ldr       x7, [x28]                                      
01a8f074  mov       x4, x0                                         
01a8f078  mov       x0, x19                                        
01a8f07c  mov       x1, x22                                        
01a8f080  mov       w2, #1                                         
01a8f084  mov       x3, x23                                        
01a8f088  mov       x5, xzr                                        
01a8f08c  mov       w6, wzr                                        
01a8f090  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a8f094  ldr       x8, [x27]                                      
01a8f098  ldr       x8, [x8, #0xb8]                                
01a8f09c  ldr       x8, [x8]                                       
01a8f0a0  cbz       x8, #0x1a8f2f8                                 
01a8f0a4  ldr       x0, [x8, #0x2b8]                               
01a8f0a8  ldr       w1, [x8, #0x2c0]                               
01a8f0ac  mov       x2, xzr                                        
01a8f0b0  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a8f0b4  mov       w8, w0                                         
01a8f0b8  ldr       x0, [x19, #0xb8]                               
01a8f0bc  tbz       w8, #0, #0x1a8f230                             
01a8f0c0  cbz       x0, #0x1a8f2f8                                 
01a8f0c4  ldr       x2, [x29]                                      
01a8f0c8  mov       w1, #1                                         
01a8f0cc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8f0d0  ldr       x8, [x26]                                      
01a8f0d4  mov       x22, x0                                        
01a8f0d8  mov       x0, x8                                         
01a8f0dc  bl        #0x183ddcc                                     
01a8f0e0  adrp      x8, #0x3a8c000                                 
01a8f0e4  mov       x1, x21                                        
01a8f0e8  mov       x3, xzr                                        
01a8f0ec  ldr       x8, [x8, #0x6f8]                               
01a8f0f0  mov       x23, x0                                        
01a8f0f4  ldr       x2, [x8]                                       
01a8f0f8  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8f0fc  adrp      x8, #0x3a7b000                                 
01a8f100  mov       w1, #6                                         
01a8f104  ldr       x8, [x8, #0x7c8]                               
01a8f108  ldr       x0, [x8]                                       
01a8f10c  bl        #0x183dc20                                     
01a8f110  ldr       x8, [x25]                                      
01a8f114  mov       x21, x0                                        
01a8f118  ldr       w9, [x8, #0xe4]                                
01a8f11c  cbnz      w9, #0x1a8f12c                                 
01a8f120  mov       x0, x8                                         
01a8f124  bl        #0x183dcb0                                     
01a8f128  ldr       x8, [x25]                                      
01a8f12c  ldr       x9, [x27]                                      
01a8f130  adrp      x11, #0x3a8c000                                
01a8f134  ldr       x9, [x9, #0xb8]                                
01a8f138  ldr       x10, [x9]                                      
01a8f13c  ldr       x11, [x11, #0x718]                             
01a8f140  cbz       x10, #0x1a8f2f8                                
01a8f144  ldr       x8, [x8, #0xb8]                                
01a8f148  ldr       x9, [x8, #0x98]                                
01a8f14c  cbz       x9, #0x1a8f2f8                                 
01a8f150  ldrsw     x10, [x10, #0x5cc]                             
01a8f154  ldr       w8, [x9, #0x18]                                
01a8f158  cmp       w10, w8                                        
01a8f15c  b.hs      #0x1a8f2fc                                     
01a8f160  cbz       x21, #0x1a8f2f8                                
01a8f164  ldr       w8, [x21, #0x18]                               
01a8f168  cbz       w8, #0x1a8f2fc                                 
01a8f16c  add       x9, x9, x10, lsl #3                            
01a8f170  cmp       w8, #1                                         
01a8f174  ldr       x9, [x9, #0x20]                                
01a8f178  str       x9, [x21, #0x20]                               
01a8f17c  b.eq      #0x1a8f2fc                                     
01a8f180  ldr       x9, [x11]                                      
01a8f184  str       x9, [x21, #0x28]                               
01a8f188  ldr       x9, [x27]                                      
01a8f18c  ldr       x9, [x9, #0xb8]                                
01a8f190  ldr       x10, [x9]                                      
01a8f194  cbz       x10, #0x1a8f2f8                                
01a8f198  ldr       x9, [x25]                                      
01a8f19c  ldr       x9, [x9, #0xb8]                                
01a8f1a0  ldr       x9, [x9, #0xe8]                                
01a8f1a4  cbz       x9, #0x1a8f2f8                                 
01a8f1a8  ldrsw     x10, [x10, #0x5cc]                             
01a8f1ac  ldr       w11, [x9, #0x18]                               
01a8f1b0  cmp       w10, w11                                       
01a8f1b4  b.hs      #0x1a8f2fc                                     
01a8f1b8  cmp       w8, #2                                         
01a8f1bc  b.ls      #0x1a8f2fc                                     
01a8f1c0  add       x9, x9, x10, lsl #3                            
01a8f1c4  cmp       w8, #3                                         
01a8f1c8  ldr       x9, [x9, #0x20]                                
01a8f1cc  str       x9, [x21, #0x30]                               
01a8f1d0  b.eq      #0x1a8f2fc                                     
01a8f1d4  adrp      x9, #0x3a7c000                                 
01a8f1d8  cmp       w8, #4                                         
01a8f1dc  ldr       x9, [x9, #0x4e0]                               
01a8f1e0  ldr       x9, [x9]                                       
01a8f1e4  str       x9, [x21, #0x38]                               
01a8f1e8  b.ls      #0x1a8f2fc                                     
01a8f1ec  cmp       w8, #5                                         
01a8f1f0  str       x20, [x21, #0x40]                              
01a8f1f4  b.eq      #0x1a8f2fc                                     
01a8f1f8  adrp      x8, #0x3a7e000                                 
01a8f1fc  mov       x0, x21                                        
01a8f200  mov       x1, xzr                                        
01a8f204  ldr       x8, [x8, #0x470]                               
01a8f208  ldr       x8, [x8]                                       
01a8f20c  str       x8, [x21, #0x48]                               
01a8f210  bl        #0x2c6e35c                                     // System.String$$Concat
01a8f214  ldr       x7, [x28]                                      
01a8f218  mov       x4, x0                                         
01a8f21c  mov       x0, x19                                        
01a8f220  mov       x1, x22                                        
01a8f224  mov       w2, #1                                         
01a8f228  mov       x3, x23                                        
01a8f22c  b         #0x1a8ec30                                     
01a8f230  cbz       x0, #0x1a8f2f8                                 
01a8f234  ldr       x2, [x29]                                      
01a8f238  mov       w1, #1                                         
01a8f23c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8f240  ldr       x8, [x26]                                      
01a8f244  ldr       x22, [x21, #0x18]                              
01a8f248  mov       x20, x0                                        
01a8f24c  mov       x0, x8                                         
01a8f250  bl        #0x183ddcc                                     
01a8f254  adrp      x8, #0x3a8c000                                 
01a8f258  mov       x1, x22                                        
01a8f25c  mov       x3, xzr                                        
01a8f260  ldr       x8, [x8, #0x6e8]                               
01a8f264  mov       x21, x0                                        
01a8f268  ldr       x2, [x8]                                       
01a8f26c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a8f270  ldr       x0, [x25]                                      
01a8f274  ldr       w8, [x0, #0xe4]                                
01a8f278  cbnz      w8, #0x1a8f284                                 
01a8f27c  bl        #0x183dcb0                                     
01a8f280  ldr       x0, [x25]                                      
01a8f284  ldr       x8, [x27]                                      
01a8f288  ldr       x8, [x8, #0xb8]                                
01a8f28c  ldr       x9, [x8]                                       
01a8f290  cbz       x9, #0x1a8f2f8                                 
01a8f294  ldr       x10, [x0, #0xb8]                               
01a8f298  ldr       x8, [x10, #0x98]                               
01a8f29c  cbz       x8, #0x1a8f2f8                                 
01a8f2a0  ldrsw     x9, [x9, #0x5cc]                               
01a8f2a4  ldr       w11, [x8, #0x18]                               
01a8f2a8  cmp       w9, w11                                        
01a8f2ac  b.hs      #0x1a8f2fc                                     
01a8f2b0  ldr       x10, [x10, #0xa0]                              
01a8f2b4  cbz       x10, #0x1a8f2f8                                
01a8f2b8  ldr       w11, [x10, #0x18]                              
01a8f2bc  cmp       w9, w11                                        
01a8f2c0  b.hs      #0x1a8f2fc                                     
01a8f2c4  add       x8, x8, x9, lsl #3                             
01a8f2c8  add       x9, x10, x9, lsl #3                            
01a8f2cc  mov       x2, xzr                                        
01a8f2d0  ldr       x0, [x8, #0x20]                                
01a8f2d4  ldr       x1, [x9, #0x20]                                
01a8f2d8  bl        #0x2c63780                                     // System.String$$Concat
01a8f2dc  ldr       x7, [x28]                                      
01a8f2e0  mov       x4, x0                                         
01a8f2e4  mov       x0, x19                                        
01a8f2e8  mov       x1, x20                                        
01a8f2ec  mov       w2, wzr                                        
01a8f2f0  mov       x3, x21                                        
01a8f2f4  b         #0x1a8ec30                                     
01a8f2f8  bl        #0x183dddc                                     
01a8f2fc  bl        #0x183dde4                                     
01a8f300  bl        #0x183de00                                     
01a8f304  mov       x1, xzr                                        
01a8f308  bl        #0x183dca0                                     