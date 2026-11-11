void EventCtrl__Hide (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8c3e8 to 0x1a8c444
01a8c3e8  stp       x30, x21, [sp, #-0x20]!                        
01a8c3ec  stp       x20, x19, [sp, #0x10]                          
01a8c3f0  adrp      x20, #0x3d14000                                
01a8c3f4  adrp      x21, #0x3a7c000                                
01a8c3f8  mov       x19, x0                                        
01a8c3fc  ldrb      w8, [x20, #0xcc8]                              
01a8c400  ldr       x21, [x21, #0xc60]                             
01a8c404  tbnz      w8, #0, #0x1a8c41c                             
01a8c408  adrp      x0, #0x3a7c000                                 
01a8c40c  ldr       x0, [x0, #0xc60]                               
01a8c410  bl        #0x183db90                                     
01a8c414  mov       w8, #1                                         
01a8c418  strb      w8, [x20, #0xcc8]                              
01a8c41c  ldr       x1, [x21]                                      
01a8c420  mov       x0, x19                                        
01a8c424  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8c428  cbz       x0, #0x1a8c440                                 
01a8c42c  ldp       x20, x19, [sp, #0x10]                          
01a8c430  mov       w1, wzr                                        
01a8c434  mov       x2, xzr                                        
01a8c438  ldp       x30, x21, [sp], #0x20                          
01a8c43c  b         #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a8c440  bl        #0x183dddc                                     