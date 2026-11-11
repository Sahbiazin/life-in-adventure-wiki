void DataMgr__ChangeUserData (DataMgr_o* __this, int32_t _index, float _value, bool _resurrection, const MethodInfo* method);
// RVA 0x1af7a54 to 0x1af8528
01af7a54  stp       d11, d10, [sp, #-0x80]!                        
01af7a58  stp       d9, d8, [sp, #0x10]                            
01af7a5c  str       x29, [sp, #0x20]                               
01af7a60  stp       x30, x27, [sp, #0x30]                          
01af7a64  stp       x26, x25, [sp, #0x40]                          
01af7a68  stp       x24, x23, [sp, #0x50]                          
01af7a6c  stp       x22, x21, [sp, #0x60]                          
01af7a70  stp       x20, x19, [sp, #0x70]                          
01af7a74  sub       sp, sp, #0x2c0                                 
01af7a78  fmov      s9, s0                                         
01af7a7c  adrp      x22, #0x3d14000                                
01af7a80  mov       w21, w2                                        
01af7a84  ldrb      w8, [x22, #0xe99]                              
01af7a88  mov       w20, w1                                        
01af7a8c  mov       x19, x0                                        
01af7a90  tbnz      w8, #0, #0x1af7acc                             
01af7a94  adrp      x0, #0x3a7d000                                 
01af7a98  ldr       x0, [x0, #0x768]                               // Method$System.Collections.Generic.List<ObscuredFloat>.get_Item()
01af7a9c  bl        #0x183db90                                     
01af7aa0  adrp      x0, #0x3a7c000                                 
01af7aa4  ldr       x0, [x0, #0xc30]                               // Method$System.Collections.Generic.List<int>.get_Item()
01af7aa8  bl        #0x183db90                                     
01af7aac  adrp      x0, #0x3a8f000                                 
01af7ab0  ldr       x0, [x0, #0x18]                                // Method$System.Collections.Generic.List<ObscuredFloat>.set_Item()
01af7ab4  bl        #0x183db90                                     
01af7ab8  adrp      x0, #0x3a7c000                                 
01af7abc  ldr       x0, [x0, #0xfa8]                               // PathMgr_TypeInfo
01af7ac0  bl        #0x183db90                                     
01af7ac4  mov       w8, #1                                         
01af7ac8  strb      w8, [x22, #0xe99]                              
01af7acc  ldr       x0, [x19, #0x20]                               
01af7ad0  str       xzr, [sp, #0x288]                              
01af7ad4  str       xzr, [sp, #0x280]                              
01af7ad8  str       xzr, [sp, #0x290]                              
01af7adc  cbz       x0, #0x1af8524                                 
01af7ae0  adrp      x25, #0x3a7d000                                
01af7ae4  add       x8, sp, #0x2a0                                 
01af7ae8  mov       w1, w20                                        
01af7aec  ldr       x25, [x25, #0x768]                             // Method$System.Collections.Generic.List<ObscuredFloat>.get_Item()
01af7af0  add       x26, sp, #0x1f8                                
01af7af4  ldr       x2, [x25]                                      
01af7af8  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7afc  ldr       q0, [sp, #0x2a0]                               
01af7b00  ldr       x8, [sp, #0x2b0]                               
01af7b04  add       x0, sp, #0x260                                 
01af7b08  mov       x1, xzr                                        
01af7b0c  str       q0, [sp, #0x260]                               
01af7b10  str       x8, [sp, #0x270]                               
01af7b14  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7b18  fmov      s8, s0                                         
01af7b1c  adrp      x23, #0x3a7d000                                
01af7b20  ldr       x22, [x19, #0x20]                              
01af7b24  ldr       x23, [x23, #0x438]                             // StatusCtrl_TypeInfo
01af7b28  cmp       w20, #1                                        
01af7b2c  adrp      x24, #0x3d14000                                
01af7b30  b.hi      #0x1af7ca0                                     
01af7b34  fcmp      s9, #0.0                                       
01af7b38  b.le      #0x1af7ca0                                     
01af7b3c  cbz       x22, #0x1af8524                                
01af7b40  ldr       x2, [x25]                                      
01af7b44  add       x8, sp, #0x2a0                                 
01af7b48  mov       x0, x22                                        
01af7b4c  mov       w1, w20                                        
01af7b50  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7b54  ldr       q0, [sp, #0x2a0]                               
01af7b58  ldr       x8, [sp, #0x2b0]                               
01af7b5c  add       x0, sp, #0x240                                 
01af7b60  mov       x1, xzr                                        
01af7b64  str       q0, [sp, #0x240]                               
01af7b68  str       x8, [sp, #0x250]                               
01af7b6c  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7b70  add       w1, w20, #8                                    
01af7b74  mov       x0, x19                                        
01af7b78  fmov      s10, s0                                        
01af7b7c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01af7b80  fcmp      s10, s0                                        
01af7b84  b.pl      #0x1af7f04                                     
01af7b88  ldr       x22, [x19, #0x20]                              
01af7b8c  cbz       x22, #0x1af8524                                
01af7b90  ldr       x2, [x25]                                      
01af7b94  add       x8, sp, #0x228                                 
01af7b98  mov       x0, x22                                        
01af7b9c  mov       w1, w20                                        
01af7ba0  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7ba4  ldr       q0, [x26, #0x30]                               
01af7ba8  ldr       x8, [sp, #0x238]                               
01af7bac  add       x0, sp, #0x210                                 
01af7bb0  mov       x1, xzr                                        
01af7bb4  str       q0, [sp, #0x210]                               
01af7bb8  str       x8, [sp, #0x220]                               
01af7bbc  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7bc0  fadd      s0, s0, s9                                     
01af7bc4  add       x8, sp, #0x1f8                                 
01af7bc8  mov       x0, xzr                                        
01af7bcc  bl        #0x1945700                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7bd0  adrp      x27, #0x3a8f000                                
01af7bd4  ldr       q0, [x26]                                      
01af7bd8  add       x2, sp, #0x2a0                                 
01af7bdc  ldr       x27, [x27, #0x18]                              // Method$System.Collections.Generic.List<ObscuredFloat>.set_Item()
01af7be0  ldr       x8, [sp, #0x208]                               
01af7be4  mov       x0, x22                                        
01af7be8  mov       w1, w20                                        
01af7bec  str       q0, [sp, #0x2a0]                               
01af7bf0  ldr       x3, [x27]                                      
01af7bf4  str       x8, [sp, #0x2b0]                               
01af7bf8  bl        #0x2799950                                     // System.Collections.Generic.List<ObscuredFloat>$$set_Item
01af7bfc  tbz       w21, #0, #0x1af7c18                            
01af7c00  add       w1, w20, #8                                    
01af7c04  mov       x0, x19                                        
01af7c08  bl        #0x1af7748                                     // DataMgr$$GetUserData
01af7c0c  fmov      s1, #2.00000000                                
01af7c10  fcmp      s0, s1                                         
01af7c14  b.ls      #0x1af7f04                                     
01af7c18  ldr       x0, [x19, #0x20]                               
01af7c1c  cbz       x0, #0x1af8524                                 
01af7c20  ldr       x2, [x25]                                      
01af7c24  add       x8, sp, #0x2a0                                 
01af7c28  mov       w1, w20                                        
01af7c2c  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7c30  ldr       q0, [sp, #0x2a0]                               
01af7c34  ldr       x8, [sp, #0x2b0]                               
01af7c38  add       x0, sp, #0x1e0                                 
01af7c3c  mov       x1, xzr                                        
01af7c40  str       q0, [sp, #0x1e0]                               
01af7c44  str       x8, [sp, #0x1f0]                               
01af7c48  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7c4c  add       w1, w20, #8                                    
01af7c50  mov       x0, x19                                        
01af7c54  fmov      s10, s0                                        
01af7c58  bl        #0x1af7748                                     // DataMgr$$GetUserData
01af7c5c  fcmp      s10, s0                                        
01af7c60  b.le      #0x1af7f04                                     
01af7c64  ldr       x21, [x19, #0x20]                              
01af7c68  add       w1, w20, #8                                    
01af7c6c  mov       x0, x19                                        
01af7c70  bl        #0x1af7748                                     // DataMgr$$GetUserData
01af7c74  add       x8, sp, #0x228                                 
01af7c78  mov       x0, xzr                                        
01af7c7c  bl        #0x1945700                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7c80  cbz       x21, #0x1af8524                                
01af7c84  ldr       q0, [x26, #0x30]                               
01af7c88  ldr       x8, [sp, #0x238]                               
01af7c8c  add       x2, sp, #0x2a0                                 
01af7c90  ldr       x3, [x27]                                      
01af7c94  mov       x0, x21                                        
01af7c98  mov       w1, w20                                        
01af7c9c  b         #0x1af7ef8                                     
01af7ca0  cbz       x22, #0x1af8524                                
01af7ca4  ldr       x2, [x25]                                      
01af7ca8  add       x8, sp, #0x228                                 
01af7cac  mov       x0, x22                                        
01af7cb0  mov       w1, w20                                        
01af7cb4  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7cb8  ldr       q0, [x26, #0x30]                               
01af7cbc  ldr       x8, [sp, #0x238]                               
01af7cc0  add       x0, sp, #0x1c0                                 
01af7cc4  mov       x1, xzr                                        
01af7cc8  str       q0, [sp, #0x1c0]                               
01af7ccc  str       x8, [sp, #0x1d0]                               
01af7cd0  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7cd4  fadd      s0, s0, s9                                     
01af7cd8  add       x8, sp, #0x1f8                                 
01af7cdc  mov       x0, xzr                                        
01af7ce0  bl        #0x1945700                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7ce4  adrp      x27, #0x3a8f000                                
01af7ce8  ldr       q0, [x26]                                      
01af7cec  ldr       x8, [sp, #0x208]                               
01af7cf0  ldr       x27, [x27, #0x18]                              // Method$System.Collections.Generic.List<ObscuredFloat>.set_Item()
01af7cf4  add       x2, sp, #0x2a0                                 
01af7cf8  mov       x0, x22                                        
01af7cfc  mov       w1, w20                                        
01af7d00  str       q0, [sp, #0x2a0]                               
01af7d04  ldr       x3, [x27]                                      
01af7d08  str       x8, [sp, #0x2b0]                               
01af7d0c  str       q0, [sp, #0x280]                               
01af7d10  str       x8, [sp, #0x290]                               
01af7d14  bl        #0x2799950                                     // System.Collections.Generic.List<ObscuredFloat>$$set_Item
01af7d18  ldr       q0, [sp, #0x280]                               
01af7d1c  ldr       x8, [sp, #0x290]                               
01af7d20  add       x0, sp, #0x1a0                                 
01af7d24  mov       x1, xzr                                        
01af7d28  str       q0, [sp, #0x1a0]                               
01af7d2c  str       x8, [sp, #0x1b0]                               
01af7d30  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7d34  cmp       w20, #3                                        
01af7d38  b.eq      #0x1af7d80                                     
01af7d3c  fcmp      s0, #0.0                                       
01af7d40  b.pl      #0x1af7d80                                     
01af7d44  movi      d0, #0000000000000000                          
01af7d48  ldr       x21, [x19, #0x20]                              
01af7d4c  add       x8, sp, #0x228                                 
01af7d50  mov       x0, xzr                                        
01af7d54  bl        #0x1945700                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7d58  cbz       x21, #0x1af8524                                
01af7d5c  ldr       q0, [x26, #0x30]                               
01af7d60  ldr       x8, [sp, #0x238]                               
01af7d64  add       x2, sp, #0x2a0                                 
01af7d68  ldr       x3, [x27]                                      
01af7d6c  mov       x0, x21                                        
01af7d70  mov       w1, w20                                        
01af7d74  str       q0, [sp, #0x2a0]                               
01af7d78  str       x8, [sp, #0x2b0]                               
01af7d7c  bl        #0x2799950                                     // System.Collections.Generic.List<ObscuredFloat>$$set_Item
01af7d80  cmp       w20, #0xe                                      
01af7d84  b.hi      #0x1af8154                                     
01af7d88  mov       w8, #1                                         
01af7d8c  mov       w9, #0x70e0                                    
01af7d90  lsl       w8, w8, w20                                    
01af7d94  tst       w8, w9                                         
01af7d98  b.eq      #0x1af7e7c                                     
01af7d9c  ldr       x0, [x19, #0x20]                               
01af7da0  cbz       x0, #0x1af8524                                 
01af7da4  ldr       x2, [x25]                                      
01af7da8  add       x8, sp, #0x2a0                                 
01af7dac  mov       w1, w20                                        
01af7db0  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7db4  ldr       q0, [sp, #0x2a0]                               
01af7db8  ldr       x8, [sp, #0x2b0]                               
01af7dbc  add       x0, sp, #0x180                                 
01af7dc0  mov       x1, xzr                                        
01af7dc4  str       q0, [sp, #0x180]                               
01af7dc8  str       x8, [sp, #0x190]                               
01af7dcc  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7dd0  fmov      s1, #1.00000000                                
01af7dd4  fcmp      s0, s1                                         
01af7dd8  b.pl      #0x1af7e18                                     
01af7ddc  fmov      s0, #1.00000000                                
01af7de0  ldr       x21, [x19, #0x20]                              
01af7de4  add       x8, sp, #0x228                                 
01af7de8  mov       x0, xzr                                        
01af7dec  bl        #0x1945700                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7df0  cbz       x21, #0x1af8524                                
01af7df4  ldr       q0, [x26, #0x30]                               
01af7df8  ldr       x8, [sp, #0x238]                               
01af7dfc  add       x2, sp, #0x2a0                                 
01af7e00  ldr       x3, [x27]                                      
01af7e04  mov       x0, x21                                        
01af7e08  mov       w1, w20                                        
01af7e0c  str       q0, [sp, #0x2a0]                               
01af7e10  str       x8, [sp, #0x2b0]                               
01af7e14  bl        #0x2799950                                     // System.Collections.Generic.List<ObscuredFloat>$$set_Item
01af7e18  cmp       w20, #5                                        
01af7e1c  mov       w21, wzr                                       
01af7e20  cset      w22, eq                                        
01af7e24  b.ne      #0x1af7f0c                                     
01af7e28  fcmp      s9, #0.0                                       
01af7e2c  b.le      #0x1af7f0c                                     
01af7e30  adrp      x21, #0x3d14000                                
01af7e34  ldrb      w8, [x21, #0x679]                              
01af7e38  cbnz      w8, #0x1af7e50                                 
01af7e3c  adrp      x0, #0x3a7c000                                 
01af7e40  ldr       x0, [x0, #0xe18]                               // Inventory_TypeInfo
01af7e44  bl        #0x183db90                                     
01af7e48  mov       w8, #1                                         
01af7e4c  strb      w8, [x21, #0x679]                              
01af7e50  adrp      x8, #0x3a7c000                                 
01af7e54  ldr       x8, [x8, #0xe18]                               // Inventory_TypeInfo
01af7e58  ldr       x8, [x8]                                       
01af7e5c  ldr       x8, [x8, #0xb8]                                
01af7e60  ldr       x0, [x8]                                       
01af7e64  cbz       x0, #0x1af8524                                 
01af7e68  mov       x1, xzr                                        
01af7e6c  bl        #0x1a404c4                                     // Inventory$$AddSlotWithStr
01af7e70  mov       w21, wzr                                       
01af7e74  mov       w22, #1                                        
01af7e78  b         #0x1af7f0c                                     
01af7e7c  cmp       w20, #2                                        
01af7e80  b.ne      #0x1af8154                                     
01af7e84  ldr       x0, [x19, #0x20]                               
01af7e88  cbz       x0, #0x1af8524                                 
01af7e8c  ldr       x2, [x25]                                      
01af7e90  add       x8, sp, #0x2a0                                 
01af7e94  mov       w1, #2                                         
01af7e98  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7e9c  ldr       q0, [sp, #0x2a0]                               
01af7ea0  ldr       x8, [sp, #0x2b0]                               
01af7ea4  add       x0, sp, #0x160                                 
01af7ea8  mov       x1, xzr                                        
01af7eac  str       q0, [sp, #0x160]                               
01af7eb0  str       x8, [sp, #0x170]                               
01af7eb4  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7eb8  mov       w8, #0x42c80000                                
01af7ebc  fmov      s1, w8                                         
01af7ec0  fcmp      s0, s1                                         
01af7ec4  b.le      #0x1af7f04                                     
01af7ec8  fmov      s0, w8                                         
01af7ecc  ldr       x21, [x19, #0x20]                              
01af7ed0  add       x8, sp, #0x228                                 
01af7ed4  mov       x0, xzr                                        
01af7ed8  bl        #0x1945700                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7edc  cbz       x21, #0x1af8524                                
01af7ee0  ldr       q0, [x26, #0x30]                               
01af7ee4  ldr       x8, [sp, #0x238]                               
01af7ee8  add       x2, sp, #0x2a0                                 
01af7eec  ldr       x3, [x27]                                      
01af7ef0  mov       x0, x21                                        
01af7ef4  mov       w1, #2                                         
01af7ef8  str       q0, [sp, #0x2a0]                               
01af7efc  str       x8, [sp, #0x2b0]                               
01af7f00  bl        #0x2799950                                     // System.Collections.Generic.List<ObscuredFloat>$$set_Item
01af7f04  mov       w21, wzr                                       
01af7f08  mov       w22, wzr                                       
01af7f0c  mov       x0, x19                                        
01af7f10  mov       w1, #0xd                                       
01af7f14  bl        #0x1af7748                                     // DataMgr$$GetUserData
01af7f18  fmov      s10, #3.00000000                               
01af7f1c  fmov      s11, #2.00000000                               
01af7f20  mov       x0, x19                                        
01af7f24  mov       w1, #8                                         
01af7f28  fdiv      s0, s0, s10                                    
01af7f2c  frintm    s0, s0                                         
01af7f30  fadd      s0, s0, s11                                    
01af7f34  bl        #0x1af6554                                     // DataMgr$$SetUserData
01af7f38  mov       x0, x19                                        
01af7f3c  mov       w1, #0xe                                       
01af7f40  bl        #0x1af7748                                     // DataMgr$$GetUserData
01af7f44  fdiv      s0, s0, s10                                    
01af7f48  mov       x0, x19                                        
01af7f4c  mov       w1, #9                                         
01af7f50  frintm    s0, s0                                         
01af7f54  fadd      s0, s0, s11                                    
01af7f58  bl        #0x1af6554                                     // DataMgr$$SetUserData
01af7f5c  fcmp      s9, #0.0                                       
01af7f60  b.le      #0x1af7fec                                     
01af7f64  cbz       w21, #0x1af7f90                                
01af7f68  mov       w8, #0x7f800000                                
01af7f6c  fcvtzs    w9, s9                                         
01af7f70  mov       x0, x19                                        
01af7f74  fmov      s0, w8                                         
01af7f78  mov       w8, #-0xffffffff80000000                       
01af7f7c  mov       w1, #4                                         
01af7f80  fcmp      s9, s0                                         
01af7f84  csel      w2, w8, w9, eq                                 
01af7f88  bl        #0x1af3728                                     // DataMgr$$AddAndReportAchievement
01af7f8c  b         #0x1af7fec                                     
01af7f90  cbz       w22, #0x1af804c                                
01af7f94  ldr       x0, [x19, #0x20]                               
01af7f98  cbz       x0, #0x1af8524                                 
01af7f9c  ldr       x2, [x25]                                      
01af7fa0  add       x8, sp, #0x2a0                                 
01af7fa4  mov       w1, w20                                        
01af7fa8  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7fac  ldr       q0, [sp, #0x2a0]                               
01af7fb0  ldr       x8, [sp, #0x2b0]                               
01af7fb4  add       x0, sp, #0x140                                 
01af7fb8  mov       x1, xzr                                        
01af7fbc  str       q0, [sp, #0x140]                               
01af7fc0  str       x8, [sp, #0x150]                               
01af7fc4  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7fc8  mov       w8, #0x7f800000                                
01af7fcc  fcvtzs    w9, s0                                         
01af7fd0  mov       x0, x19                                        
01af7fd4  fmov      s1, w8                                         
01af7fd8  mov       w8, #-0xffffffff80000000                       
01af7fdc  mov       w1, #0x11                                      
01af7fe0  fcmp      s0, s1                                         
01af7fe4  csel      w2, w8, w9, eq                                 
01af7fe8  bl        #0x1af3a3c                                     // DataMgr$$CheckMaxAndReportAchievement
01af7fec  ldrb      w8, [x24, #0x70e]                              
01af7ff0  cbnz      w8, #0x1af8008                                 
01af7ff4  adrp      x0, #0x3a7d000                                 
01af7ff8  ldr       x0, [x0, #0x438]                               // StatusCtrl_TypeInfo
01af7ffc  bl        #0x183db90                                     
01af8000  mov       w8, #1                                         
01af8004  strb      w8, [x24, #0x70e]                              
01af8008  ldr       x8, [x23]                                      
01af800c  ldr       x8, [x8, #0xb8]                                
01af8010  ldr       x0, [x8]                                       
01af8014  cbz       x0, #0x1af8524                                 
01af8018  mov       w1, wzr                                        
01af801c  mov       x2, xzr                                        
01af8020  bl        #0x19c56a0                                     // StatusCtrl$$UpdateDisplay
01af8024  add       sp, sp, #0x2c0                                 
01af8028  ldp       x20, x19, [sp, #0x70]                          
01af802c  ldr       x29, [sp, #0x20]                               
01af8030  ldp       x22, x21, [sp, #0x60]                          
01af8034  ldp       x24, x23, [sp, #0x50]                          
01af8038  ldp       x26, x25, [sp, #0x40]                          
01af803c  ldp       x30, x27, [sp, #0x30]                          
01af8040  ldp       d9, d8, [sp, #0x10]                            
01af8044  ldp       d11, d10, [sp], #0x80                          
01af8048  ret                                                      
01af804c  cmp       w20, #0xb                                      
01af8050  b.gt      #0x1af81ac                                     
01af8054  cmp       w20, #3                                        
01af8058  b.eq      #0x1af82ac                                     
01af805c  cmp       w20, #6                                        
01af8060  b.eq      #0x1af8404                                     
01af8064  cmp       w20, #7                                        
01af8068  b.ne      #0x1af7fec                                     
01af806c  ldr       x0, [x19, #0x20]                               
01af8070  cbz       x0, #0x1af8524                                 
01af8074  ldr       x2, [x25]                                      
01af8078  add       x8, sp, #0x2a0                                 
01af807c  mov       w1, #7                                         
01af8080  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af8084  ldr       q0, [sp, #0x2a0]                               
01af8088  ldr       x8, [sp, #0x2b0]                               
01af808c  add       x0, sp, #0x100                                 
01af8090  mov       x1, xzr                                        
01af8094  str       q0, [sp, #0x100]                               
01af8098  str       x8, [sp, #0x110]                               
01af809c  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af80a0  mov       w8, #0x7f800000                                
01af80a4  fcvtzs    w9, s0                                         
01af80a8  mov       x0, x19                                        
01af80ac  fmov      s1, w8                                         
01af80b0  mov       w8, #-0xffffffff80000000                       
01af80b4  mov       w1, #0x13                                      
01af80b8  fcmp      s0, s1                                         
01af80bc  csel      w2, w8, w9, eq                                 
01af80c0  bl        #0x1af3a3c                                     // DataMgr$$CheckMaxAndReportAchievement
01af80c4  fmov      s0, #25.00000000                               
01af80c8  fcmp      s8, s0                                         
01af80cc  b.pl      #0x1af7fec                                     
01af80d0  ldr       x0, [x19, #0x20]                               
01af80d4  cbz       x0, #0x1af8524                                 
01af80d8  ldr       x2, [x25]                                      
01af80dc  add       x8, sp, #0x2a0                                 
01af80e0  mov       w1, #7                                         
01af80e4  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af80e8  ldr       q0, [sp, #0x2a0]                               
01af80ec  ldr       x8, [sp, #0x2b0]                               
01af80f0  add       x0, sp, #0xe0                                  
01af80f4  mov       x1, xzr                                        
01af80f8  str       q0, [sp, #0xe0]                                
01af80fc  str       x8, [sp, #0xf0]                                
01af8100  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af8104  fmov      s1, #25.00000000                               
01af8108  fcmp      s0, s1                                         
01af810c  b.lt      #0x1af7fec                                     
01af8110  adrp      x19, #0x3a7c000                                
01af8114  ldr       x19, [x19, #0xfa8]                             // PathMgr_TypeInfo
01af8118  ldr       x8, [x19]                                      
01af811c  ldr       x8, [x8, #0xb8]                                
01af8120  ldr       x0, [x8]                                       
01af8124  cbz       x0, #0x1af8524                                 
01af8128  mov       w1, #2                                         
01af812c  mov       w2, #5                                         
01af8130  mov       x3, xzr                                        
01af8134  bl        #0x199f324                                     // PathMgr$$CompleteMission
01af8138  ldr       x8, [x19]                                      
01af813c  ldr       x8, [x8, #0xb8]                                
01af8140  ldr       x0, [x8]                                       
01af8144  cbz       x0, #0x1af8524                                 
01af8148  mov       w1, #3                                         
01af814c  mov       w2, #5                                         
01af8150  b         #0x1af8518                                     
01af8154  cmp       w20, #4                                        
01af8158  mov       w22, wzr                                       
01af815c  cset      w21, eq                                        
01af8160  b.ne      #0x1af7f0c                                     
01af8164  fcmp      s9, #0.0                                       
01af8168  b.le      #0x1af7f0c                                     
01af816c  ldrb      w8, [x24, #0x70e]                              
01af8170  cbnz      w8, #0x1af8188                                 
01af8174  adrp      x0, #0x3a7d000                                 
01af8178  ldr       x0, [x0, #0x438]                               // StatusCtrl_TypeInfo
01af817c  bl        #0x183db90                                     
01af8180  mov       w8, #1                                         
01af8184  strb      w8, [x24, #0x70e]                              
01af8188  ldr       x8, [x23]                                      
01af818c  ldr       x8, [x8, #0xb8]                                
01af8190  ldr       x0, [x8]                                       
01af8194  cbz       x0, #0x1af8524                                 
01af8198  mov       x1, xzr                                        
01af819c  bl        #0x19c6858                                     // StatusCtrl$$DoAnimationInvenBtn
01af81a0  mov       w22, wzr                                       
01af81a4  mov       w21, #1                                        
01af81a8  b         #0x1af7f0c                                     
01af81ac  cmp       w20, #0xc                                      
01af81b0  b.eq      #0x1af8320                                     
01af81b4  cmp       w20, #0xd                                      
01af81b8  b.eq      #0x1af8454                                     
01af81bc  cmp       w20, #0xe                                      
01af81c0  b.ne      #0x1af7fec                                     
01af81c4  ldr       x0, [x19, #0x20]                               
01af81c8  cbz       x0, #0x1af8524                                 
01af81cc  ldr       x2, [x25]                                      
01af81d0  add       x8, sp, #0x2a0                                 
01af81d4  mov       w1, #0xe                                       
01af81d8  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af81dc  ldr       q0, [sp, #0x2a0]                               
01af81e0  ldr       x8, [sp, #0x2b0]                               
01af81e4  add       x0, sp, #0x40                                  
01af81e8  mov       x1, xzr                                        
01af81ec  str       q0, [sp, #0x40]                                
01af81f0  str       x8, [sp, #0x50]                                
01af81f4  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af81f8  mov       w8, #0x7f800000                                
01af81fc  fcvtzs    w9, s0                                         
01af8200  mov       x0, x19                                        
01af8204  fmov      s1, w8                                         
01af8208  mov       w8, #-0xffffffff80000000                       
01af820c  mov       w1, #0x16                                      
01af8210  fcmp      s0, s1                                         
01af8214  csel      w2, w8, w9, eq                                 
01af8218  bl        #0x1af3a3c                                     // DataMgr$$CheckMaxAndReportAchievement
01af821c  fmov      s0, #25.00000000                               
01af8220  fcmp      s8, s0                                         
01af8224  b.pl      #0x1af7fec                                     
01af8228  ldr       x0, [x19, #0x20]                               
01af822c  cbz       x0, #0x1af8524                                 
01af8230  ldr       x2, [x25]                                      
01af8234  add       x8, sp, #0x2a0                                 
01af8238  mov       w1, #0xe                                       
01af823c  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af8240  ldr       q0, [sp, #0x2a0]                               
01af8244  ldr       x8, [sp, #0x2b0]                               
01af8248  add       x0, sp, #0x20                                  
01af824c  mov       x1, xzr                                        
01af8250  str       q0, [sp, #0x20]                                
01af8254  str       x8, [sp, #0x30]                                
01af8258  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af825c  fmov      s1, #25.00000000                               
01af8260  fcmp      s0, s1                                         
01af8264  b.lt      #0x1af7fec                                     
01af8268  adrp      x19, #0x3a7c000                                
01af826c  ldr       x19, [x19, #0xfa8]                             // PathMgr_TypeInfo
01af8270  ldr       x8, [x19]                                      
01af8274  ldr       x8, [x8, #0xb8]                                
01af8278  ldr       x0, [x8]                                       
01af827c  cbz       x0, #0x1af8524                                 
01af8280  mov       w1, #1                                         
01af8284  mov       w2, #5                                         
01af8288  mov       x3, xzr                                        
01af828c  bl        #0x199f324                                     // PathMgr$$CompleteMission
01af8290  ldr       x8, [x19]                                      
01af8294  ldr       x8, [x8, #0xb8]                                
01af8298  ldr       x0, [x8]                                       
01af829c  cbz       x0, #0x1af8524                                 
01af82a0  mov       w1, #3                                         
01af82a4  mov       w2, #6                                         
01af82a8  b         #0x1af8518                                     
01af82ac  ldr       x0, [x19, #0x158]                              
01af82b0  cbz       x0, #0x1af8524                                 
01af82b4  adrp      x8, #0x3a7c000                                 
01af82b8  mov       w1, #0x1b0                                     
01af82bc  ldr       x8, [x8, #0xc30]                               // Method$System.Collections.Generic.List<int>.get_Item()
01af82c0  ldr       x2, [x8]                                       
01af82c4  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01af82c8  cmp       w0, #1                                         
01af82cc  b.ne      #0x1af7fec                                     
01af82d0  ldr       x0, [x19, #0x20]                               
01af82d4  cbz       x0, #0x1af8524                                 
01af82d8  ldr       x2, [x25]                                      
01af82dc  add       x8, sp, #0x2a0                                 
01af82e0  mov       w1, #3                                         
01af82e4  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af82e8  ldr       q0, [sp, #0x2a0]                               
01af82ec  ldr       x8, [sp, #0x2b0]                               
01af82f0  mov       x0, sp                                         
01af82f4  mov       x1, xzr                                        
01af82f8  str       q0, [sp]                                       
01af82fc  str       x8, [sp, #0x10]                                
01af8300  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af8304  fmov      s1, #24.00000000                               
01af8308  fcmp      s0, s1                                         
01af830c  b.le      #0x1af7fec                                     
01af8310  mov       x0, x19                                        
01af8314  mov       w1, #0x23                                      
01af8318  mov       w2, #1                                         
01af831c  b         #0x1af7f88                                     
01af8320  ldr       x0, [x19, #0x20]                               
01af8324  cbz       x0, #0x1af8524                                 
01af8328  ldr       x2, [x25]                                      
01af832c  add       x8, sp, #0x2a0                                 
01af8330  mov       w1, #0xc                                       
01af8334  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af8338  ldr       q0, [sp, #0x2a0]                               
01af833c  ldr       x8, [sp, #0x2b0]                               
01af8340  add       x0, sp, #0xc0                                  
01af8344  mov       x1, xzr                                        
01af8348  str       q0, [sp, #0xc0]                                
01af834c  str       x8, [sp, #0xd0]                                
01af8350  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af8354  mov       w8, #0x7f800000                                
01af8358  fcvtzs    w9, s0                                         
01af835c  mov       x0, x19                                        
01af8360  fmov      s1, w8                                         
01af8364  mov       w8, #-0xffffffff80000000                       
01af8368  mov       w1, #0x14                                      
01af836c  fcmp      s0, s1                                         
01af8370  csel      w2, w8, w9, eq                                 
01af8374  bl        #0x1af3a3c                                     // DataMgr$$CheckMaxAndReportAchievement
01af8378  fmov      s0, #25.00000000                               
01af837c  fcmp      s8, s0                                         
01af8380  b.pl      #0x1af7fec                                     
01af8384  ldr       x0, [x19, #0x20]                               
01af8388  cbz       x0, #0x1af8524                                 
01af838c  ldr       x2, [x25]                                      
01af8390  add       x8, sp, #0x2a0                                 
01af8394  mov       w1, #0xc                                       
01af8398  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af839c  ldr       q0, [sp, #0x2a0]                               
01af83a0  ldr       x8, [sp, #0x2b0]                               
01af83a4  add       x0, sp, #0xa0                                  
01af83a8  mov       x1, xzr                                        
01af83ac  str       q0, [sp, #0xa0]                                
01af83b0  str       x8, [sp, #0xb0]                                
01af83b4  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af83b8  fmov      s1, #25.00000000                               
01af83bc  fcmp      s0, s1                                         
01af83c0  b.lt      #0x1af7fec                                     
01af83c4  adrp      x19, #0x3a7c000                                
01af83c8  ldr       x19, [x19, #0xfa8]                             // PathMgr_TypeInfo
01af83cc  ldr       x8, [x19]                                      
01af83d0  ldr       x8, [x8, #0xb8]                                
01af83d4  ldr       x0, [x8]                                       
01af83d8  cbz       x0, #0x1af8524                                 
01af83dc  mov       w1, #2                                         
01af83e0  mov       w2, #4                                         
01af83e4  mov       x3, xzr                                        
01af83e8  bl        #0x199f324                                     // PathMgr$$CompleteMission
01af83ec  ldr       x8, [x19]                                      
01af83f0  ldr       x8, [x8, #0xb8]                                
01af83f4  ldr       x0, [x8]                                       
01af83f8  cbz       x0, #0x1af8524                                 
01af83fc  mov       w1, #3                                         
01af8400  b         #0x1af8514                                     
01af8404  ldr       x0, [x19, #0x20]                               
01af8408  cbz       x0, #0x1af8524                                 
01af840c  ldr       x2, [x25]                                      
01af8410  add       x8, sp, #0x2a0                                 
01af8414  mov       w1, #6                                         
01af8418  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af841c  ldr       q0, [sp, #0x2a0]                               
01af8420  ldr       x8, [sp, #0x2b0]                               
01af8424  add       x0, sp, #0x120                                 
01af8428  mov       x1, xzr                                        
01af842c  str       q0, [sp, #0x120]                               
01af8430  str       x8, [sp, #0x130]                               
01af8434  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af8438  mov       w8, #0x7f800000                                
01af843c  fcvtzs    w9, s0                                         
01af8440  mov       x0, x19                                        
01af8444  fmov      s1, w8                                         
01af8448  mov       w8, #-0xffffffff80000000                       
01af844c  mov       w1, #0x12                                      
01af8450  b         #0x1af7fe0                                     
01af8454  ldr       x0, [x19, #0x20]                               
01af8458  cbz       x0, #0x1af8524                                 
01af845c  ldr       x2, [x25]                                      
01af8460  add       x8, sp, #0x2a0                                 
01af8464  mov       w1, #0xd                                       
01af8468  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af846c  ldr       q0, [sp, #0x2a0]                               
01af8470  ldr       x8, [sp, #0x2b0]                               
01af8474  add       x0, sp, #0x80                                  
01af8478  mov       x1, xzr                                        
01af847c  str       q0, [sp, #0x80]                                
01af8480  str       x8, [sp, #0x90]                                
01af8484  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af8488  mov       w8, #0x7f800000                                
01af848c  fcvtzs    w9, s0                                         
01af8490  mov       x0, x19                                        
01af8494  fmov      s1, w8                                         
01af8498  mov       w8, #-0xffffffff80000000                       
01af849c  mov       w1, #0x15                                      
01af84a0  fcmp      s0, s1                                         
01af84a4  csel      w2, w8, w9, eq                                 
01af84a8  bl        #0x1af3a3c                                     // DataMgr$$CheckMaxAndReportAchievement
01af84ac  fmov      s0, #25.00000000                               
01af84b0  fcmp      s8, s0                                         
01af84b4  b.pl      #0x1af7fec                                     
01af84b8  ldr       x0, [x19, #0x20]                               
01af84bc  cbz       x0, #0x1af8524                                 
01af84c0  ldr       x2, [x25]                                      
01af84c4  add       x8, sp, #0x2a0                                 
01af84c8  mov       w1, #0xd                                       
01af84cc  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af84d0  ldr       q0, [sp, #0x2a0]                               
01af84d4  ldr       x8, [sp, #0x2b0]                               
01af84d8  add       x0, sp, #0x60                                  
01af84dc  mov       x1, xzr                                        
01af84e0  str       q0, [sp, #0x60]                                
01af84e4  str       x8, [sp, #0x70]                                
01af84e8  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af84ec  fmov      s1, #25.00000000                               
01af84f0  fcmp      s0, s1                                         
01af84f4  b.lt      #0x1af7fec                                     
01af84f8  adrp      x8, #0x3a7c000                                 
01af84fc  ldr       x8, [x8, #0xfa8]                               // PathMgr_TypeInfo
01af8500  ldr       x8, [x8]                                       
01af8504  ldr       x8, [x8, #0xb8]                                
01af8508  ldr       x0, [x8]                                       
01af850c  cbz       x0, #0x1af8524                                 
01af8510  mov       w1, #1                                         
01af8514  mov       w2, #4                                         
01af8518  mov       x3, xzr                                        
01af851c  bl        #0x199f324                                     // PathMgr$$CompleteMission
01af8520  b         #0x1af7fec                                     
01af8524  bl        #0x183dddc                                     