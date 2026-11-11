void EventCtrl__DoBattleSimulate (EventCtrl_o* __this, int32_t buttonNum, float winRate, const MethodInfo* method);
// RVA 0x1aa07fc to 0x1aa09a4
01aa07fc  str       d8, [sp, #-0x30]!                              
01aa0800  str       x30, [sp, #8]                                  
01aa0804  stp       x22, x21, [sp, #0x10]                          
01aa0808  stp       x20, x19, [sp, #0x20]                          
01aa080c  fmov      s8, s0                                         
01aa0810  adrp      x21, #0x3d14000                                
01aa0814  mov       w20, w1                                        
01aa0818  ldrb      w8, [x21, #0xcef]                              
01aa081c  mov       x19, x0                                        
01aa0820  tbnz      w8, #0, #0x1aa0850                             
01aa0824  adrp      x0, #0x3a8c000                                 
01aa0828  ldr       x0, [x0, #0x698]                               
01aa082c  bl        #0x183db90                                     
01aa0830  adrp      x0, #0x3a8c000                                 
01aa0834  ldr       x0, [x0, #0x6a0]                               
01aa0838  bl        #0x183db90                                     
01aa083c  adrp      x0, #0x3a8c000                                 
01aa0840  ldr       x0, [x0, #0x6a8]                               
01aa0844  bl        #0x183db90                                     
01aa0848  mov       w8, #1                                         
01aa084c  strb      w8, [x21, #0xcef]                              
01aa0850  adrp      x21, #0x3d14000                                
01aa0854  ldrb      w8, [x21, #0x67b]                              
01aa0858  cbnz      w8, #0x1aa0870                                 
01aa085c  adrp      x0, #0x3a7c000                                 
01aa0860  ldr       x0, [x0, #0xea0]                               
01aa0864  bl        #0x183db90                                     
01aa0868  mov       w8, #1                                         
01aa086c  strb      w8, [x21, #0x67b]                              
01aa0870  adrp      x22, #0x3a7c000                                
01aa0874  ldr       x22, [x22, #0xea0]                             
01aa0878  ldr       x8, [x22]                                      
01aa087c  ldr       x8, [x8, #0xb8]                                
01aa0880  ldr       x8, [x8]                                       
01aa0884  cbz       x8, #0x1aa099c                                 
01aa0888  ldrb      w8, [x8, #0x24a]                               
01aa088c  cbz       w8, #0x1aa08a4                                 
01aa0890  ldp       x20, x19, [sp, #0x20]                          
01aa0894  ldr       x30, [sp, #8]                                  
01aa0898  ldp       x22, x21, [sp, #0x10]                          
01aa089c  ldr       d8, [sp], #0x30                                
01aa08a0  ret                                                      
01aa08a4  mov       x0, x19                                        
01aa08a8  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01aa08ac  ldr       x0, [x19, #0x1c8]                              
01aa08b0  cbz       x0, #0x1aa099c                                 
01aa08b4  mov       x1, xzr                                        
01aa08b8  bl        #0x35c960c                                     // UnityEngine.GameObject$$get_gameObject
01aa08bc  cbz       x0, #0x1aa099c                                 
01aa08c0  mov       w1, wzr                                        
01aa08c4  mov       x2, xzr                                        
01aa08c8  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01aa08cc  ldr       x8, [x19, #0x118]                              
01aa08d0  cbz       x8, #0x1aa099c                                 
01aa08d4  ldrsw     x9, [x19, #0x13c]                              
01aa08d8  ldr       w10, [x8, #0x18]                               
01aa08dc  cmp       w9, w10                                        
01aa08e0  b.hs      #0x1aa09a0                                     
01aa08e4  add       x8, x8, x9, lsl #3                             
01aa08e8  ldr       x0, [x8, #0x20]                                
01aa08ec  cbz       x0, #0x1aa099c                                 
01aa08f0  adrp      x8, #0x3a8c000                                 
01aa08f4  ldr       x8, [x8, #0x6a8]                               
01aa08f8  ldr       w1, [x19, #0xe0]                               
01aa08fc  ldr       x2, [x8]                                       
01aa0900  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0904  cbz       x0, #0x1aa099c                                 
01aa0908  ldr       x0, [x0, #0x38]                                
01aa090c  cbz       x0, #0x1aa099c                                 
01aa0910  adrp      x8, #0x3a8c000                                 
01aa0914  mov       w1, w20                                        
01aa0918  ldr       x8, [x8, #0x698]                               
01aa091c  ldr       x2, [x8]                                       
01aa0920  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0924  cbz       x0, #0x1aa099c                                 
01aa0928  ldr       x0, [x0, #0x20]                                
01aa092c  cbz       x0, #0x1aa099c                                 
01aa0930  adrp      x8, #0x3a8c000                                 
01aa0934  ldr       x8, [x8, #0x6a0]                               
01aa0938  ldr       w1, [x19, #0xe4]                               
01aa093c  ldr       x2, [x8]                                       
01aa0940  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa0944  cbz       x0, #0x1aa099c                                 
01aa0948  ldr       w8, [x0, #0x18]                                
01aa094c  ldrb      w9, [x21, #0x67b]                              
01aa0950  str       w8, [x19, #0xe0]                               
01aa0954  cbnz      w9, #0x1aa096c                                 
01aa0958  adrp      x0, #0x3a7c000                                 
01aa095c  ldr       x0, [x0, #0xea0]                               
01aa0960  bl        #0x183db90                                     
01aa0964  mov       w8, #1                                         
01aa0968  strb      w8, [x21, #0x67b]                              
01aa096c  ldr       x8, [x22]                                      
01aa0970  ldr       x8, [x8, #0xb8]                                
01aa0974  ldr       x0, [x8]                                       
01aa0978  cbz       x0, #0x1aa099c                                 
01aa097c  ldr       x1, [x19, #0x140]                              
01aa0980  ldp       x20, x19, [sp, #0x20]                          
01aa0984  ldp       x22, x21, [sp, #0x10]                          
01aa0988  fmov      s0, s8                                         
01aa098c  ldr       x30, [sp, #8]                                  
01aa0990  mov       x2, xzr                                        
01aa0994  ldr       d8, [sp], #0x30                                
01aa0998  b         #0x1968254                                     // BattleCtrl$$ShowSimulate
01aa099c  bl        #0x183dddc                                     
01aa09a0  bl        #0x183dde4                                     