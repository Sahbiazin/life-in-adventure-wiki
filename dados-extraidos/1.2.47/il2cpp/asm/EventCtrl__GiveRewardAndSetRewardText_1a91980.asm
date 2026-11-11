void EventCtrl__GiveRewardAndSetRewardText (EventCtrl_o* __this, FormatData_array* fileFormatter, bool isOnlyText, const MethodInfo* method);
// RVA 0x1a91980 to 0x1a9313c
01a91980  sub       sp, sp, #0x130                                 
01a91984  stp       d9, d8, [sp, #0xc0]                            
01a91988  stp       x29, x30, [sp, #0xd0]                          
01a9198c  stp       x28, x27, [sp, #0xe0]                          
01a91990  stp       x26, x25, [sp, #0xf0]                          
01a91994  stp       x24, x23, [sp, #0x100]                         
01a91998  stp       x22, x21, [sp, #0x110]                         
01a9199c  stp       x20, x19, [sp, #0x120]                         
01a919a0  adrp      x21, #0x3d14000                                
01a919a4  mov       w19, w2                                        
01a919a8  mov       x20, x1                                        
01a919ac  ldrb      w8, [x21, #0xced]                              
01a919b0  str       x0, [sp, #8]                                   
01a919b4  tbnz      w8, #0, #0x1a91ac8                             
01a919b8  adrp      x0, #0x3a7b000                                 
01a919bc  ldr       x0, [x0, #0xf88]                               
01a919c0  bl        #0x183db90                                     
01a919c4  adrp      x0, #0x3a7c000                                 
01a919c8  ldr       x0, [x0, #0xc08]                               
01a919cc  bl        #0x183db90                                     
01a919d0  adrp      x0, #0x3a7d000                                 
01a919d4  ldr       x0, [x0, #0x148]                               
01a919d8  bl        #0x183db90                                     
01a919dc  adrp      x0, #0x3a7c000                                 
01a919e0  ldr       x0, [x0, #0xc10]                               
01a919e4  bl        #0x183db90                                     
01a919e8  adrp      x0, #0x3a7c000                                 
01a919ec  ldr       x0, [x0, #0xcb0]                               
01a919f0  bl        #0x183db90                                     
01a919f4  adrp      x0, #0x3a81000                                 
01a919f8  ldr       x0, [x0, #0xb88]                               
01a919fc  bl        #0x183db90                                     
01a91a00  adrp      x0, #0x3a7c000                                 
01a91a04  ldr       x0, [x0, #0xc20]                               
01a91a08  bl        #0x183db90                                     
01a91a0c  adrp      x0, #0x3a7c000                                 
01a91a10  ldr       x0, [x0, #0xc30]                               
01a91a14  bl        #0x183db90                                     
01a91a18  adrp      x0, #0x3a7c000                                 
01a91a1c  ldr       x0, [x0, #0xe30]                               
01a91a20  bl        #0x183db90                                     
01a91a24  adrp      x0, #0x3a7b000                                 
01a91a28  ldr       x0, [x0, #0xc10]                               
01a91a2c  bl        #0x183db90                                     
01a91a30  adrp      x0, #0x3a7c000                                 
01a91a34  ldr       x0, [x0, #0xde8]                               
01a91a38  bl        #0x183db90                                     
01a91a3c  adrp      x0, #0x3a7b000                                 
01a91a40  ldr       x0, [x0, #0x7c8]                               
01a91a44  bl        #0x183db90                                     
01a91a48  adrp      x0, #0x3a7c000                                 
01a91a4c  ldr       x0, [x0, #0x4e0]                               
01a91a50  bl        #0x183db90                                     
01a91a54  adrp      x0, #0x3a7c000                                 
01a91a58  ldr       x0, [x0, #0xee8]                               
01a91a5c  bl        #0x183db90                                     
01a91a60  adrp      x0, #0x3a7d000                                 
01a91a64  ldr       x0, [x0, #0x150]                               
01a91a68  bl        #0x183db90                                     
01a91a6c  adrp      x0, #0x3a8c000                                 
01a91a70  ldr       x0, [x0, #0x780]                               
01a91a74  bl        #0x183db90                                     
01a91a78  adrp      x0, #0x3a7c000                                 
01a91a7c  ldr       x0, [x0, #0xd30]                               
01a91a80  bl        #0x183db90                                     
01a91a84  adrp      x0, #0x3a8c000                                 
01a91a88  ldr       x0, [x0, #0x788]                               
01a91a8c  bl        #0x183db90                                     
01a91a90  adrp      x0, #0x3a81000                                 
01a91a94  ldr       x0, [x0, #0xc00]                               
01a91a98  bl        #0x183db90                                     
01a91a9c  adrp      x0, #0x3a7f000                                 
01a91aa0  ldr       x0, [x0, #0x208]                               
01a91aa4  bl        #0x183db90                                     
01a91aa8  adrp      x0, #0x3a8c000                                 
01a91aac  ldr       x0, [x0, #0x790]                               
01a91ab0  bl        #0x183db90                                     
01a91ab4  adrp      x0, #0x3a7b000                                 
01a91ab8  ldr       x0, [x0, #0xaf0]                               
01a91abc  bl        #0x183db90                                     
01a91ac0  mov       w8, #1                                         
01a91ac4  strb      w8, [x21, #0xced]                              
01a91ac8  str       xzr, [sp, #0xb8]                               
01a91acc  adrp      x8, #0x3a7b000                                 
01a91ad0  ldr       x8, [x8, #0xaf0]                               
01a91ad4  ldr       x9, [sp, #8]                                   
01a91ad8  str       wzr, [sp, #0xb4]                               
01a91adc  ldr       x8, [x8]                                       
01a91ae0  str       x8, [x9, #0xf0]                                
01a91ae4  cbz       x20, #0x1a93134                                
01a91ae8  ldr       w9, [x20, #0x18]                               
01a91aec  cmp       w9, #1                                         
01a91af0  b.lt      #0x1a93110                                     
01a91af4  adrp      x24, #0x3a7c000                                
01a91af8  adrp      x29, #0x3a7b000                                
01a91afc  adrp      x28, #0x3a7d000                                
01a91b00  fmov      s9, #4.00000000                                
01a91b04  ldr       x24, [x24, #0xc08]                             
01a91b08  ldr       x29, [x29, #0xf88]                             
01a91b0c  ldr       x28, [x28, #0x150]                             
01a91b10  mov       w23, wzr                                       
01a91b14  cmp       w23, w9                                        
01a91b18  b.hs      #0x1a93138                                     
01a91b1c  add       x21, x20, w23, sxtw #3                         
01a91b20  ldr       x8, [x21, #0x20]!                              
01a91b24  cbz       x8, #0x1a93134                                 
01a91b28  adrp      x11, #0x3a7b000                                
01a91b2c  ldr       w10, [x8, #0x10]                               
01a91b30  ldr       x11, [x11, #0xaf0]                             
01a91b34  cmp       w10, #0x1d                                     
01a91b38  ldr       x25, [x11]                                     
01a91b3c  b.hi      #0x1a9299c                                     
01a91b40  adrp      x13, #0xa44000                                 
01a91b44  add       x13, x13, #0x200                               
01a91b48  adr       x11, #0x1a91b58                                
01a91b4c  ldrh      w12, [x13, x10, lsl #1]                        
01a91b50  add       x11, x11, x12, lsl #2                          
01a91b54  br        x11                                            
01a91b58  ldr       x0, [x29]                                      
01a91b5c  ldr       x26, [x8, #0x18]                               
01a91b60  ldr       w9, [x0, #0xe4]                                
01a91b64  cbnz      w9, #0x1a91b6c                                 
01a91b68  bl        #0x183dcb0                                     
01a91b6c  mov       x0, x26                                        
01a91b70  mov       x1, xzr                                        
01a91b74  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a91b78  ldr       w8, [x20, #0x18]                               
01a91b7c  cmp       w23, w8                                        
01a91b80  b.hs      #0x1a93138                                     
01a91b84  ldr       x8, [x21]                                      
01a91b88  cbz       x8, #0x1a93134                                 
01a91b8c  ldr       s0, [x8, #0x20]                                
01a91b90  mov       w26, w0                                        
01a91b94  str       s0, [sp, #0xbc]                                
01a91b98  tbnz      w19, #0, #0x1a92e48                            
01a91b9c  ldr       x8, [x24]                                      
01a91ba0  ldr       x8, [x8, #0xb8]                                
01a91ba4  ldr       x0, [x8]                                       
01a91ba8  cbz       x0, #0x1a93134                                 
01a91bac  mov       w1, w26                                        
01a91bb0  mov       w2, wzr                                        
01a91bb4  mov       x3, xzr                                        
01a91bb8  bl        #0x1af7a54                                     // DataMgr$$ChangeUserData
01a91bbc  cmp       w26, #5                                        
01a91bc0  b.eq      #0x1a92d8c                                     
01a91bc4  cmp       w26, #2                                        
01a91bc8  b.ne      #0x1a92ddc                                     
01a91bcc  ldr       x8, [x24]                                      
01a91bd0  ldr       x8, [x8, #0xb8]                                
01a91bd4  ldr       x8, [x8]                                       
01a91bd8  cbz       x8, #0x1a93134                                 
01a91bdc  ldur      q0, [x8, #0x28]                                
01a91be0  ldr       w8, [x8, #0x38]                                
01a91be4  add       x0, sp, #0xa0                                  
01a91be8  mov       x1, xzr                                        
01a91bec  str       q0, [sp, #0xa0]                                
01a91bf0  str       w8, [sp, #0xb0]                                
01a91bf4  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a91bf8  adrp      x21, #0x3a7d000                                
01a91bfc  mov       w27, w0                                        
01a91c00  ldr       x21, [x21, #0x148]                             
01a91c04  ldr       x8, [x21]                                      
01a91c08  ldr       w9, [x8, #0xe4]                                
01a91c0c  cbnz      w9, #0x1a91c1c                                 
01a91c10  mov       x0, x8                                         
01a91c14  bl        #0x183dcb0                                     
01a91c18  ldr       x8, [x21]                                      
01a91c1c  ldr       x8, [x8, #0xb8]                                
01a91c20  ldr       x8, [x8, #8]                                   
01a91c24  cbz       x8, #0x1a93134                                 
01a91c28  ldr       w8, [x8, #0x18]                                
01a91c2c  sub       w8, w8, #1                                     
01a91c30  cmp       w27, w8                                        
01a91c34  b.ge      #0x1a92ddc                                     
01a91c38  ldr       x8, [x24]                                      
01a91c3c  ldr       x8, [x8, #0xb8]                                
01a91c40  ldr       x0, [x8]                                       
01a91c44  cbz       x0, #0x1a93134                                 
01a91c48  mov       w1, #2                                         
01a91c4c  mov       x2, xzr                                        
01a91c50  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a91c54  adrp      x8, #0x3a7d000                                 
01a91c58  fmov      s8, s0                                         
01a91c5c  ldr       x8, [x8, #0x148]                               
01a91c60  ldr       x0, [x8]                                       
01a91c64  ldr       w8, [x0, #0xe4]                                
01a91c68  cbnz      w8, #0x1a91c7c                                 
01a91c6c  bl        #0x183dcb0                                     
01a91c70  adrp      x8, #0x3a7d000                                 
01a91c74  ldr       x8, [x8, #0x148]                               
01a91c78  ldr       x0, [x8]                                       
01a91c7c  ldr       x8, [x24]                                      
01a91c80  ldr       x8, [x8, #0xb8]                                
01a91c84  ldr       x8, [x8]                                       
01a91c88  cbz       x8, #0x1a93134                                 
01a91c8c  ldr       x9, [x0, #0xb8]                                
01a91c90  ldur      q0, [x8, #0x28]                                
01a91c94  add       x0, sp, #0x80                                  
01a91c98  ldr       w8, [x8, #0x38]                                
01a91c9c  mov       x1, xzr                                        
01a91ca0  ldr       x21, [x9, #8]                                  
01a91ca4  str       q0, [sp, #0x80]                                
01a91ca8  str       w8, [sp, #0x90]                                
01a91cac  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a91cb0  cbz       x21, #0x1a93134                                
01a91cb4  ldr       w9, [x21, #0x18]                               
01a91cb8  add       w8, w0, #1                                     
01a91cbc  cmp       w8, w9                                         
01a91cc0  b.hs      #0x1a93138                                     
01a91cc4  add       x8, x21, w8, sxtw #2                           
01a91cc8  ldr       s0, [x8, #0x20]                                
01a91ccc  scvtf     s0, s0                                         
01a91cd0  fcmp      s8, s0                                         
01a91cd4  b.lt      #0x1a92ddc                                     
01a91cd8  ldr       x8, [x24]                                      
01a91cdc  ldr       x8, [x8, #0xb8]                                
01a91ce0  ldr       x21, [x8]                                      
01a91ce4  cbz       x21, #0x1a93134                                
01a91ce8  ldr       w8, [x21, #0x38]                               
01a91cec  ldur      q0, [x21, #0x28]                               
01a91cf0  add       x0, sp, #0x50                                  
01a91cf4  mov       x1, xzr                                        
01a91cf8  str       w8, [sp, #0x60]                                
01a91cfc  add       x8, sp, #0x6c                                  
01a91d00  str       q0, [sp, #0x50]                                
01a91d04  bl        #0x1945f68                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Increment
01a91d08  ldr       w8, [sp, #0x7c]                                
01a91d0c  ldur      q0, [sp, #0x6c]                                
01a91d10  mov       w9, #1                                         
01a91d14  str       w8, [x21, #0x38]                               
01a91d18  ldr       x8, [sp, #8]                                   
01a91d1c  stur      q0, [x21, #0x28]                               
01a91d20  strb      w9, [x8, #0x117]                               
01a91d24  b         #0x1a92ddc                                     
01a91d28  tbnz      w19, #0, #0x1a930a4                            
01a91d2c  ldr       x9, [x24]                                      
01a91d30  ldr       x9, [x9, #0xb8]                                
01a91d34  ldr       x9, [x9]                                       
01a91d38  cbz       x9, #0x1a93134                                 
01a91d3c  ldr       x0, [x29]                                      
01a91d40  ldr       x26, [x9, #0x178]                              
01a91d44  b         #0x1a929c0                                     
01a91d48  adrp      x8, #0x3d14000                                 
01a91d4c  ldrb      w8, [x8, #0x678]                               
01a91d50  cbnz      w8, #0x1a91d70                                 
01a91d54  adrp      x0, #0x3a7c000                                 
01a91d58  ldr       x0, [x0, #0xd38]                               
01a91d5c  bl        #0x183db90                                     
01a91d60  ldr       w9, [x20, #0x18]                               
01a91d64  mov       w8, #1                                         
01a91d68  adrp      x10, #0x3d14000                                
01a91d6c  strb      w8, [x10, #0x678]                              
01a91d70  cmp       w23, w9                                        
01a91d74  b.hs      #0x1a93138                                     
01a91d78  ldr       x8, [x21]                                      
01a91d7c  cbz       x8, #0x1a93134                                 
01a91d80  adrp      x9, #0x3a7c000                                 
01a91d84  ldr       x9, [x9, #0xd38]                               
01a91d88  ldr       x0, [x29]                                      
01a91d8c  ldr       x27, [x8, #0x18]                               
01a91d90  ldr       x9, [x9]                                       
01a91d94  ldr       w10, [x0, #0xe4]                               
01a91d98  ldr       x9, [x9, #0xb8]                                
01a91d9c  ldr       x26, [x9]                                      
01a91da0  cbnz      w10, #0x1a91da8                                
01a91da4  bl        #0x183dcb0                                     
01a91da8  mov       x0, x27                                        
01a91dac  mov       x1, xzr                                        
01a91db0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a91db4  ldr       w8, [x20, #0x18]                               
01a91db8  cmp       w23, w8                                        
01a91dbc  b.hs      #0x1a93138                                     
01a91dc0  ldr       x8, [x21]                                      
01a91dc4  cbz       x8, #0x1a93134                                 
01a91dc8  cbz       x26, #0x1a93134                                
01a91dcc  mov       w9, #0x7f800000                                
01a91dd0  ldr       s0, [x8, #0x20]                                
01a91dd4  mov       w1, w0                                         
01a91dd8  fmov      s1, w9                                         
01a91ddc  mov       w9, #-0xffffffff80000000                       
01a91de0  mov       x0, x26                                        
01a91de4  fcvtzs    w8, s0                                         
01a91de8  mov       x3, xzr                                        
01a91dec  fcmp      s0, s1                                         
01a91df0  csel      w2, w9, w8, eq                                 
01a91df4  bl        #0x1a2db7c                                     // Equipment$$GetAbilityText
01a91df8  ldr       w8, [x20, #0x18]                               
01a91dfc  cmp       w23, w8                                        
01a91e00  b.hs      #0x1a93138                                     
01a91e04  ldr       x8, [x21]                                      
01a91e08  cbz       x8, #0x1a93134                                 
01a91e0c  mov       x26, x0                                        
01a91e10  mov       x0, x8                                         
01a91e14  ldr       s0, [x0, #0x20]!                               
01a91e18  str       s0, [sp, #0xb4]                                
01a91e1c  tbnz      w19, #0, #0x1a91e90                            
01a91e20  ldr       x9, [x24]                                      
01a91e24  ldr       x9, [x9, #0xb8]                                
01a91e28  ldr       x9, [x9]                                       
01a91e2c  cbz       x9, #0x1a93134                                 
01a91e30  ldr       x28, [x8, #0x18]                               
01a91e34  adrp      x8, #0x3a7f000                                 
01a91e38  ldr       x27, [x9, #0xc8]                               
01a91e3c  ldr       x8, [x8, #0x208]                               
01a91e40  mov       x2, xzr                                        
01a91e44  ldr       x1, [x8]                                       
01a91e48  bl        #0x2de259c                                     // System.Single$$ToString
01a91e4c  adrp      x8, #0x3a7c000                                 
01a91e50  mov       x2, x0                                         
01a91e54  mov       x0, x28                                        
01a91e58  ldr       x8, [x8, #0xd30]                               
01a91e5c  mov       x3, xzr                                        
01a91e60  ldr       x1, [x8]                                       
01a91e64  bl        #0x2c6dcf0                                     // System.String$$Concat
01a91e68  cbz       x27, #0x1a93134                                
01a91e6c  adrp      x8, #0x3a7c000                                 
01a91e70  mov       x1, x0                                         
01a91e74  mov       x0, x27                                        
01a91e78  ldr       x8, [x8, #0xcb0]                               
01a91e7c  ldr       x2, [x8]                                       
01a91e80  bl        #0x1660c4c                                     
01a91e84  adrp      x28, #0x3a7d000                                
01a91e88  ldr       s0, [sp, #0xb4]                                
01a91e8c  ldr       x28, [x28, #0x150]                             
01a91e90  fcmp      s0, #0.0                                       
01a91e94  b.le      #0x1a92c40                                     
01a91e98  adrp      x8, #0x3a7b000                                 
01a91e9c  mov       w1, #5                                         
01a91ea0  ldr       x8, [x8, #0x7c8]                               
01a91ea4  ldr       x0, [x8]                                       
01a91ea8  bl        #0x183dc20                                     
01a91eac  cbz       x0, #0x1a93134                                 
01a91eb0  ldr       w8, [x0, #0x18]                                
01a91eb4  mov       x25, x0                                        
01a91eb8  cbz       w8, #0x1a93138                                 
01a91ebc  ldr       x9, [x28]                                      
01a91ec0  b         #0x1a92c7c                                     
01a91ec4  tbnz      w19, #0, #0x1a930a4                            
01a91ec8  ldr       x9, [x24]                                      
01a91ecc  ldr       x9, [x9, #0xb8]                                
01a91ed0  ldr       x9, [x9]                                       
01a91ed4  cbz       x9, #0x1a93134                                 
01a91ed8  ldr       x0, [x29]                                      
01a91edc  ldr       x26, [x9, #0x148]                              
01a91ee0  b         #0x1a9221c                                     
01a91ee4  ldr       x0, [x29]                                      
01a91ee8  ldr       x26, [x8, #0x18]                               
01a91eec  ldr       w9, [x0, #0xe4]                                
01a91ef0  cbnz      w9, #0x1a91ef8                                 
01a91ef4  bl        #0x183dcb0                                     
01a91ef8  mov       x0, x26                                        
01a91efc  mov       x1, xzr                                        
01a91f00  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a91f04  ldr       w8, [x20, #0x18]                               
01a91f08  cmp       w23, w8                                        
01a91f0c  b.hs      #0x1a93138                                     
01a91f10  ldr       x8, [x21]                                      
01a91f14  cbz       x8, #0x1a93134                                 
01a91f18  mov       w26, w0                                        
01a91f1c  tbnz      w19, #0, #0x1a920c4                            
01a91f20  ldr       x8, [x24]                                      
01a91f24  ldr       x8, [x8, #0xb8]                                
01a91f28  ldr       x8, [x8]                                       
01a91f2c  cbz       x8, #0x1a93134                                 
01a91f30  ldr       x9, [x8, #0x168]                               
01a91f34  cbz       x9, #0x1a93134                                 
01a91f38  ldr       w9, [x9, #0x18]                                
01a91f3c  cmp       w9, #1                                         
01a91f40  b.lt      #0x1a920b4                                     
01a91f44  adrp      x8, #0x3a7b000                                 
01a91f48  mov       w1, #5                                         
01a91f4c  ldr       x8, [x8, #0x7c8]                               
01a91f50  ldr       x0, [x8]                                       
01a91f54  bl        #0x183dc20                                     
01a91f58  cbz       x0, #0x1a93134                                 
01a91f5c  adrp      x9, #0x3a7c000                                 
01a91f60  ldr       w8, [x0, #0x18]                                
01a91f64  mov       x25, x0                                        
01a91f68  ldr       x9, [x9, #0xde8]                               
01a91f6c  cbz       w8, #0x1a93138                                 
01a91f70  adrp      x8, #0x3a8c000                                 
01a91f74  ldr       x8, [x8, #0x788]                               
01a91f78  ldr       x8, [x8]                                       
01a91f7c  str       x8, [x25, #0x20]                               
01a91f80  ldr       x0, [x9]                                       
01a91f84  ldr       w8, [x0, #0xe4]                                
01a91f88  cbnz      w8, #0x1a91f98                                 
01a91f8c  mov       x21, x9                                        
01a91f90  bl        #0x183dcb0                                     
01a91f94  ldr       x0, [x21]                                      
01a91f98  ldr       x8, [x24]                                      
01a91f9c  ldr       x8, [x8, #0xb8]                                
01a91fa0  ldr       x9, [x8]                                       
01a91fa4  cbz       x9, #0x1a93134                                 
01a91fa8  ldr       x8, [x0, #0xb8]                                
01a91fac  ldr       x8, [x8, #0x30]                                
01a91fb0  cbz       x8, #0x1a93134                                 
01a91fb4  ldrsw     x9, [x9, #0x5cc]                               
01a91fb8  ldr       w10, [x8, #0x18]                               
01a91fbc  cmp       w9, w10                                        
01a91fc0  b.hs      #0x1a93138                                     
01a91fc4  ldr       w10, [x25, #0x18]                              
01a91fc8  cmp       w10, #1                                        
01a91fcc  b.ls      #0x1a93138                                     
01a91fd0  add       x8, x8, x9, lsl #3                             
01a91fd4  cmp       w10, #2                                        
01a91fd8  ldr       x8, [x8, #0x20]                                
01a91fdc  str       x8, [x25, #0x28]                               
01a91fe0  b.eq      #0x1a93138                                     
01a91fe4  adrp      x8, #0x3a7c000                                 
01a91fe8  ldr       x8, [x8, #0x4e0]                               
01a91fec  ldr       x8, [x8]                                       
01a91ff0  str       x8, [x25, #0x30]                               
01a91ff4  ldr       x8, [x24]                                      
01a91ff8  ldr       x8, [x8, #0xb8]                                
01a91ffc  ldr       x8, [x8]                                       
01a92000  cbz       x8, #0x1a93134                                 
01a92004  ldr       x0, [x8, #0x168]                               
01a92008  cbz       x0, #0x1a93134                                 
01a9200c  ldr       x27, [x8, #0x128]                              
01a92010  adrp      x8, #0x3a7c000                                 
01a92014  mov       w1, wzr                                        
01a92018  ldr       x8, [x8, #0xc30]                               
01a9201c  ldr       x2, [x8]                                       
01a92020  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a92024  cbz       x27, #0x1a93134                                
01a92028  mov       w1, w0                                         
01a9202c  mov       x0, x27                                        
01a92030  mov       x2, xzr                                        
01a92034  bl        #0x195be84                                     // TraitDataBase$$GetTraitData
01a92038  cbz       x0, #0x1a93134                                 
01a9203c  ldr       x8, [x24]                                      
01a92040  ldr       x8, [x8, #0xb8]                                
01a92044  ldr       x9, [x8]                                       
01a92048  cbz       x9, #0x1a93134                                 
01a9204c  ldr       x8, [x0, #0x18]                                
01a92050  cbz       x8, #0x1a93134                                 
01a92054  ldrsw     x9, [x9, #0x5cc]                               
01a92058  ldr       w10, [x8, #0x18]                               
01a9205c  cmp       w9, w10                                        
01a92060  b.hs      #0x1a93138                                     
01a92064  ldr       w10, [x25, #0x18]                              
01a92068  cmp       w10, #3                                        
01a9206c  b.ls      #0x1a93138                                     
01a92070  add       x8, x8, x9, lsl #3                             
01a92074  cmp       w10, #4                                        
01a92078  ldr       x8, [x8, #0x20]                                
01a9207c  str       x8, [x25, #0x38]                               
01a92080  b.eq      #0x1a93138                                     
01a92084  adrp      x8, #0x3a81000                                 
01a92088  mov       x0, x25                                        
01a9208c  mov       x1, xzr                                        
01a92090  ldr       x8, [x8, #0xc00]                               
01a92094  ldr       x8, [x8]                                       
01a92098  str       x8, [x25, #0x40]                               
01a9209c  bl        #0x2c6e35c                                     // System.String$$Concat
01a920a0  ldr       x8, [x24]                                      
01a920a4  ldr       x8, [x8, #0xb8]                                
01a920a8  ldr       x8, [x8]                                       
01a920ac  cbz       x8, #0x1a93134                                 
01a920b0  mov       x25, x0                                        
01a920b4  mov       x0, x8                                         
01a920b8  mov       w1, w26                                        
01a920bc  mov       x2, xzr                                        
01a920c0  bl        #0x1afc138                                     // DataMgr$$ChangeTrait
01a920c4  adrp      x8, #0x3a7b000                                 
01a920c8  mov       w1, #6                                         
01a920cc  ldr       x8, [x8, #0x7c8]                               
01a920d0  ldr       x0, [x8]                                       
01a920d4  bl        #0x183dc20                                     
01a920d8  cbz       x0, #0x1a93134                                 
01a920dc  adrp      x9, #0x3a7c000                                 
01a920e0  ldr       w8, [x0, #0x18]                                
01a920e4  mov       x27, x0                                        
01a920e8  ldr       x9, [x9, #0xde8]                               
01a920ec  cbz       w8, #0x1a93138                                 
01a920f0  cmp       w8, #1                                         
01a920f4  str       x25, [x27, #0x20]                              
01a920f8  b.eq      #0x1a93138                                     
01a920fc  ldr       x8, [x28]                                      
01a92100  str       x8, [x27, #0x28]                               
01a92104  ldr       x0, [x9]                                       
01a92108  ldr       w8, [x0, #0xe4]                                
01a9210c  cbnz      w8, #0x1a9211c                                 
01a92110  mov       x21, x9                                        
01a92114  bl        #0x183dcb0                                     
01a92118  ldr       x0, [x21]                                      
01a9211c  ldr       x8, [x24]                                      
01a92120  ldr       x8, [x8, #0xb8]                                
01a92124  ldr       x9, [x8]                                       
01a92128  cbz       x9, #0x1a93134                                 
01a9212c  ldr       x8, [x0, #0xb8]                                
01a92130  ldr       x8, [x8, #0x30]                                
01a92134  cbz       x8, #0x1a93134                                 
01a92138  ldrsw     x9, [x9, #0x5cc]                               
01a9213c  ldr       w10, [x8, #0x18]                               
01a92140  cmp       w9, w10                                        
01a92144  b.hs      #0x1a93138                                     
01a92148  ldr       w10, [x27, #0x18]                              
01a9214c  cmp       w10, #2                                        
01a92150  b.ls      #0x1a93138                                     
01a92154  add       x8, x8, x9, lsl #3                             
01a92158  cmp       w10, #3                                        
01a9215c  ldr       x8, [x8, #0x20]                                
01a92160  str       x8, [x27, #0x30]                               
01a92164  b.eq      #0x1a93138                                     
01a92168  adrp      x8, #0x3a7c000                                 
01a9216c  ldr       x8, [x8, #0x4e0]                               
01a92170  ldr       x8, [x8]                                       
01a92174  str       x8, [x27, #0x38]                               
01a92178  ldr       x8, [x24]                                      
01a9217c  ldr       x8, [x8, #0xb8]                                
01a92180  ldr       x8, [x8]                                       
01a92184  cbz       x8, #0x1a93134                                 
01a92188  ldr       x0, [x8, #0x128]                               
01a9218c  cbz       x0, #0x1a93134                                 
01a92190  mov       w1, w26                                        
01a92194  mov       x2, xzr                                        
01a92198  bl        #0x195be84                                     // TraitDataBase$$GetTraitData
01a9219c  cbz       x0, #0x1a93134                                 
01a921a0  ldr       x8, [x24]                                      
01a921a4  ldr       x8, [x8, #0xb8]                                
01a921a8  ldr       x9, [x8]                                       
01a921ac  cbz       x9, #0x1a93134                                 
01a921b0  ldr       x8, [x0, #0x18]                                
01a921b4  cbz       x8, #0x1a93134                                 
01a921b8  ldrsw     x9, [x9, #0x5cc]                               
01a921bc  ldr       w10, [x8, #0x18]                               
01a921c0  cmp       w9, w10                                        
01a921c4  b.hs      #0x1a93138                                     
01a921c8  ldr       w10, [x27, #0x18]                              
01a921cc  cmp       w10, #4                                        
01a921d0  b.ls      #0x1a93138                                     
01a921d4  add       x8, x8, x9, lsl #3                             
01a921d8  cmp       w10, #5                                        
01a921dc  ldr       x8, [x8, #0x20]                                
01a921e0  str       x8, [x27, #0x40]                               
01a921e4  b.eq      #0x1a93138                                     
01a921e8  adrp      x8, #0x3a81000                                 
01a921ec  mov       x0, x27                                        
01a921f0  ldr       x8, [x8, #0xc00]                               
01a921f4  ldr       x8, [x8]                                       
01a921f8  str       x8, [x27, #0x48]                               
01a921fc  b         #0x1a93098                                     
01a92200  tbnz      w19, #0, #0x1a930a4                            
01a92204  ldr       x9, [x24]                                      
01a92208  ldr       x9, [x9, #0xb8]                                
01a9220c  ldr       x9, [x9]                                       
01a92210  cbz       x9, #0x1a93134                                 
01a92214  ldr       x0, [x29]                                      
01a92218  ldr       x26, [x9, #0x138]                              
01a9221c  ldr       w10, [x0, #0xe4]                               
01a92220  ldr       x27, [x8, #0x18]                               
01a92224  cbnz      w10, #0x1a9222c                                
01a92228  bl        #0x183dcb0                                     
01a9222c  mov       x0, x27                                        
01a92230  mov       x1, xzr                                        
01a92234  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a92238  ldr       w8, [x20, #0x18]                               
01a9223c  cmp       w23, w8                                        
01a92240  b.hs      #0x1a93138                                     
01a92244  ldr       x8, [x21]                                      
01a92248  cbz       x8, #0x1a93134                                 
01a9224c  cbz       x26, #0x1a93134                                
01a92250  mov       w9, #0x7f800000                                
01a92254  ldr       s0, [x8, #0x20]                                
01a92258  mov       w1, w0                                         
01a9225c  fmov      s1, w9                                         
01a92260  adrp      x9, #0x3a7c000                                 
01a92264  mov       x0, x26                                        
01a92268  fcvtzs    w8, s0                                         
01a9226c  ldr       x9, [x9, #0xe30]                               
01a92270  fcmp      s0, s1                                         
01a92274  ldr       x3, [x9]                                       
01a92278  mov       w9, #-0xffffffff80000000                       
01a9227c  csel      w2, w9, w8, eq                                 
01a92280  bl        #0x276af84                                     // System.Collections.Generic.List<int>$$set_Item
01a92284  b         #0x1a930a4                                     
01a92288  ldr       x0, [x29]                                      
01a9228c  ldr       x26, [x8, #0x18]                               
01a92290  ldr       w9, [x0, #0xe4]                                
01a92294  cbnz      w9, #0x1a9229c                                 
01a92298  bl        #0x183dcb0                                     
01a9229c  mov       x0, x26                                        
01a922a0  mov       x1, xzr                                        
01a922a4  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a922a8  cmp       w0, #8                                         
01a922ac  b.ne      #0x1a92a24                                     
01a922b0  mov       w1, #8                                         
01a922b4  bl        #0x1a98754                                     // EventCtrl$$RemoveList
01a922b8  b         #0x1a930a4                                     
01a922bc  tbnz      w19, #0, #0x1a930a4                            
01a922c0  ldr       x9, [x24]                                      
01a922c4  ldr       x9, [x9, #0xb8]                                
01a922c8  ldr       x9, [x9]                                       
01a922cc  cbz       x9, #0x1a93134                                 
01a922d0  ldr       x0, [x29]                                      
01a922d4  ldr       x26, [x9, #0x158]                              
01a922d8  ldr       x27, [x8, #0x18]                               
01a922dc  ldr       w10, [x0, #0xe4]                               
01a922e0  cbnz      w10, #0x1a9222c                                
01a922e4  b         #0x1a92228                                     
01a922e8  mov       w22, #-1                                       
01a922ec  ldr       x8, [x21]                                      
01a922f0  cbz       x8, #0x1a93134                                 
01a922f4  ldr       x0, [x29]                                      
01a922f8  ldr       s8, [x8, #0x20]                                
01a922fc  ldr       w9, [x0, #0xe4]                                
01a92300  cbnz      w9, #0x1a92308                                 
01a92304  bl        #0x183dcb0                                     
01a92308  fmov      s0, s8                                         
01a9230c  mov       x0, xzr                                        
01a92310  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a92314  add       w22, w22, #1                                   
01a92318  cmp       w22, w0                                        
01a9231c  b.ge      #0x1a930a4                                     
01a92320  tbz       w19, #0, #0x1a923b8                            
01a92324  ldr       x8, [x24]                                      
01a92328  ldr       x8, [x8, #0xb8]                                
01a9232c  ldr       x8, [x8]                                       
01a92330  cbz       x8, #0x1a93134                                 
01a92334  ldr       w9, [x20, #0x18]                               
01a92338  cmp       w23, w9                                        
01a9233c  b.hs      #0x1a93138                                     
01a92340  ldr       x9, [x21]                                      
01a92344  cbz       x9, #0x1a93134                                 
01a92348  ldr       x0, [x29]                                      
01a9234c  ldr       x26, [x8, #0x120]                              
01a92350  ldr       x27, [x9, #0x18]                               
01a92354  ldr       w10, [x0, #0xe4]                               
01a92358  cbnz      w10, #0x1a92360                                
01a9235c  bl        #0x183dcb0                                     
01a92360  mov       x0, x27                                        
01a92364  mov       x1, xzr                                        
01a92368  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9236c  cbz       x26, #0x1a93134                                
01a92370  mov       w1, w0                                         
01a92374  mov       x0, x26                                        
01a92378  mov       x2, xzr                                        
01a9237c  bl        #0x1a3da9c                                     // ItemDataBase$$GetItemData
01a92380  cbz       x0, #0x1a93134                                 
01a92384  ldr       x8, [x24]                                      
01a92388  ldr       x8, [x8, #0xb8]                                
01a9238c  ldr       x9, [x8]                                       
01a92390  cbz       x9, #0x1a93134                                 
01a92394  ldr       x8, [x0, #0x18]                                
01a92398  cbz       x8, #0x1a93134                                 
01a9239c  ldrsw     x9, [x9, #0x5cc]                               
01a923a0  ldr       w10, [x8, #0x18]                               
01a923a4  cmp       w9, w10                                        
01a923a8  b.hs      #0x1a93138                                     
01a923ac  add       x8, x8, x9, lsl #3                             
01a923b0  ldr       x26, [x8, #0x20]                               
01a923b4  b         #0x1a9243c                                     
01a923b8  adrp      x8, #0x3d14000                                 
01a923bc  ldrb      w8, [x8, #0x679]                               
01a923c0  cbnz      w8, #0x1a923dc                                 
01a923c4  adrp      x0, #0x3a7c000                                 
01a923c8  ldr       x0, [x0, #0xe18]                               
01a923cc  bl        #0x183db90                                     
01a923d0  adrp      x8, #0x3d14000                                 
01a923d4  mov       w9, #1                                         
01a923d8  strb      w9, [x8, #0x679]                               
01a923dc  ldr       w8, [x20, #0x18]                               
01a923e0  cmp       w23, w8                                        
01a923e4  b.hs      #0x1a93138                                     
01a923e8  ldr       x8, [x21]                                      
01a923ec  cbz       x8, #0x1a93134                                 
01a923f0  adrp      x9, #0x3a7c000                                 
01a923f4  ldr       x9, [x9, #0xe18]                               
01a923f8  ldr       x0, [x29]                                      
01a923fc  ldr       x27, [x8, #0x18]                               
01a92400  ldr       x9, [x9]                                       
01a92404  ldr       w10, [x0, #0xe4]                               
01a92408  ldr       x9, [x9, #0xb8]                                
01a9240c  ldr       x26, [x9]                                      
01a92410  cbnz      w10, #0x1a92418                                
01a92414  bl        #0x183dcb0                                     
01a92418  mov       x0, x27                                        
01a9241c  mov       x1, xzr                                        
01a92420  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a92424  cbz       x26, #0x1a93134                                
01a92428  mov       w1, w0                                         
01a9242c  mov       x0, x26                                        
01a92430  mov       x2, xzr                                        
01a92434  bl        #0x1a3e42c                                     // Inventory$$RemoveItemByID
01a92438  mov       x26, x0                                        
01a9243c  mov       x0, x26                                        
01a92440  mov       x1, xzr                                        
01a92444  bl        #0x2c6d168                                     // System.String$$IsNullOrEmpty
01a92448  tbnz      w0, #0, #0x1a92474                             
01a9244c  adrp      x8, #0x3a8c000                                 
01a92450  mov       x1, x26                                        
01a92454  mov       x3, xzr                                        
01a92458  ldr       x8, [x8, #0x788]                               
01a9245c  ldr       x0, [x8]                                       
01a92460  adrp      x8, #0x3a81000                                 
01a92464  ldr       x8, [x8, #0xc00]                               
01a92468  ldr       x2, [x8]                                       
01a9246c  bl        #0x2c6dcf0                                     // System.String$$Concat
01a92470  mov       x25, x0                                        
01a92474  ldr       w8, [x20, #0x18]                               
01a92478  cmp       w23, w8                                        
01a9247c  b.lo      #0x1a922ec                                     
01a92480  b         #0x1a93138                                     
01a92484  mov       w22, #-1                                       
01a92488  ldr       x8, [x21]                                      
01a9248c  cbz       x8, #0x1a93134                                 
01a92490  ldr       x0, [x29]                                      
01a92494  ldr       s8, [x8, #0x20]                                
01a92498  ldr       w9, [x0, #0xe4]                                
01a9249c  cbnz      w9, #0x1a924a4                                 
01a924a0  bl        #0x183dcb0                                     
01a924a4  fmov      s0, s8                                         
01a924a8  mov       x0, xzr                                        
01a924ac  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a924b0  add       w22, w22, #1                                   
01a924b4  cmp       w22, w0                                        
01a924b8  b.ge      #0x1a930a4                                     
01a924bc  ldr       x8, [x24]                                      
01a924c0  ldr       x8, [x8, #0xb8]                                
01a924c4  ldr       x8, [x8]                                       
01a924c8  cbz       x8, #0x1a93134                                 
01a924cc  ldr       w9, [x20, #0x18]                               
01a924d0  cmp       w23, w9                                        
01a924d4  b.hs      #0x1a93138                                     
01a924d8  ldr       x9, [x21]                                      
01a924dc  cbz       x9, #0x1a93134                                 
01a924e0  ldr       x0, [x29]                                      
01a924e4  ldr       x25, [x8, #0x120]                              
01a924e8  ldr       x26, [x9, #0x18]                               
01a924ec  ldr       w10, [x0, #0xe4]                               
01a924f0  cbnz      w10, #0x1a924f8                                
01a924f4  bl        #0x183dcb0                                     
01a924f8  mov       x0, x26                                        
01a924fc  mov       x1, xzr                                        
01a92500  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a92504  cbz       x25, #0x1a93134                                
01a92508  mov       w1, w0                                         
01a9250c  mov       x0, x25                                        
01a92510  mov       x2, xzr                                        
01a92514  bl        #0x1a3da9c                                     // ItemDataBase$$GetItemData
01a92518  cbz       x0, #0x1a93134                                 
01a9251c  ldr       x8, [x24]                                      
01a92520  ldr       x8, [x8, #0xb8]                                
01a92524  ldr       x9, [x8]                                       
01a92528  cbz       x9, #0x1a93134                                 
01a9252c  ldr       x8, [x0, #0x18]                                
01a92530  mov       x25, x0                                        
01a92534  cbz       x8, #0x1a93134                                 
01a92538  ldrsw     x9, [x9, #0x5cc]                               
01a9253c  ldr       w10, [x8, #0x18]                               
01a92540  cmp       w9, w10                                        
01a92544  b.hs      #0x1a93138                                     
01a92548  add       x8, x8, x9, lsl #3                             
01a9254c  ldr       x26, [x8, #0x20]                               
01a92550  tbnz      w19, #0, #0x1a9266c                            
01a92554  adrp      x8, #0x3d14000                                 
01a92558  ldrb      w8, [x8, #0x679]                               
01a9255c  cbnz      w8, #0x1a92578                                 
01a92560  adrp      x0, #0x3a7c000                                 
01a92564  ldr       x0, [x0, #0xe18]                               
01a92568  bl        #0x183db90                                     
01a9256c  adrp      x8, #0x3d14000                                 
01a92570  mov       w9, #1                                         
01a92574  strb      w9, [x8, #0x679]                               
01a92578  ldr       w8, [x20, #0x18]                               
01a9257c  cmp       w23, w8                                        
01a92580  b.hs      #0x1a93138                                     
01a92584  ldr       x8, [x21]                                      
01a92588  cbz       x8, #0x1a93134                                 
01a9258c  adrp      x9, #0x3a7c000                                 
01a92590  ldr       x9, [x9, #0xe18]                               
01a92594  ldr       x0, [x29]                                      
01a92598  ldr       x28, [x8, #0x18]                               
01a9259c  ldr       x9, [x9]                                       
01a925a0  ldr       w10, [x0, #0xe4]                               
01a925a4  ldr       x9, [x9, #0xb8]                                
01a925a8  ldr       x27, [x9]                                      
01a925ac  cbnz      w10, #0x1a925b4                                
01a925b0  bl        #0x183dcb0                                     
01a925b4  mov       x0, x28                                        
01a925b8  mov       x1, xzr                                        
01a925bc  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a925c0  cbz       x27, #0x1a93134                                
01a925c4  mov       w1, w0                                         
01a925c8  mov       x0, x27                                        
01a925cc  mov       w2, #-1                                        
01a925d0  mov       w3, #1                                         
01a925d4  mov       x4, xzr                                        
01a925d8  bl        #0x1a3b784                                     // Inventory$$AddItem
01a925dc  adrp      x8, #0x3a7b000                                 
01a925e0  adrp      x28, #0x3a7d000                                
01a925e4  mov       x27, x0                                        
01a925e8  ldr       x8, [x8, #0xc10]                               
01a925ec  ldr       x8, [x8]                                       
01a925f0  ldr       w9, [x8, #0xe4]                                
01a925f4  ldr       x28, [x28, #0x150]                             
01a925f8  cbnz      w9, #0x1a92604                                 
01a925fc  mov       x0, x8                                         
01a92600  bl        #0x183dcb0                                     
01a92604  mov       x0, x27                                        
01a92608  mov       x1, xzr                                        
01a9260c  mov       x2, xzr                                        
01a92610  bl        #0x35c9cb8                                     // UnityEngine.Object$$op_Equality
01a92614  tbz       w0, #0, #0x1a9266c                             
01a92618  adrp      x8, #0x3d14000                                 
01a9261c  ldrb      w8, [x8, #0x677]                               
01a92620  cbnz      w8, #0x1a9263c                                 
01a92624  adrp      x0, #0x3a7c000                                 
01a92628  ldr       x0, [x0, #0xc98]                               
01a9262c  bl        #0x183db90                                     
01a92630  mov       w8, #1                                         
01a92634  adrp      x9, #0x3d14000                                 
01a92638  strb      w8, [x9, #0x677]                               
01a9263c  adrp      x8, #0x3a7c000                                 
01a92640  ldr       x8, [x8, #0xc98]                               
01a92644  ldr       x8, [x8]                                       
01a92648  ldr       x8, [x8, #0xb8]                                
01a9264c  ldr       x8, [x8]                                       
01a92650  cbz       x8, #0x1a93134                                 
01a92654  ldr       x0, [x8, #0x98]                                
01a92658  cbz       x0, #0x1a93134                                 
01a9265c  mov       x1, x25                                        
01a92660  mov       w2, #1                                         
01a92664  mov       x3, xzr                                        
01a92668  bl        #0x1993094                                     // ItemOverSlotPopup$$Show
01a9266c  adrp      x8, #0x3a81000                                 
01a92670  ldr       x0, [x28]                                      
01a92674  mov       x1, x26                                        
01a92678  ldr       x8, [x8, #0xc00]                               
01a9267c  mov       x3, xzr                                        
01a92680  ldr       x2, [x8]                                       
01a92684  bl        #0x2c6dcf0                                     // System.String$$Concat
01a92688  ldr       w8, [x20, #0x18]                               
01a9268c  mov       x25, x0                                        
01a92690  cmp       w23, w8                                        
01a92694  b.lo      #0x1a92488                                     
01a92698  b         #0x1a93138                                     
01a9269c  tbnz      w19, #0, #0x1a930a4                            
01a926a0  ldr       x9, [x24]                                      
01a926a4  ldr       x9, [x9, #0xb8]                                
01a926a8  ldr       x9, [x9]                                       
01a926ac  cbz       x9, #0x1a93134                                 
01a926b0  ldr       x0, [x29]                                      
01a926b4  ldr       x26, [x9, #0x178]                              
01a926b8  b         #0x1a926d8                                     
01a926bc  tbnz      w19, #0, #0x1a930a4                            
01a926c0  ldr       x9, [x24]                                      
01a926c4  ldr       x9, [x9, #0xb8]                                
01a926c8  ldr       x9, [x9]                                       
01a926cc  cbz       x9, #0x1a93134                                 
01a926d0  ldr       x0, [x29]                                      
01a926d4  ldr       x26, [x9, #0x170]                              
01a926d8  ldr       w10, [x0, #0xe4]                               
01a926dc  ldr       x27, [x8, #0x18]                               
01a926e0  cbnz      w10, #0x1a926e8                                
01a926e4  bl        #0x183dcb0                                     
01a926e8  mov       x0, x27                                        
01a926ec  mov       x1, xzr                                        
01a926f0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a926f4  ldr       w8, [x20, #0x18]                               
01a926f8  cmp       w23, w8                                        
01a926fc  b.hs      #0x1a93138                                     
01a92700  ldr       x8, [x21]                                      
01a92704  cbz       x8, #0x1a93134                                 
01a92708  ldr       s0, [x8, #0x20]                                
01a9270c  mov       w27, w0                                        
01a92710  mov       x0, xzr                                        
01a92714  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a92718  cbz       x26, #0x1a93134                                
01a9271c  adrp      x9, #0x3a7c000                                 
01a92720  ldr       w10, [x26, #0x1c]                              
01a92724  ldr       x8, [x26, #0x10]                               
01a92728  ldr       x9, [x9, #0xc10]                               
01a9272c  add       w10, w10, #1                                   
01a92730  ldr       x9, [x9]                                       
01a92734  str       w10, [x26, #0x1c]                              
01a92738  cbz       x8, #0x1a93134                                 
01a9273c  mov       w12, #0x3e8                                    
01a92740  ldrsw     x10, [x26, #0x18]                              
01a92744  ldr       w11, [x8, #0x18]                               
01a92748  madd      w1, w27, w12, w0                               
01a9274c  cmp       w10, w11                                       
01a92750  b.hs      #0x1a92c28                                     
01a92754  add       x8, x8, x10, lsl #2                            
01a92758  add       w9, w10, #1                                    
01a9275c  str       w9, [x26, #0x18]                               
01a92760  str       w1, [x8, #0x20]                                
01a92764  b         #0x1a930a4                                     
01a92768  ldr       x8, [x24]                                      
01a9276c  ldr       x8, [x8, #0xb8]                                
01a92770  ldr       x8, [x8]                                       
01a92774  cbz       x8, #0x1a93134                                 
01a92778  ldr       q0, [x8, #0xb0]                                
01a9277c  ldr       w9, [x8, #0xc0]                                
01a92780  add       x0, sp, #0x30                                  
01a92784  ldr       x25, [x8, #0x120]                              
01a92788  mov       x1, xzr                                        
01a9278c  str       q0, [sp, #0x30]                                
01a92790  str       w9, [sp, #0x40]                                
01a92794  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a92798  cbz       x25, #0x1a93134                                
01a9279c  mov       w1, w0                                         
01a927a0  mov       x0, x25                                        
01a927a4  mov       x2, xzr                                        
01a927a8  bl        #0x1a3da9c                                     // ItemDataBase$$GetItemData
01a927ac  tbnz      w19, #0, #0x1a928f0                            
01a927b0  mov       x25, x0                                        
01a927b4  cbz       x0, #0x1a928c0                                 
01a927b8  adrp      x8, #0x3d14000                                 
01a927bc  ldrb      w8, [x8, #0x679]                               
01a927c0  cbnz      w8, #0x1a927dc                                 
01a927c4  adrp      x0, #0x3a7c000                                 
01a927c8  ldr       x0, [x0, #0xe18]                               
01a927cc  bl        #0x183db90                                     
01a927d0  adrp      x8, #0x3d14000                                 
01a927d4  mov       w9, #1                                         
01a927d8  strb      w9, [x8, #0x679]                               
01a927dc  ldr       x8, [x24]                                      
01a927e0  ldr       x8, [x8, #0xb8]                                
01a927e4  ldr       x8, [x8]                                       
01a927e8  cbz       x8, #0x1a93134                                 
01a927ec  adrp      x9, #0x3a7c000                                 
01a927f0  add       x0, sp, #0x10                                  
01a927f4  mov       x1, xzr                                        
01a927f8  ldr       x9, [x9, #0xe18]                               
01a927fc  ldr       q0, [x8, #0xb0]                                
01a92800  ldr       w8, [x8, #0xc0]                                
01a92804  ldr       x9, [x9]                                       
01a92808  ldr       x9, [x9, #0xb8]                                
01a9280c  ldr       x26, [x9]                                      
01a92810  str       q0, [sp, #0x10]                                
01a92814  str       w8, [sp, #0x20]                                
01a92818  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9281c  cbz       x26, #0x1a93134                                
01a92820  mov       w1, w0                                         
01a92824  mov       x0, x26                                        
01a92828  mov       w2, #-1                                        
01a9282c  mov       w3, #1                                         
01a92830  mov       x4, xzr                                        
01a92834  bl        #0x1a3b784                                     // Inventory$$AddItem
01a92838  adrp      x8, #0x3a7b000                                 
01a9283c  mov       x26, x0                                        
01a92840  ldr       x8, [x8, #0xc10]                               
01a92844  ldr       x8, [x8]                                       
01a92848  ldr       w9, [x8, #0xe4]                                
01a9284c  cbnz      w9, #0x1a92858                                 
01a92850  mov       x0, x8                                         
01a92854  bl        #0x183dcb0                                     
01a92858  mov       x0, x26                                        
01a9285c  mov       x1, xzr                                        
01a92860  mov       x2, xzr                                        
01a92864  bl        #0x35c9cb8                                     // UnityEngine.Object$$op_Equality
01a92868  tbz       w0, #0, #0x1a928c0                             
01a9286c  adrp      x8, #0x3d14000                                 
01a92870  ldrb      w8, [x8, #0x677]                               
01a92874  cbnz      w8, #0x1a92890                                 
01a92878  adrp      x0, #0x3a7c000                                 
01a9287c  ldr       x0, [x0, #0xc98]                               
01a92880  bl        #0x183db90                                     
01a92884  mov       w8, #1                                         
01a92888  adrp      x9, #0x3d14000                                 
01a9288c  strb      w8, [x9, #0x677]                               
01a92890  adrp      x8, #0x3a7c000                                 
01a92894  ldr       x8, [x8, #0xc98]                               
01a92898  ldr       x8, [x8]                                       
01a9289c  ldr       x8, [x8, #0xb8]                                
01a928a0  ldr       x8, [x8]                                       
01a928a4  cbz       x8, #0x1a93134                                 
01a928a8  ldr       x0, [x8, #0x98]                                
01a928ac  cbz       x0, #0x1a93134                                 
01a928b0  mov       x1, x25                                        
01a928b4  mov       w2, #1                                         
01a928b8  mov       x3, xzr                                        
01a928bc  bl        #0x1993094                                     // ItemOverSlotPopup$$Show
01a928c0  ldr       x8, [x24]                                      
01a928c4  mov       w0, #-1                                        
01a928c8  mov       x1, xzr                                        
01a928cc  ldr       x8, [x8, #0xb8]                                
01a928d0  ldr       x21, [x8]                                      
01a928d4  add       x8, sp, #0x6c                                  
01a928d8  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a928dc  cbz       x21, #0x1a93134                                
01a928e0  ldur      q0, [sp, #0x6c]                                
01a928e4  ldr       w8, [sp, #0x7c]                                
01a928e8  str       q0, [x21, #0xb0]                               
01a928ec  str       w8, [x21, #0xc0]                               
01a928f0  adrp      x9, #0x3a7c000                                 
01a928f4  ldr       x9, [x9, #0xde8]                               
01a928f8  ldr       x0, [x9]                                       
01a928fc  ldr       w8, [x0, #0xe4]                                
01a92900  cbnz      w8, #0x1a92910                                 
01a92904  mov       x21, x9                                        
01a92908  bl        #0x183dcb0                                     
01a9290c  ldr       x0, [x21]                                      
01a92910  ldr       x8, [x24]                                      
01a92914  ldr       x8, [x8, #0xb8]                                
01a92918  ldr       x9, [x8]                                       
01a9291c  cbz       x9, #0x1a93134                                 
01a92920  ldr       x8, [x0, #0xb8]                                
01a92924  ldr       x8, [x8, #0x100]                               
01a92928  cbnz      x8, #0x1a92d58                                 
01a9292c  b         #0x1a93134                                     
01a92930  tbz       w19, #0, #0x1a92a98                            
01a92934  ldr       x9, [x24]                                      
01a92938  ldr       x9, [x9, #0xb8]                                
01a9293c  ldr       x9, [x9]                                       
01a92940  cbz       x9, #0x1a93134                                 
01a92944  ldr       x0, [x29]                                      
01a92948  ldr       x25, [x9, #0x120]                              
01a9294c  ldr       x26, [x8, #0x18]                               
01a92950  ldr       w10, [x0, #0xe4]                               
01a92954  cbnz      w10, #0x1a9295c                                
01a92958  bl        #0x183dcb0                                     
01a9295c  mov       x0, x26                                        
01a92960  mov       x1, xzr                                        
01a92964  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a92968  cbz       x25, #0x1a93134                                
01a9296c  mov       w1, w0                                         
01a92970  mov       x0, x25                                        
01a92974  mov       x2, xzr                                        
01a92978  bl        #0x1a3da9c                                     // ItemDataBase$$GetItemData
01a9297c  cbz       x0, #0x1a93134                                 
01a92980  ldr       x8, [x24]                                      
01a92984  ldr       x8, [x8, #0xb8]                                
01a92988  ldr       x9, [x8]                                       
01a9298c  cbz       x9, #0x1a93134                                 
01a92990  ldr       x8, [x0, #0x18]                                
01a92994  cbnz      x8, #0x1a92d58                                 
01a92998  b         #0x1a93134                                     
01a9299c  cmp       w10, #0x1e                                     
01a929a0  b.ne      #0x1a930a4                                     
01a929a4  tbnz      w19, #0, #0x1a930a4                            
01a929a8  ldr       x9, [x24]                                      
01a929ac  ldr       x9, [x9, #0xb8]                                
01a929b0  ldr       x9, [x9]                                       
01a929b4  cbz       x9, #0x1a93134                                 
01a929b8  ldr       x0, [x29]                                      
01a929bc  ldr       x26, [x9, #0x170]                              
01a929c0  ldr       w10, [x0, #0xe4]                               
01a929c4  ldr       x27, [x8, #0x18]                               
01a929c8  cbnz      w10, #0x1a929d0                                
01a929cc  bl        #0x183dcb0                                     
01a929d0  mov       x0, x27                                        
01a929d4  mov       x1, xzr                                        
01a929d8  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a929dc  ldr       w8, [x20, #0x18]                               
01a929e0  cmp       w23, w8                                        
01a929e4  b.hs      #0x1a93138                                     
01a929e8  ldr       x8, [x21]                                      
01a929ec  cbz       x8, #0x1a93134                                 
01a929f0  ldr       s0, [x8, #0x20]                                
01a929f4  mov       w27, w0                                        
01a929f8  mov       x0, xzr                                        
01a929fc  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a92a00  cbz       x26, #0x1a93134                                
01a92a04  mov       w8, #0x3e8                                     
01a92a08  madd      w1, w27, w8, w0                                
01a92a0c  adrp      x8, #0x3a81000                                 
01a92a10  mov       x0, x26                                        
01a92a14  ldr       x8, [x8, #0xb88]                               
01a92a18  ldr       x2, [x8]                                       
01a92a1c  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a92a20  b         #0x1a930a4                                     
01a92a24  adrp      x8, #0x3d14000                                 
01a92a28  mov       w26, w0                                        
01a92a2c  ldrb      w8, [x8, #0x679]                               
01a92a30  cbnz      w8, #0x1a92a4c                                 
01a92a34  adrp      x0, #0x3a7c000                                 
01a92a38  ldr       x0, [x0, #0xe18]                               
01a92a3c  bl        #0x183db90                                     
01a92a40  adrp      x8, #0x3d14000                                 
01a92a44  mov       w9, #1                                         
01a92a48  strb      w9, [x8, #0x679]                               
01a92a4c  adrp      x8, #0x3a7c000                                 
01a92a50  ldr       x8, [x8, #0xe18]                               
01a92a54  ldr       x8, [x8]                                       
01a92a58  ldr       x8, [x8, #0xb8]                                
01a92a5c  ldr       x0, [x8]                                       
01a92a60  cbz       x0, #0x1a93134                                 
01a92a64  and       w2, w19, #1                                    
01a92a68  mov       w1, w26                                        
01a92a6c  mov       x3, xzr                                        
01a92a70  bl        #0x1a3e758                                     // Inventory$$RemoveListItem
01a92a74  mov       x1, xzr                                        
01a92a78  mov       x26, x0                                        
01a92a7c  bl        #0x2c6d168                                     // System.String$$IsNullOrEmpty
01a92a80  tbnz      w0, #0, #0x1a930a4                             
01a92a84  adrp      x8, #0x3a8c000                                 
01a92a88  mov       x1, x26                                        
01a92a8c  ldr       x8, [x8, #0x788]                               
01a92a90  ldr       x0, [x8]                                       
01a92a94  b         #0x1a92d74                                     
01a92a98  adrp      x8, #0x3d14000                                 
01a92a9c  ldrb      w8, [x8, #0x679]                               
01a92aa0  cbnz      w8, #0x1a92ac0                                 
01a92aa4  adrp      x0, #0x3a7c000                                 
01a92aa8  ldr       x0, [x0, #0xe18]                               
01a92aac  bl        #0x183db90                                     
01a92ab0  ldr       w9, [x20, #0x18]                               
01a92ab4  adrp      x8, #0x3d14000                                 
01a92ab8  mov       w10, #1                                        
01a92abc  strb      w10, [x8, #0x679]                              
01a92ac0  cmp       w23, w9                                        
01a92ac4  b.hs      #0x1a93138                                     
01a92ac8  ldr       x8, [x21]                                      
01a92acc  cbz       x8, #0x1a93134                                 
01a92ad0  adrp      x9, #0x3a7c000                                 
01a92ad4  ldr       x9, [x9, #0xe18]                               
01a92ad8  ldr       x0, [x29]                                      
01a92adc  ldr       x26, [x8, #0x18]                               
01a92ae0  ldr       x9, [x9]                                       
01a92ae4  ldr       w10, [x0, #0xe4]                               
01a92ae8  ldr       x9, [x9, #0xb8]                                
01a92aec  ldr       x25, [x9]                                      
01a92af0  cbnz      w10, #0x1a92af8                                
01a92af4  bl        #0x183dcb0                                     
01a92af8  mov       x0, x26                                        
01a92afc  mov       x1, xzr                                        
01a92b00  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a92b04  cbz       x25, #0x1a93134                                
01a92b08  mov       w1, w0                                         
01a92b0c  mov       x0, x25                                        
01a92b10  mov       w2, #-1                                        
01a92b14  mov       w3, #1                                         
01a92b18  mov       x4, xzr                                        
01a92b1c  bl        #0x1a3b784                                     // Inventory$$AddItem
01a92b20  adrp      x8, #0x3a7b000                                 
01a92b24  mov       x25, x0                                        
01a92b28  ldr       x8, [x8, #0xc10]                               
01a92b2c  ldr       x8, [x8]                                       
01a92b30  ldr       w9, [x8, #0xe4]                                
01a92b34  cbnz      w9, #0x1a92b40                                 
01a92b38  mov       x0, x8                                         
01a92b3c  bl        #0x183dcb0                                     
01a92b40  mov       x0, x25                                        
01a92b44  mov       x1, xzr                                        
01a92b48  mov       x2, xzr                                        
01a92b4c  bl        #0x35c9cb8                                     // UnityEngine.Object$$op_Equality
01a92b50  tbz       w0, #0, #0x1a92ce8                             
01a92b54  ldr       x8, [x24]                                      
01a92b58  ldr       x8, [x8, #0xb8]                                
01a92b5c  ldr       x8, [x8]                                       
01a92b60  cbz       x8, #0x1a93134                                 
01a92b64  ldr       w9, [x20, #0x18]                               
01a92b68  cmp       w23, w9                                        
01a92b6c  b.hs      #0x1a93138                                     
01a92b70  ldr       x9, [x21]                                      
01a92b74  cbz       x9, #0x1a93134                                 
01a92b78  ldr       x0, [x29]                                      
01a92b7c  ldr       x25, [x8, #0x120]                              
01a92b80  ldr       x26, [x9, #0x18]                               
01a92b84  ldr       w10, [x0, #0xe4]                               
01a92b88  cbnz      w10, #0x1a92b90                                
01a92b8c  bl        #0x183dcb0                                     
01a92b90  mov       x0, x26                                        
01a92b94  mov       x1, xzr                                        
01a92b98  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a92b9c  cbz       x25, #0x1a93134                                
01a92ba0  mov       w1, w0                                         
01a92ba4  mov       x0, x25                                        
01a92ba8  mov       x2, xzr                                        
01a92bac  bl        #0x1a3da9c                                     // ItemDataBase$$GetItemData
01a92bb0  adrp      x8, #0x3d14000                                 
01a92bb4  mov       x25, x0                                        
01a92bb8  ldrb      w8, [x8, #0x677]                               
01a92bbc  cbnz      w8, #0x1a92bd8                                 
01a92bc0  adrp      x0, #0x3a7c000                                 
01a92bc4  ldr       x0, [x0, #0xc98]                               
01a92bc8  bl        #0x183db90                                     
01a92bcc  mov       w8, #1                                         
01a92bd0  adrp      x9, #0x3d14000                                 
01a92bd4  strb      w8, [x9, #0x677]                               
01a92bd8  adrp      x8, #0x3a7c000                                 
01a92bdc  ldr       x8, [x8, #0xc98]                               
01a92be0  ldr       x8, [x8]                                       
01a92be4  ldr       x8, [x8, #0xb8]                                
01a92be8  ldr       x8, [x8]                                       
01a92bec  cbz       x8, #0x1a93134                                 
01a92bf0  ldr       x0, [x8, #0x98]                                
01a92bf4  cbz       x0, #0x1a93134                                 
01a92bf8  mov       x1, x25                                        
01a92bfc  mov       w2, #1                                         
01a92c00  mov       x3, xzr                                        
01a92c04  bl        #0x1993094                                     // ItemOverSlotPopup$$Show
01a92c08  cbz       x25, #0x1a93134                                
01a92c0c  ldr       x8, [x24]                                      
01a92c10  ldr       x8, [x8, #0xb8]                                
01a92c14  ldr       x9, [x8]                                       
01a92c18  cbz       x9, #0x1a93134                                 
01a92c1c  ldr       x8, [x25, #0x18]                               
01a92c20  cbnz      x8, #0x1a92d58                                 
01a92c24  b         #0x1a93134                                     
01a92c28  ldr       x8, [x9, #0x20]                                
01a92c2c  mov       x0, x26                                        
01a92c30  ldr       x8, [x8, #0xc0]                                
01a92c34  ldr       x2, [x8, #0x70]                                
01a92c38  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a92c3c  b         #0x1a930a4                                     
01a92c40  b.pl      #0x1a930a4                                     
01a92c44  adrp      x8, #0x3a7b000                                 
01a92c48  fneg      s0, s0                                         
01a92c4c  mov       w1, #5                                         
01a92c50  ldr       x8, [x8, #0x7c8]                               
01a92c54  ldr       x0, [x8]                                       
01a92c58  str       s0, [sp, #0xb4]                                
01a92c5c  bl        #0x183dc20                                     
01a92c60  cbz       x0, #0x1a93134                                 
01a92c64  ldr       w8, [x0, #0x18]                                
01a92c68  mov       x25, x0                                        
01a92c6c  cbz       w8, #0x1a93138                                 
01a92c70  adrp      x9, #0x3a8c000                                 
01a92c74  ldr       x9, [x9, #0x788]                               
01a92c78  ldr       x9, [x9]                                       
01a92c7c  cmp       w8, #1                                         
01a92c80  str       x9, [x25, #0x20]                               
01a92c84  b.eq      #0x1a93138                                     
01a92c88  cmp       w8, #2                                         
01a92c8c  str       x26, [x25, #0x28]                              
01a92c90  b.ls      #0x1a93138                                     
01a92c94  adrp      x8, #0x3a7c000                                 
01a92c98  add       x0, sp, #0xb4                                  
01a92c9c  mov       x2, xzr                                        
01a92ca0  ldr       x8, [x8, #0xee8]                               
01a92ca4  ldr       x8, [x8]                                       
01a92ca8  str       x8, [x25, #0x30]                               
01a92cac  adrp      x8, #0x3a7f000                                 
01a92cb0  ldr       x8, [x8, #0x208]                               
01a92cb4  ldr       x1, [x8]                                       
01a92cb8  bl        #0x2de259c                                     // System.Single$$ToString
01a92cbc  ldr       w8, [x25, #0x18]                               
01a92cc0  cmp       w8, #3                                         
01a92cc4  b.ls      #0x1a93138                                     
01a92cc8  cmp       w8, #4                                         
01a92ccc  str       x0, [x25, #0x38]                               
01a92cd0  b.eq      #0x1a93138                                     
01a92cd4  adrp      x8, #0x3a81000                                 
01a92cd8  ldr       x8, [x8, #0xc00]                               
01a92cdc  ldr       x8, [x8]                                       
01a92ce0  str       x8, [x25, #0x40]                               
01a92ce4  b         #0x1a93094                                     
01a92ce8  adrp      x8, #0x3d14000                                 
01a92cec  ldrb      w8, [x8, #0x678]                               
01a92cf0  cbnz      w8, #0x1a92d0c                                 
01a92cf4  adrp      x0, #0x3a7c000                                 
01a92cf8  ldr       x0, [x0, #0xd38]                               
01a92cfc  bl        #0x183db90                                     
01a92d00  mov       w8, #1                                         
01a92d04  adrp      x9, #0x3d14000                                 
01a92d08  strb      w8, [x9, #0x678]                               
01a92d0c  adrp      x8, #0x3a7c000                                 
01a92d10  ldr       x8, [x8, #0xd38]                               
01a92d14  ldr       x8, [x8]                                       
01a92d18  ldr       x8, [x8, #0xb8]                                
01a92d1c  ldr       x0, [x8]                                       
01a92d20  cbz       x0, #0x1a93134                                 
01a92d24  mov       x1, x25                                        
01a92d28  mov       w2, #-1                                        
01a92d2c  mov       x3, xzr                                        
01a92d30  bl        #0x1a1b5b8                                     // Equipment$$EquipItem
01a92d34  cbz       x25, #0x1a93134                                
01a92d38  ldr       x8, [x25, #0x20]                               
01a92d3c  cbz       x8, #0x1a93134                                 
01a92d40  ldr       x9, [x24]                                      
01a92d44  ldr       x9, [x9, #0xb8]                                
01a92d48  ldr       x9, [x9]                                       
01a92d4c  cbz       x9, #0x1a93134                                 
01a92d50  ldr       x8, [x8, #0x18]                                
01a92d54  cbz       x8, #0x1a93134                                 
01a92d58  ldrsw     x9, [x9, #0x5cc]                               
01a92d5c  ldr       w10, [x8, #0x18]                               
01a92d60  cmp       w9, w10                                        
01a92d64  b.hs      #0x1a93138                                     
01a92d68  add       x8, x8, x9, lsl #3                             
01a92d6c  ldr       x0, [x28]                                      
01a92d70  ldr       x1, [x8, #0x20]                                
01a92d74  adrp      x8, #0x3a81000                                 
01a92d78  ldr       x8, [x8, #0xc00]                               
01a92d7c  ldr       x2, [x8]                                       
01a92d80  mov       x3, xzr                                        
01a92d84  bl        #0x2c6dcf0                                     // System.String$$Concat
01a92d88  b         #0x1a930a0                                     
01a92d8c  ldr       s0, [sp, #0xbc]                                
01a92d90  fcmp      s0, #0.0                                       
01a92d94  b.pl      #0x1a92ddc                                     
01a92d98  adrp      x8, #0x3d14000                                 
01a92d9c  ldrb      w8, [x8, #0x679]                               
01a92da0  cbnz      w8, #0x1a92dbc                                 
01a92da4  adrp      x0, #0x3a7c000                                 
01a92da8  ldr       x0, [x0, #0xe18]                               
01a92dac  bl        #0x183db90                                     
01a92db0  adrp      x8, #0x3d14000                                 
01a92db4  mov       w9, #1                                         
01a92db8  strb      w9, [x8, #0x679]                               
01a92dbc  adrp      x8, #0x3a7c000                                 
01a92dc0  ldr       x8, [x8, #0xe18]                               
01a92dc4  ldr       x8, [x8]                                       
01a92dc8  ldr       x8, [x8, #0xb8]                                
01a92dcc  ldr       x0, [x8]                                       
01a92dd0  cbz       x0, #0x1a93134                                 
01a92dd4  mov       x1, xzr                                        
01a92dd8  bl        #0x1a3cf08                                     // Inventory$$RemoveSlotWithStr
01a92ddc  ldr       x8, [x24]                                      
01a92de0  ldr       x8, [x8, #0xb8]                                
01a92de4  ldr       x0, [x8]                                       
01a92de8  cbz       x0, #0x1a93134                                 
01a92dec  mov       w1, #5                                         
01a92df0  mov       x2, xzr                                        
01a92df4  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a92df8  fcmp      s0, s9                                         
01a92dfc  b.pl      #0x1a92e48                                     
01a92e00  adrp      x8, #0x3d14000                                 
01a92e04  ldrb      w8, [x8, #0x678]                               
01a92e08  cbnz      w8, #0x1a92e24                                 
01a92e0c  adrp      x0, #0x3a7c000                                 
01a92e10  ldr       x0, [x0, #0xd38]                               
01a92e14  bl        #0x183db90                                     
01a92e18  mov       w8, #1                                         
01a92e1c  adrp      x9, #0x3d14000                                 
01a92e20  strb      w8, [x9, #0x678]                               
01a92e24  adrp      x8, #0x3a7c000                                 
01a92e28  ldr       x8, [x8, #0xd38]                               
01a92e2c  ldr       x8, [x8]                                       
01a92e30  ldr       x8, [x8, #0xb8]                                
01a92e34  ldr       x0, [x8]                                       
01a92e38  cbz       x0, #0x1a93134                                 
01a92e3c  ldr       x1, [x0, #0x48]                                
01a92e40  mov       x2, xzr                                        
01a92e44  bl        #0x1a1aa84                                     // Equipment$$CheckLowStrEquip
01a92e48  cmp       w26, #3                                        
01a92e4c  b.eq      #0x1a930a4                                     
01a92e50  sub       w8, w26, #8                                    
01a92e54  cmn       w8, #4                                         
01a92e58  b.hi      #0x1a92e78                                     
01a92e5c  sub       w8, w26, #0xf                                  
01a92e60  cmn       w8, #3                                         
01a92e64  b.hs      #0x1a92e80                                     
01a92e68  adrp      x8, #0x3a7b000                                 
01a92e6c  ldr       x8, [x8, #0xaf0]                               
01a92e70  ldr       x27, [x8]                                      
01a92e74  b         #0x1a92ec4                                     
01a92e78  mov       w8, #-5                                        
01a92e7c  b         #0x1a92e84                                     
01a92e80  mov       w8, #-9                                        
01a92e84  add       w8, w26, w8                                    
01a92e88  add       x0, sp, #0xb8                                  
01a92e8c  mov       x1, xzr                                        
01a92e90  str       w8, [sp, #0xb8]                                
01a92e94  bl        #0x2dcd834                                     // System.Int32$$ToString
01a92e98  adrp      x8, #0x3a8c000                                 
01a92e9c  adrp      x9, #0x3a8c000                                 
01a92ea0  mov       x1, x0                                         
01a92ea4  ldr       x8, [x8, #0x790]                               
01a92ea8  mov       x3, xzr                                        
01a92eac  ldr       x8, [x8]                                       
01a92eb0  ldr       x9, [x9, #0x780]                               
01a92eb4  ldr       x2, [x9]                                       
01a92eb8  mov       x0, x8                                         
01a92ebc  bl        #0x2c6dcf0                                     // System.String$$Concat
01a92ec0  mov       x27, x0                                        
01a92ec4  ldr       s0, [sp, #0xbc]                                
01a92ec8  fcmp      s0, #0.0                                       
01a92ecc  b.le      #0x1a92f74                                     
01a92ed0  adrp      x8, #0x3a7b000                                 
01a92ed4  mov       w1, #6                                         
01a92ed8  ldr       x8, [x8, #0x7c8]                               
01a92edc  ldr       x0, [x8]                                       
01a92ee0  bl        #0x183dc20                                     
01a92ee4  cbz       x0, #0x1a93134                                 
01a92ee8  ldr       w8, [x0, #0x18]                                
01a92eec  mov       x25, x0                                        
01a92ef0  cbz       w8, #0x1a93138                                 
01a92ef4  ldr       x9, [x28]                                      
01a92ef8  cmp       w8, #1                                         
01a92efc  str       x9, [x25, #0x20]                               
01a92f00  b.eq      #0x1a93138                                     
01a92f04  str       x27, [x25, #0x28]                              
01a92f08  adrp      x9, #0x3a7c000                                 
01a92f0c  ldr       x9, [x9, #0xde8]                               
01a92f10  ldr       x0, [x9]                                       
01a92f14  ldr       w8, [x0, #0xe4]                                
01a92f18  cbnz      w8, #0x1a92f28                                 
01a92f1c  mov       x21, x9                                        
01a92f20  bl        #0x183dcb0                                     
01a92f24  ldr       x0, [x21]                                      
01a92f28  ldr       x8, [x24]                                      
01a92f2c  ldr       x8, [x8, #0xb8]                                
01a92f30  ldr       x9, [x8]                                       
01a92f34  cbz       x9, #0x1a93134                                 
01a92f38  ldr       x8, [x0, #0xb8]                                
01a92f3c  ldr       x8, [x8]                                       
01a92f40  cbz       x8, #0x1a93134                                 
01a92f44  ldr       x10, [x8, #0x10]                               
01a92f48  ldr       w11, [x10]                                     
01a92f4c  cmp       w26, w11                                       
01a92f50  b.hs      #0x1a93138                                     
01a92f54  ldrsw     x9, [x9, #0x5cc]                               
01a92f58  ldr       x10, [x10, #0x10]                              
01a92f5c  cmp       w9, w10                                        
01a92f60  b.hs      #0x1a93138                                     
01a92f64  ldr       w11, [x25, #0x18]                              
01a92f68  cmp       w11, #2                                        
01a92f6c  b.hi      #0x1a93028                                     
01a92f70  b         #0x1a93138                                     
01a92f74  b.pl      #0x1a930a4                                     
01a92f78  adrp      x8, #0x3a7b000                                 
01a92f7c  fneg      s0, s0                                         
01a92f80  mov       w1, #6                                         
01a92f84  ldr       x8, [x8, #0x7c8]                               
01a92f88  ldr       x0, [x8]                                       
01a92f8c  str       s0, [sp, #0xbc]                                
01a92f90  bl        #0x183dc20                                     
01a92f94  cbz       x0, #0x1a93134                                 
01a92f98  ldr       w8, [x0, #0x18]                                
01a92f9c  mov       x25, x0                                        
01a92fa0  cbz       w8, #0x1a93138                                 
01a92fa4  adrp      x9, #0x3a8c000                                 
01a92fa8  cmp       w8, #1                                         
01a92fac  ldr       x9, [x9, #0x788]                               
01a92fb0  ldr       x9, [x9]                                       
01a92fb4  str       x9, [x25, #0x20]                               
01a92fb8  b.eq      #0x1a93138                                     
01a92fbc  str       x27, [x25, #0x28]                              
01a92fc0  adrp      x9, #0x3a7c000                                 
01a92fc4  ldr       x9, [x9, #0xde8]                               
01a92fc8  ldr       x0, [x9]                                       
01a92fcc  ldr       w8, [x0, #0xe4]                                
01a92fd0  cbnz      w8, #0x1a92fe0                                 
01a92fd4  mov       x21, x9                                        
01a92fd8  bl        #0x183dcb0                                     
01a92fdc  ldr       x0, [x21]                                      
01a92fe0  ldr       x8, [x24]                                      
01a92fe4  ldr       x8, [x8, #0xb8]                                
01a92fe8  ldr       x9, [x8]                                       
01a92fec  cbz       x9, #0x1a93134                                 
01a92ff0  ldr       x8, [x0, #0xb8]                                
01a92ff4  ldr       x8, [x8]                                       
01a92ff8  cbz       x8, #0x1a93134                                 
01a92ffc  ldr       x10, [x8, #0x10]                               
01a93000  ldr       w11, [x10]                                     
01a93004  cmp       w26, w11                                       
01a93008  b.hs      #0x1a93138                                     
01a9300c  ldrsw     x9, [x9, #0x5cc]                               
01a93010  ldr       x10, [x10, #0x10]                              
01a93014  cmp       w9, w10                                        
01a93018  b.hs      #0x1a93138                                     
01a9301c  ldr       w11, [x25, #0x18]                              
01a93020  cmp       w11, #2                                        
01a93024  b.ls      #0x1a93138                                     
01a93028  sxtw      x12, w26                                       
01a9302c  cmp       w11, #3                                        
01a93030  madd      x9, x10, x12, x9                               
01a93034  add       x8, x8, x9, lsl #3                             
01a93038  ldr       x8, [x8, #0x20]                                
01a9303c  str       x8, [x25, #0x30]                               
01a93040  b.eq      #0x1a93138                                     
01a93044  adrp      x8, #0x3a7c000                                 
01a93048  add       x0, sp, #0xbc                                  
01a9304c  mov       x2, xzr                                        
01a93050  ldr       x8, [x8, #0xee8]                               
01a93054  ldr       x8, [x8]                                       
01a93058  str       x8, [x25, #0x38]                               
01a9305c  adrp      x8, #0x3a7f000                                 
01a93060  ldr       x8, [x8, #0x208]                               
01a93064  ldr       x1, [x8]                                       
01a93068  bl        #0x2de259c                                     // System.Single$$ToString
01a9306c  ldr       w8, [x25, #0x18]                               
01a93070  cmp       w8, #4                                         
01a93074  b.ls      #0x1a93138                                     
01a93078  cmp       w8, #5                                         
01a9307c  str       x0, [x25, #0x40]                               
01a93080  b.eq      #0x1a93138                                     
01a93084  adrp      x8, #0x3a81000                                 
01a93088  ldr       x8, [x8, #0xc00]                               
01a9308c  ldr       x8, [x8]                                       
01a93090  str       x8, [x25, #0x48]                               
01a93094  mov       x0, x25                                        
01a93098  mov       x1, xzr                                        
01a9309c  bl        #0x2c6e35c                                     // System.String$$Concat
01a930a0  mov       x25, x0                                        
01a930a4  mov       x0, x25                                        
01a930a8  mov       x1, xzr                                        
01a930ac  bl        #0x2c6d184                                     // System.String$$IsNullOrWhiteSpace
01a930b0  tbnz      w0, #0, #0x1a93100                             
01a930b4  ldr       x21, [sp, #8]                                  
01a930b8  mov       x1, xzr                                        
01a930bc  ldr       x0, [x21, #0xf0]                               
01a930c0  bl        #0x2c6d184                                     // System.String$$IsNullOrWhiteSpace
01a930c4  mov       w8, w0                                         
01a930c8  ldr       x0, [x21, #0xf0]                               
01a930cc  tbz       w8, #0, #0x1a930e0                             
01a930d0  mov       x1, x25                                        
01a930d4  mov       x2, xzr                                        
01a930d8  bl        #0x2c63780                                     // System.String$$Concat
01a930dc  b         #0x1a930f8                                     
01a930e0  adrp      x8, #0x3a7c000                                 
01a930e4  mov       x2, x25                                        
01a930e8  mov       x3, xzr                                        
01a930ec  ldr       x8, [x8, #0xee8]                               
01a930f0  ldr       x1, [x8]                                       
01a930f4  bl        #0x2c6dcf0                                     // System.String$$Concat
01a930f8  ldr       x8, [sp, #8]                                   
01a930fc  str       x0, [x8, #0xf0]                                
01a93100  ldr       w9, [x20, #0x18]                               
01a93104  add       w23, w23, #1                                   
01a93108  cmp       w23, w9                                        
01a9310c  b.lt      #0x1a91b14                                     
01a93110  ldp       x20, x19, [sp, #0x120]                         
01a93114  ldp       x22, x21, [sp, #0x110]                         
01a93118  ldp       x24, x23, [sp, #0x100]                         
01a9311c  ldp       x26, x25, [sp, #0xf0]                          
01a93120  ldp       x28, x27, [sp, #0xe0]                          
01a93124  ldp       x29, x30, [sp, #0xd0]                          
01a93128  ldp       d9, d8, [sp, #0xc0]                            
01a9312c  add       sp, sp, #0x130                                 
01a93130  ret                                                      
01a93134  bl        #0x183dddc                                     
01a93138  bl        #0x183dde4                                     