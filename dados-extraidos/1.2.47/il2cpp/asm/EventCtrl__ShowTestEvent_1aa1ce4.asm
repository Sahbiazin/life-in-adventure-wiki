void EventCtrl__ShowTestEvent (EventCtrl_o* __this, int32_t eventType, int32_t eventIndex, const MethodInfo* method);
// RVA 0x1aa1ce4 to 0x1aa20d4
01aa1ce4  sub       sp, sp, #0x50                                  
01aa1ce8  stp       x30, x23, [sp, #0x20]                          
01aa1cec  stp       x22, x21, [sp, #0x30]                          
01aa1cf0  stp       x20, x19, [sp, #0x40]                          
01aa1cf4  adrp      x22, #0x3d14000                                
01aa1cf8  mov       w20, w2                                        
01aa1cfc  mov       w21, w1                                        
01aa1d00  ldrb      w8, [x22, #0xcfa]                              
01aa1d04  mov       x19, x0                                        
01aa1d08  tbnz      w8, #0, #0x1aa1d44                             
01aa1d0c  adrp      x0, #0x3a7c000                                 
01aa1d10  ldr       x0, [x0, #0xd40]                               
01aa1d14  bl        #0x183db90                                     
01aa1d18  adrp      x0, #0x3a7c000                                 
01aa1d1c  ldr       x0, [x0, #0xc08]                               
01aa1d20  bl        #0x183db90                                     
01aa1d24  adrp      x0, #0x3a8c000                                 
01aa1d28  ldr       x0, [x0, #0x6a8]                               
01aa1d2c  bl        #0x183db90                                     
01aa1d30  adrp      x0, #0x3a7b000                                 
01aa1d34  ldr       x0, [x0, #0xaf0]                               
01aa1d38  bl        #0x183db90                                     
01aa1d3c  mov       w8, #1                                         
01aa1d40  strb      w8, [x22, #0xcfa]                              
01aa1d44  cmp       w21, #1                                        
01aa1d48  str       w21, [x19, #0x13c]                             
01aa1d4c  str       w20, [x19, #0xe0]                              
01aa1d50  b.eq      #0x1aa1d78                                     
01aa1d54  cmp       w21, #5                                        
01aa1d58  b.ne      #0x1aa1df8                                     
01aa1d5c  mov       x0, x19                                        
01aa1d60  ldp       x20, x19, [sp, #0x40]                          
01aa1d64  ldp       x22, x21, [sp, #0x30]                          
01aa1d68  mov       w1, #-1                                        
01aa1d6c  ldp       x30, x23, [sp, #0x20]                          
01aa1d70  add       sp, sp, #0x50                                  
01aa1d74  b         #0x1a9d1e0                                     // EventCtrl$$ShowShopEvent
01aa1d78  ldr       x8, [x19, #0x118]                              
01aa1d7c  cbz       x8, #0x1aa20cc                                 
01aa1d80  ldr       w9, [x8, #0x18]                                
01aa1d84  tst       w9, #0xfffffffe                                
01aa1d88  b.eq      #0x1aa20d0                                     
01aa1d8c  ldr       x0, [x8, #0x28]                                
01aa1d90  cbz       x0, #0x1aa20cc                                 
01aa1d94  adrp      x23, #0x3a8c000                                
01aa1d98  mov       w1, w20                                        
01aa1d9c  ldr       x23, [x23, #0x6a8]                             
01aa1da0  ldr       x2, [x23]                                      
01aa1da4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1da8  cbz       x0, #0x1aa20cc                                 
01aa1dac  ldr       x0, [x0, #0x18]                                
01aa1db0  mov       x1, xzr                                        
01aa1db4  bl        #0x2c6d184                                     // System.String$$IsNullOrWhiteSpace
01aa1db8  adrp      x22, #0x3a7c000                                
01aa1dbc  mov       w8, w0                                         
01aa1dc0  ldr       x22, [x22, #0xc08]                             
01aa1dc4  ldr       x9, [x22]                                      
01aa1dc8  ldr       x9, [x9, #0xb8]                                
01aa1dcc  ldr       x0, [x9]                                       
01aa1dd0  tbz       w8, #0, #0x1aa1e0c                             
01aa1dd4  cbz       x0, #0x1aa20cc                                 
01aa1dd8  adrp      x8, #0x3a7c000                                 
01aa1ddc  ldr       x8, [x8, #0xd40]                               
01aa1de0  ldr       x1, [x8]                                       
01aa1de4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa1de8  cbz       x0, #0x1aa20cc                                 
01aa1dec  mov       x1, xzr                                        
01aa1df0  bl        #0x1ab04ac                                     // MonsterDataBase$$GetRandomMonsterData
01aa1df4  b         #0x1aa1e78                                     
01aa1df8  adrp      x8, #0x3a7b000                                 
01aa1dfc  ldr       x8, [x8, #0xaf0]                               
01aa1e00  str       xzr, [x19, #0x140]                             
01aa1e04  ldr       x20, [x8]                                      
01aa1e08  b         #0x1aa1fb0                                     
01aa1e0c  cbz       x0, #0x1aa20cc                                 
01aa1e10  adrp      x8, #0x3a7c000                                 
01aa1e14  ldr       x8, [x8, #0xd40]                               
01aa1e18  ldr       x1, [x8]                                       
01aa1e1c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa1e20  ldr       x8, [x19, #0x118]                              
01aa1e24  cbz       x8, #0x1aa20cc                                 
01aa1e28  ldrsw     x9, [x19, #0x13c]                              
01aa1e2c  ldr       w10, [x8, #0x18]                               
01aa1e30  cmp       w9, w10                                        
01aa1e34  b.hs      #0x1aa20d0                                     
01aa1e38  add       x8, x8, x9, lsl #3                             
01aa1e3c  mov       x20, x0                                        
01aa1e40  ldr       x0, [x8, #0x20]                                
01aa1e44  cbz       x0, #0x1aa20cc                                 
01aa1e48  ldr       w1, [x19, #0xe0]                               
01aa1e4c  ldr       x2, [x23]                                      
01aa1e50  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1e54  cbz       x0, #0x1aa20cc                                 
01aa1e58  ldr       x1, [x0, #0x18]                                
01aa1e5c  mov       x0, x19                                        
01aa1e60  bl        #0x1a9e5d4                                     // EventCtrl$$GetMonsterIndex
01aa1e64  cbz       x20, #0x1aa20cc                                
01aa1e68  mov       w1, w0                                         
01aa1e6c  mov       x0, x20                                        
01aa1e70  mov       x2, xzr                                        
01aa1e74  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa1e78  ldr       x8, [x22]                                      
01aa1e7c  mov       x21, x0                                        
01aa1e80  str       x21, [x19, #0x140]                             
01aa1e84  ldr       x8, [x8, #0xb8]                                
01aa1e88  ldr       x0, [x8]                                       
01aa1e8c  cbz       x0, #0x1aa20cc                                 
01aa1e90  adrp      x8, #0x3a7c000                                 
01aa1e94  ldr       x8, [x8, #0xd40]                               
01aa1e98  ldr       x1, [x8]                                       
01aa1e9c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa1ea0  ldr       x8, [x19, #0x140]                              
01aa1ea4  cbz       x8, #0x1aa20cc                                 
01aa1ea8  cbz       x0, #0x1aa20cc                                 
01aa1eac  ldr       x1, [x8, #0xb0]                                
01aa1eb0  mov       x2, xzr                                        
01aa1eb4  bl        #0x1ab0690                                     // MonsterDataBase$$GetChoiceAbIndex
01aa1eb8  cbz       x21, #0x1aa20cc                                
01aa1ebc  adrp      x8, #0x3a7b000                                 
01aa1ec0  ldr       x8, [x8, #0xaf0]                               
01aa1ec4  ldr       x9, [x19, #0x140]                              
01aa1ec8  str       w0, [x21, #0xb8]                               
01aa1ecc  ldr       x20, [x8]                                      
01aa1ed0  cbz       x9, #0x1aa1fb0                                 
01aa1ed4  ldr       x8, [x19, #0x118]                              
01aa1ed8  cbz       x8, #0x1aa20cc                                 
01aa1edc  ldrsw     x9, [x19, #0x13c]                              
01aa1ee0  ldr       w10, [x8, #0x18]                               
01aa1ee4  cmp       w9, w10                                        
01aa1ee8  b.hs      #0x1aa20d0                                     
01aa1eec  add       x8, x8, x9, lsl #3                             
01aa1ef0  ldr       x0, [x8, #0x20]                                
01aa1ef4  cbz       x0, #0x1aa20cc                                 
01aa1ef8  ldr       w1, [x19, #0xe0]                               
01aa1efc  ldr       x2, [x23]                                      
01aa1f00  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1f04  cbz       x0, #0x1aa20cc                                 
01aa1f08  ldr       x9, [x19, #0x140]                              
01aa1f0c  cbz       x9, #0x1aa20cc                                 
01aa1f10  ldr       x8, [x22]                                      
01aa1f14  ldr       x8, [x8, #0xb8]                                
01aa1f18  ldr       x8, [x8]                                       
01aa1f1c  cbz       x8, #0x1aa20cc                                 
01aa1f20  ldr       x9, [x9, #0x20]                                
01aa1f24  cbz       x9, #0x1aa20cc                                 
01aa1f28  ldrsw     x10, [x8, #0x5cc]                              
01aa1f2c  ldr       w11, [x9, #0x18]                               
01aa1f30  cmp       w10, w11                                       
01aa1f34  b.hs      #0x1aa20d0                                     
01aa1f38  add       x9, x9, x10, lsl #3                            
01aa1f3c  ldr       x0, [x0, #0x30]                                
01aa1f40  ldr       x2, [x8, #0x40]                                
01aa1f44  mov       x3, xzr                                        
01aa1f48  ldr       x1, [x9, #0x20]                                
01aa1f4c  bl        #0x2c6e654                                     // System.String$$Format
01aa1f50  mov       x1, x0                                         
01aa1f54  mov       x0, x20                                        
01aa1f58  mov       x2, xzr                                        
01aa1f5c  bl        #0x2c63780                                     // System.String$$Concat
01aa1f60  ldr       x8, [x19, #0x140]                              
01aa1f64  cbz       x8, #0x1aa20cc                                 
01aa1f68  ldr       x9, [x22]                                      
01aa1f6c  mov       x20, x0                                        
01aa1f70  ldr       x9, [x9, #0xb8]                                
01aa1f74  ldr       x0, [x9]                                       
01aa1f78  cbz       x0, #0x1aa20cc                                 
01aa1f7c  ldr       w2, [x19, #0x13c]                              
01aa1f80  ldr       w3, [x19, #0xe0]                               
01aa1f84  mov       w4, wzr                                        
01aa1f88  ldr       w7, [x8, #0x10]                                
01aa1f8c  mov       w8, #-1                                        
01aa1f90  mov       w5, wzr                                        
01aa1f94  mov       w6, wzr                                        
01aa1f98  str       w8, [sp, #8]                                   
01aa1f9c  mov       w8, #1                                         
01aa1fa0  mov       w1, #2                                         
01aa1fa4  str       xzr, [sp, #0x10]                               
01aa1fa8  strb      w8, [sp]                                       
01aa1fac  b         #0x1aa2078                                     
01aa1fb0  ldr       x8, [x19, #0x118]                              
01aa1fb4  cbz       x8, #0x1aa20cc                                 
01aa1fb8  ldrsw     x9, [x19, #0x13c]                              
01aa1fbc  ldr       w10, [x8, #0x18]                               
01aa1fc0  cmp       w9, w10                                        
01aa1fc4  b.hs      #0x1aa20d0                                     
01aa1fc8  add       x8, x8, x9, lsl #3                             
01aa1fcc  ldr       x0, [x8, #0x20]                                
01aa1fd0  cbz       x0, #0x1aa20cc                                 
01aa1fd4  adrp      x8, #0x3a8c000                                 
01aa1fd8  ldr       x8, [x8, #0x6a8]                               
01aa1fdc  ldr       w1, [x19, #0xe0]                               
01aa1fe0  ldr       x2, [x8]                                       
01aa1fe4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1fe8  cbz       x0, #0x1aa20cc                                 
01aa1fec  adrp      x21, #0x3a7c000                                
01aa1ff0  ldr       x21, [x21, #0xc08]                             
01aa1ff4  ldr       x8, [x21]                                      
01aa1ff8  ldr       x8, [x8, #0xb8]                                
01aa1ffc  ldr       x8, [x8]                                       
01aa2000  cbz       x8, #0x1aa20cc                                 
01aa2004  adrp      x9, #0x3a7b000                                 
01aa2008  mov       x3, xzr                                        
01aa200c  ldr       x9, [x9, #0xaf0]                               
01aa2010  ldr       x0, [x0, #0x30]                                
01aa2014  ldr       x2, [x8, #0x40]                                
01aa2018  ldr       x1, [x9]                                       
01aa201c  bl        #0x2c6e654                                     // System.String$$Format
01aa2020  mov       x1, x0                                         
01aa2024  mov       x0, x20                                        
01aa2028  mov       x2, xzr                                        
01aa202c  bl        #0x2c63780                                     // System.String$$Concat
01aa2030  ldr       x8, [x21]                                      
01aa2034  ldr       x8, [x8, #0xb8]                                
01aa2038  ldr       x8, [x8]                                       
01aa203c  cbz       x8, #0x1aa20cc                                 
01aa2040  mov       w9, #-1                                        
01aa2044  ldr       w3, [x19, #0xe0]                               
01aa2048  ldr       w2, [x19, #0x13c]                              
01aa204c  str       w9, [sp, #8]                                   
01aa2050  mov       w9, #1                                         
01aa2054  mov       x20, x0                                        
01aa2058  mov       w4, wzr                                        
01aa205c  mov       w5, wzr                                        
01aa2060  mov       w6, wzr                                        
01aa2064  str       xzr, [sp, #0x10]                               
01aa2068  mov       x0, x8                                         
01aa206c  mov       w1, #2                                         
01aa2070  mov       w7, #-1                                        
01aa2074  strb      w9, [sp]                                       
01aa2078  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01aa207c  mov       x0, x19                                        
01aa2080  mov       x1, x20                                        
01aa2084  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01aa2088  mov       x1, x0                                         
01aa208c  mov       x0, x19                                        
01aa2090  mov       x2, xzr                                        
01aa2094  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01aa2098  mov       w8, #1                                         
01aa209c  str       x0, [x19, #0x188]                              
01aa20a0  mov       x0, x19                                        
01aa20a4  strb      w8, [x19, #0x116]                              
01aa20a8  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa20ac  mov       x0, x19                                        
01aa20b0  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01aa20b4  mov       x0, x19                                        
01aa20b8  ldp       x20, x19, [sp, #0x40]                          
01aa20bc  ldp       x22, x21, [sp, #0x30]                          
01aa20c0  ldp       x30, x23, [sp, #0x20]                          
01aa20c4  add       sp, sp, #0x50                                  
01aa20c8  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa20cc  bl        #0x183dddc                                     
01aa20d0  bl        #0x183dde4                                     