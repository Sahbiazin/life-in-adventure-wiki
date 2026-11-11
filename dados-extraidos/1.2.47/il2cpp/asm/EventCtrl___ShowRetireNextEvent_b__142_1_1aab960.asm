void EventCtrl___ShowRetireNextEvent_b__142_1 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aab960 to 0x1aaba3c
01aab960  str       x30, [sp, #-0x20]!                             
01aab964  stp       x20, x19, [sp, #0x10]                          
01aab968  adrp      x20, #0x3d14000                                
01aab96c  mov       x19, x0                                        
01aab970  ldrb      w8, [x20, #0xd03]                              
01aab974  tbnz      w8, #0, #0x1aab998                             
01aab978  adrp      x0, #0x3a7c000                                 
01aab97c  ldr       x0, [x0, #0xc08]                               
01aab980  bl        #0x183db90                                     
01aab984  adrp      x0, #0x3a7c000                                 
01aab988  ldr       x0, [x0, #0xc10]                               
01aab98c  bl        #0x183db90                                     
01aab990  mov       w8, #1                                         
01aab994  strb      w8, [x20, #0xd03]                              
01aab998  ldrb      w8, [x19, #0x1a8]                              
01aab99c  cbz       w8, #0x1aaba08                                 
01aab9a0  adrp      x8, #0x3a7c000                                 
01aab9a4  ldr       x8, [x8, #0xc08]                               
01aab9a8  ldr       x8, [x8]                                       
01aab9ac  ldr       x8, [x8, #0xb8]                                
01aab9b0  ldr       x8, [x8]                                       
01aab9b4  cbz       x8, #0x1aaba38                                 
01aab9b8  ldr       x0, [x8, #0x170]                               
01aab9bc  cbz       x0, #0x1aaba38                                 
01aab9c0  adrp      x9, #0x3a7c000                                 
01aab9c4  ldr       x9, [x9, #0xc10]                               
01aab9c8  ldr       w10, [x0, #0x1c]                               
01aab9cc  ldr       x8, [x0, #0x10]                                
01aab9d0  ldr       x9, [x9]                                       
01aab9d4  add       w10, w10, #1                                   
01aab9d8  str       w10, [x0, #0x1c]                               
01aab9dc  cbz       x8, #0x1aaba38                                 
01aab9e0  ldrsw     x10, [x0, #0x18]                               
01aab9e4  ldr       w11, [x8, #0x18]                               
01aab9e8  cmp       w10, w11                                       
01aab9ec  b.hs      #0x1aaba14                                     
01aab9f0  add       w9, w10, #1                                    
01aab9f4  add       x8, x8, x10, lsl #2                            
01aab9f8  str       w9, [x0, #0x18]                                
01aab9fc  mov       w9, #9                                         
01aaba00  str       w9, [x8, #0x20]                                
01aaba04  b         #0x1aaba28                                     
01aaba08  ldp       x20, x19, [sp, #0x10]                          
01aaba0c  ldr       x30, [sp], #0x20                               
01aaba10  ret                                                      
01aaba14  ldr       x8, [x9, #0x20]                                
01aaba18  mov       w1, #9                                         
01aaba1c  ldr       x8, [x8, #0xc0]                                
01aaba20  ldr       x2, [x8, #0x70]                                
01aaba24  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01aaba28  mov       x0, x19                                        
01aaba2c  ldp       x20, x19, [sp, #0x10]                          
01aaba30  ldr       x30, [sp], #0x20                               
01aaba34  b         #0x1a8ff7c                                     // EventCtrl$$Epilogue
01aaba38  bl        #0x183dddc                                     