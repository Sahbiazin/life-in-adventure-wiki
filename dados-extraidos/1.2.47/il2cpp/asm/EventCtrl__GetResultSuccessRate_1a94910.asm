float EventCtrl__GetResultSuccessRate (EventCtrl_o* __this, System_Collections_Generic_List_EventResult__o* results, const MethodInfo* method);
// RVA 0x1a94910 to 0x1a95244
01a94910  stp       d15, d14, [sp, #-0xa0]!                        
01a94914  stp       d13, d12, [sp, #0x10]                          
01a94918  stp       d11, d10, [sp, #0x20]                          
01a9491c  stp       d9, d8, [sp, #0x30]                            
01a94920  stp       x29, x30, [sp, #0x40]                          
01a94924  stp       x28, x27, [sp, #0x50]                          
01a94928  stp       x26, x25, [sp, #0x60]                          
01a9492c  stp       x24, x23, [sp, #0x70]                          
01a94930  stp       x22, x21, [sp, #0x80]                          
01a94934  stp       x20, x19, [sp, #0x90]                          
01a94938  adrp      x20, #0x3d14000                                
01a9493c  mov       x21, x1                                        
01a94940  mov       x19, x0                                        
01a94944  ldrb      w8, [x20, #0xcdf]                              
01a94948  tbnz      w8, #0, #0x1a949d8                             
01a9494c  adrp      x0, #0x3a7b000                                 
01a94950  ldr       x0, [x0, #0xf88]                               
01a94954  bl        #0x183db90                                     
01a94958  adrp      x0, #0x3a7c000                                 
01a9495c  ldr       x0, [x0, #0xc08]                               
01a94960  bl        #0x183db90                                     
01a94964  adrp      x0, #0x3a7c000                                 
01a94968  ldr       x0, [x0, #0xca8]                               
01a9496c  bl        #0x183db90                                     
01a94970  adrp      x0, #0x3a8c000                                 
01a94974  ldr       x0, [x0, #0x7f8]                               
01a94978  bl        #0x183db90                                     
01a9497c  adrp      x0, #0x3a8c000                                 
01a94980  ldr       x0, [x0, #0x800]                               
01a94984  bl        #0x183db90                                     
01a94988  adrp      x0, #0x3a7c000                                 
01a9498c  ldr       x0, [x0, #0xc00]                               
01a94990  bl        #0x183db90                                     
01a94994  adrp      x0, #0x3a8c000                                 
01a94998  ldr       x0, [x0, #0x808]                               
01a9499c  bl        #0x183db90                                     
01a949a0  adrp      x0, #0x3a8c000                                 
01a949a4  ldr       x0, [x0, #0x7d8]                               
01a949a8  bl        #0x183db90                                     
01a949ac  adrp      x0, #0x3a8c000                                 
01a949b0  ldr       x0, [x0, #0x6a0]                               
01a949b4  bl        #0x183db90                                     
01a949b8  adrp      x0, #0x3a7c000                                 
01a949bc  ldr       x0, [x0, #0xbf8]                               
01a949c0  bl        #0x183db90                                     
01a949c4  adrp      x0, #0x3a8c000                                 
01a949c8  ldr       x0, [x0, #0x810]                               
01a949cc  bl        #0x183db90                                     
01a949d0  mov       w8, #1                                         
01a949d4  strb      w8, [x20, #0xcdf]                              
01a949d8  movi      d8, #0000000000000000                          
01a949dc  str       xzr, [x19, #0x148]                             
01a949e0  cbz       x21, #0x1a9520c                                
01a949e4  adrp      x24, #0x3a8c000                                
01a949e8  adrp      x23, #0x3a8c000                                
01a949ec  ldr       x24, [x24, #0x810]                             
01a949f0  ldr       x23, [x23, #0x808]                             
01a949f4  ldr       x0, [x24]                                      
01a949f8  bl        #0x183ddcc                                     
01a949fc  ldr       x1, [x23]                                      
01a94a00  mov       x20, x0                                        
01a94a04  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a94a08  ldr       w8, [x21, #0x18]                               
01a94a0c  cmp       w8, #1                                         
01a94a10  b.lt      #0x1a94aa0                                     
01a94a14  adrp      x25, #0x3a8c000                                
01a94a18  adrp      x26, #0x3a8c000                                
01a94a1c  mov       w22, wzr                                       
01a94a20  ldr       x25, [x25, #0x6a0]                             
01a94a24  ldr       x26, [x26, #0x7f8]                             
01a94a28  ldr       x2, [x25]                                      
01a94a2c  mov       x0, x21                                        
01a94a30  mov       w1, w22                                        
01a94a34  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94a38  cbz       x20, #0x1a9523c                                
01a94a3c  ldr       w10, [x20, #0x1c]                              
01a94a40  ldr       x8, [x20, #0x10]                               
01a94a44  ldr       x9, [x26]                                      
01a94a48  add       w10, w10, #1                                   
01a94a4c  str       w10, [x20, #0x1c]                              
01a94a50  cbz       x8, #0x1a9523c                                 
01a94a54  ldrsw     x10, [x20, #0x18]                              
01a94a58  ldr       w11, [x8, #0x18]                               
01a94a5c  mov       x1, x0                                         
01a94a60  cmp       w10, w11                                       
01a94a64  b.hs      #0x1a94a7c                                     
01a94a68  add       x8, x8, x10, lsl #3                            
01a94a6c  add       w9, w10, #1                                    
01a94a70  str       w9, [x20, #0x18]                               
01a94a74  str       x1, [x8, #0x20]                                
01a94a78  b         #0x1a94a90                                     
01a94a7c  ldr       x8, [x9, #0x20]                                
01a94a80  mov       x0, x20                                        
01a94a84  ldr       x8, [x8, #0xc0]                                
01a94a88  ldr       x2, [x8, #0x70]                                
01a94a8c  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a94a90  ldr       w8, [x21, #0x18]                               
01a94a94  add       w22, w22, #1                                   
01a94a98  cmp       w22, w8                                        
01a94a9c  b.lt      #0x1a94a28                                     
01a94aa0  ldr       x0, [x24]                                      
01a94aa4  bl        #0x183ddcc                                     
01a94aa8  ldr       x1, [x23]                                      
01a94aac  mov       x21, x0                                        
01a94ab0  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a94ab4  cbz       x20, #0x1a9523c                                
01a94ab8  ldr       w8, [x20, #0x18]                               
01a94abc  cmp       w8, #1                                         
01a94ac0  b.lt      #0x1a94b78                                     
01a94ac4  adrp      x23, #0x3a8c000                                
01a94ac8  adrp      x24, #0x3a8c000                                
01a94acc  mov       w22, wzr                                       
01a94ad0  ldr       x23, [x23, #0x6a0]                             
01a94ad4  ldr       x24, [x24, #0x7f8]                             
01a94ad8  ldr       x2, [x23]                                      
01a94adc  mov       x0, x20                                        
01a94ae0  mov       w1, w22                                        
01a94ae4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94ae8  cbz       x0, #0x1a9523c                                 
01a94aec  ldr       x1, [x0, #0x10]                                
01a94af0  mov       x0, x19                                        
01a94af4  mov       w2, #-1                                        
01a94af8  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a94afc  tbnz      w0, #0, #0x1a94b68                             
01a94b00  ldr       x2, [x23]                                      
01a94b04  mov       x0, x20                                        
01a94b08  mov       w1, w22                                        
01a94b0c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94b10  cbz       x21, #0x1a9523c                                
01a94b14  ldr       w10, [x21, #0x1c]                              
01a94b18  ldr       x8, [x21, #0x10]                               
01a94b1c  ldr       x9, [x24]                                      
01a94b20  add       w10, w10, #1                                   
01a94b24  str       w10, [x21, #0x1c]                              
01a94b28  cbz       x8, #0x1a9523c                                 
01a94b2c  ldrsw     x10, [x21, #0x18]                              
01a94b30  ldr       w11, [x8, #0x18]                               
01a94b34  mov       x1, x0                                         
01a94b38  cmp       w10, w11                                       
01a94b3c  b.hs      #0x1a94b54                                     
01a94b40  add       x8, x8, x10, lsl #3                            
01a94b44  add       w9, w10, #1                                    
01a94b48  str       w9, [x21, #0x18]                               
01a94b4c  str       x1, [x8, #0x20]                                
01a94b50  b         #0x1a94b68                                     
01a94b54  ldr       x8, [x9, #0x20]                                
01a94b58  mov       x0, x21                                        
01a94b5c  ldr       x8, [x8, #0xc0]                                
01a94b60  ldr       x2, [x8, #0x70]                                
01a94b64  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a94b68  ldr       w8, [x20, #0x18]                               
01a94b6c  add       w22, w22, #1                                   
01a94b70  cmp       w22, w8                                        
01a94b74  b.lt      #0x1a94ad8                                     
01a94b78  cbz       x21, #0x1a9523c                                
01a94b7c  ldr       w8, [x21, #0x18]                               
01a94b80  adrp      x24, #0x3a7c000                                
01a94b84  adrp      x23, #0x3a7c000                                
01a94b88  ldr       x24, [x24, #0xbf8]                             
01a94b8c  ldr       x23, [x23, #0xc00]                             
01a94b90  cmp       w8, #1                                         
01a94b94  b.lt      #0x1a94bdc                                     
01a94b98  adrp      x25, #0x3a8c000                                
01a94b9c  adrp      x26, #0x3a8c000                                
01a94ba0  mov       w22, wzr                                       
01a94ba4  ldr       x25, [x25, #0x6a0]                             
01a94ba8  ldr       x26, [x26, #0x800]                             
01a94bac  ldr       x2, [x25]                                      
01a94bb0  mov       x0, x21                                        
01a94bb4  mov       w1, w22                                        
01a94bb8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94bbc  ldr       x2, [x26]                                      
01a94bc0  mov       x1, x0                                         
01a94bc4  mov       x0, x20                                        
01a94bc8  bl        #0x2795c74                                     // System.Collections.Generic.List<object>$$Remove
01a94bcc  ldr       w8, [x21, #0x18]                               
01a94bd0  add       w22, w22, #1                                   
01a94bd4  cmp       w22, w8                                        
01a94bd8  b.lt      #0x1a94bac                                     
01a94bdc  ldr       x0, [x24]                                      
01a94be0  bl        #0x183ddcc                                     
01a94be4  ldr       x1, [x23]                                      
01a94be8  bl        #0x276a9f4                                     // System.Collections.Generic.List<int>$$.ctor
01a94bec  ldr       w8, [x20, #0x18]                               
01a94bf0  cmp       w8, #1                                         
01a94bf4  b.lt      #0x1a9520c                                     
01a94bf8  movi      d10, #0000000000000000                         
01a94bfc  adrp      x8, #0xa13000                                  
01a94c00  movi      d14, #0000000000000000                         
01a94c04  adrp      x26, #0x3a8c000                                
01a94c08  fmov      s9, #10.00000000                               
01a94c0c  adrp      x22, #0x3a7c000                                
01a94c10  fmov      s13, #1.00000000                               
01a94c14  adrp      x23, #0x3a7b000                                
01a94c18  adrp      x9, #0xa13000                                  
01a94c1c  ldr       s15, [x8, #0xd4]                               
01a94c20  adrp      x8, #0xa13000                                  
01a94c24  ldr       x26, [x26, #0x6a0]                             
01a94c28  ldr       x22, [x22, #0xd38]                             
01a94c2c  ldr       x23, [x23, #0xd38]                             
01a94c30  ldr       s11, [x9, #0x158]                              
01a94c34  ldr       s12, [x8, #0xc8]                               
01a94c38  mov       w21, wzr                                       
01a94c3c  adrp      x28, #0x3d14000                                
01a94c40  adrp      x29, #0x3d14000                                
01a94c44  ldr       x2, [x26]                                      
01a94c48  mov       x0, x20                                        
01a94c4c  mov       w1, w21                                        
01a94c50  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94c54  cbz       x0, #0x1a9523c                                 
01a94c58  ldr       x1, [x0, #0x28]                                
01a94c5c  bl        #0x1a99d04                                     // EventCtrl$$GetTotalChance
01a94c60  ldr       x2, [x26]                                      
01a94c64  mov       w24, w0                                        
01a94c68  mov       x0, x20                                        
01a94c6c  mov       w1, w21                                        
01a94c70  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94c74  cbz       x0, #0x1a9523c                                 
01a94c78  scvtf     s8, w24                                        
01a94c7c  ldr       w8, [x0, #0x1c]                                
01a94c80  cbz       w8, #0x1a94d14                                 
01a94c84  ldr       x2, [x26]                                      
01a94c88  mov       x0, x20                                        
01a94c8c  mov       w1, w21                                        
01a94c90  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94c94  cbz       x0, #0x1a9523c                                 
01a94c98  ldr       w8, [x0, #0x1c]                                
01a94c9c  cmp       w8, #1                                         
01a94ca0  b.ne      #0x1a951c4                                     
01a94ca4  ldr       w8, [x20, #0x18]                               
01a94ca8  cmp       w8, #2                                         
01a94cac  b.lt      #0x1a951c4                                     
01a94cb0  ldr       x2, [x26]                                      
01a94cb4  mov       x0, x20                                        
01a94cb8  mov       w1, w21                                        
01a94cbc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94cc0  cbz       x0, #0x1a9523c                                 
01a94cc4  ldr       w8, [x0, #0x1c]                                
01a94cc8  cmp       w8, #1                                         
01a94ccc  b.ne      #0x1a951c4                                     
01a94cd0  adrp      x8, #0x3a7c000                                 
01a94cd4  ldr       x8, [x8, #0xca8]                               
01a94cd8  ldr       x8, [x8]                                       
01a94cdc  ldr       x8, [x8, #0xb8]                                
01a94ce0  ldr       x0, [x8]                                       
01a94ce4  cbz       x0, #0x1a9523c                                 
01a94ce8  fmov      s0, s8                                         
01a94cec  mov       x1, xzr                                        
01a94cf0  bl        #0x1961b44                                     // HardModeMgr$$ApplyHardModeEventPenealty
01a94cf4  mov       w8, #0x7f800000                                
01a94cf8  fcvtzs    s2, s0                                         
01a94cfc  fmov      s1, w8                                         
01a94d00  scvtf     s2, s2                                         
01a94d04  fcmp      s0, s1                                         
01a94d08  movi      v0.2s, #0xcf, lsl #24                          
01a94d0c  fcsel     s8, s0, s2, eq                                 
01a94d10  b         #0x1a951c4                                     
01a94d14  adrp      x8, #0x3a7c000                                 
01a94d18  ldr       x8, [x8, #0xc08]                               
01a94d1c  ldr       x8, [x8]                                       
01a94d20  ldr       x8, [x8, #0xb8]                                
01a94d24  ldr       x0, [x8]                                       
01a94d28  cbz       x0, #0x1a9523c                                 
01a94d2c  mov       w1, #7                                         
01a94d30  mov       x2, xzr                                        
01a94d34  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a94d38  fcmp      s0, s9                                         
01a94d3c  b.lt      #0x1a94dd4                                     
01a94d40  adrp      x8, #0x3a7c000                                 
01a94d44  ldr       x8, [x8, #0xc08]                               
01a94d48  ldr       x8, [x8]                                       
01a94d4c  ldr       x8, [x8, #0xb8]                                
01a94d50  ldr       x0, [x8]                                       
01a94d54  cbz       x0, #0x1a9523c                                 
01a94d58  mov       w1, #7                                         
01a94d5c  mov       x2, xzr                                        
01a94d60  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a94d64  fmov      s9, s0                                         
01a94d68  ldrb      w8, [x29, #0x67d]                              
01a94d6c  cbnz      w8, #0x1a94d80                                 
01a94d70  mov       x0, x23                                        
01a94d74  bl        #0x183db90                                     
01a94d78  mov       w8, #1                                         
01a94d7c  strb      w8, [x29, #0x67d]                              
01a94d80  ldr       x0, [x23]                                      
01a94d84  ldr       w8, [x0, #0xe4]                                
01a94d88  cbnz      w8, #0x1a94d90                                 
01a94d8c  bl        #0x183dcb0                                     
01a94d90  fmul      s0, s9, s8                                     
01a94d94  mov       w9, #0x7f800000                                
01a94d98  fmul      s0, s0, s12                                    
01a94d9c  frintp    s1, s0                                         
01a94da0  fcvtps    w8, s0                                         
01a94da4  fmov      s0, w9                                         
01a94da8  mov       w9, #-0xffffffff80000000                       
01a94dac  fcmp      s1, s0                                         
01a94db0  csel      w8, w9, w8, eq                                 
01a94db4  cmp       w8, #1                                         
01a94db8  b.lt      #0x1a94dd0                                     
01a94dbc  scvtf     s0, w8                                         
01a94dc0  ldr       w9, [x19, #0x148]                              
01a94dc4  add       w8, w9, w8                                     
01a94dc8  str       w8, [x19, #0x148]                              
01a94dcc  fadd      s8, s8, s0                                     
01a94dd0  fmov      s9, #10.00000000                               
01a94dd4  ldrb      w8, [x28, #0x678]                              
01a94dd8  cbnz      w8, #0x1a94dec                                 
01a94ddc  mov       x0, x22                                        
01a94de0  bl        #0x183db90                                     
01a94de4  mov       w8, #1                                         
01a94de8  strb      w8, [x28, #0x678]                              
01a94dec  ldr       x8, [x22]                                      
01a94df0  ldr       x8, [x8, #0xb8]                                
01a94df4  ldr       x0, [x8]                                       
01a94df8  cbz       x0, #0x1a9523c                                 
01a94dfc  ldr       x2, [x0, #0x48]                                
01a94e00  mov       w1, #0x57                                      
01a94e04  mov       x3, xzr                                        
01a94e08  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a94e0c  fmov      s0, #3.00000000                                
01a94e10  cmp       w0, #1                                         
01a94e14  ldrb      w8, [x28, #0x678]                              
01a94e18  fadd      s0, s8, s0                                     
01a94e1c  fcsel     s8, s8, s0, lt                                 
01a94e20  cbnz      w8, #0x1a94e34                                 
01a94e24  mov       x0, x22                                        
01a94e28  bl        #0x183db90                                     
01a94e2c  mov       w8, #1                                         
01a94e30  strb      w8, [x28, #0x678]                              
01a94e34  ldr       x8, [x22]                                      
01a94e38  ldr       x8, [x8, #0xb8]                                
01a94e3c  ldr       x0, [x8]                                       
01a94e40  cbz       x0, #0x1a9523c                                 
01a94e44  ldr       x2, [x0, #0x48]                                
01a94e48  mov       w1, #0x71                                      
01a94e4c  mov       x3, xzr                                        
01a94e50  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a94e54  ldr       x2, [x26]                                      
01a94e58  mov       w25, w0                                        
01a94e5c  mov       x0, x20                                        
01a94e60  mov       w1, w21                                        
01a94e64  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a94e68  cbz       x0, #0x1a9523c                                 
01a94e6c  ldr       x1, [x0, #0x28]                                
01a94e70  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a94e74  cbz       x0, #0x1a9523c                                 
01a94e78  fadd      s0, s8, s13                                    
01a94e7c  cmp       w25, #1                                        
01a94e80  ldr       w8, [x0, #0x18]                                
01a94e84  mov       x24, x0                                        
01a94e88  fcsel     s8, s8, s0, lt                                 
01a94e8c  cmp       w8, #1                                         
01a94e90  b.lt      #0x1a951c0                                     
01a94e94  mov       w27, wzr                                       
01a94e98  cmp       w27, w8                                        
01a94e9c  b.hs      #0x1a95240                                     
01a94ea0  add       x8, x24, w27, sxtw #3                          
01a94ea4  ldr       x8, [x8, #0x20]                                
01a94ea8  cbz       x8, #0x1a9523c                                 
01a94eac  ldr       w9, [x8, #0x24]                                
01a94eb0  cmp       w9, #3                                         
01a94eb4  b.ne      #0x1a94ec0                                     
01a94eb8  ldr       w9, [x8, #0x10]                                
01a94ebc  cbz       w9, #0x1a94ed4                                 
01a94ec0  ldr       w8, [x24, #0x18]                               
01a94ec4  add       w27, w27, #1                                   
01a94ec8  cmp       w27, w8                                        
01a94ecc  b.lt      #0x1a94e98                                     
01a94ed0  b         #0x1a951c0                                     
01a94ed4  adrp      x9, #0x3a7b000                                 
01a94ed8  ldr       x9, [x9, #0xf88]                               
01a94edc  ldr       x25, [x8, #0x18]                               
01a94ee0  ldr       x0, [x9]                                       
01a94ee4  ldr       w9, [x0, #0xe4]                                
01a94ee8  cbnz      w9, #0x1a94ef0                                 
01a94eec  bl        #0x183dcb0                                     
01a94ef0  mov       x0, x25                                        
01a94ef4  mov       x1, xzr                                        
01a94ef8  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a94efc  cmp       w0, #0xc                                       
01a94f00  b.eq      #0x1a94fcc                                     
01a94f04  cmp       w0, #6                                         
01a94f08  b.eq      #0x1a94f48                                     
01a94f0c  cmp       w0, #5                                         
01a94f10  b.ne      #0x1a94ec0                                     
01a94f14  ldrb      w8, [x28, #0x678]                              
01a94f18  cbnz      w8, #0x1a94f2c                                 
01a94f1c  mov       x0, x22                                        
01a94f20  bl        #0x183db90                                     
01a94f24  mov       w8, #1                                         
01a94f28  strb      w8, [x28, #0x678]                              
01a94f2c  ldr       x8, [x22]                                      
01a94f30  ldr       x8, [x8, #0xb8]                                
01a94f34  ldr       x0, [x8]                                       
01a94f38  cbz       x0, #0x1a9523c                                 
01a94f3c  ldr       x2, [x0, #0x48]                                
01a94f40  mov       w1, #0x3c                                      
01a94f44  b         #0x1a94f78                                     
01a94f48  ldrb      w8, [x28, #0x678]                              
01a94f4c  cbnz      w8, #0x1a94f60                                 
01a94f50  mov       x0, x22                                        
01a94f54  bl        #0x183db90                                     
01a94f58  mov       w8, #1                                         
01a94f5c  strb      w8, [x28, #0x678]                              
01a94f60  ldr       x8, [x22]                                      
01a94f64  ldr       x8, [x8, #0xb8]                                
01a94f68  ldr       x0, [x8]                                       
01a94f6c  cbz       x0, #0x1a9523c                                 
01a94f70  ldr       x2, [x0, #0x48]                                
01a94f74  mov       w1, #0x33                                      
01a94f78  mov       x3, xzr                                        
01a94f7c  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a94f80  mov       w25, w0                                        
01a94f84  cmp       w0, #4                                         
01a94f88  b.ge      #0x1a95050                                     
01a94f8c  cmp       w25, #1                                        
01a94f90  b.lt      #0x1a94ec0                                     
01a94f94  ldrb      w8, [x29, #0x67d]                              
01a94f98  cbnz      w8, #0x1a94fac                                 
01a94f9c  mov       x0, x23                                        
01a94fa0  bl        #0x183db90                                     
01a94fa4  mov       w8, #1                                         
01a94fa8  strb      w8, [x29, #0x67d]                              
01a94fac  ldr       x0, [x23]                                      
01a94fb0  ldr       w8, [x0, #0xe4]                                
01a94fb4  cbnz      w8, #0x1a94fbc                                 
01a94fb8  bl        #0x183dcb0                                     
01a94fbc  scvtf     s0, w25                                        
01a94fc0  fmul      s0, s8, s0                                     
01a94fc4  fmul      s0, s0, s15                                    
01a94fc8  b         #0x1a95084                                     
01a94fcc  ldrb      w8, [x28, #0x678]                              
01a94fd0  cbnz      w8, #0x1a94fe4                                 
01a94fd4  mov       x0, x22                                        
01a94fd8  bl        #0x183db90                                     
01a94fdc  mov       w8, #1                                         
01a94fe0  strb      w8, [x28, #0x678]                              
01a94fe4  ldr       x8, [x22]                                      
01a94fe8  ldr       x8, [x8, #0xb8]                                
01a94fec  ldr       x0, [x8]                                       
01a94ff0  cbz       x0, #0x1a9523c                                 
01a94ff4  ldr       x2, [x0, #0x48]                                
01a94ff8  mov       w1, #4                                         
01a94ffc  mov       x3, xzr                                        
01a95000  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a95004  mov       w25, w0                                        
01a95008  cmp       w0, #4                                         
01a9500c  b.ge      #0x1a950b4                                     
01a95010  cmp       w25, #1                                        
01a95014  b.lt      #0x1a95114                                     
01a95018  ldrb      w8, [x29, #0x67d]                              
01a9501c  cbnz      w8, #0x1a95030                                 
01a95020  mov       x0, x23                                        
01a95024  bl        #0x183db90                                     
01a95028  mov       w8, #1                                         
01a9502c  strb      w8, [x29, #0x67d]                              
01a95030  ldr       x0, [x23]                                      
01a95034  ldr       w8, [x0, #0xe4]                                
01a95038  cbnz      w8, #0x1a95040                                 
01a9503c  bl        #0x183dcb0                                     
01a95040  scvtf     s0, w25                                        
01a95044  fmul      s0, s8, s0                                     
01a95048  fmul      s0, s0, s15                                    
01a9504c  b         #0x1a950e8                                     
01a95050  ldrb      w8, [x29, #0x67d]                              
01a95054  cbnz      w8, #0x1a95068                                 
01a95058  mov       x0, x23                                        
01a9505c  bl        #0x183db90                                     
01a95060  mov       w8, #1                                         
01a95064  strb      w8, [x29, #0x67d]                              
01a95068  ldr       x0, [x23]                                      
01a9506c  ldr       w8, [x0, #0xe4]                                
01a95070  cbnz      w8, #0x1a95078                                 
01a95074  bl        #0x183dcb0                                     
01a95078  scvtf     s0, w25                                        
01a9507c  fmul      s0, s8, s0                                     
01a95080  fmul      s0, s0, s11                                    
01a95084  frintp    s1, s0                                         
01a95088  mov       w9, #0x7f800000                                
01a9508c  fcvtps    w8, s0                                         
01a95090  fmov      s0, w9                                         
01a95094  mov       w9, #-0xffffffff80000000                       
01a95098  fcmp      s1, s0                                         
01a9509c  csel      w8, w9, w8, eq                                 
01a950a0  cmp       w8, #1                                         
01a950a4  b.lt      #0x1a94ec0                                     
01a950a8  scvtf     s0, w8                                         
01a950ac  fadd      s8, s8, s0                                     
01a950b0  b         #0x1a94ec0                                     
01a950b4  ldrb      w8, [x29, #0x67d]                              
01a950b8  cbnz      w8, #0x1a950cc                                 
01a950bc  mov       x0, x23                                        
01a950c0  bl        #0x183db90                                     
01a950c4  mov       w8, #1                                         
01a950c8  strb      w8, [x29, #0x67d]                              
01a950cc  ldr       x0, [x23]                                      
01a950d0  ldr       w8, [x0, #0xe4]                                
01a950d4  cbnz      w8, #0x1a950dc                                 
01a950d8  bl        #0x183dcb0                                     
01a950dc  scvtf     s0, w25                                        
01a950e0  fmul      s0, s8, s0                                     
01a950e4  fmul      s0, s0, s11                                    
01a950e8  frintp    s1, s0                                         
01a950ec  mov       w9, #0x7f800000                                
01a950f0  fcvtps    w8, s0                                         
01a950f4  fmov      s0, w9                                         
01a950f8  mov       w9, #-0xffffffff80000000                       
01a950fc  fcmp      s1, s0                                         
01a95100  csel      w8, w9, w8, eq                                 
01a95104  cmp       w8, #1                                         
01a95108  b.lt      #0x1a95114                                     
01a9510c  scvtf     s0, w8                                         
01a95110  fadd      s8, s8, s0                                     
01a95114  ldrb      w8, [x28, #0x678]                              
01a95118  cbnz      w8, #0x1a9512c                                 
01a9511c  mov       x0, x22                                        
01a95120  bl        #0x183db90                                     
01a95124  mov       w8, #1                                         
01a95128  strb      w8, [x28, #0x678]                              
01a9512c  ldr       x8, [x22]                                      
01a95130  ldr       x8, [x8, #0xb8]                                
01a95134  ldr       x0, [x8]                                       
01a95138  cbz       x0, #0x1a9523c                                 
01a9513c  ldr       x2, [x0, #0x48]                                
01a95140  mov       w1, #0x2d                                      
01a95144  mov       x3, xzr                                        
01a95148  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a9514c  cmp       w0, #1                                         
01a95150  b.lt      #0x1a94ec0                                     
01a95154  ldrb      w8, [x29, #0x67d]                              
01a95158  mov       w25, w0                                        
01a9515c  cbnz      w8, #0x1a95170                                 
01a95160  mov       x0, x23                                        
01a95164  bl        #0x183db90                                     
01a95168  mov       w8, #1                                         
01a9516c  strb      w8, [x29, #0x67d]                              
01a95170  ldr       x0, [x23]                                      
01a95174  ldr       w8, [x0, #0xe4]                                
01a95178  cbnz      w8, #0x1a95180                                 
01a9517c  bl        #0x183dcb0                                     
01a95180  scvtf     s0, w25                                        
01a95184  mov       w8, #0x7f800000                                
01a95188  fmov      s2, w8                                         
01a9518c  fmul      s0, s8, s0                                     
01a95190  fmul      s0, s0, s11                                    
01a95194  frintp    s0, s0                                         
01a95198  fcvtzs    s1, s0                                         
01a9519c  fcmp      s0, s2                                         
01a951a0  movi      v0.2s, #0xcf, lsl #24                          
01a951a4  scvtf     s1, s1                                         
01a951a8  fcsel     s0, s0, s1, eq                                 
01a951ac  fsub      s8, s8, s0                                     
01a951b0  fcmp      s8, #0.0                                       
01a951b4  b.pl      #0x1a94ec0                                     
01a951b8  movi      d8, #0000000000000000                          
01a951bc  b         #0x1a94ec0                                     
01a951c0  fadd      s14, s14, s8                                   
01a951c4  fadd      s10, s10, s8                                   
01a951c8  ldr       w8, [x20, #0x18]                               
01a951cc  add       w21, w21, #1                                   
01a951d0  cmp       w21, w8                                        
01a951d4  b.lt      #0x1a94c44                                     
01a951d8  movi      d8, #0000000000000000                          
01a951dc  fcmp      s14, #0.0                                      
01a951e0  b.eq      #0x1a9520c                                     
01a951e4  fcmp      s10, #0.0                                      
01a951e8  b.eq      #0x1a9520c                                     
01a951ec  ldr       s0, [x19, #0x148]                              
01a951f0  fdiv      s8, s14, s10                                   
01a951f4  scvtf     s0, s0                                         
01a951f8  fsub      s1, s14, s0                                    
01a951fc  fsub      s0, s10, s0                                    
01a95200  fdiv      s0, s1, s0                                     
01a95204  fsub      s0, s8, s0                                     
01a95208  str       s0, [x19, #0x14c]                              
01a9520c  fmov      s0, s8                                         
01a95210  ldp       x20, x19, [sp, #0x90]                          
01a95214  ldp       x22, x21, [sp, #0x80]                          
01a95218  ldp       x24, x23, [sp, #0x70]                          
01a9521c  ldp       x26, x25, [sp, #0x60]                          
01a95220  ldp       x28, x27, [sp, #0x50]                          
01a95224  ldp       x29, x30, [sp, #0x40]                          
01a95228  ldp       d9, d8, [sp, #0x30]                            
01a9522c  ldp       d11, d10, [sp, #0x20]                          
01a95230  ldp       d13, d12, [sp, #0x10]                          
01a95234  ldp       d15, d14, [sp], #0xa0                          
01a95238  ret                                                      
01a9523c  bl        #0x183dddc                                     
01a95240  bl        #0x183dde4                                     