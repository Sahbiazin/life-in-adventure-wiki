void EventCtrl__ResetEvent (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8c080 to 0x1a8c260
01a8c080  stp       x30, x23, [sp, #-0x30]!                        
01a8c084  stp       x22, x21, [sp, #0x10]                          
01a8c088  stp       x20, x19, [sp, #0x20]                          
01a8c08c  adrp      x20, #0x3d14000                                
01a8c090  mov       x19, x0                                        
01a8c094  ldrb      w8, [x20, #0xcc6]                              
01a8c098  tbnz      w8, #0, #0x1a8c0e0                             
01a8c09c  adrp      x0, #0x3a81000                                 
01a8c0a0  ldr       x0, [x0, #0xbf0]                               
01a8c0a4  bl        #0x183db90                                     
01a8c0a8  adrp      x0, #0x3a7c000                                 
01a8c0ac  ldr       x0, [x0, #0xff0]                               
01a8c0b0  bl        #0x183db90                                     
01a8c0b4  adrp      x0, #0x3a7e000                                 
01a8c0b8  ldr       x0, [x0, #0xf20]                               
01a8c0bc  bl        #0x183db90                                     
01a8c0c0  adrp      x0, #0x3a7d000                                 
01a8c0c4  ldr       x0, [x0, #0x738]                               
01a8c0c8  bl        #0x183db90                                     
01a8c0cc  adrp      x0, #0x3a7b000                                 
01a8c0d0  ldr       x0, [x0, #0xc10]                               
01a8c0d4  bl        #0x183db90                                     
01a8c0d8  mov       w8, #1                                         
01a8c0dc  strb      w8, [x20, #0xcc6]                              
01a8c0e0  ldr       x0, [x19, #0x38]                               
01a8c0e4  cbz       x0, #0x1a8c150                                 
01a8c0e8  adrp      x22, #0x3a7d000                                
01a8c0ec  adrp      x23, #0x3a7b000                                
01a8c0f0  mov       w20, wzr                                       
01a8c0f4  ldr       x22, [x22, #0x738]                             
01a8c0f8  ldr       x23, [x23, #0xc10]                             
01a8c0fc  ldr       w2, [x0, #0x18]                                
01a8c100  cmp       w20, w2                                        
01a8c104  b.ge      #0x1a8c154                                     
01a8c108  ldr       x2, [x22]                                      
01a8c10c  mov       w1, w20                                        
01a8c110  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8c114  cbz       x0, #0x1a8c150                                 
01a8c118  mov       x1, xzr                                        
01a8c11c  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8c120  ldr       x8, [x23]                                      
01a8c124  mov       x21, x0                                        
01a8c128  ldr       w9, [x8, #0xe4]                                
01a8c12c  cbnz      w9, #0x1a8c138                                 
01a8c130  mov       x0, x8                                         
01a8c134  bl        #0x183dcb0                                     
01a8c138  mov       x0, x21                                        
01a8c13c  mov       x1, xzr                                        
01a8c140  bl        #0x35ce474                                     // UnityEngine.Object$$Destroy
01a8c144  ldr       x0, [x19, #0x38]                               
01a8c148  add       w20, w20, #1                                   
01a8c14c  cbnz      x0, #0x1a8c0fc                                 
01a8c150  bl        #0x183dddc                                     
01a8c154  ldr       x8, [x19, #0x120]                              
01a8c158  cbz       x8, #0x1a8c150                                 
01a8c15c  ldr       w9, [x8, #0x18]                                
01a8c160  cmp       w9, #1                                         
01a8c164  b.lt      #0x1a8c19c                                     
01a8c168  bic       w10, w9, w9, asr #31                           
01a8c16c  mov       w11, wzr                                       
01a8c170  cmp       w9, w11                                        
01a8c174  b.eq      #0x1a8c25c                                     
01a8c178  add       x12, x8, w11, sxtw #3                          
01a8c17c  ldr       x12, [x12, #0x20]                              
01a8c180  cbz       x12, #0x1a8c150                                
01a8c184  ldr       w13, [x12, #0x1c]                              
01a8c188  add       w11, w11, #1                                   
01a8c18c  cmp       w10, w11                                       
01a8c190  add       w13, w13, #1                                   
01a8c194  stp       wzr, w13, [x12, #0x18]                         
01a8c198  b.ne      #0x1a8c170                                     
01a8c19c  ldr       w8, [x0, #0x1c]                                
01a8c1a0  cmp       w2, #1                                         
01a8c1a4  add       w8, w8, #1                                     
01a8c1a8  stp       wzr, w8, [x0, #0x18]                           
01a8c1ac  b.lt      #0x1a8c1c0                                     
01a8c1b0  ldr       x0, [x0, #0x10]                                
01a8c1b4  mov       w1, wzr                                        
01a8c1b8  mov       x3, xzr                                        
01a8c1bc  bl        #0x2df1fa4                                     // System.Array$$Clear
01a8c1c0  mov       x0, x19                                        
01a8c1c4  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a8c1c8  ldr       x0, [x19, #0x1d0]                              
01a8c1cc  mov       w8, #1                                         
01a8c1d0  strb      w8, [x19, #0x115]                              
01a8c1d4  cbz       x0, #0x1a8c150                                 
01a8c1d8  mov       x1, xzr                                        
01a8c1dc  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8c1e0  cbz       x0, #0x1a8c150                                 
01a8c1e4  mov       w1, wzr                                        
01a8c1e8  mov       x2, xzr                                        
01a8c1ec  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a8c1f0  adrp      x19, #0x3d14000                                
01a8c1f4  ldrb      w8, [x19, #0x677]                              
01a8c1f8  cbnz      w8, #0x1a8c210                                 
01a8c1fc  adrp      x0, #0x3a7c000                                 
01a8c200  ldr       x0, [x0, #0xc98]                               
01a8c204  bl        #0x183db90                                     
01a8c208  mov       w8, #1                                         
01a8c20c  strb      w8, [x19, #0x677]                              
01a8c210  adrp      x8, #0x3a7c000                                 
01a8c214  ldr       x8, [x8, #0xc98]                               
01a8c218  ldr       x8, [x8]                                       
01a8c21c  ldr       x8, [x8, #0xb8]                                
01a8c220  ldr       x8, [x8]                                       
01a8c224  cbz       x8, #0x1a8c150                                 
01a8c228  ldr       x0, [x8, #0x98]                                
01a8c22c  cbz       x0, #0x1a8c150                                 
01a8c230  mov       x1, xzr                                        
01a8c234  bl        #0x199535c                                     // ItemOverSlotPopup$$HideAll
01a8c238  mov       x0, xzr                                        
01a8c23c  bl        #0x19bb370                                     // SoundMgr$$get_ins
01a8c240  cbz       x0, #0x1a8c150                                 
01a8c244  ldp       x20, x19, [sp, #0x20]                          
01a8c248  mov       w1, wzr                                        
01a8c24c  ldp       x22, x21, [sp, #0x10]                          
01a8c250  mov       x2, xzr                                        
01a8c254  ldp       x30, x23, [sp], #0x30                          
01a8c258  b         #0x19c2d04                                     // SoundMgr$$ChangeBGM
01a8c25c  bl        #0x183dde4                                     