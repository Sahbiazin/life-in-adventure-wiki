void EventCtrl__SkipReveal (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a90880 to 0x1a90e20
01a90880  sub       sp, sp, #0x80                                  
01a90884  stp       d9, d8, [sp, #0x10]                            
01a90888  stp       x29, x30, [sp, #0x20]                          
01a9088c  stp       x28, x27, [sp, #0x30]                          
01a90890  stp       x26, x25, [sp, #0x40]                          
01a90894  stp       x24, x23, [sp, #0x50]                          
01a90898  stp       x22, x21, [sp, #0x60]                          
01a9089c  stp       x20, x19, [sp, #0x70]                          
01a908a0  adrp      x20, #0x3d14000                                
01a908a4  mov       x19, x0                                        
01a908a8  ldrb      w8, [x20, #0xcd3]                              
01a908ac  tbnz      w8, #0, #0x1a9090c                             
01a908b0  adrp      x0, #0x3a7f000                                 
01a908b4  ldr       x0, [x0, #0x7b0]                               
01a908b8  bl        #0x183db90                                     
01a908bc  adrp      x0, #0x3a7c000                                 
01a908c0  ldr       x0, [x0, #0xf18]                               
01a908c4  bl        #0x183db90                                     
01a908c8  adrp      x0, #0x3a7c000                                 
01a908cc  ldr       x0, [x0, #0xfa0]                               
01a908d0  bl        #0x183db90                                     
01a908d4  adrp      x0, #0x3a7d000                                 
01a908d8  ldr       x0, [x0, #0xa00]                               
01a908dc  bl        #0x183db90                                     
01a908e0  adrp      x0, #0x3a7e000                                 
01a908e4  ldr       x0, [x0, #0xf20]                               
01a908e8  bl        #0x183db90                                     
01a908ec  adrp      x0, #0x3a7d000                                 
01a908f0  ldr       x0, [x0, #0x738]                               
01a908f4  bl        #0x183db90                                     
01a908f8  adrp      x0, #0x3a7b000                                 
01a908fc  ldr       x0, [x0, #0xc10]                               
01a90900  bl        #0x183db90                                     
01a90904  mov       w8, #1                                         
01a90908  strb      w8, [x20, #0xcd3]                              
01a9090c  ldr       x1, [x19, #0x188]                              
01a90910  cbz       x1, #0x1a90df8                                 
01a90914  mov       x0, x19                                        
01a90918  mov       x2, xzr                                        
01a9091c  bl        #0x35caa0c                                     // UnityEngine.MonoBehaviour$$StopCoroutine
01a90920  ldr       x0, [x19, #0x38]                               
01a90924  str       xzr, [x19, #0x188]                             
01a90928  cbz       x0, #0x1a90d90                                 
01a9092c  adrp      x25, #0x3a7d000                                
01a90930  adrp      x24, #0x3a7d000                                
01a90934  adrp      x23, #0x3a7b000                                
01a90938  ldr       x25, [x25, #0x738]                             
01a9093c  ldr       x24, [x24, #0xa00]                             
01a90940  ldr       x23, [x23, #0xc10]                             
01a90944  mov       w20, wzr                                       
01a90948  mov       w29, #0x50                                     
01a9094c  mov       w28, #0xff                                     
01a90950  str       x19, [sp, #8]                                  
01a90954  ldr       w8, [x0, #0x18]                                
01a90958  cmp       w20, w8                                        
01a9095c  b.ge      #0x1a90d94                                     
01a90960  ldr       x2, [x25]                                      
01a90964  cbz       w20, #0x1a90bf0                                
01a90968  mov       w1, w20                                        
01a9096c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a90970  cbz       x0, #0x1a90d90                                 
01a90974  ldr       x1, [x24]                                      
01a90978  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9097c  ldr       x8, [x23]                                      
01a90980  mov       x21, x0                                        
01a90984  ldr       w9, [x8, #0xe4]                                
01a90988  cbnz      w9, #0x1a90994                                 
01a9098c  mov       x0, x8                                         
01a90990  bl        #0x183dcb0                                     
01a90994  mov       x0, x21                                        
01a90998  mov       x1, xzr                                        
01a9099c  mov       x2, xzr                                        
01a909a0  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a909a4  mov       w8, w0                                         
01a909a8  ldr       x0, [x19, #0x38]                               
01a909ac  tbz       w8, #0, #0x1a90c20                             
01a909b0  cbz       x0, #0x1a90d90                                 
01a909b4  ldr       x2, [x25]                                      
01a909b8  mov       w1, w20                                        
01a909bc  mov       x19, x25                                       
01a909c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a909c4  cbz       x0, #0x1a90d90                                 
01a909c8  ldr       x1, [x24]                                      
01a909cc  mov       x26, x24                                       
01a909d0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a909d4  cbz       x0, #0x1a90d90                                 
01a909d8  ldr       x8, [x0]                                       
01a909dc  mov       x21, x0                                        
01a909e0  ldr       x9, [x8, #0x298]                               
01a909e4  ldr       x1, [x8, #0x2a0]                               
01a909e8  blr       x9                                             
01a909ec  ldr       x8, [x21]                                      
01a909f0  mov       x0, x21                                        
01a909f4  fmov      s8, s0                                         
01a909f8  ldr       x9, [x8, #0x298]                               
01a909fc  ldr       x1, [x8, #0x2a0]                               
01a90a00  blr       x9                                             
01a90a04  ldr       x8, [x21]                                      
01a90a08  mov       x0, x21                                        
01a90a0c  fmov      s9, s1                                         
01a90a10  ldr       x9, [x8, #0x298]                               
01a90a14  ldr       x1, [x8, #0x2a0]                               
01a90a18  blr       x9                                             
01a90a1c  ldr       x8, [x21]                                      
01a90a20  fmov      s0, s8                                         
01a90a24  fmov      s1, s9                                         
01a90a28  fmov      s3, #1.00000000                                
01a90a2c  mov       x0, x21                                        
01a90a30  ldr       x9, [x8, #0x2a8]                               
01a90a34  ldr       x1, [x8, #0x2b0]                               
01a90a38  blr       x9                                             
01a90a3c  mov       x0, x21                                        
01a90a40  mov       x1, xzr                                        
01a90a44  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90a48  cbz       x0, #0x1a90d90                                 
01a90a4c  mov       x22, xzr                                       
01a90a50  mov       w24, wzr                                       
01a90a54  ldr       w8, [x0, #0x18]                                
01a90a58  cmp       w24, w8                                        
01a90a5c  b.ge      #0x1a90d44                                     
01a90a60  mov       x0, x21                                        
01a90a64  mov       x1, xzr                                        
01a90a68  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90a6c  cbz       x0, #0x1a90d90                                 
01a90a70  ldr       x8, [x0, #0x38]                                
01a90a74  cbz       x8, #0x1a90d90                                 
01a90a78  ldr       w9, [x8, #0x18]                                
01a90a7c  cmp       w24, w9                                        
01a90a80  b.hs      #0x1a90e1c                                     
01a90a84  add       x8, x8, x22                                    
01a90a88  mov       x0, x21                                        
01a90a8c  mov       x1, xzr                                        
01a90a90  ldrsw     x27, [x8, #0x50]                               
01a90a94  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90a98  cbz       x0, #0x1a90d90                                 
01a90a9c  ldr       x8, [x0, #0x38]                                
01a90aa0  cbz       x8, #0x1a90d90                                 
01a90aa4  ldr       w9, [x8, #0x18]                                
01a90aa8  cmp       w24, w9                                        
01a90aac  b.hs      #0x1a90e1c                                     
01a90ab0  add       x8, x8, x22                                    
01a90ab4  mov       x0, x21                                        
01a90ab8  mov       x1, xzr                                        
01a90abc  ldrsw     x25, [x8, #0x64]                               
01a90ac0  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90ac4  cbz       x0, #0x1a90d90                                 
01a90ac8  ldr       x8, [x0, #0x60]                                
01a90acc  cbz       x8, #0x1a90d90                                 
01a90ad0  ldr       w9, [x8, #0x18]                                
01a90ad4  cmp       w27, w9                                        
01a90ad8  b.hs      #0x1a90e1c                                     
01a90adc  smaddl    x8, w27, w29, x8                               
01a90ae0  ldr       x8, [x8, #0x58]                                
01a90ae4  cbz       x8, #0x1a90d90                                 
01a90ae8  ldr       w9, [x8, #0x18]                                
01a90aec  cmp       w25, w9                                        
01a90af0  b.hs      #0x1a90e1c                                     
01a90af4  add       x8, x8, x25, lsl #2                            
01a90af8  mov       x0, x21                                        
01a90afc  mov       x1, xzr                                        
01a90b00  strb      w28, [x8, #0x23]                               
01a90b04  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90b08  cbz       x0, #0x1a90d90                                 
01a90b0c  ldr       x8, [x0, #0x60]                                
01a90b10  cbz       x8, #0x1a90d90                                 
01a90b14  ldr       w9, [x8, #0x18]                                
01a90b18  cmp       w27, w9                                        
01a90b1c  b.hs      #0x1a90e1c                                     
01a90b20  smaddl    x8, w27, w29, x8                               
01a90b24  ldr       x8, [x8, #0x58]                                
01a90b28  cbz       x8, #0x1a90d90                                 
01a90b2c  ldr       w10, [x8, #0x18]                               
01a90b30  add       w9, w25, #1                                    
01a90b34  cmp       w9, w10                                        
01a90b38  b.hs      #0x1a90e1c                                     
01a90b3c  add       x8, x8, w9, sxtw #2                            
01a90b40  mov       x0, x21                                        
01a90b44  mov       x1, xzr                                        
01a90b48  strb      w28, [x8, #0x23]                               
01a90b4c  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90b50  cbz       x0, #0x1a90d90                                 
01a90b54  ldr       x8, [x0, #0x60]                                
01a90b58  cbz       x8, #0x1a90d90                                 
01a90b5c  ldr       w9, [x8, #0x18]                                
01a90b60  cmp       w27, w9                                        
01a90b64  b.hs      #0x1a90e1c                                     
01a90b68  smaddl    x8, w27, w29, x8                               
01a90b6c  ldr       x8, [x8, #0x58]                                
01a90b70  cbz       x8, #0x1a90d90                                 
01a90b74  ldr       w10, [x8, #0x18]                               
01a90b78  add       w9, w25, #2                                    
01a90b7c  cmp       w9, w10                                        
01a90b80  b.hs      #0x1a90e1c                                     
01a90b84  add       x8, x8, w9, sxtw #2                            
01a90b88  mov       x0, x21                                        
01a90b8c  mov       x1, xzr                                        
01a90b90  strb      w28, [x8, #0x23]                               
01a90b94  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90b98  cbz       x0, #0x1a90d90                                 
01a90b9c  ldr       x8, [x0, #0x60]                                
01a90ba0  cbz       x8, #0x1a90d90                                 
01a90ba4  ldr       w9, [x8, #0x18]                                
01a90ba8  cmp       w27, w9                                        
01a90bac  b.hs      #0x1a90e1c                                     
01a90bb0  smaddl    x8, w27, w29, x8                               
01a90bb4  ldr       x8, [x8, #0x58]                                
01a90bb8  cbz       x8, #0x1a90d90                                 
01a90bbc  ldr       w10, [x8, #0x18]                               
01a90bc0  add       w9, w25, #3                                    
01a90bc4  cmp       w9, w10                                        
01a90bc8  b.hs      #0x1a90e1c                                     
01a90bcc  add       x8, x8, w9, sxtw #2                            
01a90bd0  mov       x0, x21                                        
01a90bd4  mov       x1, xzr                                        
01a90bd8  add       x22, x22, #0x178                               
01a90bdc  add       w24, w24, #1                                   
01a90be0  strb      w28, [x8, #0x23]                               
01a90be4  bl        #0x351f49c                                     // TMPro.TMP_Text$$get_textInfo
01a90be8  cbnz      x0, #0x1a90a54                                 
01a90bec  b         #0x1a90d90                                     
01a90bf0  mov       w1, wzr                                        
01a90bf4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a90bf8  cbz       x0, #0x1a90d90                                 
01a90bfc  adrp      x8, #0x3a7f000                                 
01a90c00  ldr       x8, [x8, #0x7b0]                               
01a90c04  ldr       x1, [x8]                                       
01a90c08  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90c0c  cbz       x0, #0x1a90d90                                 
01a90c10  fmov      s0, #1.00000000                                
01a90c14  mov       x1, xzr                                        
01a90c18  bl        #0x3843b74                                     // UnityEngine.CanvasGroup$$set_alpha
01a90c1c  b         #0x1a90d84                                     
01a90c20  cbz       x0, #0x1a90d90                                 
01a90c24  ldr       x2, [x25]                                      
01a90c28  mov       w1, w20                                        
01a90c2c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a90c30  cbz       x0, #0x1a90d90                                 
01a90c34  adrp      x8, #0x3a7c000                                 
01a90c38  ldr       x8, [x8, #0xf18]                               
01a90c3c  ldr       x1, [x8]                                       
01a90c40  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90c44  ldr       x8, [x23]                                      
01a90c48  mov       x21, x0                                        
01a90c4c  ldr       w9, [x8, #0xe4]                                
01a90c50  cbnz      w9, #0x1a90c5c                                 
01a90c54  mov       x0, x8                                         
01a90c58  bl        #0x183dcb0                                     
01a90c5c  mov       x0, x21                                        
01a90c60  mov       x1, xzr                                        
01a90c64  mov       x2, xzr                                        
01a90c68  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a90c6c  tbz       w0, #0, #0x1a90d84                             
01a90c70  ldr       x0, [x19, #0x38]                               
01a90c74  cbz       x0, #0x1a90d90                                 
01a90c78  ldr       x2, [x25]                                      
01a90c7c  mov       w1, w20                                        
01a90c80  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a90c84  cbz       x0, #0x1a90d90                                 
01a90c88  adrp      x8, #0x3a7c000                                 
01a90c8c  ldr       x8, [x8, #0xf18]                               
01a90c90  ldr       x1, [x8]                                       
01a90c94  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90c98  cbz       x0, #0x1a90d90                                 
01a90c9c  adrp      x8, #0x3a7c000                                 
01a90ca0  mov       x21, x0                                        
01a90ca4  ldr       x8, [x8, #0xfa0]                               
01a90ca8  ldr       x1, [x8]                                       
01a90cac  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90cb0  ldr       x8, [x23]                                      
01a90cb4  mov       x22, x0                                        
01a90cb8  ldr       w9, [x8, #0xe4]                                
01a90cbc  cbnz      w9, #0x1a90cc8                                 
01a90cc0  mov       x0, x8                                         
01a90cc4  bl        #0x183dcb0                                     
01a90cc8  mov       x0, x22                                        
01a90ccc  mov       x1, xzr                                        
01a90cd0  mov       x2, xzr                                        
01a90cd4  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a90cd8  tbz       w0, #0, #0x1a90d14                             
01a90cdc  mov       x0, x21                                        
01a90ce0  mov       x1, xzr                                        
01a90ce4  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a90ce8  cbz       x0, #0x1a90d90                                 
01a90cec  mov       w1, wzr                                        
01a90cf0  mov       x2, xzr                                        
01a90cf4  bl        #0x35d6218                                     // UnityEngine.Transform$$GetChild
01a90cf8  cbz       x0, #0x1a90d90                                 
01a90cfc  adrp      x8, #0x3a7c000                                 
01a90d00  ldr       x8, [x8, #0xf18]                               
01a90d04  ldr       x1, [x8]                                       
01a90d08  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90d0c  mov       x21, x0                                        
01a90d10  cbz       x0, #0x1a90d90                                 
01a90d14  ldr       x8, [x21]                                      
01a90d18  mov       x0, x21                                        
01a90d1c  ldr       x9, [x8, #0x298]                               
01a90d20  ldr       x1, [x8, #0x2a0]                               
01a90d24  blr       x9                                             
01a90d28  ldr       x8, [x21]                                      
01a90d2c  fmov      s3, #1.00000000                                
01a90d30  mov       x0, x21                                        
01a90d34  ldr       x9, [x8, #0x2a8]                               
01a90d38  ldr       x1, [x8, #0x2b0]                               
01a90d3c  blr       x9                                             
01a90d40  b         #0x1a90d84                                     
01a90d44  ldr       x8, [x21]                                      
01a90d48  mov       x0, x21                                        
01a90d4c  mov       w1, #0x10                                      
01a90d50  ldr       x9, [x8, #0x7f8]                               
01a90d54  ldr       x2, [x8, #0x800]                               
01a90d58  blr       x9                                             
01a90d5c  ldr       x8, [x21]                                      
01a90d60  mov       x0, x21                                        
01a90d64  mov       w1, wzr                                        
01a90d68  mov       w2, wzr                                        
01a90d6c  ldr       x9, [x8, #0x7d8]                               
01a90d70  ldr       x3, [x8, #0x7e0]                               
01a90d74  blr       x9                                             
01a90d78  mov       x25, x19                                       
01a90d7c  ldr       x19, [sp, #8]                                  
01a90d80  mov       x24, x26                                       
01a90d84  ldr       x0, [x19, #0x38]                               
01a90d88  add       w20, w20, #1                                   
01a90d8c  cbnz      x0, #0x1a90954                                 
01a90d90  bl        #0x183dddc                                     
01a90d94  mov       x0, x19                                        
01a90d98  bl        #0x1a90e20                                     // EventCtrl$$CheckScroll
01a90d9c  adrp      x8, #0xa13000                                  
01a90da0  mov       x0, x19                                        
01a90da4  ldr       s0, [x8, #0x168]                               
01a90da8  bl        #0x1a9070c                                     // EventCtrl$$ShowChoicePanel
01a90dac  mov       x1, x0                                         
01a90db0  mov       x0, x19                                        
01a90db4  mov       x2, xzr                                        
01a90db8  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a90dbc  ldrb      w8, [x19, #0x1e1]                              
01a90dc0  cbz       w8, #0x1a90df8                                 
01a90dc4  ldr       x0, [x19, #0x1b8]                              
01a90dc8  cbz       x0, #0x1a90d90                                 
01a90dcc  ldp       x20, x19, [sp, #0x70]                          
01a90dd0  mov       w1, #1                                         
01a90dd4  ldp       x22, x21, [sp, #0x60]                          
01a90dd8  mov       x2, xzr                                        
01a90ddc  ldp       x24, x23, [sp, #0x50]                          
01a90de0  ldp       x26, x25, [sp, #0x40]                          
01a90de4  ldp       x28, x27, [sp, #0x30]                          
01a90de8  ldp       x29, x30, [sp, #0x20]                          
01a90dec  ldp       d9, d8, [sp, #0x10]                            
01a90df0  add       sp, sp, #0x80                                  
01a90df4  b         #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a90df8  ldp       x20, x19, [sp, #0x70]                          
01a90dfc  ldp       x22, x21, [sp, #0x60]                          
01a90e00  ldp       x24, x23, [sp, #0x50]                          
01a90e04  ldp       x26, x25, [sp, #0x40]                          
01a90e08  ldp       x28, x27, [sp, #0x30]                          
01a90e0c  ldp       x29, x30, [sp, #0x20]                          
01a90e10  ldp       d9, d8, [sp, #0x10]                            
01a90e14  add       sp, sp, #0x80                                  
01a90e18  ret                                                      
01a90e1c  bl        #0x183dde4                                     