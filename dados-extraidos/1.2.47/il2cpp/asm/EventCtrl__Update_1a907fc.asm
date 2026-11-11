void EventCtrl__Update (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a907fc to 0x1a90880
01a907fc  stp       x30, x19, [sp, #-0x10]!                        
01a90800  ldrb      w8, [x0, #0x180]                               
01a90804  cbz       w8, #0x1a90878                                 
01a90808  mov       x19, x0                                        
01a9080c  mov       w0, wzr                                        
01a90810  mov       x1, xzr                                        
01a90814  bl        #0x361aefc                                     // UnityEngine.Input$$GetMouseButtonDown
01a90818  tbz       w0, #0, #0x1a9082c                             
01a9081c  mov       x0, xzr                                        
01a90820  bl        #0x361b308                                     // UnityEngine.Input$$get_mousePosition
01a90824  str       s0, [x19, #0x1e4]                              
01a90828  str       s1, [x19, #0x1e8]                              
01a9082c  mov       w0, wzr                                        
01a90830  mov       x1, xzr                                        
01a90834  bl        #0x361af38                                     // UnityEngine.Input$$GetMouseButtonUp
01a90838  tbz       w0, #0, #0x1a90878                             
01a9083c  mov       x0, xzr                                        
01a90840  bl        #0x361b308                                     // UnityEngine.Input$$get_mousePosition
01a90844  ldr       s2, [x19, #0x1e4]                              
01a90848  ldr       s3, [x19, #0x1e8]                              
01a9084c  str       s0, [x19, #0x1ec]                              
01a90850  str       s1, [x19, #0x1f0]                              
01a90854  fabd      s2, s0, s2                                     
01a90858  fabd      s3, s1, s3                                     
01a9085c  fadd      s2, s2, s3                                     
01a90860  ldr       s3, [x19, #0x1d8]                              
01a90864  fcmp      s2, s3                                         
01a90868  b.pl      #0x1a90878                                     
01a9086c  mov       x0, x19                                        
01a90870  ldp       x30, x19, [sp], #0x10                          
01a90874  b         #0x1a90880                                     // EventCtrl$$SkipReveal
01a90878  ldp       x30, x19, [sp], #0x10                          
01a9087c  ret                                                      