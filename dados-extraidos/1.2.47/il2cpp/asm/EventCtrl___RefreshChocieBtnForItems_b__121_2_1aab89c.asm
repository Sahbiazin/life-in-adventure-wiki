void EventCtrl___RefreshChocieBtnForItems_b__121_2 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aab89c to 0x1aab8f8
01aab89c  stp       x30, x19, [sp, #-0x10]!                        
01aab8a0  ldrb      w8, [x0, #0x1a8]                               
01aab8a4  cbz       w8, #0x1aab8ec                                 
01aab8a8  adrp      x19, #0x3d14000                                
01aab8ac  ldrb      w8, [x19, #0x70e]                              
01aab8b0  cbnz      w8, #0x1aab8c8                                 
01aab8b4  adrp      x0, #0x3a7d000                                 
01aab8b8  ldr       x0, [x0, #0x438]                               
01aab8bc  bl        #0x183db90                                     
01aab8c0  mov       w8, #1                                         
01aab8c4  strb      w8, [x19, #0x70e]                              
01aab8c8  adrp      x8, #0x3a7d000                                 
01aab8cc  ldr       x8, [x8, #0x438]                               
01aab8d0  ldr       x8, [x8]                                       
01aab8d4  ldr       x8, [x8, #0xb8]                                
01aab8d8  ldr       x0, [x8]                                       
01aab8dc  cbz       x0, #0x1aab8f4                                 
01aab8e0  mov       x1, xzr                                        
01aab8e4  ldp       x30, x19, [sp], #0x10                          
01aab8e8  b         #0x19c68f8                                     // StatusCtrl$$ShowGuildJoin
01aab8ec  ldp       x30, x19, [sp], #0x10                          
01aab8f0  ret                                                      
01aab8f4  bl        #0x183dddc                                     