void EventCtrl__Epilogue (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8ff7c to 0x1a9004c
01a8ff7c  sub       sp, sp, #0x40                                  
01a8ff80  stp       x30, x21, [sp, #0x20]                          
01a8ff84  stp       x20, x19, [sp, #0x30]                          
01a8ff88  adrp      x21, #0x3d14000                                
01a8ff8c  adrp      x20, #0x3a7c000                                
01a8ff90  mov       x19, x0                                        
01a8ff94  ldrb      w8, [x21, #0xccb]                              
01a8ff98  ldr       x20, [x20, #0xc08]                             
01a8ff9c  tbnz      w8, #0, #0x1a8ffb4                             
01a8ffa0  adrp      x0, #0x3a7c000                                 
01a8ffa4  ldr       x0, [x0, #0xc08]                               
01a8ffa8  bl        #0x183db90                                     
01a8ffac  mov       w8, #1                                         
01a8ffb0  strb      w8, [x21, #0xccb]                              
01a8ffb4  mov       x0, x19                                        
01a8ffb8  mov       w1, #1                                         
01a8ffbc  mov       w2, wzr                                        
01a8ffc0  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a8ffc4  mov       x0, x19                                        
01a8ffc8  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01a8ffcc  ldr       x8, [x20]                                      
01a8ffd0  ldr       x8, [x8, #0xb8]                                
01a8ffd4  ldr       x0, [x8]                                       
01a8ffd8  cbz       x0, #0x1a90048                                 
01a8ffdc  mov       w1, #1                                         
01a8ffe0  mov       w2, #1                                         
01a8ffe4  mov       x3, xzr                                        
01a8ffe8  mov       w21, #1                                        
01a8ffec  bl        #0x1af3728                                     // DataMgr$$AddAndReportAchievement
01a8fff0  ldr       x8, [x20]                                      
01a8fff4  ldr       x8, [x8, #0xb8]                                
01a8fff8  ldr       x0, [x8]                                       
01a8fffc  cbz       x0, #0x1a90048                                 
01a90000  mov       w2, wzr                                        
01a90004  mov       w3, wzr                                        
01a90008  mov       w4, wzr                                        
01a9000c  mov       w5, wzr                                        
01a90010  mov       w6, wzr                                        
01a90014  mov       w8, #-1                                        
01a90018  mov       w1, #5                                         
01a9001c  mov       w7, #-1                                        
01a90020  str       xzr, [sp, #0x10]                               
01a90024  str       w8, [sp, #8]                                   
01a90028  strb      w21, [sp]                                      
01a9002c  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a90030  mov       x0, x19                                        
01a90034  ldp       x20, x19, [sp, #0x30]                          
01a90038  ldp       x30, x21, [sp, #0x20]                          
01a9003c  mov       w1, wzr                                        
01a90040  add       sp, sp, #0x40                                  
01a90044  b         #0x1a8cda0                                     // EventCtrl$$ShowEpilogue
01a90048  bl        #0x183dddc                                     