System_String_o* EventCtrl__AddOrdinal (int32_t num, const MethodInfo* method);
// RVA 0x1a8b314 to 0x1a8b430
01a8b314  str       x30, [sp, #-0x20]!                             
01a8b318  stp       x20, x19, [sp, #0x10]                          
01a8b31c  adrp      x20, #0x3d14000                                
01a8b320  mov       w19, w0                                        
01a8b324  str       w0, [sp, #0xc]                                 
01a8b328  ldrb      w8, [x20, #0xcc3]                              
01a8b32c  tbnz      w8, #0, #0x1a8b368                             
01a8b330  adrp      x0, #0x3a8c000                                 
01a8b334  ldr       x0, [x0, #0x5e0]                               
01a8b338  bl        #0x183db90                                     
01a8b33c  adrp      x0, #0x3a8c000                                 
01a8b340  ldr       x0, [x0, #0x5e8]                               
01a8b344  bl        #0x183db90                                     
01a8b348  adrp      x0, #0x3a8c000                                 
01a8b34c  ldr       x0, [x0, #0x5f0]                               
01a8b350  bl        #0x183db90                                     
01a8b354  adrp      x0, #0x3a8c000                                 
01a8b358  ldr       x0, [x0, #0x5f8]                               
01a8b35c  bl        #0x183db90                                     
01a8b360  mov       w8, #1                                         
01a8b364  strb      w8, [x20, #0xcc3]                              
01a8b368  cmp       w19, #0                                        
01a8b36c  b.le      #0x1a8b3b8                                     
01a8b370  mov       w8, #0x851f                                    
01a8b374  mov       w9, #0x64                                      
01a8b378  movk      w8, #0x51eb, lsl #16                           
01a8b37c  umull     x8, w19, w8                                    
01a8b380  lsr       x8, x8, #0x25                                  
01a8b384  msub      w8, w8, w9, w19                                
01a8b388  sub       w8, w8, #0xb                                   
01a8b38c  cmp       w8, #2                                         
01a8b390  b.hi      #0x1a8b3d0                                     
01a8b394  add       x0, sp, #0xc                                   
01a8b398  mov       x1, xzr                                        
01a8b39c  bl        #0x2dcd834                                     // System.Int32$$ToString
01a8b3a0  adrp      x8, #0x3a8c000                                 
01a8b3a4  ldr       x8, [x8, #0x5e0]                               
01a8b3a8  ldr       x1, [x8]                                       
01a8b3ac  mov       x2, xzr                                        
01a8b3b0  bl        #0x2c63780                                     // System.String$$Concat
01a8b3b4  b         #0x1a8b3c4                                     
01a8b3b8  add       x0, sp, #0xc                                   
01a8b3bc  mov       x1, xzr                                        
01a8b3c0  bl        #0x2dcd834                                     // System.Int32$$ToString
01a8b3c4  ldp       x20, x19, [sp, #0x10]                          
01a8b3c8  ldr       x30, [sp], #0x20                               
01a8b3cc  ret                                                      
01a8b3d0  mov       w8, #0xcccd                                    
01a8b3d4  mov       w9, #0xa                                       
01a8b3d8  add       x0, sp, #0xc                                   
01a8b3dc  movk      w8, #0xcccc, lsl #16                           
01a8b3e0  mov       x1, xzr                                        
01a8b3e4  umull     x8, w19, w8                                    
01a8b3e8  lsr       x8, x8, #0x23                                  
01a8b3ec  msub      w19, w8, w9, w19                               
01a8b3f0  bl        #0x2dcd834                                     // System.Int32$$ToString
01a8b3f4  cmp       w19, #3                                        
01a8b3f8  b.eq      #0x1a8b424                                     
01a8b3fc  cmp       w19, #2                                        
01a8b400  b.eq      #0x1a8b418                                     
01a8b404  cmp       w19, #1                                        
01a8b408  b.ne      #0x1a8b3a0                                     
01a8b40c  adrp      x8, #0x3a8c000                                 
01a8b410  ldr       x8, [x8, #0x5f0]                               
01a8b414  b         #0x1a8b3a8                                     
01a8b418  adrp      x8, #0x3a8c000                                 
01a8b41c  ldr       x8, [x8, #0x5f8]                               
01a8b420  b         #0x1a8b3a8                                     
01a8b424  adrp      x8, #0x3a8c000                                 
01a8b428  ldr       x8, [x8, #0x5e8]                               
01a8b42c  b         #0x1a8b3a8                                     