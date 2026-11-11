void EventCtrl___ShowStartEvent_b__99_0 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aab868 to 0x1aab89c
01aab868  ldrb      w8, [x0, #0x1a8]                               
01aab86c  cbz       w8, #0x1aab898                                 
01aab870  stp       x30, x19, [sp, #-0x10]!                        
01aab874  mov       w1, #1                                         
01aab878  mov       w2, wzr                                        
01aab87c  mov       x19, x0                                        
01aab880  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01aab884  mov       x0, x19                                        
01aab888  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01aab88c  mov       x0, x19                                        
01aab890  ldp       x30, x19, [sp], #0x10                          
01aab894  b         #0x1a8f39c                                     // EventCtrl$$ShowRandomeEvent
01aab898  ret                                                      