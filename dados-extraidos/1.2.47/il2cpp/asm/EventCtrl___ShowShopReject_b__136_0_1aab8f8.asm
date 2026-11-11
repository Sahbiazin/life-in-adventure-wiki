void EventCtrl___ShowShopReject_b__136_0 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aab8f8 to 0x1aab92c
01aab8f8  ldrb      w8, [x0, #0x1a8]                               
01aab8fc  cbz       w8, #0x1aab928                                 
01aab900  stp       x30, x19, [sp, #-0x10]!                        
01aab904  mov       w1, #1                                         
01aab908  mov       w2, wzr                                        
01aab90c  mov       x19, x0                                        
01aab910  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01aab914  mov       x0, x19                                        
01aab918  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01aab91c  mov       x0, x19                                        
01aab920  ldp       x30, x19, [sp], #0x10                          
01aab924  b         #0x1a8f39c                                     // EventCtrl$$ShowRandomeEvent
01aab928  ret                                                      