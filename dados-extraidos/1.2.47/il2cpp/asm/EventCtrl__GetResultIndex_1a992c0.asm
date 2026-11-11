int32_t EventCtrl__GetResultIndex (EventCtrl_o* __this, System_Collections_Generic_List_EventResult__o* results, const MethodInfo* method);
// RVA 0x1a992c0 to 0x1a99d04
01a992c0  str       d12, [sp, #-0x90]!                             
01a992c4  stp       d11, d10, [sp, #0x10]                          
01a992c8  stp       d9, d8, [sp, #0x20]                            
01a992cc  stp       x29, x30, [sp, #0x30]                          
01a992d0  stp       x28, x27, [sp, #0x40]                          
01a992d4  stp       x26, x25, [sp, #0x50]                          
01a992d8  stp       x24, x23, [sp, #0x60]                          
01a992dc  stp       x22, x21, [sp, #0x70]                          
01a992e0  stp       x20, x19, [sp, #0x80]                          
01a992e4  adrp      x20, #0x3d14000                                
01a992e8  adrp      x25, #0x3a8c000                                
01a992ec  adrp      x23, #0x3a8c000                                
01a992f0  ldrb      w8, [x20, #0xcde]                              
01a992f4  ldr       x25, [x25, #0x810]                             
01a992f8  ldr       x23, [x23, #0x808]                             
01a992fc  mov       x19, x1                                        
01a99300  mov       x21, x0                                        
01a99304  tbnz      w8, #0, #0x1a993c4                             
01a99308  adrp      x0, #0x3a7b000                                 
01a9930c  ldr       x0, [x0, #0xf88]                               
01a99310  bl        #0x183db90                                     
01a99314  adrp      x0, #0x3a7c000                                 
01a99318  ldr       x0, [x0, #0xc08]                               
01a9931c  bl        #0x183db90                                     
01a99320  adrp      x0, #0x3a7c000                                 
01a99324  ldr       x0, [x0, #0xca8]                               
01a99328  bl        #0x183db90                                     
01a9932c  adrp      x0, #0x3a7c000                                 
01a99330  ldr       x0, [x0, #0xc10]                               
01a99334  bl        #0x183db90                                     
01a99338  adrp      x0, #0x3a8c000                                 
01a9933c  ldr       x0, [x0, #0x7f8]                               
01a99340  bl        #0x183db90                                     
01a99344  adrp      x0, #0x3a8c000                                 
01a99348  ldr       x0, [x0, #0x928]                               
01a9934c  bl        #0x183db90                                     
01a99350  adrp      x0, #0x3a8c000                                 
01a99354  ldr       x0, [x0, #0x800]                               
01a99358  bl        #0x183db90                                     
01a9935c  adrp      x0, #0x3a7c000                                 
01a99360  ldr       x0, [x0, #0xc00]                               
01a99364  bl        #0x183db90                                     
01a99368  adrp      x0, #0x3a8c000                                 
01a9936c  ldr       x0, [x0, #0x808]                               
01a99370  bl        #0x183db90                                     
01a99374  adrp      x0, #0x3a8c000                                 
01a99378  ldr       x0, [x0, #0x7d8]                               
01a9937c  bl        #0x183db90                                     
01a99380  adrp      x0, #0x3a7c000                                 
01a99384  ldr       x0, [x0, #0xc20]                               
01a99388  bl        #0x183db90                                     
01a9938c  adrp      x0, #0x3a8c000                                 
01a99390  ldr       x0, [x0, #0x6a0]                               
01a99394  bl        #0x183db90                                     
01a99398  adrp      x0, #0x3a7c000                                 
01a9939c  ldr       x0, [x0, #0xc30]                               
01a993a0  bl        #0x183db90                                     
01a993a4  adrp      x0, #0x3a7c000                                 
01a993a8  ldr       x0, [x0, #0xbf8]                               
01a993ac  bl        #0x183db90                                     
01a993b0  adrp      x0, #0x3a8c000                                 
01a993b4  ldr       x0, [x0, #0x810]                               
01a993b8  bl        #0x183db90                                     
01a993bc  mov       w8, #1                                         
01a993c0  strb      w8, [x20, #0xcde]                              
01a993c4  ldr       x0, [x25]                                      
01a993c8  bl        #0x183ddcc                                     
01a993cc  ldr       x1, [x23]                                      
01a993d0  mov       x20, x0                                        
01a993d4  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a993d8  cbz       x19, #0x1a99cfc                                
01a993dc  ldr       w8, [x19, #0x18]                               
01a993e0  adrp      x28, #0x3a8c000                                
01a993e4  adrp      x24, #0x3a8c000                                
01a993e8  ldr       x28, [x28, #0x6a0]                             
01a993ec  ldr       x24, [x24, #0x7f8]                             
01a993f0  cmp       w8, #1                                         
01a993f4  b.lt      #0x1a99474                                     
01a993f8  mov       w22, wzr                                       
01a993fc  ldr       x2, [x28]                                      
01a99400  mov       x0, x19                                        
01a99404  mov       w1, w22                                        
01a99408  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9940c  cbz       x20, #0x1a99cfc                                
01a99410  ldr       w10, [x20, #0x1c]                              
01a99414  ldr       x8, [x20, #0x10]                               
01a99418  ldr       x9, [x24]                                      
01a9941c  add       w10, w10, #1                                   
01a99420  str       w10, [x20, #0x1c]                              
01a99424  cbz       x8, #0x1a99cfc                                 
01a99428  ldrsw     x10, [x20, #0x18]                              
01a9942c  ldr       w11, [x8, #0x18]                               
01a99430  mov       x1, x0                                         
01a99434  cmp       w10, w11                                       
01a99438  b.hs      #0x1a99450                                     
01a9943c  add       x8, x8, x10, lsl #3                            
01a99440  add       w9, w10, #1                                    
01a99444  str       w9, [x20, #0x18]                               
01a99448  str       x1, [x8, #0x20]                                
01a9944c  b         #0x1a99464                                     
01a99450  ldr       x8, [x9, #0x20]                                
01a99454  mov       x0, x20                                        
01a99458  ldr       x8, [x8, #0xc0]                                
01a9945c  ldr       x2, [x8, #0x70]                                
01a99460  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a99464  ldr       w8, [x19, #0x18]                               
01a99468  add       w22, w22, #1                                   
01a9946c  cmp       w22, w8                                        
01a99470  b.lt      #0x1a993fc                                     
01a99474  ldr       x0, [x25]                                      
01a99478  bl        #0x183ddcc                                     
01a9947c  ldr       x1, [x23]                                      
01a99480  mov       x22, x0                                        
01a99484  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a99488  cbz       x20, #0x1a99cfc                                
01a9948c  ldr       w8, [x20, #0x18]                               
01a99490  cmp       w8, #1                                         
01a99494  b.lt      #0x1a9953c                                     
01a99498  mov       w23, wzr                                       
01a9949c  ldr       x2, [x28]                                      
01a994a0  mov       x0, x20                                        
01a994a4  mov       w1, w23                                        
01a994a8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a994ac  cbz       x0, #0x1a99cfc                                 
01a994b0  ldr       x1, [x0, #0x10]                                
01a994b4  mov       x0, x21                                        
01a994b8  mov       w2, #-1                                        
01a994bc  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a994c0  tbnz      w0, #0, #0x1a9952c                             
01a994c4  ldr       x2, [x28]                                      
01a994c8  mov       x0, x20                                        
01a994cc  mov       w1, w23                                        
01a994d0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a994d4  cbz       x22, #0x1a99cfc                                
01a994d8  ldr       w10, [x22, #0x1c]                              
01a994dc  ldr       x8, [x22, #0x10]                               
01a994e0  ldr       x9, [x24]                                      
01a994e4  add       w10, w10, #1                                   
01a994e8  str       w10, [x22, #0x1c]                              
01a994ec  cbz       x8, #0x1a99cfc                                 
01a994f0  ldrsw     x10, [x22, #0x18]                              
01a994f4  ldr       w11, [x8, #0x18]                               
01a994f8  mov       x1, x0                                         
01a994fc  cmp       w10, w11                                       
01a99500  b.hs      #0x1a99518                                     
01a99504  add       x8, x8, x10, lsl #3                            
01a99508  add       w9, w10, #1                                    
01a9950c  str       w9, [x22, #0x18]                               
01a99510  str       x1, [x8, #0x20]                                
01a99514  b         #0x1a9952c                                     
01a99518  ldr       x8, [x9, #0x20]                                
01a9951c  mov       x0, x22                                        
01a99520  ldr       x8, [x8, #0xc0]                                
01a99524  ldr       x2, [x8, #0x70]                                
01a99528  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a9952c  ldr       w8, [x20, #0x18]                               
01a99530  add       w23, w23, #1                                   
01a99534  cmp       w23, w8                                        
01a99538  b.lt      #0x1a9949c                                     
01a9953c  cbz       x22, #0x1a99cfc                                
01a99540  ldr       w8, [x22, #0x18]                               
01a99544  adrp      x24, #0x3a7c000                                
01a99548  adrp      x23, #0x3a7c000                                
01a9954c  ldr       x24, [x24, #0xbf8]                             
01a99550  ldr       x23, [x23, #0xc00]                             
01a99554  cmp       w8, #1                                         
01a99558  b.lt      #0x1a99598                                     
01a9955c  adrp      x25, #0x3a8c000                                
01a99560  mov       w21, wzr                                       
01a99564  ldr       x25, [x25, #0x800]                             
01a99568  ldr       x2, [x28]                                      
01a9956c  mov       x0, x22                                        
01a99570  mov       w1, w21                                        
01a99574  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a99578  ldr       x2, [x25]                                      
01a9957c  mov       x1, x0                                         
01a99580  mov       x0, x20                                        
01a99584  bl        #0x2795c74                                     // System.Collections.Generic.List<object>$$Remove
01a99588  ldr       w8, [x22, #0x18]                               
01a9958c  add       w21, w21, #1                                   
01a99590  cmp       w21, w8                                        
01a99594  b.lt      #0x1a99568                                     
01a99598  ldr       x0, [x24]                                      
01a9959c  bl        #0x183ddcc                                     
01a995a0  ldr       x1, [x23]                                      
01a995a4  mov       x21, x0                                        
01a995a8  bl        #0x276a9f4                                     // System.Collections.Generic.List<int>$$.ctor
01a995ac  ldr       w8, [x20, #0x18]                               
01a995b0  cmp       w8, #1                                         
01a995b4  b.lt      #0x1a99c7c                                     
01a995b8  adrp      x29, #0x3a8c000                                
01a995bc  adrp      x24, #0x3a7c000                                
01a995c0  fmov      s9, #10.00000000                               
01a995c4  adrp      x8, #0xa13000                                  
01a995c8  adrp      x9, #0xa13000                                  
01a995cc  adrp      x10, #0xa13000                                 
01a995d0  ldr       x29, [x29, #0x928]                             
01a995d4  ldr       x24, [x24, #0xc10]                             
01a995d8  ldr       s10, [x8, #0xd4]                               
01a995dc  ldr       s11, [x9, #0x158]                              
01a995e0  ldr       s12, [x10, #0xc8]                              
01a995e4  mov       w22, wzr                                       
01a995e8  ldr       x2, [x28]                                      
01a995ec  mov       x0, x20                                        
01a995f0  mov       w1, w22                                        
01a995f4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a995f8  cbz       x0, #0x1a99cfc                                 
01a995fc  ldr       x1, [x0, #0x28]                                
01a99600  bl        #0x1a99d04                                     // EventCtrl$$GetTotalChance
01a99604  ldr       x2, [x28]                                      
01a99608  mov       w25, w0                                        
01a9960c  mov       x0, x20                                        
01a99610  mov       w1, w22                                        
01a99614  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a99618  cbz       x0, #0x1a99cfc                                 
01a9961c  ldr       w8, [x0, #0x1c]                                
01a99620  cbz       w8, #0x1a99724                                 
01a99624  ldr       w8, [x20, #0x18]                               
01a99628  cmp       w8, #1                                         
01a9962c  b.le      #0x1a99688                                     
01a99630  ldr       x2, [x28]                                      
01a99634  mov       x0, x20                                        
01a99638  mov       w1, w22                                        
01a9963c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a99640  cbz       x0, #0x1a99cfc                                 
01a99644  ldr       w8, [x0, #0x1c]                                
01a99648  cmp       w8, #1                                         
01a9964c  b.ne      #0x1a99688                                     
01a99650  adrp      x8, #0x3a7c000                                 
01a99654  ldr       x8, [x8, #0xca8]                               
01a99658  ldr       x8, [x8]                                       
01a9965c  ldr       x8, [x8, #0xb8]                                
01a99660  ldr       x0, [x8]                                       
01a99664  cbz       x0, #0x1a99cfc                                 
01a99668  scvtf     s0, w25                                        
01a9966c  mov       x1, xzr                                        
01a99670  bl        #0x1961b44                                     // HardModeMgr$$ApplyHardModeEventPenealty
01a99674  mov       w8, #0x7f800000                                
01a99678  fmov      s1, w8                                         
01a9967c  fcmp      s0, s1                                         
01a99680  b.eq      #0x1a99710                                     
01a99684  fcvtzs    w25, s0                                        
01a99688  cmp       w25, #1                                        
01a9968c  b.lt      #0x1a99710                                     
01a99690  ldr       x2, [x28]                                      
01a99694  mov       x0, x20                                        
01a99698  mov       w1, w22                                        
01a9969c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a996a0  ldr       x2, [x29]                                      
01a996a4  mov       x1, x0                                         
01a996a8  mov       x0, x19                                        
01a996ac  bl        #0x2795410                                     // System.Collections.Generic.List<object>$$IndexOf
01a996b0  cbz       x21, #0x1a99cfc                                
01a996b4  ldr       w10, [x21, #0x1c]                              
01a996b8  ldr       x8, [x21, #0x10]                               
01a996bc  ldr       x9, [x24]                                      
01a996c0  add       w10, w10, #1                                   
01a996c4  str       w10, [x21, #0x1c]                              
01a996c8  cbz       x8, #0x1a99cfc                                 
01a996cc  ldrsw     x10, [x21, #0x18]                              
01a996d0  ldr       w11, [x8, #0x18]                               
01a996d4  mov       w1, w0                                         
01a996d8  cmp       w10, w11                                       
01a996dc  b.hs      #0x1a996f4                                     
01a996e0  add       x8, x8, x10, lsl #2                            
01a996e4  add       w9, w10, #1                                    
01a996e8  str       w9, [x21, #0x18]                               
01a996ec  str       w1, [x8, #0x20]                                
01a996f0  b         #0x1a99708                                     
01a996f4  ldr       x8, [x9, #0x20]                                
01a996f8  mov       x0, x21                                        
01a996fc  ldr       x8, [x8, #0xc0]                                
01a99700  ldr       x2, [x8, #0x70]                                
01a99704  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a99708  subs      w25, w25, #1                                   
01a9970c  b.ne      #0x1a99690                                     
01a99710  ldr       w8, [x20, #0x18]                               
01a99714  add       w22, w22, #1                                   
01a99718  cmp       w22, w8                                        
01a9971c  b.lt      #0x1a995e8                                     
01a99720  b         #0x1a99c7c                                     
01a99724  adrp      x8, #0x3a7c000                                 
01a99728  ldr       x8, [x8, #0xc08]                               
01a9972c  ldr       x8, [x8]                                       
01a99730  ldr       x8, [x8, #0xb8]                                
01a99734  ldr       x0, [x8]                                       
01a99738  cbz       x0, #0x1a99cfc                                 
01a9973c  mov       w1, #7                                         
01a99740  mov       x2, xzr                                        
01a99744  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a99748  fcmp      s0, s9                                         
01a9974c  b.lt      #0x1a997e0                                     
01a99750  adrp      x8, #0x3a7c000                                 
01a99754  ldr       x8, [x8, #0xc08]                               
01a99758  ldr       x8, [x8]                                       
01a9975c  ldr       x8, [x8, #0xb8]                                
01a99760  ldr       x0, [x8]                                       
01a99764  cbz       x0, #0x1a99cfc                                 
01a99768  mov       w1, #7                                         
01a9976c  mov       x2, xzr                                        
01a99770  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a99774  fmov      s8, s0                                         
01a99778  adrp      x8, #0x3d14000                                 
01a9977c  ldrb      w8, [x8, #0x67d]                               
01a99780  cbnz      w8, #0x1a9979c                                 
01a99784  adrp      x0, #0x3a7b000                                 
01a99788  ldr       x0, [x0, #0xd38]                               
01a9978c  bl        #0x183db90                                     
01a99790  mov       w8, #1                                         
01a99794  adrp      x9, #0x3d14000                                 
01a99798  strb      w8, [x9, #0x67d]                               
01a9979c  adrp      x8, #0x3a7b000                                 
01a997a0  ldr       x8, [x8, #0xd38]                               
01a997a4  ldr       x0, [x8]                                       
01a997a8  ldr       w8, [x0, #0xe4]                                
01a997ac  cbnz      w8, #0x1a997b4                                 
01a997b0  bl        #0x183dcb0                                     
01a997b4  scvtf     s0, w25                                        
01a997b8  mov       w9, #0x7f800000                                
01a997bc  fmul      s0, s8, s0                                     
01a997c0  fmul      s0, s0, s12                                    
01a997c4  frintp    s1, s0                                         
01a997c8  fcvtps    w8, s0                                         
01a997cc  fmov      s0, w9                                         
01a997d0  fcmp      s1, s0                                         
01a997d4  bic       w8, w8, w8, asr #31                            
01a997d8  csel      w8, wzr, w8, eq                                
01a997dc  add       w25, w8, w25                                   
01a997e0  adrp      x8, #0x3d14000                                 
01a997e4  ldrb      w8, [x8, #0x678]                               
01a997e8  cbnz      w8, #0x1a99804                                 
01a997ec  adrp      x0, #0x3a7c000                                 
01a997f0  ldr       x0, [x0, #0xd38]                               
01a997f4  bl        #0x183db90                                     
01a997f8  adrp      x8, #0x3d14000                                 
01a997fc  mov       w9, #1                                         
01a99800  strb      w9, [x8, #0x678]                               
01a99804  adrp      x8, #0x3a7c000                                 
01a99808  ldr       x8, [x8, #0xd38]                               
01a9980c  ldr       x8, [x8]                                       
01a99810  ldr       x8, [x8, #0xb8]                                
01a99814  ldr       x0, [x8]                                       
01a99818  cbz       x0, #0x1a99cfc                                 
01a9981c  ldr       x2, [x0, #0x48]                                
01a99820  mov       w1, #0x57                                      
01a99824  mov       x3, xzr                                        
01a99828  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a9982c  adrp      x8, #0x3d14000                                 
01a99830  add       w9, w25, #3                                    
01a99834  cmp       w0, #1                                         
01a99838  ldrb      w8, [x8, #0x678]                               
01a9983c  csel      w23, w25, w9, lt                               
01a99840  cbnz      w8, #0x1a9985c                                 
01a99844  adrp      x0, #0x3a7c000                                 
01a99848  ldr       x0, [x0, #0xd38]                               
01a9984c  bl        #0x183db90                                     
01a99850  adrp      x8, #0x3d14000                                 
01a99854  mov       w9, #1                                         
01a99858  strb      w9, [x8, #0x678]                               
01a9985c  adrp      x8, #0x3a7c000                                 
01a99860  ldr       x8, [x8, #0xd38]                               
01a99864  ldr       x8, [x8]                                       
01a99868  ldr       x8, [x8, #0xb8]                                
01a9986c  ldr       x0, [x8]                                       
01a99870  cbz       x0, #0x1a99cfc                                 
01a99874  ldr       x2, [x0, #0x48]                                
01a99878  mov       w1, #0x71                                      
01a9987c  mov       x3, xzr                                        
01a99880  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a99884  ldr       x2, [x28]                                      
01a99888  mov       w25, w0                                        
01a9988c  mov       x0, x20                                        
01a99890  mov       w1, w22                                        
01a99894  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a99898  cbz       x0, #0x1a99cfc                                 
01a9989c  ldr       x1, [x0, #0x28]                                
01a998a0  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a998a4  cbz       x0, #0x1a99cfc                                 
01a998a8  ldr       w8, [x0, #0x18]                                
01a998ac  cmp       w25, #0                                        
01a998b0  mov       x26, x0                                        
01a998b4  cinc      w25, w23, gt                                   
01a998b8  cmp       w8, #1                                         
01a998bc  b.lt      #0x1a99624                                     
01a998c0  mov       w23, wzr                                       
01a998c4  cmp       w23, w8                                        
01a998c8  b.hs      #0x1a99d00                                     
01a998cc  add       x8, x26, w23, sxtw #3                          
01a998d0  ldr       x8, [x8, #0x20]                                
01a998d4  cbz       x8, #0x1a99cfc                                 
01a998d8  ldr       w9, [x8, #0x24]                                
01a998dc  cmp       w9, #3                                         
01a998e0  b.ne      #0x1a998ec                                     
01a998e4  ldr       w9, [x8, #0x10]                                
01a998e8  cbz       w9, #0x1a99900                                 
01a998ec  ldr       w8, [x26, #0x18]                               
01a998f0  add       w23, w23, #1                                   
01a998f4  cmp       w23, w8                                        
01a998f8  b.lt      #0x1a998c4                                     
01a998fc  b         #0x1a99624                                     
01a99900  adrp      x9, #0x3a7b000                                 
01a99904  ldr       x9, [x9, #0xf88]                               
01a99908  ldr       x27, [x8, #0x18]                               
01a9990c  ldr       x0, [x9]                                       
01a99910  ldr       w9, [x0, #0xe4]                                
01a99914  cbnz      w9, #0x1a9991c                                 
01a99918  bl        #0x183dcb0                                     
01a9991c  mov       x0, x27                                        
01a99920  mov       x1, xzr                                        
01a99924  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a99928  cmp       w0, #5                                         
01a9992c  b.eq      #0x1a99a34                                     
01a99930  cmp       w0, #6                                         
01a99934  b.eq      #0x1a999ec                                     
01a99938  cmp       w0, #0xc                                       
01a9993c  b.ne      #0x1a998ec                                     
01a99940  adrp      x8, #0x3d14000                                 
01a99944  ldrb      w8, [x8, #0x678]                               
01a99948  cbnz      w8, #0x1a99964                                 
01a9994c  adrp      x0, #0x3a7c000                                 
01a99950  ldr       x0, [x0, #0xd38]                               
01a99954  bl        #0x183db90                                     
01a99958  adrp      x8, #0x3d14000                                 
01a9995c  mov       w9, #1                                         
01a99960  strb      w9, [x8, #0x678]                               
01a99964  adrp      x8, #0x3a7c000                                 
01a99968  ldr       x8, [x8, #0xd38]                               
01a9996c  ldr       x8, [x8]                                       
01a99970  ldr       x8, [x8, #0xb8]                                
01a99974  ldr       x0, [x8]                                       
01a99978  cbz       x0, #0x1a99cfc                                 
01a9997c  ldr       x2, [x0, #0x48]                                
01a99980  mov       w1, #4                                         
01a99984  mov       x3, xzr                                        
01a99988  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a9998c  mov       w27, w0                                        
01a99990  cmp       w0, #4                                         
01a99994  b.ge      #0x1a99b4c                                     
01a99998  cmp       w27, #1                                        
01a9999c  b.lt      #0x1a99bb4                                     
01a999a0  adrp      x8, #0x3d14000                                 
01a999a4  ldrb      w8, [x8, #0x67d]                               
01a999a8  cbnz      w8, #0x1a999c4                                 
01a999ac  adrp      x0, #0x3a7b000                                 
01a999b0  ldr       x0, [x0, #0xd38]                               
01a999b4  bl        #0x183db90                                     
01a999b8  mov       w8, #1                                         
01a999bc  adrp      x9, #0x3d14000                                 
01a999c0  strb      w8, [x9, #0x67d]                               
01a999c4  adrp      x8, #0x3a7b000                                 
01a999c8  ldr       x8, [x8, #0xd38]                               
01a999cc  ldr       x0, [x8]                                       
01a999d0  ldr       w8, [x0, #0xe4]                                
01a999d4  cbnz      w8, #0x1a999dc                                 
01a999d8  bl        #0x183dcb0                                     
01a999dc  mul       w8, w27, w25                                   
01a999e0  scvtf     s0, w8                                         
01a999e4  fmul      s0, s0, s10                                    
01a999e8  b         #0x1a99b94                                     
01a999ec  adrp      x8, #0x3d14000                                 
01a999f0  ldrb      w8, [x8, #0x678]                               
01a999f4  cbnz      w8, #0x1a99a10                                 
01a999f8  adrp      x0, #0x3a7c000                                 
01a999fc  ldr       x0, [x0, #0xd38]                               
01a99a00  bl        #0x183db90                                     
01a99a04  adrp      x8, #0x3d14000                                 
01a99a08  mov       w9, #1                                         
01a99a0c  strb      w9, [x8, #0x678]                               
01a99a10  adrp      x8, #0x3a7c000                                 
01a99a14  ldr       x8, [x8, #0xd38]                               
01a99a18  ldr       x8, [x8]                                       
01a99a1c  ldr       x8, [x8, #0xb8]                                
01a99a20  ldr       x0, [x8]                                       
01a99a24  cbz       x0, #0x1a99cfc                                 
01a99a28  ldr       x2, [x0, #0x48]                                
01a99a2c  mov       w1, #0x33                                      
01a99a30  b         #0x1a99a78                                     
01a99a34  adrp      x8, #0x3d14000                                 
01a99a38  ldrb      w8, [x8, #0x678]                               
01a99a3c  cbnz      w8, #0x1a99a58                                 
01a99a40  adrp      x0, #0x3a7c000                                 
01a99a44  ldr       x0, [x0, #0xd38]                               
01a99a48  bl        #0x183db90                                     
01a99a4c  adrp      x8, #0x3d14000                                 
01a99a50  mov       w9, #1                                         
01a99a54  strb      w9, [x8, #0x678]                               
01a99a58  adrp      x8, #0x3a7c000                                 
01a99a5c  ldr       x8, [x8, #0xd38]                               
01a99a60  ldr       x8, [x8]                                       
01a99a64  ldr       x8, [x8, #0xb8]                                
01a99a68  ldr       x0, [x8]                                       
01a99a6c  cbz       x0, #0x1a99cfc                                 
01a99a70  ldr       x2, [x0, #0x48]                                
01a99a74  mov       w1, #0x3c                                      
01a99a78  mov       x3, xzr                                        
01a99a7c  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a99a80  mov       w27, w0                                        
01a99a84  cmp       w0, #4                                         
01a99a88  b.ge      #0x1a99ae0                                     
01a99a8c  cmp       w27, #1                                        
01a99a90  b.lt      #0x1a998ec                                     
01a99a94  adrp      x8, #0x3d14000                                 
01a99a98  ldrb      w8, [x8, #0x67d]                               
01a99a9c  cbnz      w8, #0x1a99ab8                                 
01a99aa0  adrp      x0, #0x3a7b000                                 
01a99aa4  ldr       x0, [x0, #0xd38]                               
01a99aa8  bl        #0x183db90                                     
01a99aac  mov       w8, #1                                         
01a99ab0  adrp      x9, #0x3d14000                                 
01a99ab4  strb      w8, [x9, #0x67d]                               
01a99ab8  adrp      x8, #0x3a7b000                                 
01a99abc  ldr       x8, [x8, #0xd38]                               
01a99ac0  ldr       x0, [x8]                                       
01a99ac4  ldr       w8, [x0, #0xe4]                                
01a99ac8  cbnz      w8, #0x1a99ad0                                 
01a99acc  bl        #0x183dcb0                                     
01a99ad0  mul       w8, w27, w25                                   
01a99ad4  scvtf     s0, w8                                         
01a99ad8  fmul      s0, s0, s10                                    
01a99adc  b         #0x1a99b28                                     
01a99ae0  adrp      x8, #0x3d14000                                 
01a99ae4  ldrb      w8, [x8, #0x67d]                               
01a99ae8  cbnz      w8, #0x1a99b04                                 
01a99aec  adrp      x0, #0x3a7b000                                 
01a99af0  ldr       x0, [x0, #0xd38]                               
01a99af4  bl        #0x183db90                                     
01a99af8  mov       w8, #1                                         
01a99afc  adrp      x9, #0x3d14000                                 
01a99b00  strb      w8, [x9, #0x67d]                               
01a99b04  adrp      x8, #0x3a7b000                                 
01a99b08  ldr       x8, [x8, #0xd38]                               
01a99b0c  ldr       x0, [x8]                                       
01a99b10  ldr       w8, [x0, #0xe4]                                
01a99b14  cbnz      w8, #0x1a99b1c                                 
01a99b18  bl        #0x183dcb0                                     
01a99b1c  mul       w8, w27, w25                                   
01a99b20  scvtf     s0, w8                                         
01a99b24  fmul      s0, s0, s11                                    
01a99b28  frintp    s1, s0                                         
01a99b2c  mov       w9, #0x7f800000                                
01a99b30  fcvtps    w8, s0                                         
01a99b34  fmov      s0, w9                                         
01a99b38  fcmp      s1, s0                                         
01a99b3c  bic       w8, w8, w8, asr #31                            
01a99b40  csel      w8, wzr, w8, eq                                
01a99b44  add       w25, w8, w25                                   
01a99b48  b         #0x1a998ec                                     
01a99b4c  adrp      x8, #0x3d14000                                 
01a99b50  ldrb      w8, [x8, #0x67d]                               
01a99b54  cbnz      w8, #0x1a99b70                                 
01a99b58  adrp      x0, #0x3a7b000                                 
01a99b5c  ldr       x0, [x0, #0xd38]                               
01a99b60  bl        #0x183db90                                     
01a99b64  mov       w8, #1                                         
01a99b68  adrp      x9, #0x3d14000                                 
01a99b6c  strb      w8, [x9, #0x67d]                               
01a99b70  adrp      x8, #0x3a7b000                                 
01a99b74  ldr       x8, [x8, #0xd38]                               
01a99b78  ldr       x0, [x8]                                       
01a99b7c  ldr       w8, [x0, #0xe4]                                
01a99b80  cbnz      w8, #0x1a99b88                                 
01a99b84  bl        #0x183dcb0                                     
01a99b88  mul       w8, w27, w25                                   
01a99b8c  scvtf     s0, w8                                         
01a99b90  fmul      s0, s0, s11                                    
01a99b94  frintp    s1, s0                                         
01a99b98  mov       w9, #0x7f800000                                
01a99b9c  fcvtps    w8, s0                                         
01a99ba0  fmov      s0, w9                                         
01a99ba4  fcmp      s1, s0                                         
01a99ba8  bic       w8, w8, w8, asr #31                            
01a99bac  csel      w8, wzr, w8, eq                                
01a99bb0  add       w25, w8, w25                                   
01a99bb4  adrp      x8, #0x3d14000                                 
01a99bb8  ldrb      w8, [x8, #0x678]                               
01a99bbc  cbnz      w8, #0x1a99bd8                                 
01a99bc0  adrp      x0, #0x3a7c000                                 
01a99bc4  ldr       x0, [x0, #0xd38]                               
01a99bc8  bl        #0x183db90                                     
01a99bcc  adrp      x8, #0x3d14000                                 
01a99bd0  mov       w9, #1                                         
01a99bd4  strb      w9, [x8, #0x678]                               
01a99bd8  adrp      x8, #0x3a7c000                                 
01a99bdc  ldr       x8, [x8, #0xd38]                               
01a99be0  ldr       x8, [x8]                                       
01a99be4  ldr       x8, [x8, #0xb8]                                
01a99be8  ldr       x0, [x8]                                       
01a99bec  cbz       x0, #0x1a99cfc                                 
01a99bf0  ldr       x2, [x0, #0x48]                                
01a99bf4  mov       w1, #0x2d                                      
01a99bf8  mov       x3, xzr                                        
01a99bfc  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a99c00  cmp       w0, #1                                         
01a99c04  b.lt      #0x1a998ec                                     
01a99c08  adrp      x8, #0x3d14000                                 
01a99c0c  mov       w27, w0                                        
01a99c10  ldrb      w8, [x8, #0x67d]                               
01a99c14  cbnz      w8, #0x1a99c30                                 
01a99c18  adrp      x0, #0x3a7b000                                 
01a99c1c  ldr       x0, [x0, #0xd38]                               
01a99c20  bl        #0x183db90                                     
01a99c24  mov       w8, #1                                         
01a99c28  adrp      x9, #0x3d14000                                 
01a99c2c  strb      w8, [x9, #0x67d]                               
01a99c30  adrp      x8, #0x3a7b000                                 
01a99c34  ldr       x8, [x8, #0xd38]                               
01a99c38  ldr       x0, [x8]                                       
01a99c3c  ldr       w8, [x0, #0xe4]                                
01a99c40  cbnz      w8, #0x1a99c48                                 
01a99c44  bl        #0x183dcb0                                     
01a99c48  mul       w8, w27, w25                                   
01a99c4c  mov       w9, #0x7f800000                                
01a99c50  scvtf     s0, w8                                         
01a99c54  fmul      s0, s0, s11                                    
01a99c58  frintp    s1, s0                                         
01a99c5c  fcvtps    w8, s0                                         
01a99c60  fmov      s0, w9                                         
01a99c64  mov       w9, #-0xffffffff80000000                       
01a99c68  fcmp      s1, s0                                         
01a99c6c  csel      w8, w9, w8, eq                                 
01a99c70  sub       w8, w25, w8                                    
01a99c74  bic       w25, w8, w8, asr #31                           
01a99c78  b         #0x1a998ec                                     
01a99c7c  cbz       x21, #0x1a99cfc                                
01a99c80  ldr       w1, [x21, #0x18]                               
01a99c84  cbz       w1, #0x1a99cd0                                 
01a99c88  adrp      x19, #0x3a7c000                                
01a99c8c  mov       w0, wzr                                        
01a99c90  mov       x2, xzr                                        
01a99c94  ldr       x19, [x19, #0xc30]                             
01a99c98  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a99c9c  ldr       x2, [x19]                                      
01a99ca0  mov       w1, w0                                         
01a99ca4  mov       x0, x21                                        
01a99ca8  ldp       x20, x19, [sp, #0x80]                          
01a99cac  ldp       x22, x21, [sp, #0x70]                          
01a99cb0  ldp       x24, x23, [sp, #0x60]                          
01a99cb4  ldp       x26, x25, [sp, #0x50]                          
01a99cb8  ldp       x28, x27, [sp, #0x40]                          
01a99cbc  ldp       x29, x30, [sp, #0x30]                          
01a99cc0  ldp       d9, d8, [sp, #0x20]                            
01a99cc4  ldp       d11, d10, [sp, #0x10]                          
01a99cc8  ldr       d12, [sp], #0x90                               
01a99ccc  b         #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a99cd0  ldp       x20, x19, [sp, #0x80]                          
01a99cd4  mov       w0, wzr                                        
01a99cd8  ldp       x22, x21, [sp, #0x70]                          
01a99cdc  ldp       x24, x23, [sp, #0x60]                          
01a99ce0  ldp       x26, x25, [sp, #0x50]                          
01a99ce4  ldp       x28, x27, [sp, #0x40]                          
01a99ce8  ldp       x29, x30, [sp, #0x30]                          
01a99cec  ldp       d9, d8, [sp, #0x20]                            
01a99cf0  ldp       d11, d10, [sp, #0x10]                          
01a99cf4  ldr       d12, [sp], #0x90                               
01a99cf8  ret                                                      
01a99cfc  bl        #0x183dddc                                     
01a99d00  bl        #0x183dde4                                     