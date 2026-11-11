void EventCtrl__set_ins (EventCtrl_o* value, const MethodInfo* method);
// RVA 0x1a8b2c8 to 0x1a8b314
01a8b2c8  stp       x30, x21, [sp, #-0x20]!                        
01a8b2cc  stp       x20, x19, [sp, #0x10]                          
01a8b2d0  adrp      x20, #0x3d14000                                
01a8b2d4  adrp      x21, #0x3a7c000                                
01a8b2d8  mov       x19, x0                                        
01a8b2dc  ldrb      w8, [x20, #0xcc2]                              
01a8b2e0  ldr       x21, [x21, #0xfd8]                             
01a8b2e4  tbnz      w8, #0, #0x1a8b2fc                             
01a8b2e8  adrp      x0, #0x3a7c000                                 
01a8b2ec  ldr       x0, [x0, #0xfd8]                               
01a8b2f0  bl        #0x183db90                                     
01a8b2f4  mov       w8, #1                                         
01a8b2f8  strb      w8, [x20, #0xcc2]                              
01a8b2fc  ldr       x8, [x21]                                      
01a8b300  ldr       x8, [x8, #0xb8]                                
01a8b304  str       x19, [x8]                                      
01a8b308  ldp       x20, x19, [sp, #0x10]                          
01a8b30c  ldp       x30, x21, [sp], #0x20                          
01a8b310  ret                                                      