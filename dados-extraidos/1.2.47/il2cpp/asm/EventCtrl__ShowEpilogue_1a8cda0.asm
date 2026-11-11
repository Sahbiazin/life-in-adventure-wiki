void EventCtrl__ShowEpilogue (EventCtrl_o* __this, bool isLoad, const MethodInfo* method);
// RVA 0x1a8cda0 to 0x1a8d140
01a8cda0  sub       sp, sp, #0xc0                                  
01a8cda4  str       d8, [sp, #0x70]                                
01a8cda8  str       x30, [sp, #0x78]                               
01a8cdac  stp       x26, x25, [sp, #0x80]                          
01a8cdb0  stp       x24, x23, [sp, #0x90]                          
01a8cdb4  stp       x22, x21, [sp, #0xa0]                          
01a8cdb8  stp       x20, x19, [sp, #0xb0]                          
01a8cdbc  adrp      x21, #0x3d14000                                
01a8cdc0  mov       w20, w1                                        
01a8cdc4  mov       x19, x0                                        
01a8cdc8  ldrb      w8, [x21, #0xcf6]                              
01a8cdcc  tbnz      w8, #0, #0x1a8ce38                             
01a8cdd0  adrp      x0, #0x3a7c000                                 
01a8cdd4  ldr       x0, [x0, #0xc08]                               
01a8cdd8  bl        #0x183db90                                     
01a8cddc  adrp      x0, #0x3a8c000                                 
01a8cde0  ldr       x0, [x0, #0x638]                               
01a8cde4  bl        #0x183db90                                     
01a8cde8  adrp      x0, #0x3a7e000                                 
01a8cdec  ldr       x0, [x0, #0x158]                               
01a8cdf0  bl        #0x183db90                                     
01a8cdf4  adrp      x0, #0x3a7c000                                 
01a8cdf8  ldr       x0, [x0, #0xff0]                               
01a8cdfc  bl        #0x183db90                                     
01a8ce00  adrp      x0, #0x3a7d000                                 
01a8ce04  ldr       x0, [x0, #0x768]                               
01a8ce08  bl        #0x183db90                                     
01a8ce0c  adrp      x0, #0x3a8c000                                 
01a8ce10  ldr       x0, [x0, #0x648]                               
01a8ce14  bl        #0x183db90                                     
01a8ce18  adrp      x0, #0x3a8c000                                 
01a8ce1c  ldr       x0, [x0, #0x650]                               
01a8ce20  bl        #0x183db90                                     
01a8ce24  adrp      x0, #0x3a8c000                                 
01a8ce28  ldr       x0, [x0, #0x678]                               
01a8ce2c  bl        #0x183db90                                     
01a8ce30  mov       w8, #1                                         
01a8ce34  strb      w8, [x21, #0xcf6]                              
01a8ce38  ldr       x8, [x19, #0x250]                              
01a8ce3c  cbz       x8, #0x1a8d12c                                 
01a8ce40  ldr       w9, [x8, #0x1c]                                
01a8ce44  add       w9, w9, #1                                     
01a8ce48  stp       wzr, w9, [x8, #0x18]                           
01a8ce4c  tbz       w20, #0, #0x1a8ceec                            
01a8ce50  mov       x0, xzr                                        
01a8ce54  bl        #0x19bb370                                     // SoundMgr$$get_ins
01a8ce58  cbz       x0, #0x1a8d12c                                 
01a8ce5c  mov       w1, #4                                         
01a8ce60  mov       x2, xzr                                        
01a8ce64  bl        #0x19c2d04                                     // SoundMgr$$ChangeBGM
01a8ce68  adrp      x20, #0x3d14000                                
01a8ce6c  ldrb      w8, [x20, #0x70e]                              
01a8ce70  cbnz      w8, #0x1a8ce88                                 
01a8ce74  adrp      x0, #0x3a7d000                                 
01a8ce78  ldr       x0, [x0, #0x438]                               
01a8ce7c  bl        #0x183db90                                     
01a8ce80  mov       w8, #1                                         
01a8ce84  strb      w8, [x20, #0x70e]                              
01a8ce88  adrp      x8, #0x3a7d000                                 
01a8ce8c  ldr       x8, [x8, #0x438]                               
01a8ce90  ldr       x8, [x8]                                       
01a8ce94  ldr       x8, [x8, #0xb8]                                
01a8ce98  ldr       x0, [x8]                                       
01a8ce9c  cbz       x0, #0x1a8d12c                                 
01a8cea0  mov       x1, xzr                                        
01a8cea4  bl        #0x19c5624                                     // StatusCtrl$$Hide
01a8cea8  adrp      x8, #0x3a7e000                                 
01a8ceac  ldr       x8, [x8, #0x158]                               
01a8ceb0  ldr       x8, [x8]                                       
01a8ceb4  ldr       x8, [x8, #0xb8]                                
01a8ceb8  ldr       x0, [x8]                                       
01a8cebc  cbz       x0, #0x1a8d12c                                 
01a8cec0  mov       x1, xzr                                        
01a8cec4  bl        #0x198ff3c                                     // InventoryCtrl$$Hide
01a8cec8  mov       x0, x19                                        
01a8cecc  ldp       x20, x19, [sp, #0xb0]                          
01a8ced0  ldp       x22, x21, [sp, #0xa0]                          
01a8ced4  ldr       x30, [sp, #0x78]                               
01a8ced8  ldp       x24, x23, [sp, #0x90]                          
01a8cedc  ldr       d8, [sp, #0x70]                                
01a8cee0  ldp       x26, x25, [sp, #0x80]                          
01a8cee4  add       sp, sp, #0xc0                                  
01a8cee8  b         #0x1aa12e8                                     // EventCtrl$$RepeatShowEpilouge
01a8ceec  adrp      x26, #0x3a8c000                                
01a8cef0  ldr       x26, [x26, #0x638]                             
01a8cef4  ldr       x0, [x26]                                      
01a8cef8  ldr       w8, [x0, #0xe4]                                
01a8cefc  cbnz      w8, #0x1a8cf08                                 
01a8cf00  bl        #0x183dcb0                                     
01a8cf04  ldr       x0, [x26]                                      
01a8cf08  adrp      x9, #0x3a8c000                                 
01a8cf0c  ldr       x8, [x0, #0xb8]                                
01a8cf10  mov       w1, #3                                         
01a8cf14  ldr       x9, [x9, #0x648]                               
01a8cf18  ldr       x20, [x8, #0x60]                               
01a8cf1c  ldr       x0, [x9]                                       
01a8cf20  bl        #0x183dc20                                     
01a8cf24  adrp      x24, #0x3a7c000                                
01a8cf28  ldr       x24, [x24, #0xc08]                             
01a8cf2c  ldr       x8, [x24]                                      
01a8cf30  ldr       x8, [x8, #0xb8]                                
01a8cf34  ldr       x8, [x8]                                       
01a8cf38  cbz       x8, #0x1a8d12c                                 
01a8cf3c  ldr       x9, [x26]                                      
01a8cf40  ldur      q0, [x8, #0xf8]                                
01a8cf44  mov       x21, x0                                        
01a8cf48  ldr       w8, [x8, #0x108]                               
01a8cf4c  add       x0, sp, #0x50                                  
01a8cf50  mov       x1, xzr                                        
01a8cf54  ldr       x9, [x9, #0xb8]                                
01a8cf58  str       q0, [sp, #0x50]                                
01a8cf5c  str       w8, [sp, #0x60]                                
01a8cf60  ldr       x23, [x9, #0x258]                              
01a8cf64  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8cf68  adrp      x25, #0x3a8c000                                
01a8cf6c  mov       w22, w0                                        
01a8cf70  ldr       x25, [x25, #0x650]                             
01a8cf74  ldr       x8, [x25]                                      
01a8cf78  mov       x0, x8                                         
01a8cf7c  bl        #0x183ddcc                                     
01a8cf80  sub       w8, w22, #1                                    
01a8cf84  mov       x1, x23                                        
01a8cf88  mov       x3, xzr                                        
01a8cf8c  sxtw      x2, w8                                         
01a8cf90  mov       x22, x0                                        
01a8cf94  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a8cf98  cbz       x21, #0x1a8d12c                                
01a8cf9c  cbz       x22, #0x1a8cfb4                                
01a8cfa0  ldr       x8, [x21]                                      
01a8cfa4  mov       x0, x22                                        
01a8cfa8  ldr       x1, [x8, #0x40]                                
01a8cfac  bl        #0x183dcb4                                     
01a8cfb0  cbz       x0, #0x1a8d134                                 
01a8cfb4  ldr       w8, [x21, #0x18]                               
01a8cfb8  cbz       w8, #0x1a8d130                                 
01a8cfbc  str       x22, [x21, #0x20]                              
01a8cfc0  ldr       x8, [x24]                                      
01a8cfc4  ldr       x8, [x8, #0xb8]                                
01a8cfc8  ldr       x8, [x8]                                       
01a8cfcc  cbz       x8, #0x1a8d12c                                 
01a8cfd0  ldr       x0, [x8, #0x20]                                
01a8cfd4  cbz       x0, #0x1a8d12c                                 
01a8cfd8  ldr       x8, [x26]                                      
01a8cfdc  adrp      x9, #0x3a7d000                                 
01a8cfe0  mov       w1, #0xf                                       
01a8cfe4  ldr       x8, [x8, #0xb8]                                
01a8cfe8  ldr       x9, [x9, #0x768]                               
01a8cfec  ldr       x2, [x9]                                       
01a8cff0  ldr       x23, [x8, #0x338]                              
01a8cff4  add       x8, sp, #0x38                                  
01a8cff8  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01a8cffc  ldur      q0, [sp, #0x38]                                
01a8d000  ldr       x8, [sp, #0x48]                                
01a8d004  add       x0, sp, #0x20                                  
01a8d008  mov       x1, xzr                                        
01a8d00c  str       q0, [sp, #0x20]                                
01a8d010  str       x8, [sp, #0x30]                                
01a8d014  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01a8d018  ldr       x0, [x25]                                      
01a8d01c  fmov      s8, s0                                         
01a8d020  bl        #0x183ddcc                                     
01a8d024  fcvt      d0, s8                                         
01a8d028  mov       x1, x23                                        
01a8d02c  mov       x2, xzr                                        
01a8d030  mov       x22, x0                                        
01a8d034  bl        #0x1b34de0                                     // Firebase.Analytics.Parameter$$.ctor
01a8d038  cbz       x22, #0x1a8d050                                
01a8d03c  ldr       x8, [x21]                                      
01a8d040  mov       x0, x22                                        
01a8d044  ldr       x1, [x8, #0x40]                                
01a8d048  bl        #0x183dcb4                                     
01a8d04c  cbz       x0, #0x1a8d134                                 
01a8d050  ldr       w8, [x21, #0x18]                               
01a8d054  tst       w8, #0xfffffffe                                
01a8d058  b.eq      #0x1a8d130                                     
01a8d05c  str       x22, [x21, #0x28]                              
01a8d060  ldr       x8, [x24]                                      
01a8d064  ldr       x8, [x8, #0xb8]                                
01a8d068  ldr       x8, [x8]                                       
01a8d06c  cbz       x8, #0x1a8d12c                                 
01a8d070  ldur      q0, [x8, #0xf8]                                
01a8d074  ldr       w8, [x8, #0x108]                               
01a8d078  mov       x0, sp                                         
01a8d07c  mov       x1, xzr                                        
01a8d080  str       q0, [sp]                                       
01a8d084  str       w8, [sp, #0x10]                                
01a8d088  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8d08c  ldr       x8, [x25]                                      
01a8d090  mov       w22, w0                                        
01a8d094  mov       x0, x8                                         
01a8d098  bl        #0x183ddcc                                     
01a8d09c  adrp      x8, #0x3a8c000                                 
01a8d0a0  sub       w9, w22, #1                                    
01a8d0a4  mov       x3, xzr                                        
01a8d0a8  ldr       x8, [x8, #0x678]                               
01a8d0ac  sxtw      x2, w9                                         
01a8d0b0  mov       x22, x0                                        
01a8d0b4  ldr       x1, [x8]                                       
01a8d0b8  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a8d0bc  cbz       x22, #0x1a8d0d4                                
01a8d0c0  ldr       x8, [x21]                                      
01a8d0c4  mov       x0, x22                                        
01a8d0c8  ldr       x1, [x8, #0x40]                                
01a8d0cc  bl        #0x183dcb4                                     
01a8d0d0  cbz       x0, #0x1a8d134                                 
01a8d0d4  ldr       w8, [x21, #0x18]                               
01a8d0d8  cmp       w8, #2                                         
01a8d0dc  b.ls      #0x1a8d130                                     
01a8d0e0  mov       x0, x20                                        
01a8d0e4  mov       x1, x21                                        
01a8d0e8  mov       x2, xzr                                        
01a8d0ec  str       x22, [x21, #0x30]                              
01a8d0f0  bl        #0x1b32abc                                     // Firebase.Analytics.FirebaseAnalytics$$LogEvent
01a8d0f4  mov       x0, x19                                        
01a8d0f8  bl        #0x1aa1c7c                                     // EventCtrl$$DoShowEpilogue
01a8d0fc  mov       x1, x0                                         
01a8d100  mov       x0, x19                                        
01a8d104  mov       x2, xzr                                        
01a8d108  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a8d10c  ldp       x20, x19, [sp, #0xb0]                          
01a8d110  ldr       x30, [sp, #0x78]                               
01a8d114  ldp       x22, x21, [sp, #0xa0]                          
01a8d118  ldr       d8, [sp, #0x70]                                
01a8d11c  ldp       x24, x23, [sp, #0x90]                          
01a8d120  ldp       x26, x25, [sp, #0x80]                          
01a8d124  add       sp, sp, #0xc0                                  
01a8d128  ret                                                      
01a8d12c  bl        #0x183dddc                                     
01a8d130  bl        #0x183dde4                                     
01a8d134  bl        #0x183de00                                     
01a8d138  mov       x1, xzr                                        
01a8d13c  bl        #0x183dca0                                     