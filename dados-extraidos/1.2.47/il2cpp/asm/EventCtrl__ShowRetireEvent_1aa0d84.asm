void EventCtrl__ShowRetireEvent (EventCtrl_o* __this, int32_t eventIndex, const MethodInfo* method);
// RVA 0x1aa0d84 to 0x1aa102c
01aa0d84  sub       sp, sp, #0x50                                  
01aa0d88  stp       x30, x23, [sp, #0x20]                          
01aa0d8c  stp       x22, x21, [sp, #0x30]                          
01aa0d90  stp       x20, x19, [sp, #0x40]                          
01aa0d94  adrp      x20, #0x3d14000                                
01aa0d98  adrp      x22, #0x3a8c000                                
01aa0d9c  mov       w21, w1                                        
01aa0da0  ldrb      w8, [x20, #0xcf4]                              
01aa0da4  ldr       x22, [x22, #0xb08]                             
01aa0da8  mov       x19, x0                                        
01aa0dac  tbnz      w8, #0, #0x1aa0e0c                             
01aa0db0  adrp      x0, #0x3a7c000                                 
01aa0db4  ldr       x0, [x0, #0xc08]                               
01aa0db8  bl        #0x183db90                                     
01aa0dbc  adrp      x0, #0x3a8c000                                 
01aa0dc0  ldr       x0, [x0, #0x610]                               
01aa0dc4  bl        #0x183db90                                     
01aa0dc8  adrp      x0, #0x3a8c000                                 
01aa0dcc  ldr       x0, [x0, #0xb10]                               
01aa0dd0  bl        #0x183db90                                     
01aa0dd4  adrp      x0, #0x3a8c000                                 
01aa0dd8  ldr       x0, [x0, #0xb18]                               
01aa0ddc  bl        #0x183db90                                     
01aa0de0  adrp      x0, #0x3a8c000                                 
01aa0de4  ldr       x0, [x0, #0xb08]                               
01aa0de8  bl        #0x183db90                                     
01aa0dec  adrp      x0, #0x3a7c000                                 
01aa0df0  ldr       x0, [x0, #0xc78]                               
01aa0df4  bl        #0x183db90                                     
01aa0df8  adrp      x0, #0x3a7b000                                 
01aa0dfc  ldr       x0, [x0, #0xaf0]                               
01aa0e00  bl        #0x183db90                                     
01aa0e04  mov       w8, #1                                         
01aa0e08  strb      w8, [x20, #0xcf4]                              
01aa0e0c  ldr       x0, [x22]                                      
01aa0e10  bl        #0x183ddcc                                     
01aa0e14  mov       x1, xzr                                        
01aa0e18  mov       x20, x0                                        
01aa0e1c  bl        #0x1ab28d0                                     // EventCtrl.<>c__DisplayClass141_0$$.ctor
01aa0e20  cbz       x20, #0x1aa1024                                
01aa0e24  adrp      x23, #0x3a7c000                                
01aa0e28  ldr       x23, [x23, #0xc08]                             
01aa0e2c  str       x19, [x20, #0x10]                              
01aa0e30  str       w21, [x20, #0x18]                              
01aa0e34  ldr       x8, [x23]                                      
01aa0e38  ldr       x8, [x8, #0xb8]                                
01aa0e3c  ldr       x9, [x8]                                       
01aa0e40  cbz       x9, #0x1aa1024                                 
01aa0e44  ldr       x8, [x19, #0x230]                              
01aa0e48  cbz       x8, #0x1aa1024                                 
01aa0e4c  ldr       x10, [x8, #0x10]                               
01aa0e50  ldr       w11, [x10]                                     
01aa0e54  cmp       w11, w21                                       
01aa0e58  b.ls      #0x1aa1028                                     
01aa0e5c  ldrsw     x9, [x9, #0x5cc]                               
01aa0e60  ldr       x10, [x10, #0x10]                              
01aa0e64  cmp       w9, w10                                        
01aa0e68  b.hs      #0x1aa1028                                     
01aa0e6c  sxtw      x11, w21                                       
01aa0e70  mov       x0, x19                                        
01aa0e74  madd      x9, x10, x11, x9                               
01aa0e78  add       x8, x8, x9, lsl #3                             
01aa0e7c  ldr       x1, [x8, #0x20]                                
01aa0e80  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01aa0e84  mov       x1, x0                                         
01aa0e88  mov       x0, x19                                        
01aa0e8c  mov       x2, xzr                                        
01aa0e90  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01aa0e94  ldr       x8, [x23]                                      
01aa0e98  str       x0, [x19, #0x188]                              
01aa0e9c  ldr       x8, [x8, #0xb8]                                
01aa0ea0  ldr       x8, [x8]                                       
01aa0ea4  cbz       x8, #0x1aa1024                                 
01aa0ea8  mov       w9, #-1                                        
01aa0eac  mov       w2, wzr                                        
01aa0eb0  mov       w3, wzr                                        
01aa0eb4  mov       w4, wzr                                        
01aa0eb8  mov       w5, wzr                                        
01aa0ebc  mov       w6, wzr                                        
01aa0ec0  str       w9, [sp, #8]                                   
01aa0ec4  mov       w9, #1                                         
01aa0ec8  mov       x0, x8                                         
01aa0ecc  mov       w1, #6                                         
01aa0ed0  mov       w7, #-1                                        
01aa0ed4  str       xzr, [sp, #0x10]                               
01aa0ed8  strb      w9, [sp]                                       
01aa0edc  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01aa0ee0  mov       x0, x19                                        
01aa0ee4  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa0ee8  ldr       w8, [x20, #0x18]                               
01aa0eec  cmp       w8, #1                                         
01aa0ef0  b.eq      #0x1aa0f64                                     
01aa0ef4  cbnz      w8, #0x1aa100c                                 
01aa0ef8  ldr       x0, [x19, #0xb8]                               
01aa0efc  cbz       x0, #0x1aa1024                                 
01aa0f00  adrp      x8, #0x3a8c000                                 
01aa0f04  mov       w1, wzr                                        
01aa0f08  ldr       x8, [x8, #0x610]                               
01aa0f0c  ldr       x2, [x8]                                       
01aa0f10  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0f14  adrp      x8, #0x3a7c000                                 
01aa0f18  mov       x21, x0                                        
01aa0f1c  ldr       x8, [x8, #0xc78]                               
01aa0f20  ldr       x8, [x8]                                       
01aa0f24  mov       x0, x8                                         
01aa0f28  bl        #0x183ddcc                                     
01aa0f2c  adrp      x8, #0x3a8c000                                 
01aa0f30  mov       x1, x20                                        
01aa0f34  mov       x3, xzr                                        
01aa0f38  ldr       x8, [x8, #0xb10]                               
01aa0f3c  mov       x22, x0                                        
01aa0f40  ldr       x2, [x8]                                       
01aa0f44  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa0f48  ldr       x8, [x23]                                      
01aa0f4c  ldr       x8, [x8, #0xb8]                                
01aa0f50  ldr       x9, [x8]                                       
01aa0f54  cbz       x9, #0x1aa1024                                 
01aa0f58  ldr       x8, [x19, #0x240]                              
01aa0f5c  cbnz      x8, #0x1aa0fcc                                 
01aa0f60  b         #0x1aa1024                                     
01aa0f64  ldr       x0, [x19, #0xb8]                               
01aa0f68  cbz       x0, #0x1aa1024                                 
01aa0f6c  adrp      x8, #0x3a8c000                                 
01aa0f70  mov       w1, wzr                                        
01aa0f74  ldr       x8, [x8, #0x610]                               
01aa0f78  ldr       x2, [x8]                                       
01aa0f7c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0f80  adrp      x8, #0x3a7c000                                 
01aa0f84  mov       x21, x0                                        
01aa0f88  ldr       x8, [x8, #0xc78]                               
01aa0f8c  ldr       x8, [x8]                                       
01aa0f90  mov       x0, x8                                         
01aa0f94  bl        #0x183ddcc                                     
01aa0f98  adrp      x8, #0x3a8c000                                 
01aa0f9c  mov       x1, x20                                        
01aa0fa0  mov       x3, xzr                                        
01aa0fa4  ldr       x8, [x8, #0xb18]                               
01aa0fa8  mov       x22, x0                                        
01aa0fac  ldr       x2, [x8]                                       
01aa0fb0  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa0fb4  ldr       x8, [x23]                                      
01aa0fb8  ldr       x8, [x8, #0xb8]                                
01aa0fbc  ldr       x9, [x8]                                       
01aa0fc0  cbz       x9, #0x1aa1024                                 
01aa0fc4  ldr       x8, [x19, #0x248]                              
01aa0fc8  cbz       x8, #0x1aa1024                                 
01aa0fcc  ldrsw     x9, [x9, #0x5cc]                               
01aa0fd0  ldr       w10, [x8, #0x18]                               
01aa0fd4  cmp       w9, w10                                        
01aa0fd8  b.hs      #0x1aa1028                                     
01aa0fdc  add       x8, x8, x9, lsl #3                             
01aa0fe0  adrp      x9, #0x3a7b000                                 
01aa0fe4  mov       x0, x19                                        
01aa0fe8  ldr       x9, [x9, #0xaf0]                               
01aa0fec  mov       x1, x21                                        
01aa0ff0  mov       w2, #1                                         
01aa0ff4  ldr       x4, [x8, #0x20]                                
01aa0ff8  mov       x3, x22                                        
01aa0ffc  mov       x5, xzr                                        
01aa1000  ldr       x7, [x9]                                       
01aa1004  mov       w6, wzr                                        
01aa1008  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa100c  mov       x0, x19                                        
01aa1010  ldp       x20, x19, [sp, #0x40]                          
01aa1014  ldp       x22, x21, [sp, #0x30]                          
01aa1018  ldp       x30, x23, [sp, #0x20]                          
01aa101c  add       sp, sp, #0x50                                  
01aa1020  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa1024  bl        #0x183dddc                                     
01aa1028  bl        #0x183dde4                                     