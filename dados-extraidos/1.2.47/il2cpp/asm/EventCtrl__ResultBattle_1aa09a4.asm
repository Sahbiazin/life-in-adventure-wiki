void EventCtrl__ResultBattle (EventCtrl_o* __this, bool isVictory, bool isLevelUp, System_String_o* battleReward, const MethodInfo* method);
// RVA 0x1aa09a4 to 0x1aa0cb4
01aa09a4  str       x30, [sp, #-0x40]!                             
01aa09a8  stp       x24, x23, [sp, #0x10]                          
01aa09ac  stp       x22, x21, [sp, #0x20]                          
01aa09b0  stp       x20, x19, [sp, #0x30]                          
01aa09b4  adrp      x23, #0x3d14000                                
01aa09b8  mov       x21, x3                                        
01aa09bc  mov       w20, w2                                        
01aa09c0  ldrb      w8, [x23, #0xcf0]                              
01aa09c4  mov       w22, w1                                        
01aa09c8  mov       x19, x0                                        
01aa09cc  tbnz      w8, #0, #0x1aa0a20                             
01aa09d0  adrp      x0, #0x3a7c000                                 
01aa09d4  ldr       x0, [x0, #0xfa0]                               
01aa09d8  bl        #0x183db90                                     
01aa09dc  adrp      x0, #0x3a7c000                                 
01aa09e0  ldr       x0, [x0, #0xc08]                               
01aa09e4  bl        #0x183db90                                     
01aa09e8  adrp      x0, #0x3a7c000                                 
01aa09ec  ldr       x0, [x0, #0xde8]                               
01aa09f0  bl        #0x183db90                                     
01aa09f4  adrp      x0, #0x3a8c000                                 
01aa09f8  ldr       x0, [x0, #0xaf0]                               
01aa09fc  bl        #0x183db90                                     
01aa0a00  adrp      x0, #0x3a8c000                                 
01aa0a04  ldr       x0, [x0, #0xaf8]                               
01aa0a08  bl        #0x183db90                                     
01aa0a0c  adrp      x0, #0x3a8c000                                 
01aa0a10  ldr       x0, [x0, #0xb00]                               
01aa0a14  bl        #0x183db90                                     
01aa0a18  mov       w8, #1                                         
01aa0a1c  strb      w8, [x23, #0xcf0]                              
01aa0a20  ldr       x0, [x19, #0x1c8]                              
01aa0a24  cbz       x0, #0x1aa0cac                                 
01aa0a28  mov       x1, xzr                                        
01aa0a2c  bl        #0x35c960c                                     // UnityEngine.GameObject$$get_gameObject
01aa0a30  cbz       x0, #0x1aa0cac                                 
01aa0a34  mov       w1, #1                                         
01aa0a38  mov       x2, xzr                                        
01aa0a3c  mov       w23, #1                                        
01aa0a40  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01aa0a44  adrp      x24, #0x3d14000                                
01aa0a48  ldrb      w8, [x24, #0x70e]                              
01aa0a4c  cbnz      w8, #0x1aa0a60                                 
01aa0a50  adrp      x0, #0x3a7d000                                 
01aa0a54  ldr       x0, [x0, #0x438]                               
01aa0a58  bl        #0x183db90                                     
01aa0a5c  strb      w23, [x24, #0x70e]                             
01aa0a60  adrp      x8, #0x3a7d000                                 
01aa0a64  ldr       x8, [x8, #0x438]                               
01aa0a68  ldr       x8, [x8]                                       
01aa0a6c  ldr       x8, [x8, #0xb8]                                
01aa0a70  ldr       x0, [x8]                                       
01aa0a74  cbz       x0, #0x1aa0cac                                 
01aa0a78  adrp      x23, #0x3a7c000                                
01aa0a7c  mov       x1, xzr                                        
01aa0a80  ldr       x23, [x23, #0xc08]                             
01aa0a84  bl        #0x19c55c8                                     // StatusCtrl$$Show
01aa0a88  mov       x0, x19                                        
01aa0a8c  bl        #0x1a8c38c                                     // EventCtrl$$Show
01aa0a90  ldr       x8, [x23]                                      
01aa0a94  ldr       x8, [x8, #0xb8]                                
01aa0a98  ldr       x0, [x8]                                       
01aa0a9c  tbz       w22, #0, #0x1aa0b48                            
01aa0aa0  cbz       x0, #0x1aa0cac                                 
01aa0aa4  mov       w1, #2                                         
01aa0aa8  mov       w2, #1                                         
01aa0aac  mov       x3, xzr                                        
01aa0ab0  mov       w22, #1                                        
01aa0ab4  bl        #0x1af3728                                     // DataMgr$$AddAndReportAchievement
01aa0ab8  adrp      x24, #0x3d14000                                
01aa0abc  ldrb      w8, [x24, #0x678]                              
01aa0ac0  cbnz      w8, #0x1aa0ad4                                 
01aa0ac4  adrp      x0, #0x3a7c000                                 
01aa0ac8  ldr       x0, [x0, #0xd38]                               
01aa0acc  bl        #0x183db90                                     
01aa0ad0  strb      w22, [x24, #0x678]                             
01aa0ad4  adrp      x8, #0x3a7c000                                 
01aa0ad8  ldr       x8, [x8, #0xd38]                               
01aa0adc  ldr       x8, [x8]                                       
01aa0ae0  ldr       x8, [x8, #0xb8]                                
01aa0ae4  ldr       x0, [x8]                                       
01aa0ae8  cbz       x0, #0x1aa0cac                                 
01aa0aec  ldr       x2, [x0, #0x48]                                
01aa0af0  mov       w1, #0x4a                                      
01aa0af4  mov       x3, xzr                                        
01aa0af8  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01aa0afc  cmp       w0, #1                                         
01aa0b00  b.lt      #0x1aa0bcc                                     
01aa0b04  mov       x0, xzr                                        
01aa0b08  bl        #0x35c1ecc                                     // UnityEngine.Random$$get_value
01aa0b0c  adrp      x8, #0xa13000                                  
01aa0b10  ldr       s1, [x8, #0x168]                               
01aa0b14  fcmp      s0, s1                                         
01aa0b18  b.pl      #0x1aa0bcc                                     
01aa0b1c  mov       x0, xzr                                        
01aa0b20  bl        #0x35c1ecc                                     // UnityEngine.Random$$get_value
01aa0b24  fmov      s1, #0.50000000                                
01aa0b28  ldr       x8, [x23]                                      
01aa0b2c  ldr       x8, [x8, #0xb8]                                
01aa0b30  fcmp      s0, s1                                         
01aa0b34  ldr       x0, [x8]                                       
01aa0b38  b.pl      #0x1aa0bb4                                     
01aa0b3c  cbz       x0, #0x1aa0cac                                 
01aa0b40  mov       w1, wzr                                        
01aa0b44  b         #0x1aa0bbc                                     
01aa0b48  cbz       x0, #0x1aa0cac                                 
01aa0b4c  mov       w1, #3                                         
01aa0b50  mov       w2, #1                                         
01aa0b54  mov       x3, xzr                                        
01aa0b58  bl        #0x1af3728                                     // DataMgr$$AddAndReportAchievement
01aa0b5c  adrp      x22, #0x3a7c000                                
01aa0b60  ldr       x22, [x22, #0xde8]                             
01aa0b64  ldr       x0, [x22]                                      
01aa0b68  ldr       w8, [x0, #0xe4]                                
01aa0b6c  cbnz      w8, #0x1aa0b78                                 
01aa0b70  bl        #0x183dcb0                                     
01aa0b74  ldr       x0, [x22]                                      
01aa0b78  ldr       x8, [x23]                                      
01aa0b7c  ldr       x8, [x8, #0xb8]                                
01aa0b80  ldr       x9, [x8]                                       
01aa0b84  cbz       x9, #0x1aa0cac                                 
01aa0b88  ldr       x8, [x0, #0xb8]                                
01aa0b8c  ldr       x8, [x8, #0x1a0]                               
01aa0b90  cbz       x8, #0x1aa0cac                                 
01aa0b94  ldr       w9, [x9, #0x5cc]                               
01aa0b98  ldr       w10, [x8, #0x18]                               
01aa0b9c  cmp       w9, w10                                        
01aa0ba0  b.hs      #0x1aa0cb0                                     
01aa0ba4  adrp      x10, #0x3a8c000                                
01aa0ba8  mov       w22, #1                                        
01aa0bac  ldr       x10, [x10, #0xb00]                             
01aa0bb0  b         #0x1aa0c20                                     
01aa0bb4  cbz       x0, #0x1aa0cac                                 
01aa0bb8  mov       w1, #1                                         
01aa0bbc  fmov      s0, #1.00000000                                
01aa0bc0  mov       w2, wzr                                        
01aa0bc4  mov       x3, xzr                                        
01aa0bc8  bl        #0x1af7a54                                     // DataMgr$$ChangeUserData
01aa0bcc  adrp      x22, #0x3a7c000                                
01aa0bd0  ldr       x22, [x22, #0xde8]                             
01aa0bd4  ldr       x0, [x22]                                      
01aa0bd8  ldr       w8, [x0, #0xe4]                                
01aa0bdc  cbnz      w8, #0x1aa0be8                                 
01aa0be0  bl        #0x183dcb0                                     
01aa0be4  ldr       x0, [x22]                                      
01aa0be8  ldr       x8, [x23]                                      
01aa0bec  ldr       x8, [x8, #0xb8]                                
01aa0bf0  ldr       x9, [x8]                                       
01aa0bf4  cbz       x9, #0x1aa0cac                                 
01aa0bf8  ldr       x8, [x0, #0xb8]                                
01aa0bfc  ldr       x8, [x8, #0x198]                               
01aa0c00  cbz       x8, #0x1aa0cac                                 
01aa0c04  ldr       w9, [x9, #0x5cc]                               
01aa0c08  ldr       w10, [x8, #0x18]                               
01aa0c0c  cmp       w9, w10                                        
01aa0c10  b.hs      #0x1aa0cb0                                     
01aa0c14  adrp      x10, #0x3a8c000                                
01aa0c18  mov       w22, wzr                                       
01aa0c1c  ldr       x10, [x10, #0xaf0]                             
01aa0c20  adrp      x11, #0x3a8c000                                
01aa0c24  add       x8, x8, w9, sxtw #3                            
01aa0c28  mov       x3, x21                                        
01aa0c2c  ldr       x11, [x11, #0xaf8]                             
01aa0c30  ldr       x0, [x10]                                      
01aa0c34  mov       x4, xzr                                        
01aa0c38  ldr       x1, [x8, #0x20]                                
01aa0c3c  ldr       x2, [x11]                                      
01aa0c40  bl        #0x2c6e254                                     // System.String$$Concat
01aa0c44  mov       x3, x0                                         
01aa0c48  and       w2, w20, #1                                    
01aa0c4c  mov       x0, x19                                        
01aa0c50  mov       w1, w22                                        
01aa0c54  bl        #0x1a8d2f0                                     // EventCtrl$$ClickEventButton
01aa0c58  mov       x0, x19                                        
01aa0c5c  mov       x1, xzr                                        
01aa0c60  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01aa0c64  cbz       x0, #0x1aa0cac                                 
01aa0c68  mov       x1, xzr                                        
01aa0c6c  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01aa0c70  cbz       x0, #0x1aa0cac                                 
01aa0c74  adrp      x8, #0x3a7c000                                 
01aa0c78  ldr       x8, [x8, #0xfa0]                               
01aa0c7c  ldr       x1, [x8]                                       
01aa0c80  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa0c84  cbz       x0, #0x1aa0cac                                 
01aa0c88  mov       w1, wzr                                        
01aa0c8c  mov       x2, xzr                                        
01aa0c90  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01aa0c94  mov       x0, x19                                        
01aa0c98  ldp       x20, x19, [sp, #0x30]                          
01aa0c9c  ldp       x22, x21, [sp, #0x20]                          
01aa0ca0  ldp       x24, x23, [sp, #0x10]                          
01aa0ca4  ldr       x30, [sp], #0x40                               
01aa0ca8  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa0cac  bl        #0x183dddc                                     
01aa0cb0  bl        #0x183dde4                                     