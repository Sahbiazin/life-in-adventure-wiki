void EventCtrl___CheckAllEvent_b__150_7 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aaba84 to 0x1aabae0
01aaba84  stp       x30, x19, [sp, #-0x10]!                        
01aaba88  ldrb      w8, [x0, #0x1a8]                               
01aaba8c  cbz       w8, #0x1aabad4                                 
01aaba90  adrp      x19, #0x3d14000                                
01aaba94  ldrb      w8, [x19, #0x70e]                              
01aaba98  cbnz      w8, #0x1aabab0                                 
01aaba9c  adrp      x0, #0x3a7d000                                 
01aabaa0  ldr       x0, [x0, #0x438]                               
01aabaa4  bl        #0x183db90                                     
01aabaa8  mov       w8, #1                                         
01aabaac  strb      w8, [x19, #0x70e]                              
01aabab0  adrp      x8, #0x3a7d000                                 
01aabab4  ldr       x8, [x8, #0x438]                               
01aabab8  ldr       x8, [x8]                                       
01aababc  ldr       x8, [x8, #0xb8]                                
01aabac0  ldr       x0, [x8]                                       
01aabac4  cbz       x0, #0x1aabadc                                 
01aabac8  mov       x1, xzr                                        
01aabacc  ldp       x30, x19, [sp], #0x10                          
01aabad0  b         #0x19c68f8                                     // StatusCtrl$$ShowGuildJoin
01aabad4  ldp       x30, x19, [sp], #0x10                          
01aabad8  ret                                                      
01aabadc  bl        #0x183dddc                                     