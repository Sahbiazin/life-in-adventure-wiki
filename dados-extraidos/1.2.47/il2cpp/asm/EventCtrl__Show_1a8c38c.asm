void EventCtrl__Show (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8c38c to 0x1a8c3e8
01a8c38c  stp       x30, x21, [sp, #-0x20]!                        
01a8c390  stp       x20, x19, [sp, #0x10]                          
01a8c394  adrp      x20, #0x3d14000                                
01a8c398  adrp      x21, #0x3a7c000                                
01a8c39c  mov       x19, x0                                        
01a8c3a0  ldrb      w8, [x20, #0xcc7]                              
01a8c3a4  ldr       x21, [x21, #0xc60]                             
01a8c3a8  tbnz      w8, #0, #0x1a8c3c0                             
01a8c3ac  adrp      x0, #0x3a7c000                                 
01a8c3b0  ldr       x0, [x0, #0xc60]                               
01a8c3b4  bl        #0x183db90                                     
01a8c3b8  mov       w8, #1                                         
01a8c3bc  strb      w8, [x20, #0xcc7]                              
01a8c3c0  ldr       x1, [x21]                                      
01a8c3c4  mov       x0, x19                                        
01a8c3c8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8c3cc  cbz       x0, #0x1a8c3e4                                 
01a8c3d0  ldp       x20, x19, [sp, #0x10]                          
01a8c3d4  mov       w1, #1                                         
01a8c3d8  mov       x2, xzr                                        
01a8c3dc  ldp       x30, x21, [sp], #0x20                          
01a8c3e0  b         #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a8c3e4  bl        #0x183dddc                                     