int32_t EventCtrl__GetRandomEventIndex (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a9a280 to 0x1a9a914
01a9a280  stp       x29, x30, [sp, #-0x60]!                        
01a9a284  stp       x28, x27, [sp, #0x10]                          
01a9a288  stp       x26, x25, [sp, #0x20]                          
01a9a28c  stp       x24, x23, [sp, #0x30]                          
01a9a290  stp       x22, x21, [sp, #0x40]                          
01a9a294  stp       x20, x19, [sp, #0x50]                          
01a9a298  adrp      x20, #0x3d14000                                
01a9a29c  mov       x19, x0                                        
01a9a2a0  ldrb      w8, [x20, #0xce3]                              
01a9a2a4  tbnz      w8, #0, #0x1a9a3a0                             
01a9a2a8  adrp      x0, #0x3a7c000                                 
01a9a2ac  ldr       x0, [x0, #0xc08]                               
01a9a2b0  bl        #0x183db90                                     
01a9a2b4  adrp      x0, #0x3a8c000                                 
01a9a2b8  ldr       x0, [x0, #0x988]                               
01a9a2bc  bl        #0x183db90                                     
01a9a2c0  adrp      x0, #0x3a8c000                                 
01a9a2c4  ldr       x0, [x0, #0x990]                               
01a9a2c8  bl        #0x183db90                                     
01a9a2cc  adrp      x0, #0x3a8c000                                 
01a9a2d0  ldr       x0, [x0, #0x998]                               
01a9a2d4  bl        #0x183db90                                     
01a9a2d8  adrp      x0, #0x3a8c000                                 
01a9a2dc  ldr       x0, [x0, #0x948]                               
01a9a2e0  bl        #0x183db90                                     
01a9a2e4  adrp      x0, #0x3a8c000                                 
01a9a2e8  ldr       x0, [x0, #0x950]                               
01a9a2ec  bl        #0x183db90                                     
01a9a2f0  adrp      x0, #0x3a8c000                                 
01a9a2f4  ldr       x0, [x0, #0x9a0]                               
01a9a2f8  bl        #0x183db90                                     
01a9a2fc  adrp      x0, #0x3a8c000                                 
01a9a300  ldr       x0, [x0, #0x958]                               
01a9a304  bl        #0x183db90                                     
01a9a308  adrp      x0, #0x3a8c000                                 
01a9a30c  ldr       x0, [x0, #0x960]                               
01a9a310  bl        #0x183db90                                     
01a9a314  adrp      x0, #0x3a8c000                                 
01a9a318  ldr       x0, [x0, #0x968]                               
01a9a31c  bl        #0x183db90                                     
01a9a320  adrp      x0, #0x3a7c000                                 
01a9a324  ldr       x0, [x0, #0xc20]                               
01a9a328  bl        #0x183db90                                     
01a9a32c  adrp      x0, #0x3a7c000                                 
01a9a330  ldr       x0, [x0, #0xc30]                               
01a9a334  bl        #0x183db90                                     
01a9a338  adrp      x0, #0x3a8c000                                 
01a9a33c  ldr       x0, [x0, #0x6a8]                               
01a9a340  bl        #0x183db90                                     
01a9a344  adrp      x0, #0x3a8c000                                 
01a9a348  ldr       x0, [x0, #0x970]                               
01a9a34c  bl        #0x183db90                                     
01a9a350  adrp      x0, #0x3a8c000                                 
01a9a354  ldr       x0, [x0, #0x978]                               
01a9a358  bl        #0x183db90                                     
01a9a35c  adrp      x0, #0x3a8c000                                 
01a9a360  ldr       x0, [x0, #0x9a8]                               
01a9a364  bl        #0x183db90                                     
01a9a368  adrp      x0, #0x3a8c000                                 
01a9a36c  ldr       x0, [x0, #0x9b0]                               
01a9a370  bl        #0x183db90                                     
01a9a374  adrp      x0, #0x3a8c000                                 
01a9a378  ldr       x0, [x0, #0x9b8]                               
01a9a37c  bl        #0x183db90                                     
01a9a380  adrp      x0, #0x3a8c000                                 
01a9a384  ldr       x0, [x0, #0x9c0]                               
01a9a388  bl        #0x183db90                                     
01a9a38c  adrp      x0, #0x3a8c000                                 
01a9a390  ldr       x0, [x0, #0x668]                               
01a9a394  bl        #0x183db90                                     
01a9a398  mov       w8, #1                                         
01a9a39c  strb      w8, [x20, #0xce3]                              
01a9a3a0  ldr       x8, [x19, #0x118]                              
01a9a3a4  cbz       x8, #0x1a9a67c                                 
01a9a3a8  ldrsw     x9, [x19, #0x13c]                              
01a9a3ac  ldr       w10, [x8, #0x18]                               
01a9a3b0  cmp       w9, w10                                        
01a9a3b4  b.hs      #0x1a9a910                                     
01a9a3b8  adrp      x26, #0x3a8c000                                
01a9a3bc  add       x8, x8, x9, lsl #3                             
01a9a3c0  ldr       x26, [x26, #0x668]                             
01a9a3c4  ldr       x20, [x8, #0x20]                               
01a9a3c8  ldr       x0, [x26]                                      
01a9a3cc  ldr       w9, [x0, #0xe4]                                
01a9a3d0  cbnz      w9, #0x1a9a3dc                                 
01a9a3d4  bl        #0x183dcb0                                     
01a9a3d8  ldr       x0, [x26]                                      
01a9a3dc  ldr       x8, [x0, #0xb8]                                
01a9a3e0  ldr       x21, [x8, #0x90]                               
01a9a3e4  cbnz      x21, #0x1a9a438                                
01a9a3e8  ldr       w9, [x0, #0xe4]                                
01a9a3ec  cbnz      w9, #0x1a9a3fc                                 
01a9a3f0  bl        #0x183dcb0                                     
01a9a3f4  ldr       x8, [x26]                                      
01a9a3f8  ldr       x8, [x8, #0xb8]                                
01a9a3fc  adrp      x9, #0x3a8c000                                 
01a9a400  ldr       x9, [x9, #0x978]                               
01a9a404  ldr       x22, [x8]                                      
01a9a408  ldr       x0, [x9]                                       
01a9a40c  bl        #0x183ddcc                                     
01a9a410  adrp      x8, #0x3a8c000                                 
01a9a414  mov       x1, x22                                        
01a9a418  mov       x3, xzr                                        
01a9a41c  ldr       x8, [x8, #0x9a8]                               
01a9a420  mov       x21, x0                                        
01a9a424  ldr       x2, [x8]                                       
01a9a428  bl        #0x29630a8                                     // System.Predicate<object>$$.ctor
01a9a42c  ldr       x8, [x26]                                      
01a9a430  ldr       x8, [x8, #0xb8]                                
01a9a434  str       x21, [x8, #0x90]                               
01a9a438  cbz       x20, #0x1a9a67c                                
01a9a43c  adrp      x8, #0x3a8c000                                 
01a9a440  adrp      x23, #0x3a8c000                                
01a9a444  adrp      x24, #0x3a8c000                                
01a9a448  ldr       x8, [x8, #0x950]                               
01a9a44c  ldr       x23, [x23, #0x970]                             
01a9a450  ldr       x24, [x24, #0x960]                             
01a9a454  mov       x0, x20                                        
01a9a458  mov       x1, x21                                        
01a9a45c  ldr       x2, [x8]                                       
01a9a460  bl        #0x2794e98                                     // System.Collections.Generic.List<object>$$FindAll
01a9a464  ldr       x8, [x23]                                      
01a9a468  mov       x20, x0                                        
01a9a46c  mov       x0, x8                                         
01a9a470  bl        #0x183ddcc                                     
01a9a474  ldr       x1, [x24]                                      
01a9a478  mov       x22, x0                                        
01a9a47c  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a9a480  ldr       x0, [x23]                                      
01a9a484  bl        #0x183ddcc                                     
01a9a488  ldr       x1, [x24]                                      
01a9a48c  mov       x21, x0                                        
01a9a490  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a9a494  ldr       w8, [x19, #0x13c]                              
01a9a498  cbz       w8, #0x1a9a4a4                                 
01a9a49c  mov       w23, #-1                                       
01a9a4a0  b         #0x1a9a4d0                                     
01a9a4a4  adrp      x24, #0x3a7c000                                
01a9a4a8  ldr       x24, [x24, #0xc08]                             
01a9a4ac  ldr       x8, [x24]                                      
01a9a4b0  ldr       x8, [x8, #0xb8]                                
01a9a4b4  ldr       x0, [x8]                                       
01a9a4b8  cbz       x0, #0x1a9a67c                                 
01a9a4bc  mov       x1, xzr                                        
01a9a4c0  bl        #0x1af8bb4                                     // DataMgr$$GetCurrentSubEventIndex
01a9a4c4  mov       w23, w0                                        
01a9a4c8  cmn       w0, #1                                         
01a9a4cc  b.eq      #0x1a9a8c4                                     
01a9a4d0  cbz       x20, #0x1a9a67c                                
01a9a4d4  ldr       w8, [x20, #0x18]                               
01a9a4d8  adrp      x25, #0x3a8c000                                
01a9a4dc  adrp      x28, #0x3a8c000                                
01a9a4e0  ldr       x25, [x25, #0x6a8]                             
01a9a4e4  ldr       x28, [x28, #0x948]                             
01a9a4e8  cmp       w8, #1                                         
01a9a4ec  b.lt      #0x1a9a594                                     
01a9a4f0  mov       w24, wzr                                       
01a9a4f4  ldr       x2, [x25]                                      
01a9a4f8  mov       x0, x20                                        
01a9a4fc  mov       w1, w24                                        
01a9a500  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a504  cbz       x0, #0x1a9a67c                                 
01a9a508  ldr       x1, [x0, #0x28]                                
01a9a50c  mov       x0, x19                                        
01a9a510  mov       w2, w23                                        
01a9a514  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a9a518  tbnz      w0, #0, #0x1a9a584                             
01a9a51c  ldr       x2, [x25]                                      
01a9a520  mov       x0, x20                                        
01a9a524  mov       w1, w24                                        
01a9a528  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a52c  cbz       x22, #0x1a9a67c                                
01a9a530  ldr       w10, [x22, #0x1c]                              
01a9a534  ldr       x8, [x22, #0x10]                               
01a9a538  ldr       x9, [x28]                                      
01a9a53c  add       w10, w10, #1                                   
01a9a540  str       w10, [x22, #0x1c]                              
01a9a544  cbz       x8, #0x1a9a67c                                 
01a9a548  ldrsw     x10, [x22, #0x18]                              
01a9a54c  ldr       w11, [x8, #0x18]                               
01a9a550  mov       x1, x0                                         
01a9a554  cmp       w10, w11                                       
01a9a558  b.hs      #0x1a9a570                                     
01a9a55c  add       x8, x8, x10, lsl #3                            
01a9a560  add       w9, w10, #1                                    
01a9a564  str       w9, [x22, #0x18]                               
01a9a568  str       x1, [x8, #0x20]                                
01a9a56c  b         #0x1a9a584                                     
01a9a570  ldr       x8, [x9, #0x20]                                
01a9a574  mov       x0, x22                                        
01a9a578  ldr       x8, [x8, #0xc0]                                
01a9a57c  ldr       x2, [x8, #0x70]                                
01a9a580  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a9a584  ldr       w8, [x20, #0x18]                               
01a9a588  add       w24, w24, #1                                   
01a9a58c  cmp       w24, w8                                        
01a9a590  b.lt      #0x1a9a4f4                                     
01a9a594  cbz       x22, #0x1a9a67c                                
01a9a598  ldr       w8, [x22, #0x18]                               
01a9a59c  adrp      x24, #0x3a8c000                                
01a9a5a0  ldr       x24, [x24, #0x958]                             
01a9a5a4  cmp       w8, #1                                         
01a9a5a8  b.lt      #0x1a9a5e0                                     
01a9a5ac  mov       w23, wzr                                       
01a9a5b0  ldr       x2, [x25]                                      
01a9a5b4  mov       x0, x22                                        
01a9a5b8  mov       w1, w23                                        
01a9a5bc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a5c0  ldr       x2, [x24]                                      
01a9a5c4  mov       x1, x0                                         
01a9a5c8  mov       x0, x20                                        
01a9a5cc  bl        #0x2795c74                                     // System.Collections.Generic.List<object>$$Remove
01a9a5d0  ldr       w8, [x22, #0x18]                               
01a9a5d4  add       w23, w23, #1                                   
01a9a5d8  cmp       w23, w8                                        
01a9a5dc  b.lt      #0x1a9a5b0                                     
01a9a5e0  ldr       x8, [x19, #0x120]                              
01a9a5e4  cbz       x8, #0x1a9a67c                                 
01a9a5e8  adrp      x29, #0x3a7c000                                
01a9a5ec  adrp      x27, #0x3a8c000                                
01a9a5f0  mov       w22, wzr                                       
01a9a5f4  ldr       x29, [x29, #0xc30]                             
01a9a5f8  ldr       x27, [x27, #0x9c0]                             
01a9a5fc  ldrsw     x9, [x19, #0x13c]                              
01a9a600  ldr       w10, [x8, #0x18]                               
01a9a604  cmp       w9, w10                                        
01a9a608  b.hs      #0x1a9a910                                     
01a9a60c  add       x8, x8, x9, lsl #3                             
01a9a610  ldr       x0, [x8, #0x20]                                
01a9a614  cbz       x0, #0x1a9a67c                                 
01a9a618  ldr       w8, [x0, #0x18]                                
01a9a61c  cmp       w22, w8                                        
01a9a620  b.ge      #0x1a9a680                                     
01a9a624  ldr       x8, [x19, #0x118]                              
01a9a628  cbz       x8, #0x1a9a67c                                 
01a9a62c  ldr       w10, [x8, #0x18]                               
01a9a630  cmp       w9, w10                                        
01a9a634  b.hs      #0x1a9a910                                     
01a9a638  add       x8, x8, x9, lsl #3                             
01a9a63c  ldr       x2, [x29]                                      
01a9a640  mov       w1, w22                                        
01a9a644  ldr       x23, [x8, #0x20]                               
01a9a648  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a9a64c  cbz       x23, #0x1a9a67c                                
01a9a650  ldr       x2, [x25]                                      
01a9a654  mov       w1, w0                                         
01a9a658  mov       x0, x23                                        
01a9a65c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a660  ldr       x2, [x24]                                      
01a9a664  mov       x1, x0                                         
01a9a668  mov       x0, x20                                        
01a9a66c  bl        #0x2795c74                                     // System.Collections.Generic.List<object>$$Remove
01a9a670  ldr       x8, [x19, #0x120]                              
01a9a674  add       w22, w22, #1                                   
01a9a678  cbnz      x8, #0x1a9a5fc                                 
01a9a67c  bl        #0x183dddc                                     
01a9a680  ldr       w8, [x20, #0x18]                               
01a9a684  cbz       w8, #0x1a9a8f0                                 
01a9a688  ldr       x0, [x27]                                      
01a9a68c  bl        #0x183ddcc                                     
01a9a690  mov       x1, xzr                                        
01a9a694  mov       x22, x0                                        
01a9a698  bl        #0x1ab1ae8                                     // EventCtrl.<>c__DisplayClass113_0$$.ctor
01a9a69c  ldr       x0, [x26]                                      
01a9a6a0  ldr       w8, [x0, #0xe4]                                
01a9a6a4  cbnz      w8, #0x1a9a6b0                                 
01a9a6a8  bl        #0x183dcb0                                     
01a9a6ac  ldr       x0, [x26]                                      
01a9a6b0  ldr       x8, [x0, #0xb8]                                
01a9a6b4  ldr       x23, [x8, #0x98]                               
01a9a6b8  cbnz      x23, #0x1a9a70c                                
01a9a6bc  ldr       w9, [x0, #0xe4]                                
01a9a6c0  cbnz      w9, #0x1a9a6d0                                 
01a9a6c4  bl        #0x183dcb0                                     
01a9a6c8  ldr       x8, [x26]                                      
01a9a6cc  ldr       x8, [x8, #0xb8]                                
01a9a6d0  adrp      x9, #0x3a8c000                                 
01a9a6d4  ldr       x9, [x9, #0x990]                               
01a9a6d8  ldr       x24, [x8]                                      
01a9a6dc  ldr       x0, [x9]                                       
01a9a6e0  bl        #0x183ddcc                                     
01a9a6e4  adrp      x8, #0x3a8c000                                 
01a9a6e8  mov       x1, x24                                        
01a9a6ec  mov       x3, xzr                                        
01a9a6f0  ldr       x8, [x8, #0x9b0]                               
01a9a6f4  mov       x23, x0                                        
01a9a6f8  ldr       x2, [x8]                                       
01a9a6fc  bl        #0x25b52d0                                     // System.Func<object, int>$$.ctor
01a9a700  ldr       x8, [x26]                                      
01a9a704  ldr       x8, [x8, #0xb8]                                
01a9a708  str       x23, [x8, #0x98]                               
01a9a70c  adrp      x8, #0x3a8c000                                 
01a9a710  mov       x0, x20                                        
01a9a714  mov       x1, x23                                        
01a9a718  ldr       x8, [x8, #0x988]                               
01a9a71c  ldr       x2, [x8]                                       
01a9a720  bl        #0x1d9be5c                                     // System.Linq.Enumerable$$Max<object>
01a9a724  cbz       x22, #0x1a9a67c                                
01a9a728  cmp       w0, #2                                         
01a9a72c  str       w0, [x22, #0x10]                               
01a9a730  b.gt      #0x1a9a804                                     
01a9a734  ldr       w8, [x20, #0x18]                               
01a9a738  cmp       w8, #1                                         
01a9a73c  b.lt      #0x1a9a7e8                                     
01a9a740  mov       w22, wzr                                       
01a9a744  ldr       x2, [x25]                                      
01a9a748  mov       x0, x20                                        
01a9a74c  mov       w1, w22                                        
01a9a750  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a754  cbz       x0, #0x1a9a67c                                 
01a9a758  ldr       w8, [x0, #0x10]                                
01a9a75c  cmp       w8, #2                                         
01a9a760  b.ne      #0x1a9a7d8                                     
01a9a764  mov       w23, #0xa                                      
01a9a768  ldr       x2, [x25]                                      
01a9a76c  mov       x0, x20                                        
01a9a770  mov       w1, w22                                        
01a9a774  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a778  cbz       x21, #0x1a9a67c                                
01a9a77c  ldr       w10, [x21, #0x1c]                              
01a9a780  ldr       x8, [x21, #0x10]                               
01a9a784  ldr       x9, [x28]                                      
01a9a788  add       w10, w10, #1                                   
01a9a78c  str       w10, [x21, #0x1c]                              
01a9a790  cbz       x8, #0x1a9a67c                                 
01a9a794  ldrsw     x10, [x21, #0x18]                              
01a9a798  ldr       w11, [x8, #0x18]                               
01a9a79c  mov       x1, x0                                         
01a9a7a0  cmp       w10, w11                                       
01a9a7a4  b.hs      #0x1a9a7bc                                     
01a9a7a8  add       x8, x8, x10, lsl #3                            
01a9a7ac  add       w9, w10, #1                                    
01a9a7b0  str       w9, [x21, #0x18]                               
01a9a7b4  str       x1, [x8, #0x20]                                
01a9a7b8  b         #0x1a9a7d0                                     
01a9a7bc  ldr       x8, [x9, #0x20]                                
01a9a7c0  mov       x0, x21                                        
01a9a7c4  ldr       x8, [x8, #0xc0]                                
01a9a7c8  ldr       x2, [x8, #0x70]                                
01a9a7cc  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a9a7d0  subs      w23, w23, #1                                   
01a9a7d4  b.ne      #0x1a9a768                                     
01a9a7d8  ldr       w8, [x20, #0x18]                               
01a9a7dc  add       w22, w22, #1                                   
01a9a7e0  cmp       w22, w8                                        
01a9a7e4  b.lt      #0x1a9a744                                     
01a9a7e8  adrp      x8, #0x3a8c000                                 
01a9a7ec  mov       x0, x20                                        
01a9a7f0  mov       x1, x21                                        
01a9a7f4  ldr       x8, [x8, #0x998]                               
01a9a7f8  ldr       x2, [x8]                                       
01a9a7fc  bl        #0x27949a0                                     // System.Collections.Generic.List<object>$$AddRange
01a9a800  b         #0x1a9a84c                                     
01a9a804  adrp      x8, #0x3a8c000                                 
01a9a808  ldr       x8, [x8, #0x978]                               
01a9a80c  ldr       x0, [x8]                                       
01a9a810  bl        #0x183ddcc                                     
01a9a814  adrp      x8, #0x3a8c000                                 
01a9a818  mov       x1, x22                                        
01a9a81c  mov       x3, xzr                                        
01a9a820  ldr       x8, [x8, #0x9b8]                               
01a9a824  mov       x21, x0                                        
01a9a828  ldr       x2, [x8]                                       
01a9a82c  bl        #0x29630a8                                     // System.Predicate<object>$$.ctor
01a9a830  adrp      x8, #0x3a8c000                                 
01a9a834  mov       x0, x20                                        
01a9a838  mov       x1, x21                                        
01a9a83c  ldr       x8, [x8, #0x950]                               
01a9a840  ldr       x2, [x8]                                       
01a9a844  bl        #0x2794e98                                     // System.Collections.Generic.List<object>$$FindAll
01a9a848  mov       x20, x0                                        
01a9a84c  ldr       x8, [x19, #0x118]                              
01a9a850  cbz       x8, #0x1a9a67c                                 
01a9a854  ldrsw     x9, [x19, #0x13c]                              
01a9a858  ldr       w10, [x8, #0x18]                               
01a9a85c  cmp       w9, w10                                        
01a9a860  b.hs      #0x1a9a910                                     
01a9a864  cbz       x20, #0x1a9a67c                                
01a9a868  add       x8, x8, x9, lsl #3                             
01a9a86c  ldr       w1, [x20, #0x18]                               
01a9a870  mov       w0, wzr                                        
01a9a874  mov       x2, xzr                                        
01a9a878  ldr       x19, [x8, #0x20]                               
01a9a87c  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a9a880  ldr       x2, [x25]                                      
01a9a884  mov       w1, w0                                         
01a9a888  mov       x0, x20                                        
01a9a88c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a890  cbz       x19, #0x1a9a67c                                
01a9a894  adrp      x8, #0x3a8c000                                 
01a9a898  mov       x1, x0                                         
01a9a89c  mov       x0, x19                                        
01a9a8a0  ldr       x8, [x8, #0x9a0]                               
01a9a8a4  ldp       x20, x19, [sp, #0x50]                          
01a9a8a8  ldp       x22, x21, [sp, #0x40]                          
01a9a8ac  ldp       x24, x23, [sp, #0x30]                          
01a9a8b0  ldr       x2, [x8]                                       
01a9a8b4  ldp       x26, x25, [sp, #0x20]                          
01a9a8b8  ldp       x28, x27, [sp, #0x10]                          
01a9a8bc  ldp       x29, x30, [sp], #0x60                          
01a9a8c0  b         #0x2795410                                     // System.Collections.Generic.List<object>$$IndexOf
01a9a8c4  ldr       x8, [x24]                                      
01a9a8c8  ldr       x8, [x8, #0xb8]                                
01a9a8cc  ldr       x0, [x8]                                       
01a9a8d0  cbz       x0, #0x1a9a67c                                 
01a9a8d4  mov       w1, #2                                         
01a9a8d8  mov       x2, xzr                                        
01a9a8dc  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9a8e0  mov       w8, #0x42b40000                                
01a9a8e4  fmov      s1, w8                                         
01a9a8e8  fcmp      s0, s1                                         
01a9a8ec  b.lt      #0x1a9a49c                                     
01a9a8f0  ldp       x20, x19, [sp, #0x50]                          
01a9a8f4  mov       w0, #-1                                        
01a9a8f8  ldp       x22, x21, [sp, #0x40]                          
01a9a8fc  ldp       x24, x23, [sp, #0x30]                          
01a9a900  ldp       x26, x25, [sp, #0x20]                          
01a9a904  ldp       x28, x27, [sp, #0x10]                          
01a9a908  ldp       x29, x30, [sp], #0x60                          
01a9a90c  ret                                                      
01a9a910  bl        #0x183dde4                                     