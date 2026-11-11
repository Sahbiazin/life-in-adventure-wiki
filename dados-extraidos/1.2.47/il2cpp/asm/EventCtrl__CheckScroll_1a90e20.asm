void EventCtrl__CheckScroll (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a90e20 to 0x1a90f74
01a90e20  str       d8, [sp, #-0x20]!                              
01a90e24  str       x30, [sp, #8]                                  
01a90e28  stp       x20, x19, [sp, #0x10]                          
01a90e2c  adrp      x20, #0x3d14000                                
01a90e30  mov       x19, x0                                        
01a90e34  ldrb      w8, [x20, #0xcfc]                              
01a90e38  tbnz      w8, #0, #0x1a90e5c                             
01a90e3c  adrp      x0, #0x3a7c000                                 
01a90e40  ldr       x0, [x0, #0xf20]                               
01a90e44  bl        #0x183db90                                     
01a90e48  adrp      x0, #0x3a7d000                                 
01a90e4c  ldr       x0, [x0, #0x360]                               
01a90e50  bl        #0x183db90                                     
01a90e54  mov       w8, #1                                         
01a90e58  strb      w8, [x20, #0xcfc]                              
01a90e5c  ldr       x0, [x19, #0x28]                               
01a90e60  cbz       x0, #0x1a90f70                                 
01a90e64  adrp      x20, #0x3a7c000                                
01a90e68  ldr       x20, [x20, #0xf20]                             
01a90e6c  ldr       x1, [x20]                                      
01a90e70  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90e74  cbz       x0, #0x1a90f70                                 
01a90e78  mov       x1, xzr                                        
01a90e7c  bl        #0x35d337c                                     // UnityEngine.RectTransform$$get_rect
01a90e80  ldr       x0, [x19, #0x28]                               
01a90e84  cbz       x0, #0x1a90f70                                 
01a90e88  mov       x1, xzr                                        
01a90e8c  fmov      s8, s3                                         
01a90e90  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a90e94  cbz       x0, #0x1a90f70                                 
01a90e98  ldr       x1, [x20]                                      
01a90e9c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90ea0  cbz       x0, #0x1a90f70                                 
01a90ea4  mov       x1, xzr                                        
01a90ea8  bl        #0x35d337c                                     // UnityEngine.RectTransform$$get_rect
01a90eac  fcmp      s8, s3                                         
01a90eb0  b.ls      #0x1a90f0c                                     
01a90eb4  ldr       x0, [x19, #0x28]                               
01a90eb8  cbz       x0, #0x1a90f70                                 
01a90ebc  mov       x1, xzr                                        
01a90ec0  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a90ec4  cbz       x0, #0x1a90f70                                 
01a90ec8  mov       x1, xzr                                        
01a90ecc  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a90ed0  cbz       x0, #0x1a90f70                                 
01a90ed4  adrp      x8, #0x3a7d000                                 
01a90ed8  ldr       x8, [x8, #0x360]                               
01a90edc  ldr       x1, [x8]                                       
01a90ee0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90ee4  cbz       x0, #0x1a90f70                                 
01a90ee8  mov       x1, xzr                                        
01a90eec  bl        #0x38607a0                                     // UnityEngine.UI.ScrollRect$$get_verticalNormalizedPosition
01a90ef0  adrp      x8, #0xa13000                                  
01a90ef4  ldr       x0, [x19, #0x1b0]                              
01a90ef8  ldr       s1, [x8, #0x174]                               
01a90efc  fcmp      s0, s1                                         
01a90f00  b.mi      #0x1a90f10                                     
01a90f04  cbnz      x0, #0x1a90f48                                 
01a90f08  b         #0x1a90f70                                     
01a90f0c  ldr       x0, [x19, #0x1b0]                              
01a90f10  cbz       x0, #0x1a90f70                                 
01a90f14  mov       w1, wzr                                        
01a90f18  mov       x2, xzr                                        
01a90f1c  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a90f20  ldrb      w8, [x19, #0x1e1]                              
01a90f24  cbz       w8, #0x1a90f60                                 
01a90f28  ldr       x0, [x19, #0x1b8]                              
01a90f2c  strb      wzr, [x19, #0x1e1]                             
01a90f30  cbz       x0, #0x1a90f70                                 
01a90f34  mov       w1, wzr                                        
01a90f38  mov       x2, xzr                                        
01a90f3c  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a90f40  ldr       x0, [x19, #0x1c0]                              
01a90f44  cbz       x0, #0x1a90f70                                 
01a90f48  ldp       x20, x19, [sp, #0x10]                          
01a90f4c  mov       w1, #1                                         
01a90f50  ldr       x30, [sp, #8]                                  
01a90f54  mov       x2, xzr                                        
01a90f58  ldr       d8, [sp], #0x20                                
01a90f5c  b         #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a90f60  ldp       x20, x19, [sp, #0x10]                          
01a90f64  ldr       x30, [sp, #8]                                  
01a90f68  ldr       d8, [sp], #0x20                                
01a90f6c  ret                                                      
01a90f70  bl        #0x183dddc                                     