int32_t EventCtrl__GetTotalChance (EventCtrl_o* __this, System_String_o* _chanceString, const MethodInfo* method);
// RVA 0x1a99d04 to 0x1a99e6c
01a99d04  str       x30, [sp, #-0x60]!                             
01a99d08  stp       x28, x27, [sp, #0x10]                          
01a99d0c  stp       x26, x25, [sp, #0x20]                          
01a99d10  stp       x24, x23, [sp, #0x30]                          
01a99d14  stp       x22, x21, [sp, #0x40]                          
01a99d18  stp       x20, x19, [sp, #0x50]                          
01a99d1c  adrp      x20, #0x3d14000                                
01a99d20  mov       x19, x1                                        
01a99d24  ldrb      w8, [x20, #0xce0]                              
01a99d28  tbnz      w8, #0, #0x1a99d4c                             
01a99d2c  adrp      x0, #0x3a7b000                                 
01a99d30  ldr       x0, [x0, #0xf88]                               
01a99d34  bl        #0x183db90                                     
01a99d38  adrp      x0, #0x3a7c000                                 
01a99d3c  ldr       x0, [x0, #0xc08]                               
01a99d40  bl        #0x183db90                                     
01a99d44  mov       w8, #1                                         
01a99d48  strb      w8, [x20, #0xce0]                              
01a99d4c  mov       x1, x19                                        
01a99d50  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a99d54  cbz       x0, #0x1a99e64                                 
01a99d58  ldr       x8, [x0, #0x18]                                
01a99d5c  mov       x19, x0                                        
01a99d60  cmp       w8, #1                                         
01a99d64  b.lt      #0x1a99e40                                     
01a99d68  adrp      x24, #0x3a7c000                                
01a99d6c  adrp      x25, #0x3a7b000                                
01a99d70  mov       w23, wzr                                       
01a99d74  ldr       x24, [x24, #0xc08]                             
01a99d78  ldr       x25, [x25, #0xf88]                             
01a99d7c  mov       w20, wzr                                       
01a99d80  mov       w26, #0x7f800000                               
01a99d84  mov       w27, #-0xffffffff80000000                      
01a99d88  cmp       w23, w8                                        
01a99d8c  b.hs      #0x1a99e68                                     
01a99d90  add       x28, x19, w23, sxtw #3                         
01a99d94  ldr       x9, [x28, #0x20]!                              
01a99d98  cbz       x9, #0x1a99e64                                 
01a99d9c  ldr       w10, [x9, #0x24]                               
01a99da0  cmp       w10, #3                                        
01a99da4  b.eq      #0x1a99db8                                     
01a99da8  cmp       w10, #1                                        
01a99dac  b.ne      #0x1a99e30                                     
01a99db0  ldr       s0, [x9, #0x20]                                
01a99db4  b         #0x1a99e1c                                     
01a99db8  ldr       w10, [x9, #0x10]                               
01a99dbc  cbnz      w10, #0x1a99e30                                
01a99dc0  ldr       x8, [x24]                                      
01a99dc4  ldr       x0, [x25]                                      
01a99dc8  ldr       x22, [x9, #0x18]                               
01a99dcc  ldr       x8, [x8, #0xb8]                                
01a99dd0  ldr       w10, [x0, #0xe4]                               
01a99dd4  ldr       x21, [x8]                                      
01a99dd8  cbnz      w10, #0x1a99de0                                
01a99ddc  bl        #0x183dcb0                                     
01a99de0  mov       x0, x22                                        
01a99de4  mov       x1, xzr                                        
01a99de8  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a99dec  cbz       x21, #0x1a99e64                                
01a99df0  mov       w1, w0                                         
01a99df4  mov       x0, x21                                        
01a99df8  mov       x2, xzr                                        
01a99dfc  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a99e00  ldr       x8, [x19, #0x18]                               
01a99e04  cmp       w23, w8                                        
01a99e08  b.hs      #0x1a99e68                                     
01a99e0c  ldr       x9, [x28]                                      
01a99e10  cbz       x9, #0x1a99e64                                 
01a99e14  ldr       s1, [x9, #0x20]                                
01a99e18  fmul      s0, s0, s1                                     
01a99e1c  fmov      s1, w26                                        
01a99e20  fcvtzs    w9, s0                                         
01a99e24  fcmp      s0, s1                                         
01a99e28  csel      w9, w27, w9, eq                                
01a99e2c  add       w20, w9, w20                                   
01a99e30  add       w23, w23, #1                                   
01a99e34  cmp       w23, w8                                        
01a99e38  b.lt      #0x1a99d88                                     
01a99e3c  b         #0x1a99e44                                     
01a99e40  mov       w20, wzr                                       
01a99e44  mov       w0, w20                                        
01a99e48  ldp       x20, x19, [sp, #0x50]                          
01a99e4c  ldp       x22, x21, [sp, #0x40]                          
01a99e50  ldp       x24, x23, [sp, #0x30]                          
01a99e54  ldp       x26, x25, [sp, #0x20]                          
01a99e58  ldp       x28, x27, [sp, #0x10]                          
01a99e5c  ldr       x30, [sp], #0x60                               
01a99e60  ret                                                      
01a99e64  bl        #0x183dddc                                     
01a99e68  bl        #0x183dde4                                     