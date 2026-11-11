System_String_o* EventCtrl__GetChoiceRequireAbilityString (EventCtrl_o* __this, System_String_o* _require, const MethodInfo* method);
// RVA 0x1a98148 to 0x1a98754
01a98148  sub       sp, sp, #0x70                                  
01a9814c  stp       x29, x30, [sp, #0x10]                          
01a98150  stp       x28, x27, [sp, #0x20]                          
01a98154  stp       x26, x25, [sp, #0x30]                          
01a98158  stp       x24, x23, [sp, #0x40]                          
01a9815c  stp       x22, x21, [sp, #0x50]                          
01a98160  stp       x20, x19, [sp, #0x60]                          
01a98164  adrp      x19, #0x3d14000                                
01a98168  adrp      x25, #0x3a7b000                                
01a9816c  mov       x20, x1                                        
01a98170  ldrb      w8, [x19, #0xcda]                              
01a98174  ldr       x25, [x25, #0xaf0]                             
01a98178  tbnz      w8, #0, #0x1a981f0                             
01a9817c  adrp      x0, #0x3a7b000                                 
01a98180  ldr       x0, [x0, #0xf88]                               
01a98184  bl        #0x183db90                                     
01a98188  adrp      x0, #0x3a8c000                                 
01a9818c  ldr       x0, [x0, #0x8c0]                               
01a98190  bl        #0x183db90                                     
01a98194  adrp      x0, #0x3a8c000                                 
01a98198  ldr       x0, [x0, #0x8c8]                               
01a9819c  bl        #0x183db90                                     
01a981a0  adrp      x0, #0x3a7c000                                 
01a981a4  ldr       x0, [x0, #0xee8]                               
01a981a8  bl        #0x183db90                                     
01a981ac  adrp      x0, #0x3a7e000                                 
01a981b0  ldr       x0, [x0, #0x878]                               
01a981b4  bl        #0x183db90                                     
01a981b8  adrp      x0, #0x3a8c000                                 
01a981bc  ldr       x0, [x0, #0x8d0]                               
01a981c0  bl        #0x183db90                                     
01a981c4  adrp      x0, #0x3a7e000                                 
01a981c8  ldr       x0, [x0, #0x40]                                
01a981cc  bl        #0x183db90                                     
01a981d0  adrp      x0, #0x3a7b000                                 
01a981d4  ldr       x0, [x0, #0xaf0]                               
01a981d8  bl        #0x183db90                                     
01a981dc  adrp      x0, #0x3a7e000                                 
01a981e0  ldr       x0, [x0, #0x48]                                
01a981e4  bl        #0x183db90                                     
01a981e8  mov       w8, #1                                         
01a981ec  strb      w8, [x19, #0xcda]                              
01a981f0  ldr       x22, [x25]                                     
01a981f4  mov       x0, x20                                        
01a981f8  mov       x2, xzr                                        
01a981fc  str       wzr, [sp, #0xc]                                
01a98200  mov       x1, x22                                        
01a98204  bl        #0x2c6c03c                                     // System.String$$op_Equality
01a98208  tbnz      w0, #0, #0x1a98728                             
01a9820c  cbz       x20, #0x1a9874c                                
01a98210  mov       x0, x20                                        
01a98214  mov       w1, #0x7c                                      
01a98218  mov       w2, wzr                                        
01a9821c  mov       x3, xzr                                        
01a98220  bl        #0x2c7022c                                     // System.String$$Split
01a98224  cbz       x0, #0x1a9874c                                 
01a98228  ldr       w8, [x0, #0x18]                                
01a9822c  cbz       w8, #0x1a98750                                 
01a98230  ldr       x0, [x0, #0x20]                                
01a98234  cbz       x0, #0x1a9874c                                 
01a98238  adrp      x8, #0x3a7e000                                 
01a9823c  mov       x2, xzr                                        
01a98240  ldr       x8, [x8, #0x878]                               
01a98244  ldr       x1, [x8]                                       
01a98248  bl        #0x2c6ba50                                     // System.String$$Equals
01a9824c  mov       x1, x20                                        
01a98250  mov       w19, w0                                        
01a98254  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a98258  cbz       x0, #0x1a9874c                                 
01a9825c  ldr       w8, [x0, #0x18]                                
01a98260  mov       x20, x0                                        
01a98264  cmp       w8, #1                                         
01a98268  b.lt      #0x1a986f8                                     
01a9826c  adrp      x21, #0x3a7c000                                
01a98270  adrp      x27, #0x3a7b000                                
01a98274  mov       w26, wzr                                       
01a98278  ldr       x21, [x21, #0xd38]                             
01a9827c  ldr       x27, [x27, #0xf88]                             
01a98280  adrp      x28, #0x3d14000                                
01a98284  cmp       w26, w8                                        
01a98288  b.hs      #0x1a98750                                     
01a9828c  add       x29, x20, w26, sxtw #3                         
01a98290  ldr       x9, [x29, #0x20]!                              
01a98294  cbz       x9, #0x1a9874c                                 
01a98298  ldr       w9, [x9, #0x10]                                
01a9829c  cmp       w9, #0x15                                      
01a982a0  b.eq      #0x1a984b8                                     
01a982a4  cmp       w9, #0x14                                      
01a982a8  b.ne      #0x1a986d0                                     
01a982ac  ldrb      w9, [x28, #0x678]                              
01a982b0  cbnz      w9, #0x1a982c8                                 
01a982b4  mov       x0, x21                                        
01a982b8  bl        #0x183db90                                     
01a982bc  ldr       w8, [x20, #0x18]                               
01a982c0  mov       w9, #1                                         
01a982c4  strb      w9, [x28, #0x678]                              
01a982c8  cmp       w26, w8                                        
01a982cc  b.hs      #0x1a98750                                     
01a982d0  ldr       x8, [x29]                                      
01a982d4  cbz       x8, #0x1a9874c                                 
01a982d8  ldr       x9, [x21]                                      
01a982dc  ldr       x0, [x27]                                      
01a982e0  ldr       x24, [x8, #0x18]                               
01a982e4  ldr       x9, [x9, #0xb8]                                
01a982e8  ldr       w10, [x0, #0xe4]                               
01a982ec  ldr       x23, [x9]                                      
01a982f0  cbnz      w10, #0x1a982f8                                
01a982f4  bl        #0x183dcb0                                     
01a982f8  mov       x0, x24                                        
01a982fc  mov       x1, xzr                                        
01a98300  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a98304  ldrb      w8, [x28, #0x678]                              
01a98308  mov       w24, w0                                        
01a9830c  cbnz      w8, #0x1a98320                                 
01a98310  mov       x0, x21                                        
01a98314  bl        #0x183db90                                     
01a98318  mov       w8, #1                                         
01a9831c  strb      w8, [x28, #0x678]                              
01a98320  ldr       x8, [x21]                                      
01a98324  ldr       x8, [x8, #0xb8]                                
01a98328  ldr       x8, [x8]                                       
01a9832c  cbz       x8, #0x1a9874c                                 
01a98330  cbz       x23, #0x1a9874c                                
01a98334  ldr       x2, [x8, #0x48]                                
01a98338  mov       x0, x23                                        
01a9833c  mov       w1, w24                                        
01a98340  mov       x3, xzr                                        
01a98344  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a98348  ldr       w8, [x20, #0x18]                               
01a9834c  cmp       w26, w8                                        
01a98350  b.hs      #0x1a98750                                     
01a98354  ldr       x8, [x29]                                      
01a98358  cbz       x8, #0x1a9874c                                 
01a9835c  scvtf     s0, w0                                         
01a98360  ldr       s1, [x8, #0x20]                                
01a98364  fcmp      s1, s0                                         
01a98368  b.hi      #0x1a986d0                                     
01a9836c  ldr       x1, [x25]                                      
01a98370  mov       x0, x22                                        
01a98374  mov       x2, xzr                                        
01a98378  bl        #0x2c6c03c                                     // System.String$$op_Equality
01a9837c  adrp      x8, #0x3a7e000                                 
01a98380  tst       w0, #1                                         
01a98384  mov       x2, xzr                                        
01a98388  ldr       x8, [x8, #0x40]                                
01a9838c  ldr       x1, [x8]                                       
01a98390  csel      x22, x1, x22, ne                               
01a98394  mov       x0, x22                                        
01a98398  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a9839c  tbz       w0, #0, #0x1a983bc                             
01a983a0  adrp      x8, #0x3a8c000                                 
01a983a4  mov       x0, x22                                        
01a983a8  mov       x2, xzr                                        
01a983ac  ldr       x8, [x8, #0x8d0]                               
01a983b0  ldr       x1, [x8]                                       
01a983b4  bl        #0x2c63780                                     // System.String$$Concat
01a983b8  mov       x22, x0                                        
01a983bc  ldrb      w8, [x28, #0x678]                              
01a983c0  cbnz      w8, #0x1a983d4                                 
01a983c4  mov       x0, x21                                        
01a983c8  bl        #0x183db90                                     
01a983cc  mov       w8, #1                                         
01a983d0  strb      w8, [x28, #0x678]                              
01a983d4  ldr       w8, [x20, #0x18]                               
01a983d8  cmp       w26, w8                                        
01a983dc  b.hs      #0x1a98750                                     
01a983e0  ldr       x8, [x29]                                      
01a983e4  cbz       x8, #0x1a9874c                                 
01a983e8  ldr       x9, [x21]                                      
01a983ec  ldr       x0, [x27]                                      
01a983f0  ldr       x24, [x8, #0x18]                               
01a983f4  ldr       x9, [x9, #0xb8]                                
01a983f8  ldr       w10, [x0, #0xe4]                               
01a983fc  ldr       x23, [x9]                                      
01a98400  cbnz      w10, #0x1a98408                                
01a98404  bl        #0x183dcb0                                     
01a98408  mov       x0, x24                                        
01a9840c  mov       x1, xzr                                        
01a98410  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a98414  ldr       w8, [x20, #0x18]                               
01a98418  cmp       w26, w8                                        
01a9841c  b.hs      #0x1a98750                                     
01a98420  ldr       x8, [x29]                                      
01a98424  cbz       x8, #0x1a9874c                                 
01a98428  cbz       x23, #0x1a9874c                                
01a9842c  mov       w9, #0x7f800000                                
01a98430  ldr       s0, [x8, #0x20]                                
01a98434  mov       w1, w0                                         
01a98438  fmov      s1, w9                                         
01a9843c  mov       w9, #-0xffffffff80000000                       
01a98440  mov       x0, x23                                        
01a98444  fcvtzs    w8, s0                                         
01a98448  mov       x3, xzr                                        
01a9844c  fcmp      s0, s1                                         
01a98450  csel      w2, w9, w8, eq                                 
01a98454  bl        #0x1a2db7c                                     // Equipment$$GetAbilityText
01a98458  ldr       w8, [x20, #0x18]                               
01a9845c  cmp       w26, w8                                        
01a98460  b.hs      #0x1a98750                                     
01a98464  ldr       x8, [x29]                                      
01a98468  cbz       x8, #0x1a9874c                                 
01a9846c  ldr       s0, [x8, #0x20]                                
01a98470  mov       x23, x0                                        
01a98474  mov       x0, xzr                                        
01a98478  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9847c  str       w0, [sp, #0xc]                                 
01a98480  add       x0, sp, #0xc                                   
01a98484  mov       x1, xzr                                        
01a98488  bl        #0x2dcd834                                     // System.Int32$$ToString
01a9848c  adrp      x8, #0x3a7c000                                 
01a98490  mov       x3, x0                                         
01a98494  mov       x0, x22                                        
01a98498  ldr       x8, [x8, #0xee8]                               
01a9849c  mov       x1, x23                                        
01a984a0  mov       x4, xzr                                        
01a984a4  ldr       x2, [x8]                                       
01a984a8  bl        #0x2c6e254                                     // System.String$$Concat
01a984ac  adrp      x8, #0x3a8c000                                 
01a984b0  ldr       x8, [x8, #0x8c8]                               
01a984b4  b         #0x1a986c0                                     
01a984b8  ldrb      w9, [x28, #0x678]                              
01a984bc  cbnz      w9, #0x1a984d4                                 
01a984c0  mov       x0, x21                                        
01a984c4  bl        #0x183db90                                     
01a984c8  ldr       w8, [x20, #0x18]                               
01a984cc  mov       w9, #1                                         
01a984d0  strb      w9, [x28, #0x678]                              
01a984d4  cmp       w26, w8                                        
01a984d8  b.hs      #0x1a98750                                     
01a984dc  ldr       x8, [x29]                                      
01a984e0  cbz       x8, #0x1a9874c                                 
01a984e4  ldr       x9, [x21]                                      
01a984e8  ldr       x0, [x27]                                      
01a984ec  ldr       x24, [x8, #0x18]                               
01a984f0  ldr       x9, [x9, #0xb8]                                
01a984f4  ldr       w10, [x0, #0xe4]                               
01a984f8  ldr       x23, [x9]                                      
01a984fc  cbnz      w10, #0x1a98504                                
01a98500  bl        #0x183dcb0                                     
01a98504  mov       x0, x24                                        
01a98508  mov       x1, xzr                                        
01a9850c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a98510  ldrb      w8, [x28, #0x678]                              
01a98514  mov       w24, w0                                        
01a98518  cbnz      w8, #0x1a9852c                                 
01a9851c  mov       x0, x21                                        
01a98520  bl        #0x183db90                                     
01a98524  mov       w8, #1                                         
01a98528  strb      w8, [x28, #0x678]                              
01a9852c  ldr       x8, [x21]                                      
01a98530  ldr       x8, [x8, #0xb8]                                
01a98534  ldr       x8, [x8]                                       
01a98538  cbz       x8, #0x1a9874c                                 
01a9853c  cbz       x23, #0x1a9874c                                
01a98540  ldr       x2, [x8, #0x48]                                
01a98544  mov       x0, x23                                        
01a98548  mov       w1, w24                                        
01a9854c  mov       x3, xzr                                        
01a98550  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a98554  ldr       w8, [x20, #0x18]                               
01a98558  cmp       w26, w8                                        
01a9855c  b.hs      #0x1a98750                                     
01a98560  ldr       x8, [x29]                                      
01a98564  cbz       x8, #0x1a9874c                                 
01a98568  scvtf     s0, w0                                         
01a9856c  ldr       s1, [x8, #0x20]                                
01a98570  fcmp      s1, s0                                         
01a98574  b.le      #0x1a986d0                                     
01a98578  ldr       x1, [x25]                                      
01a9857c  mov       x0, x22                                        
01a98580  mov       x2, xzr                                        
01a98584  bl        #0x2c6c03c                                     // System.String$$op_Equality
01a98588  adrp      x8, #0x3a7e000                                 
01a9858c  tst       w0, #1                                         
01a98590  mov       x2, xzr                                        
01a98594  ldr       x8, [x8, #0x40]                                
01a98598  ldr       x1, [x8]                                       
01a9859c  csel      x22, x1, x22, ne                               
01a985a0  mov       x0, x22                                        
01a985a4  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a985a8  tbz       w0, #0, #0x1a985c8                             
01a985ac  adrp      x8, #0x3a8c000                                 
01a985b0  mov       x0, x22                                        
01a985b4  mov       x2, xzr                                        
01a985b8  ldr       x8, [x8, #0x8d0]                               
01a985bc  ldr       x1, [x8]                                       
01a985c0  bl        #0x2c63780                                     // System.String$$Concat
01a985c4  mov       x22, x0                                        
01a985c8  ldrb      w8, [x28, #0x678]                              
01a985cc  cbnz      w8, #0x1a985e0                                 
01a985d0  mov       x0, x21                                        
01a985d4  bl        #0x183db90                                     
01a985d8  mov       w8, #1                                         
01a985dc  strb      w8, [x28, #0x678]                              
01a985e0  ldr       w8, [x20, #0x18]                               
01a985e4  cmp       w26, w8                                        
01a985e8  b.hs      #0x1a98750                                     
01a985ec  ldr       x8, [x29]                                      
01a985f0  cbz       x8, #0x1a9874c                                 
01a985f4  ldr       x9, [x21]                                      
01a985f8  ldr       x0, [x27]                                      
01a985fc  ldr       x24, [x8, #0x18]                               
01a98600  ldr       x9, [x9, #0xb8]                                
01a98604  ldr       w10, [x0, #0xe4]                               
01a98608  ldr       x23, [x9]                                      
01a9860c  cbnz      w10, #0x1a98614                                
01a98610  bl        #0x183dcb0                                     
01a98614  mov       x0, x24                                        
01a98618  mov       x1, xzr                                        
01a9861c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a98620  ldr       w8, [x20, #0x18]                               
01a98624  cmp       w26, w8                                        
01a98628  b.hs      #0x1a98750                                     
01a9862c  ldr       x8, [x29]                                      
01a98630  cbz       x8, #0x1a9874c                                 
01a98634  cbz       x23, #0x1a9874c                                
01a98638  mov       w9, #0x7f800000                                
01a9863c  ldr       s0, [x8, #0x20]                                
01a98640  mov       w1, w0                                         
01a98644  fmov      s1, w9                                         
01a98648  mov       w9, #-0xffffffff80000000                       
01a9864c  mov       x0, x23                                        
01a98650  fcvtzs    w8, s0                                         
01a98654  mov       x3, xzr                                        
01a98658  fcmp      s0, s1                                         
01a9865c  csel      w2, w9, w8, eq                                 
01a98660  bl        #0x1a2db7c                                     // Equipment$$GetAbilityText
01a98664  ldr       w8, [x20, #0x18]                               
01a98668  cmp       w26, w8                                        
01a9866c  b.hs      #0x1a98750                                     
01a98670  ldr       x8, [x29]                                      
01a98674  cbz       x8, #0x1a9874c                                 
01a98678  ldr       s0, [x8, #0x20]                                
01a9867c  mov       x23, x0                                        
01a98680  mov       x0, xzr                                        
01a98684  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a98688  str       w0, [sp, #0xc]                                 
01a9868c  add       x0, sp, #0xc                                   
01a98690  mov       x1, xzr                                        
01a98694  bl        #0x2dcd834                                     // System.Int32$$ToString
01a98698  adrp      x8, #0x3a7c000                                 
01a9869c  mov       x3, x0                                         
01a986a0  mov       x0, x22                                        
01a986a4  ldr       x8, [x8, #0xee8]                               
01a986a8  mov       x1, x23                                        
01a986ac  mov       x4, xzr                                        
01a986b0  ldr       x2, [x8]                                       
01a986b4  bl        #0x2c6e254                                     // System.String$$Concat
01a986b8  adrp      x8, #0x3a8c000                                 
01a986bc  ldr       x8, [x8, #0x8c0]                               
01a986c0  ldr       x1, [x8]                                       
01a986c4  mov       x2, xzr                                        
01a986c8  bl        #0x2c63780                                     // System.String$$Concat
01a986cc  mov       x22, x0                                        
01a986d0  tbz       w19, #0, #0x1a986e8                            
01a986d4  ldr       x1, [x25]                                      
01a986d8  mov       x0, x22                                        
01a986dc  mov       x2, xzr                                        
01a986e0  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a986e4  tbnz      w0, #0, #0x1a986f8                             
01a986e8  ldr       w8, [x20, #0x18]                               
01a986ec  add       w26, w26, #1                                   
01a986f0  cmp       w26, w8                                        
01a986f4  b.lt      #0x1a98284                                     
01a986f8  ldr       x1, [x25]                                      
01a986fc  mov       x0, x22                                        
01a98700  mov       x2, xzr                                        
01a98704  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a98708  tbz       w0, #0, #0x1a98728                             
01a9870c  adrp      x8, #0x3a7e000                                 
01a98710  mov       x0, x22                                        
01a98714  mov       x2, xzr                                        
01a98718  ldr       x8, [x8, #0x48]                                
01a9871c  ldr       x1, [x8]                                       
01a98720  bl        #0x2c63780                                     // System.String$$Concat
01a98724  mov       x22, x0                                        
01a98728  mov       x0, x22                                        
01a9872c  ldp       x20, x19, [sp, #0x60]                          
01a98730  ldp       x22, x21, [sp, #0x50]                          
01a98734  ldp       x24, x23, [sp, #0x40]                          
01a98738  ldp       x26, x25, [sp, #0x30]                          
01a9873c  ldp       x28, x27, [sp, #0x20]                          
01a98740  ldp       x29, x30, [sp, #0x10]                          
01a98744  add       sp, sp, #0x70                                  
01a98748  ret                                                      
01a9874c  bl        #0x183dddc                                     
01a98750  bl        #0x183dde4                                     