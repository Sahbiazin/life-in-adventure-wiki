void EventCtrl___CheckAllEvent_b__150_15 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aabb28 to 0x1aabb84
01aabb28  stp       x30, x19, [sp, #-0x10]!                        
01aabb2c  ldrb      w8, [x0, #0x1a8]                               
01aabb30  cbz       w8, #0x1aabb78                                 
01aabb34  adrp      x19, #0x3d14000                                
01aabb38  ldrb      w8, [x19, #0x70e]                              
01aabb3c  cbnz      w8, #0x1aabb54                                 
01aabb40  adrp      x0, #0x3a7d000                                 
01aabb44  ldr       x0, [x0, #0x438]                               
01aabb48  bl        #0x183db90                                     
01aabb4c  mov       w8, #1                                         
01aabb50  strb      w8, [x19, #0x70e]                              
01aabb54  adrp      x8, #0x3a7d000                                 
01aabb58  ldr       x8, [x8, #0x438]                               
01aabb5c  ldr       x8, [x8]                                       
01aabb60  ldr       x8, [x8, #0xb8]                                
01aabb64  ldr       x0, [x8]                                       
01aabb68  cbz       x0, #0x1aabb80                                 
01aabb6c  mov       x1, xzr                                        
01aabb70  ldp       x30, x19, [sp], #0x10                          
01aabb74  b         #0x19c68f8                                     // StatusCtrl$$ShowGuildJoin
01aabb78  ldp       x30, x19, [sp], #0x10                          
01aabb7c  ret                                                      
01aabb80  bl        #0x183dddc                                     