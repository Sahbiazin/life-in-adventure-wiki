void EventCtrl__Resurrection (EventCtrl_o* __this, int32_t choiceIndex, const MethodInfo* method);
// RVA 0x1a8d140 to 0x1a8d2f0
01a8d140  stp       x30, x27, [sp, #-0x50]!                        
01a8d144  stp       x26, x25, [sp, #0x10]                          
01a8d148  stp       x24, x23, [sp, #0x20]                          
01a8d14c  stp       x22, x21, [sp, #0x30]                          
01a8d150  stp       x20, x19, [sp, #0x40]                          
01a8d154  adrp      x21, #0x3d14000                                
01a8d158  mov       w19, w1                                        
01a8d15c  mov       x20, x0                                        
01a8d160  ldrb      w8, [x21, #0xcca]                              
01a8d164  tbnz      w8, #0, #0x1a8d1b8                             
01a8d168  adrp      x0, #0x3a7c000                                 
01a8d16c  ldr       x0, [x0, #0xc08]                               
01a8d170  bl        #0x183db90                                     
01a8d174  adrp      x0, #0x3a8c000                                 
01a8d178  ldr       x0, [x0, #0x688]                               
01a8d17c  bl        #0x183db90                                     
01a8d180  adrp      x0, #0x3a7e000                                 
01a8d184  ldr       x0, [x0, #0xf20]                               
01a8d188  bl        #0x183db90                                     
01a8d18c  adrp      x0, #0x3a7d000                                 
01a8d190  ldr       x0, [x0, #0x738]                               
01a8d194  bl        #0x183db90                                     
01a8d198  adrp      x0, #0x3a7b000                                 
01a8d19c  ldr       x0, [x0, #0xc10]                               
01a8d1a0  bl        #0x183db90                                     
01a8d1a4  adrp      x0, #0x3a7b000                                 
01a8d1a8  ldr       x0, [x0, #0xaf0]                               
01a8d1ac  bl        #0x183db90                                     
01a8d1b0  mov       w8, #1                                         
01a8d1b4  strb      w8, [x21, #0xcca]                              
01a8d1b8  mov       x0, x20                                        
01a8d1bc  mov       w1, wzr                                        
01a8d1c0  mov       w2, wzr                                        
01a8d1c4  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a8d1c8  mov       x0, x20                                        
01a8d1cc  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01a8d1d0  ldr       x0, [x20, #0x38]                               
01a8d1d4  cbz       x0, #0x1a8d258                                 
01a8d1d8  adrp      x26, #0x3a7d000                                
01a8d1dc  adrp      x27, #0x3a7b000                                
01a8d1e0  adrp      x25, #0x3a8c000                                
01a8d1e4  adrp      x24, #0x3a7c000                                
01a8d1e8  adrp      x23, #0x3a7b000                                
01a8d1ec  ldr       x26, [x26, #0x738]                             
01a8d1f0  ldr       x27, [x27, #0xc10]                             
01a8d1f4  ldr       x25, [x25, #0x688]                             
01a8d1f8  ldr       x24, [x24, #0xc08]                             
01a8d1fc  ldr       x23, [x23, #0xaf0]                             
01a8d200  ldr       w21, [x20, #0x1a4]                             
01a8d204  ldr       w8, [x0, #0x18]                                
01a8d208  cmp       w21, w8                                        
01a8d20c  b.ge      #0x1a8d25c                                     
01a8d210  ldr       x2, [x26]                                      
01a8d214  mov       w1, w21                                        
01a8d218  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8d21c  cbz       x0, #0x1a8d258                                 
01a8d220  mov       x1, xzr                                        
01a8d224  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8d228  ldr       x8, [x27]                                      
01a8d22c  mov       x22, x0                                        
01a8d230  ldr       w9, [x8, #0xe4]                                
01a8d234  cbnz      w9, #0x1a8d240                                 
01a8d238  mov       x0, x8                                         
01a8d23c  bl        #0x183dcb0                                     
01a8d240  mov       x0, x22                                        
01a8d244  mov       x1, xzr                                        
01a8d248  bl        #0x35ce474                                     // UnityEngine.Object$$Destroy
01a8d24c  ldr       x0, [x20, #0x38]                               
01a8d250  add       w21, w21, #1                                   
01a8d254  cbnz      x0, #0x1a8d204                                 
01a8d258  bl        #0x183dddc                                     
01a8d25c  ldr       w1, [x20, #0x1a4]                              
01a8d260  ldr       x3, [x25]                                      
01a8d264  sub       w2, w8, w1                                     
01a8d268  bl        #0x2795fa4                                     // System.Collections.Generic.List<object>$$RemoveRange
01a8d26c  ldr       x8, [x24]                                      
01a8d270  ldr       x8, [x8, #0xb8]                                
01a8d274  ldr       x0, [x8]                                       
01a8d278  cbz       x0, #0x1a8d258                                 
01a8d27c  ldr       w8, [x0, #0x10c]                               
01a8d280  fmov      s0, #3.00000000                                
01a8d284  mov       w1, wzr                                        
01a8d288  mov       w2, #1                                         
01a8d28c  mov       x3, xzr                                        
01a8d290  mov       w21, #1                                        
01a8d294  add       w8, w8, #1                                     
01a8d298  str       w8, [x0, #0x10c]                               
01a8d29c  bl        #0x1af7a54                                     // DataMgr$$ChangeUserData
01a8d2a0  ldr       x8, [x24]                                      
01a8d2a4  ldr       x8, [x8, #0xb8]                                
01a8d2a8  ldr       x0, [x8]                                       
01a8d2ac  cbz       x0, #0x1a8d258                                 
01a8d2b0  fmov      s0, #3.00000000                                
01a8d2b4  mov       w1, #1                                         
01a8d2b8  mov       w2, #1                                         
01a8d2bc  mov       x3, xzr                                        
01a8d2c0  bl        #0x1af7a54                                     // DataMgr$$ChangeUserData
01a8d2c4  ldr       x3, [x23]                                      
01a8d2c8  mov       x0, x20                                        
01a8d2cc  mov       w1, w19                                        
01a8d2d0  strb      w21, [x20, #0x115]                             
01a8d2d4  ldp       x20, x19, [sp, #0x40]                          
01a8d2d8  ldp       x22, x21, [sp, #0x30]                          
01a8d2dc  mov       w2, wzr                                        
01a8d2e0  ldp       x24, x23, [sp, #0x20]                          
01a8d2e4  ldp       x26, x25, [sp, #0x10]                          
01a8d2e8  ldp       x30, x27, [sp], #0x50                          
01a8d2ec  b         #0x1a8d2f0                                     // EventCtrl$$ClickEventButton