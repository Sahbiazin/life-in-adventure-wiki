void EventCtrl__CheckTutorialInven (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aa5224 to 0x1aa5264
01aa5224  stp       x30, x19, [sp, #-0x10]!                        
01aa5228  mov       x19, x0                                        
01aa522c  ldr       x0, [x0, #0x1c0]                               
01aa5230  cbz       x0, #0x1aa5260                                 
01aa5234  mov       x1, xzr                                        
01aa5238  bl        #0x35c8eec                                     // UnityEngine.GameObject$$get_activeSelf
01aa523c  tbz       w0, #0, #0x1aa5258                             
01aa5240  ldr       x0, [x19, #0x1c0]                              
01aa5244  cbz       x0, #0x1aa5260                                 
01aa5248  mov       w1, wzr                                        
01aa524c  mov       x2, xzr                                        
01aa5250  ldp       x30, x19, [sp], #0x10                          
01aa5254  b         #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01aa5258  ldp       x30, x19, [sp], #0x10                          
01aa525c  ret                                                      
01aa5260  bl        #0x183dddc                                     