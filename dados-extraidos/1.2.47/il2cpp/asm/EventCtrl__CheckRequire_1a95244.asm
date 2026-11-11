bool EventCtrl__CheckRequire (EventCtrl_o* __this, System_String_o* _require, int32_t curSubEvent, const MethodInfo* method);
// RVA 0x1a95244 to 0x1a96958
01a95244  sub       sp, sp, #0xb0                                  
01a95248  stp       x29, x30, [sp, #0x50]                          
01a9524c  stp       x28, x27, [sp, #0x60]                          
01a95250  stp       x26, x25, [sp, #0x70]                          
01a95254  stp       x24, x23, [sp, #0x80]                          
01a95258  stp       x22, x21, [sp, #0x90]                          
01a9525c  stp       x20, x19, [sp, #0xa0]                          
01a95260  str       w2, [sp, #0xc]                                 
01a95264  adrp      x20, #0x3d14000                                
01a95268  adrp      x22, #0x3a8c000                                
01a9526c  adrp      x19, #0x3a7b000                                
01a95270  ldrb      w8, [x20, #0xcd9]                              
01a95274  ldr       x22, [x22, #0x818]                             
01a95278  ldr       x19, [x19, #0xaf0]                             
01a9527c  mov       x21, x1                                        
01a95280  mov       x23, x0                                        
01a95284  tbnz      w8, #0, #0x1a953a4                             
01a95288  adrp      x0, #0x3a7b000                                 
01a9528c  ldr       x0, [x0, #0xf88]                               
01a95290  bl        #0x183db90                                     
01a95294  adrp      x0, #0x3a7c000                                 
01a95298  ldr       x0, [x0, #0xc08]                               
01a9529c  bl        #0x183db90                                     
01a952a0  adrp      x0, #0x3a8c000                                 
01a952a4  ldr       x0, [x0, #0x640]                               
01a952a8  bl        #0x183db90                                     
01a952ac  adrp      x0, #0x3a7c000                                 
01a952b0  ldr       x0, [x0, #0xc28]                               
01a952b4  bl        #0x183db90                                     
01a952b8  adrp      x0, #0x3a7c000                                 
01a952bc  ldr       x0, [x0, #0xc30]                               
01a952c0  bl        #0x183db90                                     
01a952c4  adrp      x0, #0x3a8c000                                 
01a952c8  ldr       x0, [x0, #0x658]                               
01a952cc  bl        #0x183db90                                     
01a952d0  adrp      x0, #0x3a8c000                                 
01a952d4  ldr       x0, [x0, #0x818]                               
01a952d8  bl        #0x183db90                                     
01a952dc  adrp      x0, #0x3a8c000                                 
01a952e0  ldr       x0, [x0, #0x820]                               
01a952e4  bl        #0x183db90                                     
01a952e8  adrp      x0, #0x3a8c000                                 
01a952ec  ldr       x0, [x0, #0x828]                               
01a952f0  bl        #0x183db90                                     
01a952f4  adrp      x0, #0x3a8c000                                 
01a952f8  ldr       x0, [x0, #0x830]                               
01a952fc  bl        #0x183db90                                     
01a95300  adrp      x0, #0x3a8c000                                 
01a95304  ldr       x0, [x0, #0x838]                               
01a95308  bl        #0x183db90                                     
01a9530c  adrp      x0, #0x3a8c000                                 
01a95310  ldr       x0, [x0, #0x840]                               
01a95314  bl        #0x183db90                                     
01a95318  adrp      x0, #0x3a8c000                                 
01a9531c  ldr       x0, [x0, #0x848]                               
01a95320  bl        #0x183db90                                     
01a95324  adrp      x0, #0x3a8c000                                 
01a95328  ldr       x0, [x0, #0x850]                               
01a9532c  bl        #0x183db90                                     
01a95330  adrp      x0, #0x3a8c000                                 
01a95334  ldr       x0, [x0, #0x858]                               
01a95338  bl        #0x183db90                                     
01a9533c  adrp      x0, #0x3a8c000                                 
01a95340  ldr       x0, [x0, #0x860]                               
01a95344  bl        #0x183db90                                     
01a95348  adrp      x0, #0x3a8c000                                 
01a9534c  ldr       x0, [x0, #0x868]                               
01a95350  bl        #0x183db90                                     
01a95354  adrp      x0, #0x3a8c000                                 
01a95358  ldr       x0, [x0, #0x870]                               
01a9535c  bl        #0x183db90                                     
01a95360  adrp      x0, #0x3a8c000                                 
01a95364  ldr       x0, [x0, #0x878]                               
01a95368  bl        #0x183db90                                     
01a9536c  adrp      x0, #0x3a8c000                                 
01a95370  ldr       x0, [x0, #0x880]                               
01a95374  bl        #0x183db90                                     
01a95378  adrp      x0, #0x3a8c000                                 
01a9537c  ldr       x0, [x0, #0x888]                               
01a95380  bl        #0x183db90                                     
01a95384  adrp      x0, #0x3a7e000                                 
01a95388  ldr       x0, [x0, #0x878]                               
01a9538c  bl        #0x183db90                                     
01a95390  adrp      x0, #0x3a7b000                                 
01a95394  ldr       x0, [x0, #0xaf0]                               
01a95398  bl        #0x183db90                                     
01a9539c  mov       w8, #1                                         
01a953a0  strb      w8, [x20, #0xcd9]                              
01a953a4  ldr       x0, [x22]                                      
01a953a8  bl        #0x183ddcc                                     
01a953ac  mov       x1, xzr                                        
01a953b0  mov       x24, x0                                        
01a953b4  bl        #0x1ab1130                                     // EventCtrl.<>c__DisplayClass103_0$$.ctor
01a953b8  ldr       x1, [x19]                                      
01a953bc  mov       x0, x21                                        
01a953c0  mov       x2, xzr                                        
01a953c4  bl        #0x2c6c03c                                     // System.String$$op_Equality
01a953c8  tbz       w0, #0, #0x1a953d4                             
01a953cc  mov       w22, #1                                        
01a953d0  b         #0x1a9692c                                     
01a953d4  cbz       x21, #0x1a96950                                
01a953d8  mov       x0, x21                                        
01a953dc  mov       w1, #0x7c                                      
01a953e0  mov       w2, wzr                                        
01a953e4  mov       x3, xzr                                        
01a953e8  bl        #0x2c7022c                                     // System.String$$Split
01a953ec  cbz       x0, #0x1a96950                                 
01a953f0  ldr       w8, [x0, #0x18]                                
01a953f4  cbz       w8, #0x1a96954                                 
01a953f8  ldr       x0, [x0, #0x20]                                
01a953fc  cbz       x0, #0x1a96950                                 
01a95400  adrp      x8, #0x3a7e000                                 
01a95404  mov       x2, xzr                                        
01a95408  ldr       x8, [x8, #0x878]                               
01a9540c  ldr       x1, [x8]                                       
01a95410  bl        #0x2c6ba50                                     // System.String$$Equals
01a95414  mov       x1, x21                                        
01a95418  mov       w22, w0                                        
01a9541c  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a95420  cbz       x24, #0x1a96950                                
01a95424  str       x0, [x24, #0x10]                               
01a95428  str       x23, [sp]                                      
01a9542c  tbz       w22, #0, #0x1a95eb0                            
01a95430  adrp      x8, #0x3a8c000                                 
01a95434  ldr       x8, [x8, #0x850]                               
01a95438  ldr       x0, [x8]                                       
01a9543c  bl        #0x183ddcc                                     
01a95440  mov       x1, xzr                                        
01a95444  mov       x21, x0                                        
01a95448  bl        #0x1ab1138                                     // EventCtrl.<>c__DisplayClass103_1$$.ctor
01a9544c  cbz       x21, #0x1a96950                                
01a95450  adrp      x28, #0x3a7c000                                
01a95454  adrp      x29, #0x3a7b000                                
01a95458  adrp      x23, #0x3a7c000                                
01a9545c  adrp      x22, #0x3a8c000                                
01a95460  ldr       x28, [x28, #0xc08]                             
01a95464  ldr       x29, [x29, #0xf88]                             
01a95468  ldr       x23, [x23, #0xd38]                             
01a9546c  ldr       x22, [x22, #0x658]                             
01a95470  str       x24, [x21, #0x18]                              
01a95474  adrp      x20, #0x3a8c000                                
01a95478  mov       w8, #1                                         
01a9547c  mov       w26, wzr                                       
01a95480  ldr       x20, [x20, #0x640]                             
01a95484  adrp      x27, #0xa44000                                 
01a95488  add       x27, x27, #0x282                               
01a9548c  str       w8, [x21, #0x10]                               
01a95490  adrp      x19, #0x3d14000                                
01a95494  ldr       x9, [x24, #0x10]                               
01a95498  cbz       x9, #0x1a96950                                 
01a9549c  ldr       w10, [x9, #0x18]                               
01a954a0  cmp       w8, w10                                        
01a954a4  b.ge      #0x1a96928                                     
01a954a8  b.hs      #0x1a96954                                     
01a954ac  add       x8, x9, w8, sxtw #3                            
01a954b0  ldr       x8, [x8, #0x20]                                
01a954b4  cbz       x8, #0x1a96950                                 
01a954b8  ldr       w9, [x8, #0x10]                                
01a954bc  sub       w9, w9, #1                                     
01a954c0  cmp       w9, #0x22                                      
01a954c4  b.hi      #0x1a95d7c                                     
01a954c8  adr       x10, #0x1a954d8                                
01a954cc  ldrh      w11, [x27, x9, lsl #1]                         
01a954d0  add       x10, x10, x11, lsl #2                          
01a954d4  br        x10                                            
01a954d8  ldr       x9, [x28]                                      
01a954dc  ldr       x0, [x29]                                      
01a954e0  ldr       x25, [x8, #0x18]                               
01a954e4  ldr       x9, [x9, #0xb8]                                
01a954e8  ldr       w10, [x0, #0xe4]                               
01a954ec  ldr       x24, [x9]                                      
01a954f0  cbnz      w10, #0x1a954f8                                
01a954f4  bl        #0x183dcb0                                     
01a954f8  mov       x0, x25                                        
01a954fc  mov       x1, xzr                                        
01a95500  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95504  cbz       x24, #0x1a96950                                
01a95508  mov       w1, w0                                         
01a9550c  mov       x0, x24                                        
01a95510  mov       x2, xzr                                        
01a95514  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a95518  ldr       x8, [x21, #0x18]                               
01a9551c  cbz       x8, #0x1a96950                                 
01a95520  ldr       x8, [x8, #0x10]                                
01a95524  cbz       x8, #0x1a96950                                 
01a95528  ldrsw     x9, [x21, #0x10]                               
01a9552c  ldr       w10, [x8, #0x18]                               
01a95530  cmp       w9, w10                                        
01a95534  b.hs      #0x1a96954                                     
01a95538  add       x8, x8, x9, lsl #3                             
01a9553c  ldr       x8, [x8, #0x20]                                
01a95540  cbz       x8, #0x1a96950                                 
01a95544  ldr       s1, [x8, #0x20]                                
01a95548  fcmp      s0, s1                                         
01a9554c  b.ge      #0x1a95d78                                     
01a95550  b         #0x1a95d7c                                     
01a95554  ldr       x8, [x28]                                      
01a95558  ldr       x8, [x8, #0xb8]                                
01a9555c  ldr       x8, [x8]                                       
01a95560  cbz       x8, #0x1a96950                                 
01a95564  ldr       x0, [x22]                                      
01a95568  ldr       x24, [x8, #0x178]                              
01a9556c  bl        #0x183ddcc                                     
01a95570  adrp      x8, #0x3a8c000                                 
01a95574  ldr       x8, [x8, #0x840]                               
01a95578  b         #0x1a959f0                                     
01a9557c  ldr       x0, [x29]                                      
01a95580  ldr       x24, [x8, #0x18]                               
01a95584  ldr       w9, [x0, #0xe4]                                
01a95588  cbnz      w9, #0x1a95590                                 
01a9558c  bl        #0x183dcb0                                     
01a95590  mov       x0, x24                                        
01a95594  mov       x1, xzr                                        
01a95598  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9559c  mov       w1, w0                                         
01a955a0  bl        #0x1a96958                                     // EventCtrl$$CheckHaveList
01a955a4  b         #0x1a95bd0                                     
01a955a8  ldrb      w8, [x19, #0x678]                              
01a955ac  cbnz      w8, #0x1a955c8                                 
01a955b0  mov       x0, x23                                        
01a955b4  bl        #0x183db90                                     
01a955b8  ldr       x24, [x21, #0x18]                              
01a955bc  mov       w8, #1                                         
01a955c0  strb      w8, [x19, #0x678]                              
01a955c4  cbz       x24, #0x1a96950                                
01a955c8  ldr       x8, [x24, #0x10]                               
01a955cc  cbz       x8, #0x1a96950                                 
01a955d0  ldrsw     x9, [x21, #0x10]                               
01a955d4  ldr       w10, [x8, #0x18]                               
01a955d8  cmp       w9, w10                                        
01a955dc  b.hs      #0x1a96954                                     
01a955e0  add       x8, x8, x9, lsl #3                             
01a955e4  ldr       x8, [x8, #0x20]                                
01a955e8  cbz       x8, #0x1a96950                                 
01a955ec  ldr       x9, [x23]                                      
01a955f0  ldr       x0, [x29]                                      
01a955f4  ldr       x25, [x8, #0x18]                               
01a955f8  ldr       x9, [x9, #0xb8]                                
01a955fc  ldr       w10, [x0, #0xe4]                               
01a95600  ldr       x24, [x9]                                      
01a95604  cbnz      w10, #0x1a9560c                                
01a95608  bl        #0x183dcb0                                     
01a9560c  mov       x0, x25                                        
01a95610  mov       x1, xzr                                        
01a95614  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95618  ldrb      w8, [x19, #0x678]                              
01a9561c  mov       w25, w0                                        
01a95620  cbnz      w8, #0x1a95634                                 
01a95624  mov       x0, x23                                        
01a95628  bl        #0x183db90                                     
01a9562c  mov       w8, #1                                         
01a95630  strb      w8, [x19, #0x678]                              
01a95634  ldr       x8, [x23]                                      
01a95638  ldr       x8, [x8, #0xb8]                                
01a9563c  ldr       x8, [x8]                                       
01a95640  cbz       x8, #0x1a96950                                 
01a95644  cbz       x24, #0x1a96950                                
01a95648  ldr       x2, [x8, #0x48]                                
01a9564c  mov       x0, x24                                        
01a95650  mov       w1, w25                                        
01a95654  mov       x3, xzr                                        
01a95658  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a9565c  ldr       x8, [x21, #0x18]                               
01a95660  cbz       x8, #0x1a96950                                 
01a95664  ldr       x8, [x8, #0x10]                                
01a95668  cbz       x8, #0x1a96950                                 
01a9566c  ldrsw     x9, [x21, #0x10]                               
01a95670  ldr       w10, [x8, #0x18]                               
01a95674  cmp       w9, w10                                        
01a95678  b.hs      #0x1a96954                                     
01a9567c  add       x8, x8, x9, lsl #3                             
01a95680  ldr       x8, [x8, #0x20]                                
01a95684  cbz       x8, #0x1a96950                                 
01a95688  scvtf     s0, w0                                         
01a9568c  ldr       s1, [x8, #0x20]                                
01a95690  fcmp      s1, s0                                         
01a95694  b.ls      #0x1a95d78                                     
01a95698  b         #0x1a95d7c                                     
01a9569c  ldr       x0, [x29]                                      
01a956a0  ldr       x24, [x8, #0x18]                               
01a956a4  ldr       w9, [x0, #0xe4]                                
01a956a8  cbnz      w9, #0x1a956b0                                 
01a956ac  bl        #0x183dcb0                                     
01a956b0  mov       x0, x24                                        
01a956b4  mov       x1, xzr                                        
01a956b8  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a956bc  mov       w1, w0                                         
01a956c0  bl        #0x1a96958                                     // EventCtrl$$CheckHaveList
01a956c4  b         #0x1a95d24                                     
01a956c8  ldr       x8, [x28]                                      
01a956cc  ldr       x8, [x8, #0xb8]                                
01a956d0  ldr       x8, [x8]                                       
01a956d4  cbz       x8, #0x1a96950                                 
01a956d8  ldr       x0, [x22]                                      
01a956dc  ldr       x24, [x8, #0x170]                              
01a956e0  bl        #0x183ddcc                                     
01a956e4  adrp      x8, #0x3a8c000                                 
01a956e8  ldr       x8, [x8, #0x848]                               
01a956ec  b         #0x1a959f0                                     
01a956f0  ldr       x9, [x28]                                      
01a956f4  ldr       x9, [x9, #0xb8]                                
01a956f8  ldr       x9, [x9]                                       
01a956fc  cbz       x9, #0x1a96950                                 
01a95700  ldr       x0, [x29]                                      
01a95704  ldr       x24, [x9, #0x158]                              
01a95708  b         #0x1a9591c                                     
01a9570c  ldr       x9, [x28]                                      
01a95710  ldr       x9, [x9, #0xb8]                                
01a95714  ldr       x9, [x9]                                       
01a95718  cbz       x9, #0x1a96950                                 
01a9571c  mov       w10, #0x7f800000                               
01a95720  ldr       s0, [x8, #0x20]                                
01a95724  ldr       w9, [x9, #0x60]                                
01a95728  fmov      s1, w10                                        
01a9572c  mov       w10, #-0xffffffff80000000                      
01a95730  fcvtzs    w8, s0                                         
01a95734  fcmp      s0, s1                                         
01a95738  csel      w8, w10, w8, eq                                
01a9573c  cmp       w9, w8                                         
01a95740  b         #0x1a95bd4                                     
01a95744  ldrb      w8, [x19, #0x678]                              
01a95748  cbnz      w8, #0x1a95764                                 
01a9574c  mov       x0, x23                                        
01a95750  bl        #0x183db90                                     
01a95754  ldr       x24, [x21, #0x18]                              
01a95758  mov       w8, #1                                         
01a9575c  strb      w8, [x19, #0x678]                              
01a95760  cbz       x24, #0x1a96950                                
01a95764  ldr       x8, [x24, #0x10]                               
01a95768  cbz       x8, #0x1a96950                                 
01a9576c  ldrsw     x9, [x21, #0x10]                               
01a95770  ldr       w10, [x8, #0x18]                               
01a95774  cmp       w9, w10                                        
01a95778  b.hs      #0x1a96954                                     
01a9577c  add       x8, x8, x9, lsl #3                             
01a95780  ldr       x8, [x8, #0x20]                                
01a95784  cbz       x8, #0x1a96950                                 
01a95788  ldr       x9, [x23]                                      
01a9578c  ldr       x0, [x29]                                      
01a95790  ldr       x25, [x8, #0x18]                               
01a95794  ldr       x9, [x9, #0xb8]                                
01a95798  ldr       w10, [x0, #0xe4]                               
01a9579c  ldr       x24, [x9]                                      
01a957a0  cbnz      w10, #0x1a957a8                                
01a957a4  bl        #0x183dcb0                                     
01a957a8  mov       x0, x25                                        
01a957ac  mov       x1, xzr                                        
01a957b0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a957b4  ldrb      w8, [x19, #0x678]                              
01a957b8  mov       w25, w0                                        
01a957bc  cbnz      w8, #0x1a957d0                                 
01a957c0  mov       x0, x23                                        
01a957c4  bl        #0x183db90                                     
01a957c8  mov       w8, #1                                         
01a957cc  strb      w8, [x19, #0x678]                              
01a957d0  ldr       x8, [x23]                                      
01a957d4  ldr       x8, [x8, #0xb8]                                
01a957d8  ldr       x8, [x8]                                       
01a957dc  cbz       x8, #0x1a96950                                 
01a957e0  cbz       x24, #0x1a96950                                
01a957e4  ldr       x2, [x8, #0x48]                                
01a957e8  mov       x0, x24                                        
01a957ec  mov       w1, w25                                        
01a957f0  mov       x3, xzr                                        
01a957f4  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a957f8  ldr       x8, [x21, #0x18]                               
01a957fc  cbz       x8, #0x1a96950                                 
01a95800  ldr       x8, [x8, #0x10]                                
01a95804  cbz       x8, #0x1a96950                                 
01a95808  ldrsw     x9, [x21, #0x10]                               
01a9580c  ldr       w10, [x8, #0x18]                               
01a95810  cmp       w9, w10                                        
01a95814  b.hs      #0x1a96954                                     
01a95818  add       x8, x8, x9, lsl #3                             
01a9581c  ldr       x8, [x8, #0x20]                                
01a95820  cbz       x8, #0x1a96950                                 
01a95824  scvtf     s0, w0                                         
01a95828  ldr       s1, [x8, #0x20]                                
01a9582c  fcmp      s1, s0                                         
01a95830  b.gt      #0x1a95d78                                     
01a95834  b         #0x1a95d7c                                     
01a95838  ldr       x9, [x28]                                      
01a9583c  ldr       x0, [x29]                                      
01a95840  ldr       x25, [x8, #0x18]                               
01a95844  ldr       x9, [x9, #0xb8]                                
01a95848  ldr       w10, [x0, #0xe4]                               
01a9584c  ldr       x24, [x9]                                      
01a95850  cbnz      w10, #0x1a95858                                
01a95854  bl        #0x183dcb0                                     
01a95858  mov       x0, x25                                        
01a9585c  mov       x1, xzr                                        
01a95860  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95864  cbz       x24, #0x1a96950                                
01a95868  mov       w1, w0                                         
01a9586c  mov       x0, x24                                        
01a95870  mov       x2, xzr                                        
01a95874  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a95878  ldr       x8, [x21, #0x18]                               
01a9587c  cbz       x8, #0x1a96950                                 
01a95880  ldr       x8, [x8, #0x10]                                
01a95884  cbz       x8, #0x1a96950                                 
01a95888  ldrsw     x9, [x21, #0x10]                               
01a9588c  ldr       w10, [x8, #0x18]                               
01a95890  cmp       w9, w10                                        
01a95894  b.hs      #0x1a96954                                     
01a95898  add       x8, x8, x9, lsl #3                             
01a9589c  ldr       x8, [x8, #0x20]                                
01a958a0  cbz       x8, #0x1a96950                                 
01a958a4  ldr       s1, [x8, #0x20]                                
01a958a8  fcmp      s0, s1                                         
01a958ac  b.mi      #0x1a95d78                                     
01a958b0  b         #0x1a95d7c                                     
01a958b4  ldr       x0, [x29]                                      
01a958b8  ldr       x24, [x8, #0x18]                               
01a958bc  ldr       w9, [x0, #0xe4]                                
01a958c0  cbnz      w9, #0x1a958c8                                 
01a958c4  bl        #0x183dcb0                                     
01a958c8  mov       x0, x24                                        
01a958cc  mov       x1, xzr                                        
01a958d0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a958d4  ldr       x8, [x28]                                      
01a958d8  ldr       x8, [x8, #0xb8]                                
01a958dc  ldr       x8, [x8]                                       
01a958e0  cbz       x8, #0x1a96950                                 
01a958e4  ldr       w9, [x8, #0x150]                               
01a958e8  mov       w1, w0                                         
01a958ec  subs      w24, w0, w9                                    
01a958f0  b.ge      #0x1a95d94                                     
01a958f4  ldr       x0, [x8, #0x360]                               
01a958f8  cbz       x0, #0x1a96950                                 
01a958fc  adrp      x8, #0x3a7c000                                 
01a95900  b         #0x1a95dd8                                     
01a95904  ldr       x9, [x28]                                      
01a95908  ldr       x9, [x9, #0xb8]                                
01a9590c  ldr       x9, [x9]                                       
01a95910  cbz       x9, #0x1a96950                                 
01a95914  ldr       x0, [x29]                                      
01a95918  ldr       x24, [x9, #0x138]                              
01a9591c  ldr       w10, [x0, #0xe4]                               
01a95920  ldr       x25, [x8, #0x18]                               
01a95924  cbnz      w10, #0x1a9592c                                
01a95928  bl        #0x183dcb0                                     
01a9592c  mov       x0, x25                                        
01a95930  mov       x1, xzr                                        
01a95934  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95938  cbz       x24, #0x1a96950                                
01a9593c  adrp      x8, #0x3a7c000                                 
01a95940  mov       w1, w0                                         
01a95944  mov       x0, x24                                        
01a95948  ldr       x8, [x8, #0xc30]                               
01a9594c  ldr       x2, [x8]                                       
01a95950  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a95954  ldr       x8, [x21, #0x18]                               
01a95958  cbz       x8, #0x1a96950                                 
01a9595c  ldr       x8, [x8, #0x10]                                
01a95960  cbz       x8, #0x1a96950                                 
01a95964  ldrsw     x9, [x21, #0x10]                               
01a95968  ldr       w10, [x8, #0x18]                               
01a9596c  cmp       w9, w10                                        
01a95970  b.hs      #0x1a96954                                     
01a95974  add       x8, x8, x9, lsl #3                             
01a95978  ldr       x8, [x8, #0x20]                                
01a9597c  cbz       x8, #0x1a96950                                 
01a95980  mov       w9, #0x7f800000                                
01a95984  ldr       s0, [x8, #0x20]                                
01a95988  fmov      s1, w9                                         
01a9598c  mov       w9, #-0xffffffff80000000                       
01a95990  fcvtzs    w8, s0                                         
01a95994  fcmp      s0, s1                                         
01a95998  csel      w8, w9, w8, eq                                 
01a9599c  cmp       w0, w8                                         
01a959a0  b         #0x1a95bd4                                     
01a959a4  ldr       x8, [x28]                                      
01a959a8  ldr       x8, [x8, #0xb8]                                
01a959ac  ldr       x8, [x8]                                       
01a959b0  cbz       x8, #0x1a96950                                 
01a959b4  ldr       x0, [x22]                                      
01a959b8  ldr       x24, [x8, #0x168]                              
01a959bc  bl        #0x183ddcc                                     
01a959c0  adrp      x8, #0x3a8c000                                 
01a959c4  ldr       x8, [x8, #0x820]                               
01a959c8  b         #0x1a95cfc                                     
01a959cc  ldr       x8, [x28]                                      
01a959d0  ldr       x8, [x8, #0xb8]                                
01a959d4  ldr       x8, [x8]                                       
01a959d8  cbz       x8, #0x1a96950                                 
01a959dc  ldr       x0, [x22]                                      
01a959e0  ldr       x24, [x8, #0x168]                              
01a959e4  bl        #0x183ddcc                                     
01a959e8  adrp      x8, #0x3a8c000                                 
01a959ec  ldr       x8, [x8, #0x828]                               
01a959f0  ldr       x2, [x8]                                       
01a959f4  mov       x1, x21                                        
01a959f8  mov       x3, xzr                                        
01a959fc  mov       x25, x0                                        
01a95a00  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a95a04  cbz       x24, #0x1a96950                                
01a95a08  ldr       x2, [x20]                                      
01a95a0c  mov       x0, x24                                        
01a95a10  mov       x1, x25                                        
01a95a14  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a95a18  b         #0x1a95bd0                                     
01a95a1c  adrp      x8, #0x3d14000                                 
01a95a20  ldrb      w8, [x8, #0x679]                               
01a95a24  cbnz      w8, #0x1a95a48                                 
01a95a28  adrp      x0, #0x3a7c000                                 
01a95a2c  ldr       x0, [x0, #0xe18]                               
01a95a30  bl        #0x183db90                                     
01a95a34  ldr       x24, [x21, #0x18]                              
01a95a38  mov       w8, #1                                         
01a95a3c  adrp      x9, #0x3d14000                                 
01a95a40  strb      w8, [x9, #0x679]                               
01a95a44  cbz       x24, #0x1a96950                                
01a95a48  ldr       x8, [x24, #0x10]                               
01a95a4c  cbz       x8, #0x1a96950                                 
01a95a50  ldrsw     x9, [x21, #0x10]                               
01a95a54  ldr       w10, [x8, #0x18]                               
01a95a58  cmp       w9, w10                                        
01a95a5c  b.hs      #0x1a96954                                     
01a95a60  add       x8, x8, x9, lsl #3                             
01a95a64  ldr       x8, [x8, #0x20]                                
01a95a68  cbz       x8, #0x1a96950                                 
01a95a6c  adrp      x9, #0x3a7c000                                 
01a95a70  ldr       x9, [x9, #0xe18]                               
01a95a74  ldr       x0, [x29]                                      
01a95a78  ldr       x25, [x8, #0x18]                               
01a95a7c  ldr       x9, [x9]                                       
01a95a80  ldr       w10, [x0, #0xe4]                               
01a95a84  ldr       x9, [x9, #0xb8]                                
01a95a88  ldr       x24, [x9]                                      
01a95a8c  cbnz      w10, #0x1a95a94                                
01a95a90  bl        #0x183dcb0                                     
01a95a94  mov       x0, x25                                        
01a95a98  mov       x1, xzr                                        
01a95a9c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95aa0  ldr       x8, [x21, #0x18]                               
01a95aa4  cbz       x8, #0x1a96950                                 
01a95aa8  ldr       x8, [x8, #0x10]                                
01a95aac  cbz       x8, #0x1a96950                                 
01a95ab0  ldrsw     x9, [x21, #0x10]                               
01a95ab4  ldr       w10, [x8, #0x18]                               
01a95ab8  cmp       w9, w10                                        
01a95abc  b.hs      #0x1a96954                                     
01a95ac0  add       x8, x8, x9, lsl #3                             
01a95ac4  ldr       x8, [x8, #0x20]                                
01a95ac8  cbz       x8, #0x1a96950                                 
01a95acc  ldr       s0, [x8, #0x20]                                
01a95ad0  mov       w25, w0                                        
01a95ad4  mov       x0, xzr                                        
01a95ad8  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a95adc  cbz       x24, #0x1a96950                                
01a95ae0  mov       w2, w0                                         
01a95ae4  mov       x0, x24                                        
01a95ae8  mov       w1, w25                                        
01a95aec  mov       x3, xzr                                        
01a95af0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a95af4  b         #0x1a95d24                                     
01a95af8  adrp      x8, #0x3d14000                                 
01a95afc  ldrb      w8, [x8, #0x679]                               
01a95b00  cbnz      w8, #0x1a95b24                                 
01a95b04  adrp      x0, #0x3a7c000                                 
01a95b08  ldr       x0, [x0, #0xe18]                               
01a95b0c  bl        #0x183db90                                     
01a95b10  ldr       x24, [x21, #0x18]                              
01a95b14  mov       w8, #1                                         
01a95b18  adrp      x9, #0x3d14000                                 
01a95b1c  strb      w8, [x9, #0x679]                               
01a95b20  cbz       x24, #0x1a96950                                
01a95b24  ldr       x8, [x24, #0x10]                               
01a95b28  cbz       x8, #0x1a96950                                 
01a95b2c  ldrsw     x9, [x21, #0x10]                               
01a95b30  ldr       w10, [x8, #0x18]                               
01a95b34  cmp       w9, w10                                        
01a95b38  b.hs      #0x1a96954                                     
01a95b3c  add       x8, x8, x9, lsl #3                             
01a95b40  ldr       x8, [x8, #0x20]                                
01a95b44  cbz       x8, #0x1a96950                                 
01a95b48  adrp      x9, #0x3a7c000                                 
01a95b4c  ldr       x9, [x9, #0xe18]                               
01a95b50  ldr       x0, [x29]                                      
01a95b54  ldr       x25, [x8, #0x18]                               
01a95b58  ldr       x9, [x9]                                       
01a95b5c  ldr       w10, [x0, #0xe4]                               
01a95b60  ldr       x9, [x9, #0xb8]                                
01a95b64  ldr       x24, [x9]                                      
01a95b68  cbnz      w10, #0x1a95b70                                
01a95b6c  bl        #0x183dcb0                                     
01a95b70  mov       x0, x25                                        
01a95b74  mov       x1, xzr                                        
01a95b78  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95b7c  ldr       x8, [x21, #0x18]                               
01a95b80  cbz       x8, #0x1a96950                                 
01a95b84  ldr       x8, [x8, #0x10]                                
01a95b88  cbz       x8, #0x1a96950                                 
01a95b8c  ldrsw     x9, [x21, #0x10]                               
01a95b90  ldr       w10, [x8, #0x18]                               
01a95b94  cmp       w9, w10                                        
01a95b98  b.hs      #0x1a96954                                     
01a95b9c  add       x8, x8, x9, lsl #3                             
01a95ba0  ldr       x8, [x8, #0x20]                                
01a95ba4  cbz       x8, #0x1a96950                                 
01a95ba8  ldr       s0, [x8, #0x20]                                
01a95bac  mov       w25, w0                                        
01a95bb0  mov       x0, xzr                                        
01a95bb4  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a95bb8  cbz       x24, #0x1a96950                                
01a95bbc  mov       w2, w0                                         
01a95bc0  mov       x0, x24                                        
01a95bc4  mov       w1, w25                                        
01a95bc8  mov       x3, xzr                                        
01a95bcc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a95bd0  tst       w0, #1                                         
01a95bd4  csinc     w26, w26, wzr, ne                              
01a95bd8  b         #0x1a95d7c                                     
01a95bdc  ldr       x8, [x28]                                      
01a95be0  ldr       x8, [x8, #0xb8]                                
01a95be4  ldr       x8, [x8]                                       
01a95be8  cbz       x8, #0x1a96950                                 
01a95bec  ldr       q0, [x8, #0xb0]                                
01a95bf0  ldr       w8, [x8, #0xc0]                                
01a95bf4  add       x0, sp, #0x30                                  
01a95bf8  mov       x1, xzr                                        
01a95bfc  str       q0, [sp, #0x30]                                
01a95c00  str       w8, [sp, #0x40]                                
01a95c04  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a95c08  cmn       w0, #1                                         
01a95c0c  b         #0x1a95d28                                     
01a95c10  ldr       x9, [x28]                                      
01a95c14  ldr       x9, [x9, #0xb8]                                
01a95c18  ldr       x9, [x9]                                       
01a95c1c  cbz       x9, #0x1a96950                                 
01a95c20  ldr       x0, [x29]                                      
01a95c24  ldr       x24, [x9, #0x158]                              
01a95c28  ldr       x25, [x8, #0x18]                               
01a95c2c  ldr       w10, [x0, #0xe4]                               
01a95c30  cbnz      w10, #0x1a95c38                                
01a95c34  bl        #0x183dcb0                                     
01a95c38  mov       x0, x25                                        
01a95c3c  mov       x1, xzr                                        
01a95c40  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95c44  cbz       x24, #0x1a96950                                
01a95c48  adrp      x8, #0x3a7c000                                 
01a95c4c  mov       w1, w0                                         
01a95c50  mov       x0, x24                                        
01a95c54  ldr       x8, [x8, #0xc30]                               
01a95c58  ldr       x2, [x8]                                       
01a95c5c  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a95c60  ldr       x8, [x21, #0x18]                               
01a95c64  cbz       x8, #0x1a96950                                 
01a95c68  ldr       x8, [x8, #0x10]                                
01a95c6c  cbz       x8, #0x1a96950                                 
01a95c70  ldrsw     x9, [x21, #0x10]                               
01a95c74  ldr       w10, [x8, #0x18]                               
01a95c78  cmp       w9, w10                                        
01a95c7c  b.hs      #0x1a96954                                     
01a95c80  add       x8, x8, x9, lsl #3                             
01a95c84  ldr       x8, [x8, #0x20]                                
01a95c88  cbz       x8, #0x1a96950                                 
01a95c8c  mov       w9, #0x7f800000                                
01a95c90  ldr       s0, [x8, #0x20]                                
01a95c94  fmov      s1, w9                                         
01a95c98  mov       w9, #-0xffffffff80000000                       
01a95c9c  fcvtzs    w8, s0                                         
01a95ca0  fcmp      s0, s1                                         
01a95ca4  csel      w8, w9, w8, eq                                 
01a95ca8  cmp       w0, w8                                         
01a95cac  b         #0x1a95d28                                     
01a95cb0  ldr       x8, [x28]                                      
01a95cb4  ldr       x8, [x8, #0xb8]                                
01a95cb8  ldr       x8, [x8]                                       
01a95cbc  cbz       x8, #0x1a96950                                 
01a95cc0  ldr       x0, [x22]                                      
01a95cc4  ldr       x24, [x8, #0x170]                              
01a95cc8  bl        #0x183ddcc                                     
01a95ccc  adrp      x8, #0x3a8c000                                 
01a95cd0  ldr       x8, [x8, #0x838]                               
01a95cd4  b         #0x1a95cfc                                     
01a95cd8  ldr       x8, [x28]                                      
01a95cdc  ldr       x8, [x8, #0xb8]                                
01a95ce0  ldr       x8, [x8]                                       
01a95ce4  cbz       x8, #0x1a96950                                 
01a95ce8  ldr       x0, [x22]                                      
01a95cec  ldr       x24, [x8, #0x178]                              
01a95cf0  bl        #0x183ddcc                                     
01a95cf4  adrp      x8, #0x3a8c000                                 
01a95cf8  ldr       x8, [x8, #0x830]                               
01a95cfc  ldr       x2, [x8]                                       
01a95d00  mov       x1, x21                                        
01a95d04  mov       x3, xzr                                        
01a95d08  mov       x25, x0                                        
01a95d0c  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a95d10  cbz       x24, #0x1a96950                                
01a95d14  ldr       x2, [x20]                                      
01a95d18  mov       x0, x24                                        
01a95d1c  mov       x1, x25                                        
01a95d20  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a95d24  tst       w0, #1                                         
01a95d28  csinc     w26, w26, wzr, eq                              
01a95d2c  b         #0x1a95d7c                                     
01a95d30  ldr       x8, [x28]                                      
01a95d34  ldr       x8, [x8, #0xb8]                                
01a95d38  ldr       x0, [x8]                                       
01a95d3c  cbz       x0, #0x1a96950                                 
01a95d40  mov       w1, #0xf                                       
01a95d44  mov       x2, xzr                                        
01a95d48  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a95d4c  mov       w8, #0x42c80000                                
01a95d50  fmov      s1, w8                                         
01a95d54  bl        #0x3887050                                     
01a95d58  fcmp      s0, #0.0                                       
01a95d5c  b.eq      #0x1a95d7c                                     
01a95d60  ldr       x8, [sp]                                       
01a95d64  ldr       s1, [x8, #0x1dc]                               
01a95d68  scvtf     s1, s1                                         
01a95d6c  bl        #0x3887050                                     
01a95d70  fcmp      s0, #0.0                                       
01a95d74  b.ne      #0x1a95d7c                                     
01a95d78  mov       w26, #1                                        
01a95d7c  ldr       w8, [x21, #0x10]                               
01a95d80  ldr       x24, [x21, #0x18]                              
01a95d84  add       w8, w8, #1                                     
01a95d88  str       w8, [x21, #0x10]                               
01a95d8c  cbnz      x24, #0x1a95494                                
01a95d90  b         #0x1a96950                                     
01a95d94  b.mi      #0x1a95df8                                     
01a95d98  ldr       x0, [x8, #0x350]                               
01a95d9c  cbz       x0, #0x1a96950                                 
01a95da0  adrp      x8, #0x3a7c000                                 
01a95da4  mov       w1, w24                                        
01a95da8  ldr       x8, [x8, #0xc28]                               
01a95dac  ldr       x2, [x8]                                       
01a95db0  bl        #0x273ac08                                     // System.Collections.Generic.List<bool>$$get_Item
01a95db4  tbz       w0, #0, #0x1a95d7c                             
01a95db8  ldr       x8, [x28]                                      
01a95dbc  ldr       x8, [x8, #0xb8]                                
01a95dc0  ldr       x8, [x8]                                       
01a95dc4  cbz       x8, #0x1a96950                                 
01a95dc8  ldr       x0, [x8, #0x358]                               
01a95dcc  cbz       x0, #0x1a96950                                 
01a95dd0  adrp      x8, #0x3a7c000                                 
01a95dd4  mov       w1, w24                                        
01a95dd8  ldr       x8, [x8, #0xc28]                               
01a95ddc  ldr       x2, [x8]                                       
01a95de0  bl        #0x273ac08                                     // System.Collections.Generic.List<bool>$$get_Item
01a95de4  ldr       w8, [sp, #0xc]                                 
01a95de8  cmn       w8, #1                                         
01a95dec  b.eq      #0x1a95d7c                                     
01a95df0  tbnz      w0, #0, #0x1a95e04                             
01a95df4  b         #0x1a95d7c                                     
01a95df8  ldr       w8, [sp, #0xc]                                 
01a95dfc  cmn       w8, #1                                         
01a95e00  b.eq      #0x1a95d7c                                     
01a95e04  ldr       x8, [x21, #0x18]                               
01a95e08  cbz       x8, #0x1a96950                                 
01a95e0c  ldr       x8, [x8, #0x10]                                
01a95e10  cbz       x8, #0x1a96950                                 
01a95e14  ldrsw     x9, [x21, #0x10]                               
01a95e18  ldr       w10, [x8, #0x18]                               
01a95e1c  cmp       w9, w10                                        
01a95e20  b.hs      #0x1a96954                                     
01a95e24  add       x8, x8, x9, lsl #3                             
01a95e28  ldr       x8, [x8, #0x20]                                
01a95e2c  cbz       x8, #0x1a96950                                 
01a95e30  ldr       x0, [x29]                                      
01a95e34  ldr       x24, [x8, #0x18]                               
01a95e38  ldr       w9, [x0, #0xe4]                                
01a95e3c  cbnz      w9, #0x1a95e44                                 
01a95e40  bl        #0x183dcb0                                     
01a95e44  mov       x0, x24                                        
01a95e48  mov       x1, xzr                                        
01a95e4c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95e50  ldr       w8, [sp, #0xc]                                 
01a95e54  cmp       w0, w8                                         
01a95e58  b.ne      #0x1a95d7c                                     
01a95e5c  ldr       x8, [x28]                                      
01a95e60  ldr       x8, [x8, #0xb8]                                
01a95e64  ldr       x8, [x8]                                       
01a95e68  cbz       x8, #0x1a96950                                 
01a95e6c  ldr       x9, [x21, #0x18]                               
01a95e70  cbz       x9, #0x1a96950                                 
01a95e74  ldr       x9, [x9, #0x10]                                
01a95e78  cbz       x9, #0x1a96950                                 
01a95e7c  ldrsw     x10, [x21, #0x10]                              
01a95e80  ldr       w11, [x9, #0x18]                               
01a95e84  cmp       w10, w11                                       
01a95e88  b.hs      #0x1a96954                                     
01a95e8c  add       x9, x9, x10, lsl #3                            
01a95e90  ldr       x9, [x9, #0x20]                                
01a95e94  cbz       x9, #0x1a96950                                 
01a95e98  ldr       x0, [x29]                                      
01a95e9c  ldr       x24, [x8, #0x148]                              
01a95ea0  ldr       x25, [x9, #0x18]                               
01a95ea4  ldr       w10, [x0, #0xe4]                               
01a95ea8  cbnz      w10, #0x1a9592c                                
01a95eac  b         #0x1a95928                                     
01a95eb0  adrp      x8, #0x3a8c000                                 
01a95eb4  ldr       x8, [x8, #0x888]                               
01a95eb8  ldr       x0, [x8]                                       
01a95ebc  bl        #0x183ddcc                                     
01a95ec0  mov       x1, xzr                                        
01a95ec4  mov       x21, x0                                        
01a95ec8  bl        #0x1ab1610                                     // EventCtrl.<>c__DisplayClass103_2$$.ctor
01a95ecc  cbz       x21, #0x1a96950                                
01a95ed0  adrp      x26, #0x3a7c000                                
01a95ed4  adrp      x27, #0x3a7b000                                
01a95ed8  adrp      x23, #0x3a7c000                                
01a95edc  adrp      x29, #0x3a8c000                                
01a95ee0  ldr       x26, [x26, #0xc08]                             
01a95ee4  ldr       x27, [x27, #0xf88]                             
01a95ee8  ldr       x23, [x23, #0xd38]                             
01a95eec  ldr       x29, [x29, #0x658]                             
01a95ef0  str       x24, [x21, #0x18]                              
01a95ef4  adrp      x19, #0x3a8c000                                
01a95ef8  mov       w8, wzr                                        
01a95efc  adrp      x20, #0xa44000                                 
01a95f00  add       x20, x20, #0x23c                               
01a95f04  ldr       x19, [x19, #0x640]                             
01a95f08  str       wzr, [x21, #0x10]                              
01a95f0c  adrp      x28, #0x3d14000                                
01a95f10  mov       w22, #1                                        
01a95f14  ldr       x9, [x24, #0x10]                               
01a95f18  cbz       x9, #0x1a96950                                 
01a95f1c  ldr       w10, [x9, #0x18]                               
01a95f20  cmp       w8, w10                                        
01a95f24  b.ge      #0x1a9692c                                     
01a95f28  b.hs      #0x1a96954                                     
01a95f2c  add       x8, x9, w8, sxtw #3                            
01a95f30  ldr       x8, [x8, #0x20]                                
01a95f34  cbz       x8, #0x1a96950                                 
01a95f38  ldr       w9, [x8, #0x10]                                
01a95f3c  sub       w9, w9, #1                                     
01a95f40  cmp       w9, #0x22                                      
01a95f44  b.hi      #0x1a96908                                     
01a95f48  adr       x10, #0x1a95f58                                
01a95f4c  ldrh      w11, [x20, x9, lsl #1]                         
01a95f50  add       x10, x10, x11, lsl #2                          
01a95f54  br        x10                                            
01a95f58  ldr       x9, [x26]                                      
01a95f5c  ldr       x0, [x27]                                      
01a95f60  ldr       x25, [x8, #0x18]                               
01a95f64  ldr       x9, [x9, #0xb8]                                
01a95f68  ldr       w10, [x0, #0xe4]                               
01a95f6c  ldr       x24, [x9]                                      
01a95f70  cbnz      w10, #0x1a95f78                                
01a95f74  bl        #0x183dcb0                                     
01a95f78  mov       x0, x25                                        
01a95f7c  mov       x1, xzr                                        
01a95f80  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a95f84  cbz       x24, #0x1a96950                                
01a95f88  mov       w1, w0                                         
01a95f8c  mov       x0, x24                                        
01a95f90  mov       x2, xzr                                        
01a95f94  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a95f98  ldr       x8, [x21, #0x18]                               
01a95f9c  cbz       x8, #0x1a96950                                 
01a95fa0  ldr       x8, [x8, #0x10]                                
01a95fa4  cbz       x8, #0x1a96950                                 
01a95fa8  ldrsw     x9, [x21, #0x10]                               
01a95fac  ldr       w10, [x8, #0x18]                               
01a95fb0  cmp       w9, w10                                        
01a95fb4  b.hs      #0x1a96954                                     
01a95fb8  add       x8, x8, x9, lsl #3                             
01a95fbc  ldr       x8, [x8, #0x20]                                
01a95fc0  cbz       x8, #0x1a96950                                 
01a95fc4  ldr       s1, [x8, #0x20]                                
01a95fc8  fcmp      s0, s1                                         
01a95fcc  b.pl      #0x1a96908                                     
01a95fd0  b         #0x1a96904                                     
01a95fd4  ldr       x8, [x26]                                      
01a95fd8  ldr       x8, [x8, #0xb8]                                
01a95fdc  ldr       x8, [x8]                                       
01a95fe0  cbz       x8, #0x1a96950                                 
01a95fe4  ldr       x0, [x29]                                      
01a95fe8  ldr       x24, [x8, #0x178]                              
01a95fec  bl        #0x183ddcc                                     
01a95ff0  adrp      x8, #0x3a8c000                                 
01a95ff4  ldr       x8, [x8, #0x858]                               
01a95ff8  b         #0x1a963f0                                     
01a95ffc  ldr       x0, [x27]                                      
01a96000  ldr       x24, [x8, #0x18]                               
01a96004  ldr       w9, [x0, #0xe4]                                
01a96008  cbnz      w9, #0x1a96010                                 
01a9600c  bl        #0x183dcb0                                     
01a96010  mov       x0, x24                                        
01a96014  mov       x1, xzr                                        
01a96018  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9601c  mov       w1, w0                                         
01a96020  bl        #0x1a96958                                     // EventCtrl$$CheckHaveList
01a96024  b         #0x1a965d0                                     
01a96028  ldrb      w8, [x28, #0x678]                              
01a9602c  cbnz      w8, #0x1a96048                                 
01a96030  mov       x0, x23                                        
01a96034  bl        #0x183db90                                     
01a96038  ldr       x24, [x21, #0x18]                              
01a9603c  mov       w8, #1                                         
01a96040  strb      w8, [x28, #0x678]                              
01a96044  cbz       x24, #0x1a96950                                
01a96048  ldr       x8, [x24, #0x10]                               
01a9604c  cbz       x8, #0x1a96950                                 
01a96050  ldrsw     x9, [x21, #0x10]                               
01a96054  ldr       w10, [x8, #0x18]                               
01a96058  cmp       w9, w10                                        
01a9605c  b.hs      #0x1a96954                                     
01a96060  add       x8, x8, x9, lsl #3                             
01a96064  ldr       x8, [x8, #0x20]                                
01a96068  cbz       x8, #0x1a96950                                 
01a9606c  ldr       x9, [x23]                                      
01a96070  ldr       x0, [x27]                                      
01a96074  ldr       x25, [x8, #0x18]                               
01a96078  ldr       x9, [x9, #0xb8]                                
01a9607c  ldr       w10, [x0, #0xe4]                               
01a96080  ldr       x24, [x9]                                      
01a96084  cbnz      w10, #0x1a9608c                                
01a96088  bl        #0x183dcb0                                     
01a9608c  mov       x0, x25                                        
01a96090  mov       x1, xzr                                        
01a96094  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a96098  ldrb      w8, [x28, #0x678]                              
01a9609c  mov       w25, w0                                        
01a960a0  cbnz      w8, #0x1a960b4                                 
01a960a4  mov       x0, x23                                        
01a960a8  bl        #0x183db90                                     
01a960ac  mov       w8, #1                                         
01a960b0  strb      w8, [x28, #0x678]                              
01a960b4  ldr       x8, [x23]                                      
01a960b8  ldr       x8, [x8, #0xb8]                                
01a960bc  ldr       x8, [x8]                                       
01a960c0  cbz       x8, #0x1a96950                                 
01a960c4  cbz       x24, #0x1a96950                                
01a960c8  ldr       x2, [x8, #0x48]                                
01a960cc  mov       x0, x24                                        
01a960d0  mov       w1, w25                                        
01a960d4  mov       x3, xzr                                        
01a960d8  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a960dc  ldr       x8, [x21, #0x18]                               
01a960e0  cbz       x8, #0x1a96950                                 
01a960e4  ldr       x8, [x8, #0x10]                                
01a960e8  cbz       x8, #0x1a96950                                 
01a960ec  ldrsw     x9, [x21, #0x10]                               
01a960f0  ldr       w10, [x8, #0x18]                               
01a960f4  cmp       w9, w10                                        
01a960f8  b.hs      #0x1a96954                                     
01a960fc  add       x8, x8, x9, lsl #3                             
01a96100  ldr       x8, [x8, #0x20]                                
01a96104  cbz       x8, #0x1a96950                                 
01a96108  scvtf     s0, w0                                         
01a9610c  ldr       s1, [x8, #0x20]                                
01a96110  fcmp      s1, s0                                         
01a96114  b.le      #0x1a96908                                     
01a96118  b         #0x1a96904                                     
01a9611c  ldr       x0, [x27]                                      
01a96120  ldr       x24, [x8, #0x18]                               
01a96124  ldr       w9, [x0, #0xe4]                                
01a96128  cbnz      w9, #0x1a96130                                 
01a9612c  bl        #0x183dcb0                                     
01a96130  mov       x0, x24                                        
01a96134  mov       x1, xzr                                        
01a96138  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9613c  mov       w1, w0                                         
01a96140  bl        #0x1a96958                                     // EventCtrl$$CheckHaveList
01a96144  b         #0x1a96724                                     
01a96148  ldr       x8, [x26]                                      
01a9614c  ldr       x8, [x8, #0xb8]                                
01a96150  ldr       x8, [x8]                                       
01a96154  cbz       x8, #0x1a96950                                 
01a96158  ldr       x0, [x29]                                      
01a9615c  ldr       x24, [x8, #0x170]                              
01a96160  bl        #0x183ddcc                                     
01a96164  adrp      x8, #0x3a8c000                                 
01a96168  ldr       x8, [x8, #0x860]                               
01a9616c  b         #0x1a963f0                                     
01a96170  ldr       x9, [x26]                                      
01a96174  ldr       x9, [x9, #0xb8]                                
01a96178  ldr       x9, [x9]                                       
01a9617c  cbz       x9, #0x1a96950                                 
01a96180  ldr       x0, [x27]                                      
01a96184  ldr       x24, [x9, #0x158]                              
01a96188  b         #0x1a9639c                                     
01a9618c  ldr       x9, [x26]                                      
01a96190  ldr       x9, [x9, #0xb8]                                
01a96194  ldr       x9, [x9]                                       
01a96198  cbz       x9, #0x1a96950                                 
01a9619c  mov       w10, #0x7f800000                               
01a961a0  ldr       s0, [x8, #0x20]                                
01a961a4  ldr       w9, [x9, #0x60]                                
01a961a8  fmov      s1, w10                                        
01a961ac  mov       w10, #-0xffffffff80000000                      
01a961b0  fcvtzs    w8, s0                                         
01a961b4  fcmp      s0, s1                                         
01a961b8  csel      w8, w10, w8, eq                                
01a961bc  cmp       w9, w8                                         
01a961c0  b         #0x1a968f8                                     
01a961c4  ldrb      w8, [x28, #0x678]                              
01a961c8  cbnz      w8, #0x1a961e4                                 
01a961cc  mov       x0, x23                                        
01a961d0  bl        #0x183db90                                     
01a961d4  ldr       x24, [x21, #0x18]                              
01a961d8  mov       w8, #1                                         
01a961dc  strb      w8, [x28, #0x678]                              
01a961e0  cbz       x24, #0x1a96950                                
01a961e4  ldr       x8, [x24, #0x10]                               
01a961e8  cbz       x8, #0x1a96950                                 
01a961ec  ldrsw     x9, [x21, #0x10]                               
01a961f0  ldr       w10, [x8, #0x18]                               
01a961f4  cmp       w9, w10                                        
01a961f8  b.hs      #0x1a96954                                     
01a961fc  add       x8, x8, x9, lsl #3                             
01a96200  ldr       x8, [x8, #0x20]                                
01a96204  cbz       x8, #0x1a96950                                 
01a96208  ldr       x9, [x23]                                      
01a9620c  ldr       x0, [x27]                                      
01a96210  ldr       x25, [x8, #0x18]                               
01a96214  ldr       x9, [x9, #0xb8]                                
01a96218  ldr       w10, [x0, #0xe4]                               
01a9621c  ldr       x24, [x9]                                      
01a96220  cbnz      w10, #0x1a96228                                
01a96224  bl        #0x183dcb0                                     
01a96228  mov       x0, x25                                        
01a9622c  mov       x1, xzr                                        
01a96230  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a96234  ldrb      w8, [x28, #0x678]                              
01a96238  mov       w25, w0                                        
01a9623c  cbnz      w8, #0x1a96250                                 
01a96240  mov       x0, x23                                        
01a96244  bl        #0x183db90                                     
01a96248  mov       w8, #1                                         
01a9624c  strb      w8, [x28, #0x678]                              
01a96250  ldr       x8, [x23]                                      
01a96254  ldr       x8, [x8, #0xb8]                                
01a96258  ldr       x8, [x8]                                       
01a9625c  cbz       x8, #0x1a96950                                 
01a96260  cbz       x24, #0x1a96950                                
01a96264  ldr       x2, [x8, #0x48]                                
01a96268  mov       x0, x24                                        
01a9626c  mov       w1, w25                                        
01a96270  mov       x3, xzr                                        
01a96274  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a96278  ldr       x8, [x21, #0x18]                               
01a9627c  cbz       x8, #0x1a96950                                 
01a96280  ldr       x8, [x8, #0x10]                                
01a96284  cbz       x8, #0x1a96950                                 
01a96288  ldrsw     x9, [x21, #0x10]                               
01a9628c  ldr       w10, [x8, #0x18]                               
01a96290  cmp       w9, w10                                        
01a96294  b.hs      #0x1a96954                                     
01a96298  add       x8, x8, x9, lsl #3                             
01a9629c  ldr       x8, [x8, #0x20]                                
01a962a0  cbz       x8, #0x1a96950                                 
01a962a4  scvtf     s0, w0                                         
01a962a8  ldr       s1, [x8, #0x20]                                
01a962ac  fcmp      s1, s0                                         
01a962b0  b.ls      #0x1a96904                                     
01a962b4  b         #0x1a96908                                     
01a962b8  ldr       x9, [x26]                                      
01a962bc  ldr       x0, [x27]                                      
01a962c0  ldr       x25, [x8, #0x18]                               
01a962c4  ldr       x9, [x9, #0xb8]                                
01a962c8  ldr       w10, [x0, #0xe4]                               
01a962cc  ldr       x24, [x9]                                      
01a962d0  cbnz      w10, #0x1a962d8                                
01a962d4  bl        #0x183dcb0                                     
01a962d8  mov       x0, x25                                        
01a962dc  mov       x1, xzr                                        
01a962e0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a962e4  cbz       x24, #0x1a96950                                
01a962e8  mov       w1, w0                                         
01a962ec  mov       x0, x24                                        
01a962f0  mov       x2, xzr                                        
01a962f4  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a962f8  ldr       x8, [x21, #0x18]                               
01a962fc  cbz       x8, #0x1a96950                                 
01a96300  ldr       x8, [x8, #0x10]                                
01a96304  cbz       x8, #0x1a96950                                 
01a96308  ldrsw     x9, [x21, #0x10]                               
01a9630c  ldr       w10, [x8, #0x18]                               
01a96310  cmp       w9, w10                                        
01a96314  b.hs      #0x1a96954                                     
01a96318  add       x8, x8, x9, lsl #3                             
01a9631c  ldr       x8, [x8, #0x20]                                
01a96320  cbz       x8, #0x1a96950                                 
01a96324  ldr       s1, [x8, #0x20]                                
01a96328  fcmp      s0, s1                                         
01a9632c  b.lt      #0x1a96908                                     
01a96330  b         #0x1a96904                                     
01a96334  ldr       x0, [x27]                                      
01a96338  ldr       x24, [x8, #0x18]                               
01a9633c  ldr       w9, [x0, #0xe4]                                
01a96340  cbnz      w9, #0x1a96348                                 
01a96344  bl        #0x183dcb0                                     
01a96348  mov       x0, x24                                        
01a9634c  mov       x1, xzr                                        
01a96350  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a96354  ldr       x8, [x26]                                      
01a96358  ldr       x8, [x8, #0xb8]                                
01a9635c  ldr       x8, [x8]                                       
01a96360  cbz       x8, #0x1a96950                                 
01a96364  ldr       w9, [x8, #0x150]                               
01a96368  mov       w1, w0                                         
01a9636c  subs      w24, w0, w9                                    
01a96370  b.ge      #0x1a96778                                     
01a96374  ldr       x0, [x8, #0x360]                               
01a96378  cbz       x0, #0x1a96950                                 
01a9637c  adrp      x8, #0x3a7c000                                 
01a96380  b         #0x1a967bc                                     
01a96384  ldr       x9, [x26]                                      
01a96388  ldr       x9, [x9, #0xb8]                                
01a9638c  ldr       x9, [x9]                                       
01a96390  cbz       x9, #0x1a96950                                 
01a96394  ldr       x0, [x27]                                      
01a96398  ldr       x24, [x9, #0x138]                              
01a9639c  ldr       x25, [x8, #0x18]                               
01a963a0  b         #0x1a96878                                     
01a963a4  ldr       x8, [x26]                                      
01a963a8  ldr       x8, [x8, #0xb8]                                
01a963ac  ldr       x8, [x8]                                       
01a963b0  cbz       x8, #0x1a96950                                 
01a963b4  ldr       x0, [x29]                                      
01a963b8  ldr       x24, [x8, #0x168]                              
01a963bc  bl        #0x183ddcc                                     
01a963c0  adrp      x8, #0x3a8c000                                 
01a963c4  ldr       x8, [x8, #0x868]                               
01a963c8  b         #0x1a966fc                                     
01a963cc  ldr       x8, [x26]                                      
01a963d0  ldr       x8, [x8, #0xb8]                                
01a963d4  ldr       x8, [x8]                                       
01a963d8  cbz       x8, #0x1a96950                                 
01a963dc  ldr       x0, [x29]                                      
01a963e0  ldr       x24, [x8, #0x168]                              
01a963e4  bl        #0x183ddcc                                     
01a963e8  adrp      x8, #0x3a8c000                                 
01a963ec  ldr       x8, [x8, #0x870]                               
01a963f0  ldr       x2, [x8]                                       
01a963f4  mov       x1, x21                                        
01a963f8  mov       x3, xzr                                        
01a963fc  mov       x25, x0                                        
01a96400  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a96404  cbz       x24, #0x1a96950                                
01a96408  ldr       x2, [x19]                                      
01a9640c  mov       x0, x24                                        
01a96410  mov       x1, x25                                        
01a96414  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a96418  b         #0x1a965d0                                     
01a9641c  adrp      x8, #0x3d14000                                 
01a96420  ldrb      w8, [x8, #0x679]                               
01a96424  cbnz      w8, #0x1a96448                                 
01a96428  adrp      x0, #0x3a7c000                                 
01a9642c  ldr       x0, [x0, #0xe18]                               
01a96430  bl        #0x183db90                                     
01a96434  ldr       x24, [x21, #0x18]                              
01a96438  mov       w8, #1                                         
01a9643c  adrp      x9, #0x3d14000                                 
01a96440  strb      w8, [x9, #0x679]                               
01a96444  cbz       x24, #0x1a96950                                
01a96448  ldr       x8, [x24, #0x10]                               
01a9644c  cbz       x8, #0x1a96950                                 
01a96450  ldrsw     x9, [x21, #0x10]                               
01a96454  ldr       w10, [x8, #0x18]                               
01a96458  cmp       w9, w10                                        
01a9645c  b.hs      #0x1a96954                                     
01a96460  add       x8, x8, x9, lsl #3                             
01a96464  ldr       x8, [x8, #0x20]                                
01a96468  cbz       x8, #0x1a96950                                 
01a9646c  adrp      x9, #0x3a7c000                                 
01a96470  ldr       x9, [x9, #0xe18]                               
01a96474  ldr       x0, [x27]                                      
01a96478  ldr       x25, [x8, #0x18]                               
01a9647c  ldr       x9, [x9]                                       
01a96480  ldr       w10, [x0, #0xe4]                               
01a96484  ldr       x9, [x9, #0xb8]                                
01a96488  ldr       x24, [x9]                                      
01a9648c  cbnz      w10, #0x1a96494                                
01a96490  bl        #0x183dcb0                                     
01a96494  mov       x0, x25                                        
01a96498  mov       x1, xzr                                        
01a9649c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a964a0  ldr       x8, [x21, #0x18]                               
01a964a4  cbz       x8, #0x1a96950                                 
01a964a8  ldr       x8, [x8, #0x10]                                
01a964ac  cbz       x8, #0x1a96950                                 
01a964b0  ldrsw     x9, [x21, #0x10]                               
01a964b4  ldr       w10, [x8, #0x18]                               
01a964b8  cmp       w9, w10                                        
01a964bc  b.hs      #0x1a96954                                     
01a964c0  add       x8, x8, x9, lsl #3                             
01a964c4  ldr       x8, [x8, #0x20]                                
01a964c8  cbz       x8, #0x1a96950                                 
01a964cc  ldr       s0, [x8, #0x20]                                
01a964d0  mov       w25, w0                                        
01a964d4  mov       x0, xzr                                        
01a964d8  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a964dc  cbz       x24, #0x1a96950                                
01a964e0  mov       w2, w0                                         
01a964e4  mov       x0, x24                                        
01a964e8  mov       w1, w25                                        
01a964ec  mov       x3, xzr                                        
01a964f0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a964f4  b         #0x1a96724                                     
01a964f8  adrp      x8, #0x3d14000                                 
01a964fc  ldrb      w8, [x8, #0x679]                               
01a96500  cbnz      w8, #0x1a96524                                 
01a96504  adrp      x0, #0x3a7c000                                 
01a96508  ldr       x0, [x0, #0xe18]                               
01a9650c  bl        #0x183db90                                     
01a96510  ldr       x24, [x21, #0x18]                              
01a96514  mov       w8, #1                                         
01a96518  adrp      x9, #0x3d14000                                 
01a9651c  strb      w8, [x9, #0x679]                               
01a96520  cbz       x24, #0x1a96950                                
01a96524  ldr       x8, [x24, #0x10]                               
01a96528  cbz       x8, #0x1a96950                                 
01a9652c  ldrsw     x9, [x21, #0x10]                               
01a96530  ldr       w10, [x8, #0x18]                               
01a96534  cmp       w9, w10                                        
01a96538  b.hs      #0x1a96954                                     
01a9653c  add       x8, x8, x9, lsl #3                             
01a96540  ldr       x8, [x8, #0x20]                                
01a96544  cbz       x8, #0x1a96950                                 
01a96548  adrp      x9, #0x3a7c000                                 
01a9654c  ldr       x9, [x9, #0xe18]                               
01a96550  ldr       x0, [x27]                                      
01a96554  ldr       x25, [x8, #0x18]                               
01a96558  ldr       x9, [x9]                                       
01a9655c  ldr       w10, [x0, #0xe4]                               
01a96560  ldr       x9, [x9, #0xb8]                                
01a96564  ldr       x24, [x9]                                      
01a96568  cbnz      w10, #0x1a96570                                
01a9656c  bl        #0x183dcb0                                     
01a96570  mov       x0, x25                                        
01a96574  mov       x1, xzr                                        
01a96578  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9657c  ldr       x8, [x21, #0x18]                               
01a96580  cbz       x8, #0x1a96950                                 
01a96584  ldr       x8, [x8, #0x10]                                
01a96588  cbz       x8, #0x1a96950                                 
01a9658c  ldrsw     x9, [x21, #0x10]                               
01a96590  ldr       w10, [x8, #0x18]                               
01a96594  cmp       w9, w10                                        
01a96598  b.hs      #0x1a96954                                     
01a9659c  add       x8, x8, x9, lsl #3                             
01a965a0  ldr       x8, [x8, #0x20]                                
01a965a4  cbz       x8, #0x1a96950                                 
01a965a8  ldr       s0, [x8, #0x20]                                
01a965ac  mov       w25, w0                                        
01a965b0  mov       x0, xzr                                        
01a965b4  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a965b8  cbz       x24, #0x1a96950                                
01a965bc  mov       w2, w0                                         
01a965c0  mov       x0, x24                                        
01a965c4  mov       w1, w25                                        
01a965c8  mov       x3, xzr                                        
01a965cc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a965d0  eor       w8, w0, #1                                     
01a965d4  b         #0x1a968fc                                     
01a965d8  ldr       x8, [x26]                                      
01a965dc  ldr       x8, [x8, #0xb8]                                
01a965e0  ldr       x8, [x8]                                       
01a965e4  cbz       x8, #0x1a96950                                 
01a965e8  ldr       q0, [x8, #0xb0]                                
01a965ec  ldr       w8, [x8, #0xc0]                                
01a965f0  add       x0, sp, #0x10                                  
01a965f4  mov       x1, xzr                                        
01a965f8  str       q0, [sp, #0x10]                                
01a965fc  str       w8, [sp, #0x20]                                
01a96600  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a96604  cmn       w0, #1                                         
01a96608  b         #0x1a966a8                                     
01a9660c  ldr       x9, [x26]                                      
01a96610  ldr       x9, [x9, #0xb8]                                
01a96614  ldr       x9, [x9]                                       
01a96618  cbz       x9, #0x1a96950                                 
01a9661c  ldr       x0, [x27]                                      
01a96620  ldr       x24, [x9, #0x158]                              
01a96624  ldr       x25, [x8, #0x18]                               
01a96628  ldr       w10, [x0, #0xe4]                               
01a9662c  cbnz      w10, #0x1a96634                                
01a96630  bl        #0x183dcb0                                     
01a96634  mov       x0, x25                                        
01a96638  mov       x1, xzr                                        
01a9663c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a96640  cbz       x24, #0x1a96950                                
01a96644  adrp      x8, #0x3a7c000                                 
01a96648  mov       w1, w0                                         
01a9664c  mov       x0, x24                                        
01a96650  ldr       x8, [x8, #0xc30]                               
01a96654  ldr       x2, [x8]                                       
01a96658  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a9665c  ldr       x8, [x21, #0x18]                               
01a96660  cbz       x8, #0x1a96950                                 
01a96664  ldr       x8, [x8, #0x10]                                
01a96668  cbz       x8, #0x1a96950                                 
01a9666c  ldrsw     x9, [x21, #0x10]                               
01a96670  ldr       w10, [x8, #0x18]                               
01a96674  cmp       w9, w10                                        
01a96678  b.hs      #0x1a96954                                     
01a9667c  add       x8, x8, x9, lsl #3                             
01a96680  ldr       x8, [x8, #0x20]                                
01a96684  cbz       x8, #0x1a96950                                 
01a96688  mov       w9, #0x7f800000                                
01a9668c  ldr       s0, [x8, #0x20]                                
01a96690  fmov      s1, w9                                         
01a96694  mov       w9, #-0xffffffff80000000                       
01a96698  fcvtzs    w8, s0                                         
01a9669c  fcmp      s0, s1                                         
01a966a0  csel      w8, w9, w8, eq                                 
01a966a4  cmp       w0, w8                                         
01a966a8  cset      w8, ne                                         
01a966ac  b         #0x1a968fc                                     
01a966b0  ldr       x8, [x26]                                      
01a966b4  ldr       x8, [x8, #0xb8]                                
01a966b8  ldr       x8, [x8]                                       
01a966bc  cbz       x8, #0x1a96950                                 
01a966c0  ldr       x0, [x29]                                      
01a966c4  ldr       x24, [x8, #0x170]                              
01a966c8  bl        #0x183ddcc                                     
01a966cc  adrp      x8, #0x3a8c000                                 
01a966d0  ldr       x8, [x8, #0x880]                               
01a966d4  b         #0x1a966fc                                     
01a966d8  ldr       x8, [x26]                                      
01a966dc  ldr       x8, [x8, #0xb8]                                
01a966e0  ldr       x8, [x8]                                       
01a966e4  cbz       x8, #0x1a96950                                 
01a966e8  ldr       x0, [x29]                                      
01a966ec  ldr       x24, [x8, #0x178]                              
01a966f0  bl        #0x183ddcc                                     
01a966f4  adrp      x8, #0x3a8c000                                 
01a966f8  ldr       x8, [x8, #0x878]                               
01a966fc  ldr       x2, [x8]                                       
01a96700  mov       x1, x21                                        
01a96704  mov       x3, xzr                                        
01a96708  mov       x25, x0                                        
01a9670c  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a96710  cbz       x24, #0x1a96950                                
01a96714  ldr       x2, [x19]                                      
01a96718  mov       x0, x24                                        
01a9671c  mov       x1, x25                                        
01a96720  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a96724  and       w22, w0, w22                                   
01a96728  b         #0x1a96908                                     
01a9672c  ldr       x8, [x26]                                      
01a96730  ldr       x8, [x8, #0xb8]                                
01a96734  ldr       x0, [x8]                                       
01a96738  cbz       x0, #0x1a96950                                 
01a9673c  mov       w1, #0xf                                       
01a96740  mov       x2, xzr                                        
01a96744  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a96748  mov       w8, #0x42c80000                                
01a9674c  fmov      s1, w8                                         
01a96750  bl        #0x3887050                                     
01a96754  fcmp      s0, #0.0                                       
01a96758  b.eq      #0x1a96904                                     
01a9675c  ldr       x8, [sp]                                       
01a96760  ldr       s1, [x8, #0x1dc]                               
01a96764  scvtf     s1, s1                                         
01a96768  bl        #0x3887050                                     
01a9676c  fcmp      s0, #0.0                                       
01a96770  b.eq      #0x1a96908                                     
01a96774  b         #0x1a96904                                     
01a96778  b.mi      #0x1a967cc                                     
01a9677c  ldr       x0, [x8, #0x350]                               
01a96780  cbz       x0, #0x1a96950                                 
01a96784  adrp      x8, #0x3a7c000                                 
01a96788  mov       w1, w24                                        
01a9678c  ldr       x8, [x8, #0xc28]                               
01a96790  ldr       x2, [x8]                                       
01a96794  bl        #0x273ac08                                     // System.Collections.Generic.List<bool>$$get_Item
01a96798  tbz       w0, #0, #0x1a96920                             
01a9679c  ldr       x8, [x26]                                      
01a967a0  ldr       x8, [x8, #0xb8]                                
01a967a4  ldr       x8, [x8]                                       
01a967a8  cbz       x8, #0x1a96950                                 
01a967ac  ldr       x0, [x8, #0x358]                               
01a967b0  cbz       x0, #0x1a96950                                 
01a967b4  adrp      x8, #0x3a7c000                                 
01a967b8  mov       w1, w24                                        
01a967bc  ldr       x8, [x8, #0xc28]                               
01a967c0  ldr       x2, [x8]                                       
01a967c4  bl        #0x273ac08                                     // System.Collections.Generic.List<bool>$$get_Item
01a967c8  and       w22, w0, w22                                   
01a967cc  ldr       w8, [sp, #0xc]                                 
01a967d0  cmn       w8, #1                                         
01a967d4  b.eq      #0x1a96830                                     
01a967d8  ldr       x8, [x21, #0x18]                               
01a967dc  cbz       x8, #0x1a96950                                 
01a967e0  ldr       x8, [x8, #0x10]                                
01a967e4  cbz       x8, #0x1a96950                                 
01a967e8  ldrsw     x9, [x21, #0x10]                               
01a967ec  ldr       w10, [x8, #0x18]                               
01a967f0  cmp       w9, w10                                        
01a967f4  b.hs      #0x1a96954                                     
01a967f8  add       x8, x8, x9, lsl #3                             
01a967fc  ldr       x8, [x8, #0x20]                                
01a96800  cbz       x8, #0x1a96950                                 
01a96804  ldr       x0, [x27]                                      
01a96808  ldr       x24, [x8, #0x18]                               
01a9680c  ldr       w9, [x0, #0xe4]                                
01a96810  cbnz      w9, #0x1a96818                                 
01a96814  bl        #0x183dcb0                                     
01a96818  mov       x0, x24                                        
01a9681c  mov       x1, xzr                                        
01a96820  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a96824  ldr       w8, [sp, #0xc]                                 
01a96828  cmp       w0, w8                                         
01a9682c  b.ne      #0x1a96904                                     
01a96830  ldr       x8, [x26]                                      
01a96834  ldr       x8, [x8, #0xb8]                                
01a96838  ldr       x8, [x8]                                       
01a9683c  cbz       x8, #0x1a96950                                 
01a96840  ldr       x9, [x21, #0x18]                               
01a96844  cbz       x9, #0x1a96950                                 
01a96848  ldr       x9, [x9, #0x10]                                
01a9684c  cbz       x9, #0x1a96950                                 
01a96850  ldrsw     x10, [x21, #0x10]                              
01a96854  ldr       w11, [x9, #0x18]                               
01a96858  cmp       w10, w11                                       
01a9685c  b.hs      #0x1a96954                                     
01a96860  add       x9, x9, x10, lsl #3                            
01a96864  ldr       x9, [x9, #0x20]                                
01a96868  cbz       x9, #0x1a96950                                 
01a9686c  ldr       x0, [x27]                                      
01a96870  ldr       x24, [x8, #0x148]                              
01a96874  ldr       x25, [x9, #0x18]                               
01a96878  ldr       w10, [x0, #0xe4]                               
01a9687c  cbnz      w10, #0x1a96884                                
01a96880  bl        #0x183dcb0                                     
01a96884  mov       x0, x25                                        
01a96888  mov       x1, xzr                                        
01a9688c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a96890  cbz       x24, #0x1a96950                                
01a96894  adrp      x8, #0x3a7c000                                 
01a96898  mov       w1, w0                                         
01a9689c  mov       x0, x24                                        
01a968a0  ldr       x8, [x8, #0xc30]                               
01a968a4  ldr       x2, [x8]                                       
01a968a8  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a968ac  ldr       x8, [x21, #0x18]                               
01a968b0  cbz       x8, #0x1a96950                                 
01a968b4  ldr       x8, [x8, #0x10]                                
01a968b8  cbz       x8, #0x1a96950                                 
01a968bc  ldrsw     x9, [x21, #0x10]                               
01a968c0  ldr       w10, [x8, #0x18]                               
01a968c4  cmp       w9, w10                                        
01a968c8  b.hs      #0x1a96954                                     
01a968cc  add       x8, x8, x9, lsl #3                             
01a968d0  ldr       x8, [x8, #0x20]                                
01a968d4  cbz       x8, #0x1a96950                                 
01a968d8  mov       w9, #0x7f800000                                
01a968dc  ldr       s0, [x8, #0x20]                                
01a968e0  fmov      s1, w9                                         
01a968e4  mov       w9, #-0xffffffff80000000                       
01a968e8  fcvtzs    w8, s0                                         
01a968ec  fcmp      s0, s1                                         
01a968f0  csel      w8, w9, w8, eq                                 
01a968f4  cmp       w0, w8                                         
01a968f8  cset      w8, eq                                         
01a968fc  and       w22, w8, w22                                   
01a96900  b         #0x1a96908                                     
01a96904  mov       w22, wzr                                       
01a96908  ldr       w8, [x21, #0x10]                               
01a9690c  ldr       x24, [x21, #0x18]                              
01a96910  add       w8, w8, #1                                     
01a96914  str       w8, [x21, #0x10]                               
01a96918  cbnz      x24, #0x1a95f14                                
01a9691c  b         #0x1a96950                                     
01a96920  mov       w22, wzr                                       
01a96924  b         #0x1a967cc                                     
01a96928  and       w22, w26, #1                                   
01a9692c  and       w0, w22, #1                                    
01a96930  ldp       x20, x19, [sp, #0xa0]                          
01a96934  ldp       x22, x21, [sp, #0x90]                          
01a96938  ldp       x24, x23, [sp, #0x80]                          
01a9693c  ldp       x26, x25, [sp, #0x70]                          
01a96940  ldp       x28, x27, [sp, #0x60]                          
01a96944  ldp       x29, x30, [sp, #0x50]                          
01a96948  add       sp, sp, #0xb0                                  
01a9694c  ret                                                      
01a96950  bl        #0x183dddc                                     
01a96954  bl        #0x183dde4                                     