bool EventCtrl__IsDelayPunctuation (EventCtrl_o* __this, uint16_t ch, const MethodInfo* method);
// RVA 0x1aa5264 to 0x1aa52cc
01aa5264  and       w8, w1, #0xffff                                
01aa5268  mov       w0, #1                                         
01aa526c  cmp       w8, #0x3f                                      
01aa5270  b.hi      #0x1aa5290                                     
01aa5274  and       x9, x1, #0xffff                                
01aa5278  mov       w10, #1                                        
01aa527c  lsl       x9, x10, x9                                    
01aa5280  mov       x10, #0x500200000000                           
01aa5284  movk      x10, #0x8c00, lsl #48                          
01aa5288  tst       x9, x10                                        
01aa528c  b.ne      #0x1aa52c0                                     
01aa5290  sub       w9, w8, #0x60c                                 
01aa5294  cmp       w9, #0x13                                      
01aa5298  b.hi      #0x1aa52b4                                     
01aa529c  mov       w10, #1                                        
01aa52a0  lsl       w9, w10, w9                                    
01aa52a4  mov       w10, #0x8001                                   
01aa52a8  movk      w10, #8, lsl #16                               
01aa52ac  tst       w9, w10                                        
01aa52b0  b.ne      #0x1aa52c0                                     
01aa52b4  mov       w9, #0x2026                                    
01aa52b8  cmp       w8, w9                                         
01aa52bc  b.ne      #0x1aa52c4                                     
01aa52c0  ret                                                      
01aa52c4  mov       w0, wzr                                        
01aa52c8  ret                                                      