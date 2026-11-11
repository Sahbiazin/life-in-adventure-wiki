float EventCtrl__GetWinRateStrByPercent (EventCtrl_o* __this, int32_t place, const MethodInfo* method);
// RVA 0x1a9e368 to 0x1a9e3e8
01a9e368  stp       x30, x21, [sp, #-0x20]!                        
01a9e36c  stp       x20, x19, [sp, #0x10]                          
01a9e370  ldr       x8, [x0, #0x140]                               
01a9e374  cbz       x8, #0x1a9e3d0                                 
01a9e378  adrp      x21, #0x3d14000                                
01a9e37c  mov       x20, x0                                        
01a9e380  mov       w19, w1                                        
01a9e384  ldrb      w8, [x21, #0x67b]                              
01a9e388  cbnz      w8, #0x1a9e3a0                                 
01a9e38c  adrp      x0, #0x3a7c000                                 
01a9e390  ldr       x0, [x0, #0xea0]                               
01a9e394  bl        #0x183db90                                     
01a9e398  mov       w8, #1                                         
01a9e39c  strb      w8, [x21, #0x67b]                              
01a9e3a0  adrp      x8, #0x3a7c000                                 
01a9e3a4  ldr       x8, [x8, #0xea0]                               
01a9e3a8  ldr       x8, [x8]                                       
01a9e3ac  ldr       x8, [x8, #0xb8]                                
01a9e3b0  ldr       x0, [x8]                                       
01a9e3b4  cbz       x0, #0x1a9e3e4                                 
01a9e3b8  ldr       x1, [x20, #0x140]                              
01a9e3bc  mov       w2, w19                                        
01a9e3c0  mov       x3, xzr                                        
01a9e3c4  ldp       x20, x19, [sp, #0x10]                          
01a9e3c8  ldp       x30, x21, [sp], #0x20                          
01a9e3cc  b         #0x1962c2c                                     // BattleCtrl$$GetWinRateForEvent
01a9e3d0  ldp       x20, x19, [sp, #0x10]                          
01a9e3d4  mov       w8, #0x42480000                                
01a9e3d8  fmov      s0, w8                                         
01a9e3dc  ldp       x30, x21, [sp], #0x20                          
01a9e3e0  ret                                                      
01a9e3e4  bl        #0x183dddc                                     