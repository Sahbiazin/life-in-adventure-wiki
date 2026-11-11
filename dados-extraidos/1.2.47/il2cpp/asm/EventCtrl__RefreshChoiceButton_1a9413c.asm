void EventCtrl__RefreshChoiceButton (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a9413c to 0x1a944dc
01a9413c  sub       sp, sp, #0x80                                  
01a94140  stp       x29, x30, [sp, #0x20]                          
01a94144  stp       x28, x27, [sp, #0x30]                          
01a94148  stp       x26, x25, [sp, #0x40]                          
01a9414c  stp       x24, x23, [sp, #0x50]                          
01a94150  stp       x22, x21, [sp, #0x60]                          
01a94154  stp       x20, x19, [sp, #0x70]                          
01a94158  adrp      x20, #0x3d14000                                
01a9415c  mov       x19, x0                                        
01a94160  ldrb      w8, [x20, #0xcd7]                              
01a94164  tbnz      w8, #0, #0x1a941e8                             
01a94168  adrp      x0, #0x3a7c000                                 
01a9416c  ldr       x0, [x0, #0xc80]                               
01a94170  bl        #0x183db90                                     
01a94174  adrp      x0, #0x3a7c000                                 
01a94178  ldr       x0, [x0, #0xc08]                               
01a9417c  bl        #0x183db90                                     
01a94180  adrp      x0, #0x3a8c000                                 
01a94184  ldr       x0, [x0, #0x608]                               
01a94188  bl        #0x183db90                                     
01a9418c  adrp      x0, #0x3a8c000                                 
01a94190  ldr       x0, [x0, #0x698]                               
01a94194  bl        #0x183db90                                     
01a94198  adrp      x0, #0x3a8c000                                 
01a9419c  ldr       x0, [x0, #0x610]                               
01a941a0  bl        #0x183db90                                     
01a941a4  adrp      x0, #0x3a8c000                                 
01a941a8  ldr       x0, [x0, #0x6a8]                               
01a941ac  bl        #0x183db90                                     
01a941b0  adrp      x0, #0x3a7c000                                 
01a941b4  ldr       x0, [x0, #0x280]                               
01a941b8  bl        #0x183db90                                     
01a941bc  adrp      x0, #0x3a7c000                                 
01a941c0  ldr       x0, [x0, #0xde8]                               
01a941c4  bl        #0x183db90                                     
01a941c8  adrp      x0, #0x3a8c000                                 
01a941cc  ldr       x0, [x0, #0x628]                               
01a941d0  bl        #0x183db90                                     
01a941d4  adrp      x0, #0x3a7d000                                 
01a941d8  ldr       x0, [x0, #0x368]                               
01a941dc  bl        #0x183db90                                     
01a941e0  mov       w8, #1                                         
01a941e4  strb      w8, [x20, #0xcd7]                              
01a941e8  ldr       x0, [x19, #0xb8]                               
01a941ec  cbz       x0, #0x1a944b4                                 
01a941f0  adrp      x25, #0x3a8c000                                
01a941f4  adrp      x26, #0x3a8c000                                
01a941f8  adrp      x29, #0x3a7c000                                
01a941fc  adrp      x27, #0x3a7c000                                
01a94200  adrp      x28, #0x3a7b000                                
01a94204  ldr       x25, [x25, #0x610]                             
01a94208  ldr       x26, [x26, #0x628]                             
01a9420c  ldr       x29, [x29, #0xc08]                             
01a94210  ldr       x27, [x27, #0xde8]                             
01a94214  ldr       x28, [x28, #0x768]                             
01a94218  mov       w20, wzr                                       
01a9421c  ldr       w8, [x0, #0x18]                                
01a94220  cmp       w20, w8                                        
01a94224  b.ge      #0x1a944b8                                     
01a94228  ldr       x2, [x25]                                      
01a9422c  mov       w1, w20                                        
01a94230  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94234  cbz       x0, #0x1a944b4                                 
01a94238  mov       x1, xzr                                        
01a9423c  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a94240  cbz       x0, #0x1a944b4                                 
01a94244  mov       x1, xzr                                        
01a94248  bl        #0x35c8eec                                     // UnityEngine.GameObject$$get_activeSelf
01a9424c  tbz       w0, #0, #0x1a944a8                             
01a94250  ldr       x0, [x19, #0xb8]                               
01a94254  cbz       x0, #0x1a944b4                                 
01a94258  ldr       x2, [x25]                                      
01a9425c  mov       w1, w20                                        
01a94260  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94264  cbz       x0, #0x1a944b4                                 
01a94268  mov       x1, xzr                                        
01a9426c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a94270  cbz       x0, #0x1a944b4                                 
01a94274  ldr       x1, [x26]                                      
01a94278  mov       x2, xzr                                        
01a9427c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a94280  cbz       x0, #0x1a944b4                                 
01a94284  mov       x1, xzr                                        
01a94288  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a9428c  cbz       x0, #0x1a944b4                                 
01a94290  mov       x1, xzr                                        
01a94294  bl        #0x35c8eec                                     // UnityEngine.GameObject$$get_activeSelf
01a94298  tbz       w0, #0, #0x1a944a8                             
01a9429c  ldr       x8, [x19, #0x118]                              
01a942a0  cbz       x8, #0x1a944b4                                 
01a942a4  ldrsw     x9, [x19, #0x13c]                              
01a942a8  ldr       w10, [x8, #0x18]                               
01a942ac  cmp       w9, w10                                        
01a942b0  b.hs      #0x1a944d8                                     
01a942b4  add       x8, x8, x9, lsl #3                             
01a942b8  ldr       x0, [x8, #0x20]                                
01a942bc  cbz       x0, #0x1a944b4                                 
01a942c0  adrp      x8, #0x3a8c000                                 
01a942c4  ldr       w1, [x19, #0xe0]                               
01a942c8  ldr       x8, [x8, #0x6a8]                               
01a942cc  ldr       x2, [x8]                                       
01a942d0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a942d4  cbz       x0, #0x1a944b4                                 
01a942d8  ldr       x0, [x0, #0x38]                                
01a942dc  cbz       x0, #0x1a944b4                                 
01a942e0  adrp      x8, #0x3a8c000                                 
01a942e4  mov       w1, w20                                        
01a942e8  ldr       x8, [x8, #0x698]                               
01a942ec  ldr       x2, [x8]                                       
01a942f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a942f4  cbz       x0, #0x1a944b4                                 
01a942f8  ldr       x1, [x0, #0x10]                                
01a942fc  bl        #0x1a944dc                                     // EventCtrl$$CheckJewel
01a94300  cbz       w0, #0x1a9430c                                 
01a94304  mov       w22, w0                                        
01a94308  b         #0x1a9437c                                     
01a9430c  ldr       x8, [x29]                                      
01a94310  ldr       x8, [x8, #0xb8]                                
01a94314  ldr       x8, [x8]                                       
01a94318  cbz       x8, #0x1a944b4                                 
01a9431c  ldr       w9, [x8, #0x2c0]                               
01a94320  ldr       x0, [x8, #0x2b8]                               
01a94324  and       x8, x21, #0xffffffff00000000                   
01a94328  mov       x2, xzr                                        
01a9432c  orr       x21, x8, x9                                    
01a94330  mov       x1, x21                                        
01a94334  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a94338  ldr       x8, [x29]                                      
01a9433c  ldr       x8, [x8, #0xb8]                                
01a94340  ldr       x8, [x8]                                       
01a94344  tbz       w0, #0, #0x1a94364                             
01a94348  cbz       x8, #0x1a944b4                                 
01a9434c  ldr       w8, [x8, #0x10c]                               
01a94350  cbz       w8, #0x1a94378                                 
01a94354  ldr       w9, [x19, #0x110]                              
01a94358  add       w8, w8, w9                                     
01a9435c  sub       w22, w8, #1                                    
01a94360  b         #0x1a9437c                                     
01a94364  cbz       x8, #0x1a944b4                                 
01a94368  ldr       w9, [x19, #0x110]                              
01a9436c  ldr       w8, [x8, #0x10c]                               
01a94370  add       w22, w8, w9                                    
01a94374  b         #0x1a9437c                                     
01a94378  mov       w22, wzr                                       
01a9437c  ldr       x0, [x19, #0xb8]                               
01a94380  cbz       x0, #0x1a944b4                                 
01a94384  ldr       x2, [x25]                                      
01a94388  mov       w1, w20                                        
01a9438c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94390  cbz       x0, #0x1a944b4                                 
01a94394  mov       x1, xzr                                        
01a94398  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a9439c  cbz       x0, #0x1a944b4                                 
01a943a0  ldr       x1, [x26]                                      
01a943a4  mov       x2, xzr                                        
01a943a8  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a943ac  cbz       x0, #0x1a944b4                                 
01a943b0  adrp      x8, #0x3a7d000                                 
01a943b4  mov       x2, xzr                                        
01a943b8  ldr       x8, [x8, #0x368]                               
01a943bc  ldr       x1, [x8]                                       
01a943c0  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a943c4  cbz       x0, #0x1a944b4                                 
01a943c8  adrp      x8, #0x3a7c000                                 
01a943cc  ldr       x8, [x8, #0xc80]                               
01a943d0  ldr       x1, [x8]                                       
01a943d4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a943d8  ldr       x8, [x27]                                      
01a943dc  mov       x23, x0                                        
01a943e0  ldr       w9, [x8, #0xe4]                                
01a943e4  cbnz      w9, #0x1a943f4                                 
01a943e8  mov       x0, x8                                         
01a943ec  bl        #0x183dcb0                                     
01a943f0  ldr       x8, [x27]                                      
01a943f4  ldr       x9, [x29]                                      
01a943f8  ldr       x9, [x9, #0xb8]                                
01a943fc  ldr       x9, [x9]                                       
01a94400  cbz       x9, #0x1a944b4                                 
01a94404  ldr       x8, [x8, #0xb8]                                
01a94408  ldr       x8, [x8, #0x130]                               
01a9440c  cbz       x8, #0x1a944b4                                 
01a94410  ldrsw     x9, [x9, #0x5cc]                               
01a94414  ldr       w10, [x8, #0x18]                               
01a94418  cmp       w9, w10                                        
01a9441c  b.hs      #0x1a944d8                                     
01a94420  add       x8, x8, x9, lsl #3                             
01a94424  ldr       x0, [x28, #0x48]                               
01a94428  add       x1, sp, #0x1c                                  
01a9442c  str       w22, [sp, #0x1c]                               
01a94430  ldr       x24, [x8, #0x20]                               
01a94434  bl        #0x183dcb8                                     
01a94438  ldr       x8, [x29]                                      
01a9443c  ldr       x8, [x8, #0xb8]                                
01a94440  ldr       x8, [x8]                                       
01a94444  cbz       x8, #0x1a944b4                                 
01a94448  adrp      x9, #0x3a7c000                                 
01a9444c  ldur      q0, [x8, #0x48]                                
01a94450  ldr       w8, [x8, #0x58]                                
01a94454  ldr       x9, [x9, #0x280]                               
01a94458  mov       x22, x0                                        
01a9445c  mov       x1, sp                                         
01a94460  str       q0, [sp]                                       
01a94464  ldr       x0, [x9]                                       
01a94468  str       w8, [sp, #0x10]                                
01a9446c  bl        #0x183dcb8                                     
01a94470  mov       x2, x0                                         
01a94474  mov       x0, x24                                        
01a94478  mov       x1, x22                                        
01a9447c  mov       x3, xzr                                        
01a94480  bl        #0x2c6e654                                     // System.String$$Format
01a94484  mov       x1, xzr                                        
01a94488  bl        #0x1ab07b8                                     // TextUtil$$Fix
01a9448c  cbz       x23, #0x1a944b4                                
01a94490  ldr       x8, [x23]                                      
01a94494  mov       x1, x0                                         
01a94498  mov       x0, x23                                        
01a9449c  ldr       x9, [x8, #0x5e8]                               
01a944a0  ldr       x2, [x8, #0x5f0]                               
01a944a4  blr       x9                                             
01a944a8  ldr       x0, [x19, #0xb8]                               
01a944ac  add       w20, w20, #1                                   
01a944b0  cbnz      x0, #0x1a9421c                                 
01a944b4  bl        #0x183dddc                                     
01a944b8  ldp       x20, x19, [sp, #0x70]                          
01a944bc  ldp       x22, x21, [sp, #0x60]                          
01a944c0  ldp       x24, x23, [sp, #0x50]                          
01a944c4  ldp       x26, x25, [sp, #0x40]                          
01a944c8  ldp       x28, x27, [sp, #0x30]                          
01a944cc  ldp       x29, x30, [sp, #0x20]                          
01a944d0  add       sp, sp, #0x80                                  
01a944d4  ret                                                      
01a944d8  bl        #0x183dde4                                     