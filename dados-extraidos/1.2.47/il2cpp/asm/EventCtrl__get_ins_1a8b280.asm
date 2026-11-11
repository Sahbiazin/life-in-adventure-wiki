EventCtrl_o* EventCtrl__get_ins (const MethodInfo* method);
// RVA 0x1a8b280 to 0x1a8b2c8
01a8b280  str       x30, [sp, #-0x20]!                             
01a8b284  stp       x20, x19, [sp, #0x10]                          
01a8b288  adrp      x19, #0x3d14000                                
01a8b28c  adrp      x20, #0x3a7c000                                
01a8b290  ldrb      w8, [x19, #0xcc1]                              
01a8b294  ldr       x20, [x20, #0xfd8]                             
01a8b298  tbnz      w8, #0, #0x1a8b2b0                             
01a8b29c  adrp      x0, #0x3a7c000                                 
01a8b2a0  ldr       x0, [x0, #0xfd8]                               
01a8b2a4  bl        #0x183db90                                     
01a8b2a8  mov       w8, #1                                         
01a8b2ac  strb      w8, [x19, #0xcc1]                              
01a8b2b0  ldr       x8, [x20]                                      
01a8b2b4  ldp       x20, x19, [sp, #0x10]                          
01a8b2b8  ldr       x8, [x8, #0xb8]                                
01a8b2bc  ldr       x0, [x8]                                       
01a8b2c0  ldr       x30, [sp], #0x20                               
01a8b2c4  ret                                                      