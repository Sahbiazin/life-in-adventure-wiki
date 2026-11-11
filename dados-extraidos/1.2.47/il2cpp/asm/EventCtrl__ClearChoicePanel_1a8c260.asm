void EventCtrl__ClearChoicePanel (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8c260 to 0x1a8c38c
01a8c260  str       x30, [sp, #-0x30]!                             
01a8c264  stp       x22, x21, [sp, #0x10]                          
01a8c268  stp       x20, x19, [sp, #0x20]                          
01a8c26c  adrp      x20, #0x3d14000                                
01a8c270  mov       x19, x0                                        
01a8c274  ldrb      w8, [x20, #0xccf]                              
01a8c278  tbnz      w8, #0, #0x1a8c2a8                             
01a8c27c  adrp      x0, #0x3a7d000                                 
01a8c280  ldr       x0, [x0, #0x4d8]                               
01a8c284  bl        #0x183db90                                     
01a8c288  adrp      x0, #0x3a8c000                                 
01a8c28c  ldr       x0, [x0, #0x608]                               
01a8c290  bl        #0x183db90                                     
01a8c294  adrp      x0, #0x3a8c000                                 
01a8c298  ldr       x0, [x0, #0x610]                               
01a8c29c  bl        #0x183db90                                     
01a8c2a0  mov       w8, #1                                         
01a8c2a4  strb      w8, [x20, #0xccf]                              
01a8c2a8  ldr       x0, [x19, #0xb8]                               
01a8c2ac  cbz       x0, #0x1a8c360                                 
01a8c2b0  adrp      x21, #0x3a8c000                                
01a8c2b4  adrp      x22, #0x3a7d000                                
01a8c2b8  mov       w20, wzr                                       
01a8c2bc  ldr       x21, [x21, #0x610]                             
01a8c2c0  ldr       x22, [x22, #0x4d8]                             
01a8c2c4  ldr       w8, [x0, #0x18]                                
01a8c2c8  cmp       w20, w8                                        
01a8c2cc  b.ge      #0x1a8c364                                     
01a8c2d0  ldr       x2, [x21]                                      
01a8c2d4  mov       w1, w20                                        
01a8c2d8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8c2dc  cbz       x0, #0x1a8c360                                 
01a8c2e0  mov       x1, xzr                                        
01a8c2e4  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8c2e8  cbz       x0, #0x1a8c360                                 
01a8c2ec  mov       w1, wzr                                        
01a8c2f0  mov       x2, xzr                                        
01a8c2f4  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a8c2f8  ldr       x0, [x19, #0xb8]                               
01a8c2fc  cbz       x0, #0x1a8c360                                 
01a8c300  ldr       x2, [x21]                                      
01a8c304  mov       w1, w20                                        
01a8c308  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8c30c  cbz       x0, #0x1a8c360                                 
01a8c310  mov       x1, xzr                                        
01a8c314  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8c318  cbz       x0, #0x1a8c360                                 
01a8c31c  mov       w1, #1                                         
01a8c320  mov       x2, xzr                                        
01a8c324  bl        #0x35d6218                                     // UnityEngine.Transform$$GetChild
01a8c328  cbz       x0, #0x1a8c360                                 
01a8c32c  mov       w1, wzr                                        
01a8c330  mov       x2, xzr                                        
01a8c334  bl        #0x35d6218                                     // UnityEngine.Transform$$GetChild
01a8c338  cbz       x0, #0x1a8c360                                 
01a8c33c  ldr       x1, [x22]                                      
01a8c340  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8c344  cbz       x0, #0x1a8c360                                 
01a8c348  ldr       x8, [x0]                                       
01a8c34c  ldp       x9, x1, [x8, #0x1d8]                           
01a8c350  blr       x9                                             
01a8c354  ldr       x0, [x19, #0xb8]                               
01a8c358  add       w20, w20, #1                                   
01a8c35c  cbnz      x0, #0x1a8c2c4                                 
01a8c360  bl        #0x183dddc                                     
01a8c364  ldr       x0, [x19, #0x30]                               
01a8c368  cbz       x0, #0x1a8c360                                 
01a8c36c  movi      d0, #0000000000000000                          
01a8c370  mov       x1, xzr                                        
01a8c374  bl        #0x3843b74                                     // UnityEngine.CanvasGroup$$set_alpha
01a8c378  strb      wzr, [x19, #0x1a8]                             
01a8c37c  ldp       x20, x19, [sp, #0x20]                          
01a8c380  ldp       x22, x21, [sp, #0x10]                          
01a8c384  ldr       x30, [sp], #0x30                               
01a8c388  ret                                                      