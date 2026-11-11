void EventCtrl__Continue (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8f30c to 0x1a8f39c
01a8f30c  stp       x30, x19, [sp, #-0x10]!                        
01a8f310  mov       w1, #1                                         
01a8f314  mov       w2, wzr                                        
01a8f318  mov       x19, x0                                        
01a8f31c  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a8f320  mov       x0, x19                                        
01a8f324  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01a8f328  mov       x0, xzr                                        
01a8f32c  bl        #0x19bb370                                     // SoundMgr$$get_ins
01a8f330  cbz       x0, #0x1a8f398                                 
01a8f334  mov       w1, #0x16                                      
01a8f338  mov       x2, xzr                                        
01a8f33c  bl        #0x19bb4fc                                     // SoundMgr$$PlayEffectSound
01a8f340  ldrb      w8, [x19, #0x116]                              
01a8f344  cbz       w8, #0x1a8f38c                                 
01a8f348  adrp      x19, #0x3d14000                                
01a8f34c  ldrb      w8, [x19, #0x780]                              
01a8f350  cbnz      w8, #0x1a8f368                                 
01a8f354  adrp      x0, #0x3a7d000                                 
01a8f358  ldr       x0, [x0, #0xbd8]                               
01a8f35c  bl        #0x183db90                                     
01a8f360  mov       w8, #1                                         
01a8f364  strb      w8, [x19, #0x780]                              
01a8f368  adrp      x8, #0x3a7d000                                 
01a8f36c  ldr       x8, [x8, #0xbd8]                               
01a8f370  ldr       x8, [x8]                                       
01a8f374  ldr       x8, [x8, #0xb8]                                
01a8f378  ldr       x0, [x8]                                       
01a8f37c  cbz       x0, #0x1a8f398                                 
01a8f380  mov       x1, xzr                                        
01a8f384  ldp       x30, x19, [sp], #0x10                          
01a8f388  b         #0x19879f0                                     // EventTest$$Show
01a8f38c  mov       x0, x19                                        
01a8f390  ldp       x30, x19, [sp], #0x10                          
01a8f394  b         #0x1a8f39c                                     // EventCtrl$$ShowRandomeEvent
01a8f398  bl        #0x183dddc                                     