void EventCtrl___ShowRetireNextEvent_b__142_0 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aab92c to 0x1aab960
01aab92c  ldrb      w8, [x0, #0x1a8]                               
01aab930  cbz       w8, #0x1aab95c                                 
01aab934  stp       x30, x19, [sp, #-0x10]!                        
01aab938  mov       w1, #1                                         
01aab93c  mov       w2, wzr                                        
01aab940  mov       x19, x0                                        
01aab944  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01aab948  mov       x0, x19                                        
01aab94c  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01aab950  mov       x0, x19                                        
01aab954  ldp       x30, x19, [sp], #0x10                          
01aab958  b         #0x1a8f39c                                     // EventCtrl$$ShowRandomeEvent
01aab95c  ret                                                      