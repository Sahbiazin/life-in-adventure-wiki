System_Collections_Generic_List_int__o* EventCtrl__GetResultStatList (EventCtrl_o* __this, System_Collections_Generic_List_EventResult__o* resultList, const MethodInfo* method);
// RVA 0x1a945b0 to 0x1a94910
01a945b0  stp       x29, x30, [sp, #-0x60]!                        
01a945b4  stp       x28, x27, [sp, #0x10]                          
01a945b8  stp       x26, x25, [sp, #0x20]                          
01a945bc  stp       x24, x23, [sp, #0x30]                          
01a945c0  stp       x22, x21, [sp, #0x40]                          
01a945c4  stp       x20, x19, [sp, #0x50]                          
01a945c8  adrp      x20, #0x3d14000                                
01a945cc  mov       x19, x1                                        
01a945d0  ldrb      w8, [x20, #0xceb]                              
01a945d4  tbnz      w8, #0, #0x1a94664                             
01a945d8  adrp      x0, #0x3a7b000                                 
01a945dc  ldr       x0, [x0, #0xf88]                               
01a945e0  bl        #0x183db90                                     
01a945e4  adrp      x0, #0x3a7c000                                 
01a945e8  ldr       x0, [x0, #0xc10]                               
01a945ec  bl        #0x183db90                                     
01a945f0  adrp      x0, #0x3a8c000                                 
01a945f4  ldr       x0, [x0, #0x640]                               
01a945f8  bl        #0x183db90                                     
01a945fc  adrp      x0, #0x3a7c000                                 
01a94600  ldr       x0, [x0, #0xc00]                               
01a94604  bl        #0x183db90                                     
01a94608  adrp      x0, #0x3a8c000                                 
01a9460c  ldr       x0, [x0, #0x7d8]                               
01a94610  bl        #0x183db90                                     
01a94614  adrp      x0, #0x3a8c000                                 
01a94618  ldr       x0, [x0, #0x6a0]                               
01a9461c  bl        #0x183db90                                     
01a94620  adrp      x0, #0x3a7c000                                 
01a94624  ldr       x0, [x0, #0xbf8]                               
01a94628  bl        #0x183db90                                     
01a9462c  adrp      x0, #0x3a8c000                                 
01a94630  ldr       x0, [x0, #0x658]                               
01a94634  bl        #0x183db90                                     
01a94638  adrp      x0, #0x3a8c000                                 
01a9463c  ldr       x0, [x0, #0x7e0]                               
01a94640  bl        #0x183db90                                     
01a94644  adrp      x0, #0x3a8c000                                 
01a94648  ldr       x0, [x0, #0x7e8]                               
01a9464c  bl        #0x183db90                                     
01a94650  adrp      x0, #0x3a8c000                                 
01a94654  ldr       x0, [x0, #0x7f0]                               
01a94658  bl        #0x183db90                                     
01a9465c  mov       w8, #1                                         
01a94660  strb      w8, [x20, #0xceb]                              
01a94664  cbz       x19, #0x1a948e4                                
01a94668  adrp      x8, #0x3a7c000                                 
01a9466c  adrp      x20, #0x3a7c000                                
01a94670  ldr       x8, [x8, #0xbf8]                               
01a94674  ldr       x20, [x20, #0xc00]                             
01a94678  ldr       x0, [x8]                                       
01a9467c  bl        #0x183ddcc                                     
01a94680  ldr       x1, [x20]                                      
01a94684  mov       x20, x0                                        
01a94688  bl        #0x276a9f4                                     // System.Collections.Generic.List<int>$$.ctor
01a9468c  ldr       w8, [x19, #0x18]                               
01a94690  cmp       w8, #1                                         
01a94694  b.lt      #0x1a948e8                                     
01a94698  adrp      x25, #0x3a8c000                                
01a9469c  adrp      x26, #0x3a8c000                                
01a946a0  adrp      x27, #0x3a7b000                                
01a946a4  adrp      x29, #0x3a8c000                                
01a946a8  ldr       x25, [x25, #0x6a0]                             
01a946ac  ldr       x26, [x26, #0x7f0]                             
01a946b0  ldr       x27, [x27, #0xf88]                             
01a946b4  ldr       x29, [x29, #0x640]                             
01a946b8  mov       w21, wzr                                       
01a946bc  ldr       x2, [x25]                                      
01a946c0  mov       x0, x19                                        
01a946c4  mov       w1, w21                                        
01a946c8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a946cc  cbz       x0, #0x1a94908                                 
01a946d0  ldr       w8, [x0, #0x1c]                                
01a946d4  cbz       w8, #0x1a946ec                                 
01a946d8  ldr       w8, [x19, #0x18]                               
01a946dc  add       w21, w21, #1                                   
01a946e0  cmp       w21, w8                                        
01a946e4  b.lt      #0x1a946bc                                     
01a946e8  b         #0x1a948e8                                     
01a946ec  ldr       x2, [x25]                                      
01a946f0  mov       x0, x19                                        
01a946f4  mov       w1, w21                                        
01a946f8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a946fc  cbz       x0, #0x1a94908                                 
01a94700  ldr       x1, [x0, #0x28]                                
01a94704  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a94708  cbz       x0, #0x1a94908                                 
01a9470c  ldr       w8, [x0, #0x18]                                
01a94710  mov       x22, x0                                        
01a94714  cmp       w8, #1                                         
01a94718  b.lt      #0x1a946d8                                     
01a9471c  mov       w28, wzr                                       
01a94720  cmp       w28, w8                                        
01a94724  b.hs      #0x1a9490c                                     
01a94728  add       x24, x22, w28, sxtw #3                         
01a9472c  ldr       x8, [x24, #0x20]!                              
01a94730  cbz       x8, #0x1a94908                                 
01a94734  ldr       w9, [x8, #0x24]                                
01a94738  cmp       w9, #3                                         
01a9473c  b.ne      #0x1a94748                                     
01a94740  ldr       w8, [x8, #0x10]                                
01a94744  cbz       w8, #0x1a9475c                                 
01a94748  ldr       w8, [x22, #0x18]                               
01a9474c  add       w28, w28, #1                                   
01a94750  cmp       w28, w8                                        
01a94754  b.lt      #0x1a94720                                     
01a94758  b         #0x1a946d8                                     
01a9475c  ldr       x0, [x26]                                      
01a94760  bl        #0x183ddcc                                     
01a94764  mov       x1, xzr                                        
01a94768  mov       x23, x0                                        
01a9476c  bl        #0x1ab2194                                     // EventCtrl.<>c__DisplayClass122_0$$.ctor
01a94770  ldr       w8, [x22, #0x18]                               
01a94774  cmp       w28, w8                                        
01a94778  b.hs      #0x1a9490c                                     
01a9477c  ldr       x8, [x24]                                      
01a94780  cbz       x8, #0x1a94908                                 
01a94784  ldr       x0, [x27]                                      
01a94788  ldr       x24, [x8, #0x18]                               
01a9478c  ldr       w9, [x0, #0xe4]                                
01a94790  cbnz      w9, #0x1a94798                                 
01a94794  bl        #0x183dcb0                                     
01a94798  mov       x0, x24                                        
01a9479c  mov       x1, xzr                                        
01a947a0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a947a4  cbz       x23, #0x1a94908                                
01a947a8  sub       w8, w0, #8                                     
01a947ac  str       w0, [x23, #0x10]                               
01a947b0  cmn       w8, #4                                         
01a947b4  b.hi      #0x1a9483c                                     
01a947b8  sub       w8, w0, #0xf                                   
01a947bc  cmn       w8, #3                                         
01a947c0  b.lo      #0x1a94748                                     
01a947c4  adrp      x8, #0x3a8c000                                 
01a947c8  ldr       x8, [x8, #0x658]                               
01a947cc  ldr       x0, [x8]                                       
01a947d0  bl        #0x183ddcc                                     
01a947d4  adrp      x8, #0x3a8c000                                 
01a947d8  mov       x1, x23                                        
01a947dc  mov       x3, xzr                                        
01a947e0  ldr       x8, [x8, #0x7e8]                               
01a947e4  mov       x24, x0                                        
01a947e8  ldr       x2, [x8]                                       
01a947ec  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a947f0  cbz       x20, #0x1a94908                                
01a947f4  ldr       x2, [x29]                                      
01a947f8  mov       x0, x20                                        
01a947fc  mov       x1, x24                                        
01a94800  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a94804  tbnz      w0, #0, #0x1a94748                             
01a94808  adrp      x9, #0x3a7c000                                 
01a9480c  ldr       w11, [x20, #0x1c]                              
01a94810  ldr       x8, [x20, #0x10]                               
01a94814  ldr       w10, [x23, #0x10]                              
01a94818  ldr       x9, [x9, #0xc10]                               
01a9481c  add       w11, w11, #1                                   
01a94820  ldr       x9, [x9]                                       
01a94824  str       w11, [x20, #0x1c]                              
01a94828  cbz       x8, #0x1a94908                                 
01a9482c  ldrsw     x11, [x20, #0x18]                              
01a94830  ldr       w12, [x8, #0x18]                               
01a94834  sub       w1, w10, #9                                    
01a94838  b         #0x1a948b0                                     
01a9483c  adrp      x8, #0x3a8c000                                 
01a94840  ldr       x8, [x8, #0x658]                               
01a94844  ldr       x0, [x8]                                       
01a94848  bl        #0x183ddcc                                     
01a9484c  adrp      x8, #0x3a8c000                                 
01a94850  mov       x1, x23                                        
01a94854  mov       x3, xzr                                        
01a94858  ldr       x8, [x8, #0x7e0]                               
01a9485c  mov       x24, x0                                        
01a94860  ldr       x2, [x8]                                       
01a94864  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a94868  cbz       x20, #0x1a94908                                
01a9486c  ldr       x2, [x29]                                      
01a94870  mov       x0, x20                                        
01a94874  mov       x1, x24                                        
01a94878  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a9487c  tbnz      w0, #0, #0x1a94748                             
01a94880  adrp      x9, #0x3a7c000                                 
01a94884  ldr       w11, [x20, #0x1c]                              
01a94888  ldr       x8, [x20, #0x10]                               
01a9488c  ldr       w10, [x23, #0x10]                              
01a94890  ldr       x9, [x9, #0xc10]                               
01a94894  add       w11, w11, #1                                   
01a94898  ldr       x9, [x9]                                       
01a9489c  str       w11, [x20, #0x1c]                              
01a948a0  cbz       x8, #0x1a94908                                 
01a948a4  ldrsw     x11, [x20, #0x18]                              
01a948a8  ldr       w12, [x8, #0x18]                               
01a948ac  sub       w1, w10, #5                                    
01a948b0  cmp       w11, w12                                       
01a948b4  b.hs      #0x1a948cc                                     
01a948b8  add       x8, x8, x11, lsl #2                            
01a948bc  add       w9, w11, #1                                    
01a948c0  str       w9, [x20, #0x18]                               
01a948c4  str       w1, [x8, #0x20]                                
01a948c8  b         #0x1a94748                                     
01a948cc  ldr       x8, [x9, #0x20]                                
01a948d0  mov       x0, x20                                        
01a948d4  ldr       x8, [x8, #0xc0]                                
01a948d8  ldr       x2, [x8, #0x70]                                
01a948dc  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a948e0  b         #0x1a94748                                     
01a948e4  mov       x20, xzr                                       
01a948e8  mov       x0, x20                                        
01a948ec  ldp       x20, x19, [sp, #0x50]                          
01a948f0  ldp       x22, x21, [sp, #0x40]                          
01a948f4  ldp       x24, x23, [sp, #0x30]                          
01a948f8  ldp       x26, x25, [sp, #0x20]                          
01a948fc  ldp       x28, x27, [sp, #0x10]                          
01a94900  ldp       x29, x30, [sp], #0x60                          
01a94904  ret                                                      
01a94908  bl        #0x183dddc                                     
01a9490c  bl        #0x183dde4                                     