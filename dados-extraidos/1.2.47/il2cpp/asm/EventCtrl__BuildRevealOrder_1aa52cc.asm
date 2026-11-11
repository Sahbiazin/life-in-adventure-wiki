System_Collections_Generic_List_int__o* EventCtrl__BuildRevealOrder (EventCtrl_o* __this, TMPro_TMP_Text_o* text, bool isRTL, const MethodInfo* method);
// RVA 0x1aa52cc to 0x1aa54d4
01aa52cc  str       d8, [sp, #-0x60]!                              
01aa52d0  stp       x30, x27, [sp, #0x10]                          
01aa52d4  stp       x26, x25, [sp, #0x20]                          
01aa52d8  stp       x24, x23, [sp, #0x30]                          
01aa52dc  stp       x22, x21, [sp, #0x40]                          
01aa52e0  stp       x20, x19, [sp, #0x50]                          
01aa52e4  adrp      x21, #0x3d14000                                
01aa52e8  mov       w19, w2                                        
01aa52ec  mov       x20, x1                                        
01aa52f0  ldrb      w8, [x21, #0xd00]                              
01aa52f4  tbnz      w8, #0, #0x1aa5348                             
01aa52f8  adrp      x0, #0x3a8c000                                 
01aa52fc  ldr       x0, [x0, #0xbf8]                               
01aa5300  bl        #0x183db90                                     
01aa5304  adrp      x0, #0x3a7c000                                 
01aa5308  ldr       x0, [x0, #0xc10]                               
01aa530c  bl        #0x183db90                                     
01aa5310  adrp      x0, #0x3a8c000                                 
01aa5314  ldr       x0, [x0, #0xc00]                               
01aa5318  bl        #0x183db90                                     
01aa531c  adrp      x0, #0x3a8c000                                 
01aa5320  ldr       x0, [x0, #0xc08]                               
01aa5324  bl        #0x183db90                                     
01aa5328  adrp      x0, #0x3a7c000                                 
01aa532c  ldr       x0, [x0, #0xbf8]                               
01aa5330  bl        #0x183db90                                     
01aa5334  adrp      x0, #0x3a7d000                                 
01aa5338  ldr       x0, [x0, #0x1e8]                               
01aa533c  bl        #0x183db90                                     
01aa5340  mov       w8, #1                                         
01aa5344  strb      w8, [x21, #0xd00]                              
01aa5348  cbz       x20, #0x1aa54cc                                
01aa534c  mov       x0, x20                                        
01aa5350  mov       x1, xzr                                        
01aa5354  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01aa5358  cbz       x0, #0x1aa54cc                                 
01aa535c  adrp      x8, #0x3a7c000                                 
01aa5360  adrp      x20, #0x3a8c000                                
01aa5364  adrp      x23, #0x3a7d000                                
01aa5368  ldr       x8, [x8, #0xbf8]                               
01aa536c  ldr       x20, [x20, #0xc08]                             
01aa5370  ldr       x23, [x23, #0x1e8]                             
01aa5374  ldr       x21, [x0, #0x38]                               
01aa5378  ldr       w22, [x0, #0x18]                               
01aa537c  ldr       x0, [x8]                                       
01aa5380  bl        #0x183ddcc                                     
01aa5384  ldr       x2, [x20]                                      
01aa5388  mov       w1, w22                                        
01aa538c  mov       x20, x0                                        
01aa5390  bl        #0x276aa68                                     // System.Collections.Generic.List<int>$$.ctor
01aa5394  ldr       x0, [x23]                                      
01aa5398  mov       w1, w22                                        
01aa539c  bl        #0x183dc20                                     
01aa53a0  cmp       w22, #1                                        
01aa53a4  mov       x23, x0                                        
01aa53a8  b.lt      #0x1aa5468                                     
01aa53ac  cbz       x21, #0x1aa54cc                                
01aa53b0  fmov      s8, #0.50000000                                
01aa53b4  adrp      x25, #0x3a7c000                                
01aa53b8  mov       x24, xzr                                       
01aa53bc  ldr       x25, [x25, #0xc10]                             
01aa53c0  add       x26, x23, #0x20                                
01aa53c4  add       x27, x21, #0x114                               
01aa53c8  ldr       w8, [x21, #0x18]                               
01aa53cc  cmp       x24, x8                                        
01aa53d0  b.hs      #0x1aa54d0                                     
01aa53d4  ldrb      w8, [x27, #0x7c]                               
01aa53d8  cbz       w8, #0x1aa5458                                 
01aa53dc  cbz       x23, #0x1aa54cc                                
01aa53e0  ldr       w8, [x23, #0x18]                               
01aa53e4  cmp       x24, x8                                        
01aa53e8  b.hs      #0x1aa54d0                                     
01aa53ec  ldr       s0, [x27]                                      
01aa53f0  ldr       s1, [x27, #0xc]                                
01aa53f4  fadd      s0, s0, s1                                     
01aa53f8  fmul      s0, s0, s8                                     
01aa53fc  str       s0, [x26, x24, lsl #2]                         
01aa5400  cbz       x20, #0x1aa54cc                                
01aa5404  ldr       w10, [x20, #0x1c]                              
01aa5408  ldr       x8, [x20, #0x10]                               
01aa540c  ldr       x9, [x25]                                      
01aa5410  add       w10, w10, #1                                   
01aa5414  str       w10, [x20, #0x1c]                              
01aa5418  cbz       x8, #0x1aa54cc                                 
01aa541c  ldrsw     x10, [x20, #0x18]                              
01aa5420  ldr       w11, [x8, #0x18]                               
01aa5424  cmp       w10, w11                                       
01aa5428  b.hs      #0x1aa5440                                     
01aa542c  add       x8, x8, x10, lsl #2                            
01aa5430  add       w9, w10, #1                                    
01aa5434  str       w9, [x20, #0x18]                               
01aa5438  str       w24, [x8, #0x20]                               
01aa543c  b         #0x1aa5458                                     
01aa5440  ldr       x8, [x9, #0x20]                                
01aa5444  mov       x0, x20                                        
01aa5448  mov       w1, w24                                        
01aa544c  ldr       x8, [x8, #0xc0]                                
01aa5450  ldr       x2, [x8, #0x70]                                
01aa5454  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01aa5458  add       x24, x24, #1                                   
01aa545c  add       x27, x27, #0x178                               
01aa5460  cmp       x22, x24                                       
01aa5464  b.ne      #0x1aa53c8                                     
01aa5468  adrp      x8, #0x3a8c000                                 
01aa546c  ldr       x8, [x8, #0xbf8]                               
01aa5470  ldr       x0, [x8]                                       
01aa5474  bl        #0x183ddcc                                     
01aa5478  and       w3, w19, #1                                    
01aa547c  mov       x1, x21                                        
01aa5480  mov       x2, x23                                        
01aa5484  mov       x4, xzr                                        
01aa5488  mov       x22, x0                                        
01aa548c  bl        #0x1ab0a54                                     // EventCtrl.CharacterRevealComparer$$.ctor
01aa5490  cbz       x20, #0x1aa54cc                                
01aa5494  adrp      x8, #0x3a8c000                                 
01aa5498  mov       x0, x20                                        
01aa549c  mov       x1, x22                                        
01aa54a0  ldr       x8, [x8, #0xc00]                               
01aa54a4  ldr       x2, [x8]                                       
01aa54a8  bl        #0x276cb4c                                     // System.Collections.Generic.List<int>$$Sort
01aa54ac  mov       x0, x20                                        
01aa54b0  ldp       x20, x19, [sp, #0x50]                          
01aa54b4  ldp       x22, x21, [sp, #0x40]                          
01aa54b8  ldp       x24, x23, [sp, #0x30]                          
01aa54bc  ldp       x26, x25, [sp, #0x20]                          
01aa54c0  ldp       x30, x27, [sp, #0x10]                          
01aa54c4  ldr       d8, [sp], #0x60                                
01aa54c8  ret                                                      
01aa54cc  bl        #0x183dddc                                     
01aa54d0  bl        #0x183dde4                                     