bool EventCtrl__CheckHaveList (EventCtrl_o* __this, int32_t index, const MethodInfo* method);
// RVA 0x1a96958 to 0x1a98148
01a96958  stp       x30, x25, [sp, #-0x40]!                        
01a9695c  stp       x24, x23, [sp, #0x10]                          
01a96960  stp       x22, x21, [sp, #0x20]                          
01a96964  stp       x20, x19, [sp, #0x30]                          
01a96968  adrp      x20, #0x3d14000                                
01a9696c  mov       w19, w1                                        
01a96970  ldrb      w8, [x20, #0xcdb]                              
01a96974  tbnz      w8, #0, #0x1a96a10                             
01a96978  adrp      x0, #0x3a7c000                                 
01a9697c  ldr       x0, [x0, #0xc08]                               
01a96980  bl        #0x183db90                                     
01a96984  adrp      x0, #0x3a8c000                                 
01a96988  ldr       x0, [x0, #0x890]                               
01a9698c  bl        #0x183db90                                     
01a96990  adrp      x0, #0x3a7c000                                 
01a96994  ldr       x0, [x0, #0xce8]                               
01a96998  bl        #0x183db90                                     
01a9699c  adrp      x0, #0x3a8c000                                 
01a969a0  ldr       x0, [x0, #0x640]                               
01a969a4  bl        #0x183db90                                     
01a969a8  adrp      x0, #0x3a7c000                                 
01a969ac  ldr       x0, [x0, #0xc30]                               
01a969b0  bl        #0x183db90                                     
01a969b4  adrp      x0, #0x3a8c000                                 
01a969b8  ldr       x0, [x0, #0x658]                               
01a969bc  bl        #0x183db90                                     
01a969c0  adrp      x0, #0x3a8c000                                 
01a969c4  ldr       x0, [x0, #0x898]                               
01a969c8  bl        #0x183db90                                     
01a969cc  adrp      x0, #0x3a8c000                                 
01a969d0  ldr       x0, [x0, #0x8a0]                               
01a969d4  bl        #0x183db90                                     
01a969d8  adrp      x0, #0x3a8c000                                 
01a969dc  ldr       x0, [x0, #0x8a8]                               
01a969e0  bl        #0x183db90                                     
01a969e4  adrp      x0, #0x3a8c000                                 
01a969e8  ldr       x0, [x0, #0x8b0]                               
01a969ec  bl        #0x183db90                                     
01a969f0  adrp      x0, #0x3a8c000                                 
01a969f4  ldr       x0, [x0, #0x8b8]                               
01a969f8  bl        #0x183db90                                     
01a969fc  adrp      x0, #0x3a8c000                                 
01a96a00  ldr       x0, [x0, #0x668]                               
01a96a04  bl        #0x183db90                                     
01a96a08  mov       w8, #1                                         
01a96a0c  strb      w8, [x20, #0xcdb]                              
01a96a10  cmp       w19, #0xe                                      
01a96a14  b.hi      #0x1a98128                                     
01a96a18  mov       w8, w19                                        
01a96a1c  adrp      x9, #0xa44000                                  
01a96a20  add       x9, x9, #0x2c8                                 
01a96a24  adr       x10, #0x1a96a34                                
01a96a28  ldrh      w11, [x9, x8, lsl #1]                          
01a96a2c  add       x10, x10, x11, lsl #2                          
01a96a30  br        x10                                            
01a96a34  adrp      x20, #0x3d14000                                
01a96a38  ldrb      w8, [x20, #0x679]                              
01a96a3c  cbnz      w8, #0x1a96a54                                 
01a96a40  adrp      x0, #0x3a7c000                                 
01a96a44  ldr       x0, [x0, #0xe18]                               
01a96a48  bl        #0x183db90                                     
01a96a4c  mov       w8, #1                                         
01a96a50  strb      w8, [x20, #0x679]                              
01a96a54  adrp      x21, #0x3a7c000                                
01a96a58  ldr       x21, [x21, #0xe18]                             
01a96a5c  ldr       x8, [x21]                                      
01a96a60  ldr       x8, [x8, #0xb8]                                
01a96a64  ldr       x0, [x8]                                       
01a96a68  cbz       x0, #0x1a98144                                 
01a96a6c  mov       w1, #0x7c                                      
01a96a70  mov       w2, #1                                         
01a96a74  mov       x3, xzr                                        
01a96a78  mov       w19, #1                                        
01a96a7c  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96a80  tbnz      w0, #0, #0x1a9812c                             
01a96a84  ldrb      w8, [x20, #0x679]                              
01a96a88  cbnz      w8, #0x1a96aa0                                 
01a96a8c  adrp      x0, #0x3a7c000                                 
01a96a90  ldr       x0, [x0, #0xe18]                               
01a96a94  bl        #0x183db90                                     
01a96a98  mov       w8, #1                                         
01a96a9c  strb      w8, [x20, #0x679]                              
01a96aa0  ldr       x8, [x21]                                      
01a96aa4  ldr       x8, [x8, #0xb8]                                
01a96aa8  ldr       x0, [x8]                                       
01a96aac  cbz       x0, #0x1a98144                                 
01a96ab0  mov       w1, #0x7d                                      
01a96ab4  mov       w2, #1                                         
01a96ab8  mov       x3, xzr                                        
01a96abc  mov       w19, #1                                        
01a96ac0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96ac4  tbnz      w0, #0, #0x1a9812c                             
01a96ac8  ldrb      w8, [x20, #0x679]                              
01a96acc  cbnz      w8, #0x1a96ae4                                 
01a96ad0  adrp      x0, #0x3a7c000                                 
01a96ad4  ldr       x0, [x0, #0xe18]                               
01a96ad8  bl        #0x183db90                                     
01a96adc  mov       w8, #1                                         
01a96ae0  strb      w8, [x20, #0x679]                              
01a96ae4  ldr       x8, [x21]                                      
01a96ae8  ldr       x8, [x8, #0xb8]                                
01a96aec  ldr       x0, [x8]                                       
01a96af0  cbz       x0, #0x1a98144                                 
01a96af4  mov       w1, #0x8f                                      
01a96af8  mov       w2, #1                                         
01a96afc  mov       x3, xzr                                        
01a96b00  mov       w19, #1                                        
01a96b04  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96b08  tbnz      w0, #0, #0x1a9812c                             
01a96b0c  ldrb      w8, [x20, #0x679]                              
01a96b10  cbnz      w8, #0x1a96b28                                 
01a96b14  adrp      x0, #0x3a7c000                                 
01a96b18  ldr       x0, [x0, #0xe18]                               
01a96b1c  bl        #0x183db90                                     
01a96b20  mov       w8, #1                                         
01a96b24  strb      w8, [x20, #0x679]                              
01a96b28  ldr       x8, [x21]                                      
01a96b2c  ldr       x8, [x8, #0xb8]                                
01a96b30  ldr       x0, [x8]                                       
01a96b34  cbz       x0, #0x1a98144                                 
01a96b38  mov       w1, #0x90                                      
01a96b3c  mov       w2, #1                                         
01a96b40  mov       x3, xzr                                        
01a96b44  mov       w19, #1                                        
01a96b48  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96b4c  tbnz      w0, #0, #0x1a9812c                             
01a96b50  ldrb      w8, [x20, #0x679]                              
01a96b54  cbnz      w8, #0x1a96b6c                                 
01a96b58  adrp      x0, #0x3a7c000                                 
01a96b5c  ldr       x0, [x0, #0xe18]                               
01a96b60  bl        #0x183db90                                     
01a96b64  mov       w8, #1                                         
01a96b68  strb      w8, [x20, #0x679]                              
01a96b6c  ldr       x8, [x21]                                      
01a96b70  ldr       x8, [x8, #0xb8]                                
01a96b74  ldr       x0, [x8]                                       
01a96b78  cbz       x0, #0x1a98144                                 
01a96b7c  mov       w1, #0x17b                                     
01a96b80  b         #0x1a97434                                     
01a96b84  adrp      x20, #0x3d14000                                
01a96b88  ldrb      w8, [x20, #0x679]                              
01a96b8c  cbnz      w8, #0x1a96ba4                                 
01a96b90  adrp      x0, #0x3a7c000                                 
01a96b94  ldr       x0, [x0, #0xe18]                               
01a96b98  bl        #0x183db90                                     
01a96b9c  mov       w8, #1                                         
01a96ba0  strb      w8, [x20, #0x679]                              
01a96ba4  adrp      x21, #0x3a7c000                                
01a96ba8  ldr       x21, [x21, #0xe18]                             
01a96bac  ldr       x8, [x21]                                      
01a96bb0  ldr       x8, [x8, #0xb8]                                
01a96bb4  ldr       x0, [x8]                                       
01a96bb8  cbz       x0, #0x1a98144                                 
01a96bbc  mov       w1, wzr                                        
01a96bc0  mov       w2, #1                                         
01a96bc4  mov       x3, xzr                                        
01a96bc8  mov       w19, #1                                        
01a96bcc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96bd0  tbnz      w0, #0, #0x1a9812c                             
01a96bd4  ldrb      w8, [x20, #0x679]                              
01a96bd8  cbnz      w8, #0x1a96bf0                                 
01a96bdc  adrp      x0, #0x3a7c000                                 
01a96be0  ldr       x0, [x0, #0xe18]                               
01a96be4  bl        #0x183db90                                     
01a96be8  mov       w8, #1                                         
01a96bec  strb      w8, [x20, #0x679]                              
01a96bf0  ldr       x8, [x21]                                      
01a96bf4  ldr       x8, [x8, #0xb8]                                
01a96bf8  ldr       x0, [x8]                                       
01a96bfc  cbz       x0, #0x1a98144                                 
01a96c00  mov       w1, #0xc                                       
01a96c04  mov       w2, #1                                         
01a96c08  mov       x3, xzr                                        
01a96c0c  mov       w19, #1                                        
01a96c10  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96c14  tbnz      w0, #0, #0x1a9812c                             
01a96c18  ldrb      w8, [x20, #0x679]                              
01a96c1c  cbnz      w8, #0x1a96c34                                 
01a96c20  adrp      x0, #0x3a7c000                                 
01a96c24  ldr       x0, [x0, #0xe18]                               
01a96c28  bl        #0x183db90                                     
01a96c2c  mov       w8, #1                                         
01a96c30  strb      w8, [x20, #0x679]                              
01a96c34  ldr       x8, [x21]                                      
01a96c38  ldr       x8, [x8, #0xb8]                                
01a96c3c  ldr       x0, [x8]                                       
01a96c40  cbz       x0, #0x1a98144                                 
01a96c44  mov       w1, #0x1b                                      
01a96c48  mov       w2, #1                                         
01a96c4c  mov       x3, xzr                                        
01a96c50  mov       w19, #1                                        
01a96c54  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96c58  tbnz      w0, #0, #0x1a9812c                             
01a96c5c  ldrb      w8, [x20, #0x679]                              
01a96c60  cbnz      w8, #0x1a96c78                                 
01a96c64  adrp      x0, #0x3a7c000                                 
01a96c68  ldr       x0, [x0, #0xe18]                               
01a96c6c  bl        #0x183db90                                     
01a96c70  mov       w8, #1                                         
01a96c74  strb      w8, [x20, #0x679]                              
01a96c78  ldr       x8, [x21]                                      
01a96c7c  ldr       x8, [x8, #0xb8]                                
01a96c80  ldr       x0, [x8]                                       
01a96c84  cbz       x0, #0x1a98144                                 
01a96c88  mov       w1, #0x30                                      
01a96c8c  mov       w2, #1                                         
01a96c90  mov       x3, xzr                                        
01a96c94  mov       w19, #1                                        
01a96c98  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96c9c  tbnz      w0, #0, #0x1a9812c                             
01a96ca0  ldrb      w8, [x20, #0x679]                              
01a96ca4  cbnz      w8, #0x1a96cbc                                 
01a96ca8  adrp      x0, #0x3a7c000                                 
01a96cac  ldr       x0, [x0, #0xe18]                               
01a96cb0  bl        #0x183db90                                     
01a96cb4  mov       w8, #1                                         
01a96cb8  strb      w8, [x20, #0x679]                              
01a96cbc  ldr       x8, [x21]                                      
01a96cc0  ldr       x8, [x8, #0xb8]                                
01a96cc4  ldr       x0, [x8]                                       
01a96cc8  cbz       x0, #0x1a98144                                 
01a96ccc  mov       w1, #0x5c                                      
01a96cd0  mov       w2, #1                                         
01a96cd4  mov       x3, xzr                                        
01a96cd8  mov       w19, #1                                        
01a96cdc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96ce0  tbnz      w0, #0, #0x1a9812c                             
01a96ce4  ldrb      w8, [x20, #0x679]                              
01a96ce8  cbnz      w8, #0x1a96d00                                 
01a96cec  adrp      x0, #0x3a7c000                                 
01a96cf0  ldr       x0, [x0, #0xe18]                               
01a96cf4  bl        #0x183db90                                     
01a96cf8  mov       w8, #1                                         
01a96cfc  strb      w8, [x20, #0x679]                              
01a96d00  ldr       x8, [x21]                                      
01a96d04  ldr       x8, [x8, #0xb8]                                
01a96d08  ldr       x0, [x8]                                       
01a96d0c  cbz       x0, #0x1a98144                                 
01a96d10  mov       w1, #0x5d                                      
01a96d14  mov       w2, #1                                         
01a96d18  mov       x3, xzr                                        
01a96d1c  mov       w19, #1                                        
01a96d20  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96d24  tbnz      w0, #0, #0x1a9812c                             
01a96d28  ldrb      w8, [x20, #0x679]                              
01a96d2c  cbnz      w8, #0x1a96d44                                 
01a96d30  adrp      x0, #0x3a7c000                                 
01a96d34  ldr       x0, [x0, #0xe18]                               
01a96d38  bl        #0x183db90                                     
01a96d3c  mov       w8, #1                                         
01a96d40  strb      w8, [x20, #0x679]                              
01a96d44  ldr       x8, [x21]                                      
01a96d48  ldr       x8, [x8, #0xb8]                                
01a96d4c  ldr       x0, [x8]                                       
01a96d50  cbz       x0, #0x1a98144                                 
01a96d54  mov       w1, #0xea                                      
01a96d58  mov       w2, #1                                         
01a96d5c  mov       x3, xzr                                        
01a96d60  mov       w19, #1                                        
01a96d64  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96d68  tbnz      w0, #0, #0x1a9812c                             
01a96d6c  ldrb      w8, [x20, #0x679]                              
01a96d70  cbnz      w8, #0x1a96d88                                 
01a96d74  adrp      x0, #0x3a7c000                                 
01a96d78  ldr       x0, [x0, #0xe18]                               
01a96d7c  bl        #0x183db90                                     
01a96d80  mov       w8, #1                                         
01a96d84  strb      w8, [x20, #0x679]                              
01a96d88  ldr       x8, [x21]                                      
01a96d8c  ldr       x8, [x8, #0xb8]                                
01a96d90  ldr       x0, [x8]                                       
01a96d94  cbz       x0, #0x1a98144                                 
01a96d98  mov       w1, #0xf8                                      
01a96d9c  mov       w2, #1                                         
01a96da0  mov       x3, xzr                                        
01a96da4  mov       w19, #1                                        
01a96da8  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96dac  tbnz      w0, #0, #0x1a9812c                             
01a96db0  ldrb      w8, [x20, #0x679]                              
01a96db4  cbnz      w8, #0x1a96dcc                                 
01a96db8  adrp      x0, #0x3a7c000                                 
01a96dbc  ldr       x0, [x0, #0xe18]                               
01a96dc0  bl        #0x183db90                                     
01a96dc4  mov       w8, #1                                         
01a96dc8  strb      w8, [x20, #0x679]                              
01a96dcc  ldr       x8, [x21]                                      
01a96dd0  ldr       x8, [x8, #0xb8]                                
01a96dd4  ldr       x0, [x8]                                       
01a96dd8  cbz       x0, #0x1a98144                                 
01a96ddc  mov       w1, #0x11a                                     
01a96de0  mov       w2, #1                                         
01a96de4  mov       x3, xzr                                        
01a96de8  mov       w19, #1                                        
01a96dec  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96df0  tbnz      w0, #0, #0x1a9812c                             
01a96df4  ldrb      w8, [x20, #0x679]                              
01a96df8  cbnz      w8, #0x1a96e10                                 
01a96dfc  adrp      x0, #0x3a7c000                                 
01a96e00  ldr       x0, [x0, #0xe18]                               
01a96e04  bl        #0x183db90                                     
01a96e08  mov       w8, #1                                         
01a96e0c  strb      w8, [x20, #0x679]                              
01a96e10  ldr       x8, [x21]                                      
01a96e14  ldr       x8, [x8, #0xb8]                                
01a96e18  ldr       x0, [x8]                                       
01a96e1c  cbz       x0, #0x1a98144                                 
01a96e20  mov       w1, #0x128                                     
01a96e24  mov       w2, #1                                         
01a96e28  mov       x3, xzr                                        
01a96e2c  mov       w19, #1                                        
01a96e30  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96e34  tbnz      w0, #0, #0x1a9812c                             
01a96e38  ldrb      w8, [x20, #0x679]                              
01a96e3c  cbnz      w8, #0x1a96e54                                 
01a96e40  adrp      x0, #0x3a7c000                                 
01a96e44  ldr       x0, [x0, #0xe18]                               
01a96e48  bl        #0x183db90                                     
01a96e4c  mov       w8, #1                                         
01a96e50  strb      w8, [x20, #0x679]                              
01a96e54  ldr       x8, [x21]                                      
01a96e58  ldr       x8, [x8, #0xb8]                                
01a96e5c  ldr       x0, [x8]                                       
01a96e60  cbz       x0, #0x1a98144                                 
01a96e64  mov       w1, #0x147                                     
01a96e68  mov       w2, #1                                         
01a96e6c  mov       x3, xzr                                        
01a96e70  mov       w19, #1                                        
01a96e74  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96e78  tbnz      w0, #0, #0x1a9812c                             
01a96e7c  ldrb      w8, [x20, #0x679]                              
01a96e80  cbnz      w8, #0x1a96e98                                 
01a96e84  adrp      x0, #0x3a7c000                                 
01a96e88  ldr       x0, [x0, #0xe18]                               
01a96e8c  bl        #0x183db90                                     
01a96e90  mov       w8, #1                                         
01a96e94  strb      w8, [x20, #0x679]                              
01a96e98  ldr       x8, [x21]                                      
01a96e9c  ldr       x8, [x8, #0xb8]                                
01a96ea0  ldr       x0, [x8]                                       
01a96ea4  cbz       x0, #0x1a98144                                 
01a96ea8  mov       w1, #0x148                                     
01a96eac  mov       w2, #1                                         
01a96eb0  mov       x3, xzr                                        
01a96eb4  mov       w19, #1                                        
01a96eb8  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96ebc  tbnz      w0, #0, #0x1a9812c                             
01a96ec0  ldrb      w8, [x20, #0x679]                              
01a96ec4  cbnz      w8, #0x1a96edc                                 
01a96ec8  adrp      x0, #0x3a7c000                                 
01a96ecc  ldr       x0, [x0, #0xe18]                               
01a96ed0  bl        #0x183db90                                     
01a96ed4  mov       w8, #1                                         
01a96ed8  strb      w8, [x20, #0x679]                              
01a96edc  ldr       x8, [x21]                                      
01a96ee0  ldr       x8, [x8, #0xb8]                                
01a96ee4  ldr       x0, [x8]                                       
01a96ee8  cbz       x0, #0x1a98144                                 
01a96eec  mov       w1, #0x149                                     
01a96ef0  mov       w2, #1                                         
01a96ef4  mov       x3, xzr                                        
01a96ef8  mov       w19, #1                                        
01a96efc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96f00  tbnz      w0, #0, #0x1a9812c                             
01a96f04  ldrb      w8, [x20, #0x679]                              
01a96f08  cbnz      w8, #0x1a96f20                                 
01a96f0c  adrp      x0, #0x3a7c000                                 
01a96f10  ldr       x0, [x0, #0xe18]                               
01a96f14  bl        #0x183db90                                     
01a96f18  mov       w8, #1                                         
01a96f1c  strb      w8, [x20, #0x679]                              
01a96f20  ldr       x8, [x21]                                      
01a96f24  ldr       x8, [x8, #0xb8]                                
01a96f28  ldr       x0, [x8]                                       
01a96f2c  cbz       x0, #0x1a98144                                 
01a96f30  mov       w1, #0x14a                                     
01a96f34  mov       w2, #1                                         
01a96f38  mov       x3, xzr                                        
01a96f3c  mov       w19, #1                                        
01a96f40  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96f44  tbnz      w0, #0, #0x1a9812c                             
01a96f48  ldrb      w8, [x20, #0x679]                              
01a96f4c  cbnz      w8, #0x1a96f64                                 
01a96f50  adrp      x0, #0x3a7c000                                 
01a96f54  ldr       x0, [x0, #0xe18]                               
01a96f58  bl        #0x183db90                                     
01a96f5c  mov       w8, #1                                         
01a96f60  strb      w8, [x20, #0x679]                              
01a96f64  ldr       x8, [x21]                                      
01a96f68  ldr       x8, [x8, #0xb8]                                
01a96f6c  ldr       x0, [x8]                                       
01a96f70  cbz       x0, #0x1a98144                                 
01a96f74  mov       w1, #0x14b                                     
01a96f78  mov       w2, #1                                         
01a96f7c  mov       x3, xzr                                        
01a96f80  mov       w19, #1                                        
01a96f84  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96f88  tbnz      w0, #0, #0x1a9812c                             
01a96f8c  ldrb      w8, [x20, #0x679]                              
01a96f90  cbnz      w8, #0x1a96fa8                                 
01a96f94  adrp      x0, #0x3a7c000                                 
01a96f98  ldr       x0, [x0, #0xe18]                               
01a96f9c  bl        #0x183db90                                     
01a96fa0  mov       w8, #1                                         
01a96fa4  strb      w8, [x20, #0x679]                              
01a96fa8  ldr       x8, [x21]                                      
01a96fac  ldr       x8, [x8, #0xb8]                                
01a96fb0  ldr       x0, [x8]                                       
01a96fb4  cbz       x0, #0x1a98144                                 
01a96fb8  mov       w1, #0x14c                                     
01a96fbc  mov       w2, #1                                         
01a96fc0  mov       x3, xzr                                        
01a96fc4  mov       w19, #1                                        
01a96fc8  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a96fcc  tbnz      w0, #0, #0x1a9812c                             
01a96fd0  ldrb      w8, [x20, #0x679]                              
01a96fd4  cbnz      w8, #0x1a96fec                                 
01a96fd8  adrp      x0, #0x3a7c000                                 
01a96fdc  ldr       x0, [x0, #0xe18]                               
01a96fe0  bl        #0x183db90                                     
01a96fe4  mov       w8, #1                                         
01a96fe8  strb      w8, [x20, #0x679]                              
01a96fec  ldr       x8, [x21]                                      
01a96ff0  ldr       x8, [x8, #0xb8]                                
01a96ff4  ldr       x0, [x8]                                       
01a96ff8  cbz       x0, #0x1a98144                                 
01a96ffc  mov       w1, #0x14d                                     
01a97000  mov       w2, #1                                         
01a97004  mov       x3, xzr                                        
01a97008  mov       w19, #1                                        
01a9700c  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97010  tbnz      w0, #0, #0x1a9812c                             
01a97014  ldrb      w8, [x20, #0x679]                              
01a97018  cbnz      w8, #0x1a97030                                 
01a9701c  adrp      x0, #0x3a7c000                                 
01a97020  ldr       x0, [x0, #0xe18]                               
01a97024  bl        #0x183db90                                     
01a97028  mov       w8, #1                                         
01a9702c  strb      w8, [x20, #0x679]                              
01a97030  ldr       x8, [x21]                                      
01a97034  ldr       x8, [x8, #0xb8]                                
01a97038  ldr       x0, [x8]                                       
01a9703c  cbz       x0, #0x1a98144                                 
01a97040  mov       w1, #0x14e                                     
01a97044  mov       w2, #1                                         
01a97048  mov       x3, xzr                                        
01a9704c  mov       w19, #1                                        
01a97050  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97054  tbnz      w0, #0, #0x1a9812c                             
01a97058  ldrb      w8, [x20, #0x679]                              
01a9705c  cbnz      w8, #0x1a97074                                 
01a97060  adrp      x0, #0x3a7c000                                 
01a97064  ldr       x0, [x0, #0xe18]                               
01a97068  bl        #0x183db90                                     
01a9706c  mov       w8, #1                                         
01a97070  strb      w8, [x20, #0x679]                              
01a97074  ldr       x8, [x21]                                      
01a97078  ldr       x8, [x8, #0xb8]                                
01a9707c  ldr       x0, [x8]                                       
01a97080  cbz       x0, #0x1a98144                                 
01a97084  mov       w1, #0x14f                                     
01a97088  mov       w2, #1                                         
01a9708c  mov       x3, xzr                                        
01a97090  mov       w19, #1                                        
01a97094  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97098  tbnz      w0, #0, #0x1a9812c                             
01a9709c  ldrb      w8, [x20, #0x679]                              
01a970a0  cbnz      w8, #0x1a970b8                                 
01a970a4  adrp      x0, #0x3a7c000                                 
01a970a8  ldr       x0, [x0, #0xe18]                               
01a970ac  bl        #0x183db90                                     
01a970b0  mov       w8, #1                                         
01a970b4  strb      w8, [x20, #0x679]                              
01a970b8  ldr       x8, [x21]                                      
01a970bc  ldr       x8, [x8, #0xb8]                                
01a970c0  ldr       x0, [x8]                                       
01a970c4  cbz       x0, #0x1a98144                                 
01a970c8  mov       w1, #0x17e                                     
01a970cc  b         #0x1a97434                                     
01a970d0  adrp      x19, #0x3d14000                                
01a970d4  ldrb      w8, [x19, #0x678]                              
01a970d8  cbnz      w8, #0x1a970f0                                 
01a970dc  adrp      x0, #0x3a7c000                                 
01a970e0  ldr       x0, [x0, #0xd38]                               
01a970e4  bl        #0x183db90                                     
01a970e8  mov       w8, #1                                         
01a970ec  strb      w8, [x19, #0x678]                              
01a970f0  adrp      x8, #0x3a7c000                                 
01a970f4  ldr       x8, [x8, #0xd38]                               
01a970f8  ldr       x8, [x8]                                       
01a970fc  ldr       x8, [x8, #0xb8]                                
01a97100  ldr       x8, [x8]                                       
01a97104  cbz       x8, #0x1a98144                                 
01a97108  adrp      x22, #0x3a8c000                                
01a9710c  ldr       x22, [x22, #0x668]                             
01a97110  ldr       x19, [x8, #0x48]                               
01a97114  ldr       x0, [x22]                                      
01a97118  ldr       w9, [x0, #0xe4]                                
01a9711c  cbnz      w9, #0x1a97128                                 
01a97120  bl        #0x183dcb0                                     
01a97124  ldr       x0, [x22]                                      
01a97128  ldr       x8, [x0, #0xb8]                                
01a9712c  ldr       x20, [x8, #0x18]                               
01a97130  cbnz      x20, #0x1a973d0                                
01a97134  ldr       w9, [x0, #0xe4]                                
01a97138  cbnz      w9, #0x1a97148                                 
01a9713c  bl        #0x183dcb0                                     
01a97140  ldr       x8, [x22]                                      
01a97144  ldr       x8, [x8, #0xb8]                                
01a97148  adrp      x9, #0x3a7c000                                 
01a9714c  ldr       x9, [x9, #0xce8]                               
01a97150  ldr       x21, [x8]                                      
01a97154  ldr       x0, [x9]                                       
01a97158  bl        #0x183ddcc                                     
01a9715c  adrp      x8, #0x3a8c000                                 
01a97160  mov       x1, x21                                        
01a97164  mov       x3, xzr                                        
01a97168  ldr       x8, [x8, #0x8a0]                               
01a9716c  mov       x20, x0                                        
01a97170  ldr       x2, [x8]                                       
01a97174  bl        #0x25b4d6c                                     // System.Func<object, bool>$$.ctor
01a97178  ldr       x8, [x22]                                      
01a9717c  ldr       x8, [x8, #0xb8]                                
01a97180  str       x20, [x8, #0x18]                               
01a97184  b         #0x1a973d0                                     
01a97188  adrp      x20, #0x3d14000                                
01a9718c  ldrb      w8, [x20, #0x679]                              
01a97190  cbnz      w8, #0x1a971a8                                 
01a97194  adrp      x0, #0x3a7c000                                 
01a97198  ldr       x0, [x0, #0xe18]                               
01a9719c  bl        #0x183db90                                     
01a971a0  mov       w8, #1                                         
01a971a4  strb      w8, [x20, #0x679]                              
01a971a8  adrp      x21, #0x3a7c000                                
01a971ac  ldr       x21, [x21, #0xe18]                             
01a971b0  ldr       x8, [x21]                                      
01a971b4  ldr       x8, [x8, #0xb8]                                
01a971b8  ldr       x0, [x8]                                       
01a971bc  cbz       x0, #0x1a98144                                 
01a971c0  mov       w1, #0x8c                                      
01a971c4  mov       w2, #1                                         
01a971c8  mov       x3, xzr                                        
01a971cc  mov       w19, #1                                        
01a971d0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a971d4  tbnz      w0, #0, #0x1a9812c                             
01a971d8  ldrb      w8, [x20, #0x679]                              
01a971dc  cbnz      w8, #0x1a971f4                                 
01a971e0  adrp      x0, #0x3a7c000                                 
01a971e4  ldr       x0, [x0, #0xe18]                               
01a971e8  bl        #0x183db90                                     
01a971ec  mov       w8, #1                                         
01a971f0  strb      w8, [x20, #0x679]                              
01a971f4  ldr       x8, [x21]                                      
01a971f8  ldr       x8, [x8, #0xb8]                                
01a971fc  ldr       x0, [x8]                                       
01a97200  cbz       x0, #0x1a98144                                 
01a97204  mov       w1, #0x9a                                      
01a97208  mov       w2, #1                                         
01a9720c  mov       x3, xzr                                        
01a97210  mov       w19, #1                                        
01a97214  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97218  tbnz      w0, #0, #0x1a9812c                             
01a9721c  ldrb      w8, [x20, #0x679]                              
01a97220  cbnz      w8, #0x1a97238                                 
01a97224  adrp      x0, #0x3a7c000                                 
01a97228  ldr       x0, [x0, #0xe18]                               
01a9722c  bl        #0x183db90                                     
01a97230  mov       w8, #1                                         
01a97234  strb      w8, [x20, #0x679]                              
01a97238  ldr       x8, [x21]                                      
01a9723c  ldr       x8, [x8, #0xb8]                                
01a97240  ldr       x0, [x8]                                       
01a97244  cbz       x0, #0x1a98144                                 
01a97248  mov       w1, #0x9b                                      
01a9724c  mov       w2, #1                                         
01a97250  mov       x3, xzr                                        
01a97254  mov       w19, #1                                        
01a97258  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a9725c  tbnz      w0, #0, #0x1a9812c                             
01a97260  ldrb      w8, [x20, #0x679]                              
01a97264  cbnz      w8, #0x1a9727c                                 
01a97268  adrp      x0, #0x3a7c000                                 
01a9726c  ldr       x0, [x0, #0xe18]                               
01a97270  bl        #0x183db90                                     
01a97274  mov       w8, #1                                         
01a97278  strb      w8, [x20, #0x679]                              
01a9727c  ldr       x8, [x21]                                      
01a97280  ldr       x8, [x8, #0xb8]                                
01a97284  ldr       x0, [x8]                                       
01a97288  cbz       x0, #0x1a98144                                 
01a9728c  mov       w1, #0x9c                                      
01a97290  mov       w2, #1                                         
01a97294  mov       x3, xzr                                        
01a97298  mov       w19, #1                                        
01a9729c  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a972a0  tbnz      w0, #0, #0x1a9812c                             
01a972a4  ldrb      w8, [x20, #0x679]                              
01a972a8  cbnz      w8, #0x1a972c0                                 
01a972ac  adrp      x0, #0x3a7c000                                 
01a972b0  ldr       x0, [x0, #0xe18]                               
01a972b4  bl        #0x183db90                                     
01a972b8  mov       w8, #1                                         
01a972bc  strb      w8, [x20, #0x679]                              
01a972c0  ldr       x8, [x21]                                      
01a972c4  ldr       x8, [x8, #0xb8]                                
01a972c8  ldr       x0, [x8]                                       
01a972cc  cbz       x0, #0x1a98144                                 
01a972d0  mov       w1, #0xc0                                      
01a972d4  mov       w2, #1                                         
01a972d8  mov       x3, xzr                                        
01a972dc  mov       w19, #1                                        
01a972e0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a972e4  tbnz      w0, #0, #0x1a9812c                             
01a972e8  ldrb      w8, [x20, #0x679]                              
01a972ec  cbnz      w8, #0x1a97304                                 
01a972f0  adrp      x0, #0x3a7c000                                 
01a972f4  ldr       x0, [x0, #0xe18]                               
01a972f8  bl        #0x183db90                                     
01a972fc  mov       w8, #1                                         
01a97300  strb      w8, [x20, #0x679]                              
01a97304  ldr       x8, [x21]                                      
01a97308  ldr       x8, [x8, #0xb8]                                
01a9730c  ldr       x0, [x8]                                       
01a97310  cbz       x0, #0x1a98144                                 
01a97314  mov       w1, #0xcc                                      
01a97318  b         #0x1a97434                                     
01a9731c  adrp      x19, #0x3d14000                                
01a97320  ldrb      w8, [x19, #0x678]                              
01a97324  cbnz      w8, #0x1a9733c                                 
01a97328  adrp      x0, #0x3a7c000                                 
01a9732c  ldr       x0, [x0, #0xd38]                               
01a97330  bl        #0x183db90                                     
01a97334  mov       w8, #1                                         
01a97338  strb      w8, [x19, #0x678]                              
01a9733c  adrp      x8, #0x3a7c000                                 
01a97340  ldr       x8, [x8, #0xd38]                               
01a97344  ldr       x8, [x8]                                       
01a97348  ldr       x8, [x8, #0xb8]                                
01a9734c  ldr       x8, [x8]                                       
01a97350  cbz       x8, #0x1a98144                                 
01a97354  adrp      x22, #0x3a8c000                                
01a97358  ldr       x22, [x22, #0x668]                             
01a9735c  ldr       x19, [x8, #0x48]                               
01a97360  ldr       x0, [x22]                                      
01a97364  ldr       w9, [x0, #0xe4]                                
01a97368  cbnz      w9, #0x1a97374                                 
01a9736c  bl        #0x183dcb0                                     
01a97370  ldr       x0, [x22]                                      
01a97374  ldr       x8, [x0, #0xb8]                                
01a97378  ldr       x20, [x8, #0x20]                               
01a9737c  cbnz      x20, #0x1a973d0                                
01a97380  ldr       w9, [x0, #0xe4]                                
01a97384  cbnz      w9, #0x1a97394                                 
01a97388  bl        #0x183dcb0                                     
01a9738c  ldr       x8, [x22]                                      
01a97390  ldr       x8, [x8, #0xb8]                                
01a97394  adrp      x9, #0x3a7c000                                 
01a97398  ldr       x9, [x9, #0xce8]                               
01a9739c  ldr       x21, [x8]                                      
01a973a0  ldr       x0, [x9]                                       
01a973a4  bl        #0x183ddcc                                     
01a973a8  adrp      x8, #0x3a8c000                                 
01a973ac  mov       x1, x21                                        
01a973b0  mov       x3, xzr                                        
01a973b4  ldr       x8, [x8, #0x8a8]                               
01a973b8  mov       x20, x0                                        
01a973bc  ldr       x2, [x8]                                       
01a973c0  bl        #0x25b4d6c                                     // System.Func<object, bool>$$.ctor
01a973c4  ldr       x8, [x22]                                      
01a973c8  ldr       x8, [x8, #0xb8]                                
01a973cc  str       x20, [x8, #0x20]                               
01a973d0  adrp      x8, #0x3a8c000                                 
01a973d4  ldr       x8, [x8, #0x890]                               
01a973d8  ldr       x2, [x8]                                       
01a973dc  mov       x0, x19                                        
01a973e0  mov       x1, x20                                        
01a973e4  ldp       x20, x19, [sp, #0x30]                          
01a973e8  ldp       x22, x21, [sp, #0x20]                          
01a973ec  ldp       x24, x23, [sp, #0x10]                          
01a973f0  ldp       x30, x25, [sp], #0x40                          
01a973f4  b         #0x1d8d634                                     // System.Linq.Enumerable$$Any<object>
01a973f8  adrp      x19, #0x3d14000                                
01a973fc  ldrb      w8, [x19, #0x679]                              
01a97400  cbnz      w8, #0x1a97418                                 
01a97404  adrp      x0, #0x3a7c000                                 
01a97408  ldr       x0, [x0, #0xe18]                               
01a9740c  bl        #0x183db90                                     
01a97410  mov       w8, #1                                         
01a97414  strb      w8, [x19, #0x679]                              
01a97418  adrp      x8, #0x3a7c000                                 
01a9741c  ldr       x8, [x8, #0xe18]                               
01a97420  ldr       x8, [x8]                                       
01a97424  ldr       x8, [x8, #0xb8]                                
01a97428  ldr       x0, [x8]                                       
01a9742c  cbz       x0, #0x1a98144                                 
01a97430  mov       w1, #0x51                                      
01a97434  ldp       x20, x19, [sp, #0x30]                          
01a97438  mov       w2, #1                                         
01a9743c  ldp       x22, x21, [sp, #0x20]                          
01a97440  mov       x3, xzr                                        
01a97444  ldp       x24, x23, [sp, #0x10]                          
01a97448  ldp       x30, x25, [sp], #0x40                          
01a9744c  b         #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97450  adrp      x20, #0x3d14000                                
01a97454  ldrb      w8, [x20, #0x679]                              
01a97458  cbnz      w8, #0x1a97470                                 
01a9745c  adrp      x0, #0x3a7c000                                 
01a97460  ldr       x0, [x0, #0xe18]                               
01a97464  bl        #0x183db90                                     
01a97468  mov       w8, #1                                         
01a9746c  strb      w8, [x20, #0x679]                              
01a97470  adrp      x21, #0x3a7c000                                
01a97474  ldr       x21, [x21, #0xe18]                             
01a97478  ldr       x8, [x21]                                      
01a9747c  ldr       x8, [x8, #0xb8]                                
01a97480  ldr       x0, [x8]                                       
01a97484  cbz       x0, #0x1a98144                                 
01a97488  mov       w1, #0x66                                      
01a9748c  mov       w2, #1                                         
01a97490  mov       x3, xzr                                        
01a97494  mov       w19, #1                                        
01a97498  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a9749c  tbnz      w0, #0, #0x1a9812c                             
01a974a0  ldrb      w8, [x20, #0x679]                              
01a974a4  cbnz      w8, #0x1a974bc                                 
01a974a8  adrp      x0, #0x3a7c000                                 
01a974ac  ldr       x0, [x0, #0xe18]                               
01a974b0  bl        #0x183db90                                     
01a974b4  mov       w8, #1                                         
01a974b8  strb      w8, [x20, #0x679]                              
01a974bc  ldr       x8, [x21]                                      
01a974c0  ldr       x8, [x8, #0xb8]                                
01a974c4  ldr       x0, [x8]                                       
01a974c8  cbz       x0, #0x1a98144                                 
01a974cc  mov       w1, #0xa0                                      
01a974d0  mov       w2, #1                                         
01a974d4  mov       x3, xzr                                        
01a974d8  mov       w19, #1                                        
01a974dc  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a974e0  tbnz      w0, #0, #0x1a9812c                             
01a974e4  ldrb      w8, [x20, #0x679]                              
01a974e8  cbnz      w8, #0x1a97500                                 
01a974ec  adrp      x0, #0x3a7c000                                 
01a974f0  ldr       x0, [x0, #0xe18]                               
01a974f4  bl        #0x183db90                                     
01a974f8  mov       w8, #1                                         
01a974fc  strb      w8, [x20, #0x679]                              
01a97500  ldr       x8, [x21]                                      
01a97504  ldr       x8, [x8, #0xb8]                                
01a97508  ldr       x0, [x8]                                       
01a9750c  cbz       x0, #0x1a98144                                 
01a97510  mov       w1, #0x4c                                      
01a97514  mov       w2, #1                                         
01a97518  mov       x3, xzr                                        
01a9751c  mov       w19, #1                                        
01a97520  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97524  tbnz      w0, #0, #0x1a9812c                             
01a97528  ldrb      w8, [x20, #0x679]                              
01a9752c  cbnz      w8, #0x1a97544                                 
01a97530  adrp      x0, #0x3a7c000                                 
01a97534  ldr       x0, [x0, #0xe18]                               
01a97538  bl        #0x183db90                                     
01a9753c  mov       w8, #1                                         
01a97540  strb      w8, [x20, #0x679]                              
01a97544  ldr       x8, [x21]                                      
01a97548  ldr       x8, [x8, #0xb8]                                
01a9754c  ldr       x0, [x8]                                       
01a97550  cbz       x0, #0x1a98144                                 
01a97554  mov       w1, #0x4d                                      
01a97558  mov       w2, #1                                         
01a9755c  mov       x3, xzr                                        
01a97560  mov       w19, #1                                        
01a97564  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97568  tbnz      w0, #0, #0x1a9812c                             
01a9756c  ldrb      w8, [x20, #0x679]                              
01a97570  cbnz      w8, #0x1a97588                                 
01a97574  adrp      x0, #0x3a7c000                                 
01a97578  ldr       x0, [x0, #0xe18]                               
01a9757c  bl        #0x183db90                                     
01a97580  mov       w8, #1                                         
01a97584  strb      w8, [x20, #0x679]                              
01a97588  ldr       x8, [x21]                                      
01a9758c  ldr       x8, [x8, #0xb8]                                
01a97590  ldr       x0, [x8]                                       
01a97594  cbz       x0, #0x1a98144                                 
01a97598  mov       w1, #0x7b                                      
01a9759c  mov       w2, #1                                         
01a975a0  mov       x3, xzr                                        
01a975a4  mov       w19, #1                                        
01a975a8  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a975ac  tbnz      w0, #0, #0x1a9812c                             
01a975b0  ldrb      w8, [x20, #0x679]                              
01a975b4  cbnz      w8, #0x1a975cc                                 
01a975b8  adrp      x0, #0x3a7c000                                 
01a975bc  ldr       x0, [x0, #0xe18]                               
01a975c0  bl        #0x183db90                                     
01a975c4  mov       w8, #1                                         
01a975c8  strb      w8, [x20, #0x679]                              
01a975cc  ldr       x8, [x21]                                      
01a975d0  ldr       x8, [x8, #0xb8]                                
01a975d4  ldr       x0, [x8]                                       
01a975d8  cbz       x0, #0x1a98144                                 
01a975dc  mov       w1, #0xab                                      
01a975e0  mov       w2, #1                                         
01a975e4  mov       x3, xzr                                        
01a975e8  mov       w19, #1                                        
01a975ec  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a975f0  tbnz      w0, #0, #0x1a9812c                             
01a975f4  ldrb      w8, [x20, #0x679]                              
01a975f8  cbnz      w8, #0x1a97610                                 
01a975fc  adrp      x0, #0x3a7c000                                 
01a97600  ldr       x0, [x0, #0xe18]                               
01a97604  bl        #0x183db90                                     
01a97608  mov       w8, #1                                         
01a9760c  strb      w8, [x20, #0x679]                              
01a97610  ldr       x8, [x21]                                      
01a97614  ldr       x8, [x8, #0xb8]                                
01a97618  ldr       x0, [x8]                                       
01a9761c  cbz       x0, #0x1a98144                                 
01a97620  mov       w1, #0x3c                                      
01a97624  mov       w2, #1                                         
01a97628  mov       x3, xzr                                        
01a9762c  mov       w19, #1                                        
01a97630  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97634  tbnz      w0, #0, #0x1a9812c                             
01a97638  ldrb      w8, [x20, #0x679]                              
01a9763c  cbnz      w8, #0x1a97654                                 
01a97640  adrp      x0, #0x3a7c000                                 
01a97644  ldr       x0, [x0, #0xe18]                               
01a97648  bl        #0x183db90                                     
01a9764c  mov       w8, #1                                         
01a97650  strb      w8, [x20, #0x679]                              
01a97654  ldr       x8, [x21]                                      
01a97658  ldr       x8, [x8, #0xb8]                                
01a9765c  ldr       x0, [x8]                                       
01a97660  cbz       x0, #0x1a98144                                 
01a97664  mov       w1, #0xe3                                      
01a97668  mov       w2, #1                                         
01a9766c  mov       x3, xzr                                        
01a97670  mov       w19, #1                                        
01a97674  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97678  tbnz      w0, #0, #0x1a9812c                             
01a9767c  ldrb      w8, [x20, #0x679]                              
01a97680  cbnz      w8, #0x1a97698                                 
01a97684  adrp      x0, #0x3a7c000                                 
01a97688  ldr       x0, [x0, #0xe18]                               
01a9768c  bl        #0x183db90                                     
01a97690  mov       w8, #1                                         
01a97694  strb      w8, [x20, #0x679]                              
01a97698  ldr       x8, [x21]                                      
01a9769c  ldr       x8, [x8, #0xb8]                                
01a976a0  ldr       x0, [x8]                                       
01a976a4  cbz       x0, #0x1a98144                                 
01a976a8  mov       w1, #0xe4                                      
01a976ac  mov       w2, #1                                         
01a976b0  mov       x3, xzr                                        
01a976b4  mov       w19, #1                                        
01a976b8  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a976bc  tbnz      w0, #0, #0x1a9812c                             
01a976c0  ldrb      w8, [x20, #0x679]                              
01a976c4  cbnz      w8, #0x1a976dc                                 
01a976c8  adrp      x0, #0x3a7c000                                 
01a976cc  ldr       x0, [x0, #0xe18]                               
01a976d0  bl        #0x183db90                                     
01a976d4  mov       w8, #1                                         
01a976d8  strb      w8, [x20, #0x679]                              
01a976dc  ldr       x8, [x21]                                      
01a976e0  ldr       x8, [x8, #0xb8]                                
01a976e4  ldr       x0, [x8]                                       
01a976e8  cbz       x0, #0x1a98144                                 
01a976ec  mov       w1, #0xe5                                      
01a976f0  mov       w2, #1                                         
01a976f4  mov       x3, xzr                                        
01a976f8  mov       w19, #1                                        
01a976fc  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97700  tbnz      w0, #0, #0x1a9812c                             
01a97704  ldrb      w8, [x20, #0x679]                              
01a97708  cbnz      w8, #0x1a97720                                 
01a9770c  adrp      x0, #0x3a7c000                                 
01a97710  ldr       x0, [x0, #0xe18]                               
01a97714  bl        #0x183db90                                     
01a97718  mov       w8, #1                                         
01a9771c  strb      w8, [x20, #0x679]                              
01a97720  ldr       x8, [x21]                                      
01a97724  ldr       x8, [x8, #0xb8]                                
01a97728  ldr       x0, [x8]                                       
01a9772c  cbz       x0, #0x1a98144                                 
01a97730  mov       w1, #0xe8                                      
01a97734  mov       w2, #1                                         
01a97738  mov       x3, xzr                                        
01a9773c  mov       w19, #1                                        
01a97740  bl        #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97744  tbnz      w0, #0, #0x1a9812c                             
01a97748  ldrb      w8, [x20, #0x679]                              
01a9774c  cbnz      w8, #0x1a97764                                 
01a97750  adrp      x0, #0x3a7c000                                 
01a97754  ldr       x0, [x0, #0xe18]                               
01a97758  bl        #0x183db90                                     
01a9775c  mov       w8, #1                                         
01a97760  strb      w8, [x20, #0x679]                              
01a97764  ldr       x8, [x21]                                      
01a97768  ldr       x8, [x8, #0xb8]                                
01a9776c  ldr       x0, [x8]                                       
01a97770  cbz       x0, #0x1a98144                                 
01a97774  ldp       x20, x19, [sp, #0x30]                          
01a97778  mov       w1, #0x102                                     
01a9777c  ldp       x22, x21, [sp, #0x20]                          
01a97780  mov       w2, #1                                         
01a97784  ldp       x24, x23, [sp, #0x10]                          
01a97788  mov       x3, xzr                                        
01a9778c  ldp       x30, x25, [sp], #0x40                          
01a97790  b         #0x1a3f294                                     // Inventory$$CheckEquipItem
01a97794  adrp      x20, #0x3d14000                                
01a97798  ldrb      w8, [x20, #0x679]                              
01a9779c  cbnz      w8, #0x1a977b4                                 
01a977a0  adrp      x0, #0x3a7c000                                 
01a977a4  ldr       x0, [x0, #0xe18]                               
01a977a8  bl        #0x183db90                                     
01a977ac  mov       w8, #1                                         
01a977b0  strb      w8, [x20, #0x679]                              
01a977b4  adrp      x21, #0x3a7c000                                
01a977b8  ldr       x21, [x21, #0xe18]                             
01a977bc  ldr       x8, [x21]                                      
01a977c0  ldr       x8, [x8, #0xb8]                                
01a977c4  ldr       x0, [x8]                                       
01a977c8  cbz       x0, #0x1a98144                                 
01a977cc  mov       w1, #0x28                                      
01a977d0  mov       w2, #1                                         
01a977d4  mov       x3, xzr                                        
01a977d8  mov       w19, #1                                        
01a977dc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a977e0  tbnz      w0, #0, #0x1a9812c                             
01a977e4  ldrb      w8, [x20, #0x679]                              
01a977e8  cbnz      w8, #0x1a97800                                 
01a977ec  adrp      x0, #0x3a7c000                                 
01a977f0  ldr       x0, [x0, #0xe18]                               
01a977f4  bl        #0x183db90                                     
01a977f8  mov       w8, #1                                         
01a977fc  strb      w8, [x20, #0x679]                              
01a97800  ldr       x8, [x21]                                      
01a97804  ldr       x8, [x8, #0xb8]                                
01a97808  ldr       x0, [x8]                                       
01a9780c  cbz       x0, #0x1a98144                                 
01a97810  mov       w1, #0x2a                                      
01a97814  mov       w2, #1                                         
01a97818  mov       x3, xzr                                        
01a9781c  mov       w19, #1                                        
01a97820  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97824  tbnz      w0, #0, #0x1a9812c                             
01a97828  ldrb      w8, [x20, #0x679]                              
01a9782c  cbnz      w8, #0x1a97844                                 
01a97830  adrp      x0, #0x3a7c000                                 
01a97834  ldr       x0, [x0, #0xe18]                               
01a97838  bl        #0x183db90                                     
01a9783c  mov       w8, #1                                         
01a97840  strb      w8, [x20, #0x679]                              
01a97844  ldr       x8, [x21]                                      
01a97848  ldr       x8, [x8, #0xb8]                                
01a9784c  ldr       x0, [x8]                                       
01a97850  cbz       x0, #0x1a98144                                 
01a97854  mov       w1, #0x2f                                      
01a97858  b         #0x1a97434                                     
01a9785c  adrp      x20, #0x3d14000                                
01a97860  ldrb      w8, [x20, #0x678]                              
01a97864  cbnz      w8, #0x1a9787c                                 
01a97868  adrp      x0, #0x3a7c000                                 
01a9786c  ldr       x0, [x0, #0xd38]                               
01a97870  bl        #0x183db90                                     
01a97874  mov       w8, #1                                         
01a97878  strb      w8, [x20, #0x678]                              
01a9787c  adrp      x21, #0x3a7c000                                
01a97880  ldr       x21, [x21, #0xd38]                             
01a97884  ldr       x8, [x21]                                      
01a97888  ldr       x8, [x8, #0xb8]                                
01a9788c  ldr       x0, [x8]                                       
01a97890  cbz       x0, #0x1a98144                                 
01a97894  ldr       x2, [x0, #0x48]                                
01a97898  mov       w1, #7                                         
01a9789c  mov       x3, xzr                                        
01a978a0  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a978a4  ldrb      w8, [x20, #0x678]                              
01a978a8  mov       w19, w0                                        
01a978ac  cbnz      w8, #0x1a978c4                                 
01a978b0  adrp      x0, #0x3a7c000                                 
01a978b4  ldr       x0, [x0, #0xd38]                               
01a978b8  bl        #0x183db90                                     
01a978bc  mov       w8, #1                                         
01a978c0  strb      w8, [x20, #0x678]                              
01a978c4  ldr       x8, [x21]                                      
01a978c8  ldr       x8, [x8, #0xb8]                                
01a978cc  ldr       x0, [x8]                                       
01a978d0  cbz       x0, #0x1a98144                                 
01a978d4  ldr       x2, [x0, #0x48]                                
01a978d8  mov       w1, #0x37                                      
01a978dc  mov       x3, xzr                                        
01a978e0  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01a978e4  cmp       w0, #0                                         
01a978e8  ccmp      w19, #3, #0, le                                
01a978ec  cset      w19, gt                                        
01a978f0  b         #0x1a9812c                                     
01a978f4  adrp      x19, #0x3a7c000                                
01a978f8  ldr       x19, [x19, #0xc08]                             
01a978fc  ldr       x8, [x19]                                      
01a97900  ldr       x8, [x8, #0xb8]                                
01a97904  ldr       x8, [x8]                                       
01a97908  cbz       x8, #0x1a98144                                 
01a9790c  ldr       x0, [x8, #0x158]                               
01a97910  cbz       x0, #0x1a98144                                 
01a97914  adrp      x20, #0x3a7c000                                
01a97918  mov       w1, #0x5b                                      
01a9791c  ldr       x20, [x20, #0xc30]                             
01a97920  ldr       x2, [x20]                                      
01a97924  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a97928  cmp       w0, #3                                         
01a9792c  b.eq      #0x1a98120                                     
01a97930  ldr       x8, [x19]                                      
01a97934  ldr       x8, [x8, #0xb8]                                
01a97938  ldr       x8, [x8]                                       
01a9793c  cbz       x8, #0x1a98144                                 
01a97940  ldr       x0, [x8, #0x158]                               
01a97944  cbz       x0, #0x1a98144                                 
01a97948  ldr       x2, [x20]                                      
01a9794c  mov       w1, #0x5c                                      
01a97950  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a97954  cmp       w0, #3                                         
01a97958  b.eq      #0x1a98120                                     
01a9795c  ldr       x8, [x19]                                      
01a97960  ldr       x8, [x8, #0xb8]                                
01a97964  ldr       x8, [x8]                                       
01a97968  cbz       x8, #0x1a98144                                 
01a9796c  ldr       x0, [x8, #0x158]                               
01a97970  cbz       x0, #0x1a98144                                 
01a97974  ldr       x2, [x20]                                      
01a97978  mov       w1, #8                                         
01a9797c  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a97980  cmp       w0, #2                                         
01a97984  b.eq      #0x1a98120                                     
01a97988  ldr       x8, [x19]                                      
01a9798c  ldr       x8, [x8, #0xb8]                                
01a97990  ldr       x8, [x8]                                       
01a97994  cbz       x8, #0x1a98144                                 
01a97998  ldr       x0, [x8, #0x158]                               
01a9799c  cbz       x0, #0x1a98144                                 
01a979a0  ldr       x2, [x20]                                      
01a979a4  mov       w1, #0x99                                      
01a979a8  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a979ac  ldr       x8, [x19]                                      
01a979b0  cmp       w0, #1                                         
01a979b4  ldr       x8, [x8, #0xb8]                                
01a979b8  ldr       x8, [x8]                                       
01a979bc  b.ne      #0x1a97ff8                                     
01a979c0  cbz       x8, #0x1a98144                                 
01a979c4  ldr       w9, [x8, #0x60]                                
01a979c8  cbnz      w9, #0x1a97ffc                                 
01a979cc  b         #0x1a98120                                     
01a979d0  adrp      x20, #0x3d14000                                
01a979d4  ldrb      w8, [x20, #0x679]                              
01a979d8  cbnz      w8, #0x1a979f0                                 
01a979dc  adrp      x0, #0x3a7c000                                 
01a979e0  ldr       x0, [x0, #0xe18]                               
01a979e4  bl        #0x183db90                                     
01a979e8  mov       w8, #1                                         
01a979ec  strb      w8, [x20, #0x679]                              
01a979f0  adrp      x21, #0x3a7c000                                
01a979f4  ldr       x21, [x21, #0xe18]                             
01a979f8  ldr       x8, [x21]                                      
01a979fc  ldr       x8, [x8, #0xb8]                                
01a97a00  ldr       x0, [x8]                                       
01a97a04  cbz       x0, #0x1a98144                                 
01a97a08  mov       w1, #0x33                                      
01a97a0c  mov       w2, #1                                         
01a97a10  mov       x3, xzr                                        
01a97a14  mov       w19, #1                                        
01a97a18  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97a1c  tbnz      w0, #0, #0x1a9812c                             
01a97a20  ldrb      w8, [x20, #0x679]                              
01a97a24  cbnz      w8, #0x1a97a3c                                 
01a97a28  adrp      x0, #0x3a7c000                                 
01a97a2c  ldr       x0, [x0, #0xe18]                               
01a97a30  bl        #0x183db90                                     
01a97a34  mov       w8, #1                                         
01a97a38  strb      w8, [x20, #0x679]                              
01a97a3c  ldr       x8, [x21]                                      
01a97a40  ldr       x8, [x8, #0xb8]                                
01a97a44  ldr       x0, [x8]                                       
01a97a48  cbz       x0, #0x1a98144                                 
01a97a4c  mov       w1, #0x35                                      
01a97a50  mov       w2, #1                                         
01a97a54  mov       x3, xzr                                        
01a97a58  mov       w19, #1                                        
01a97a5c  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97a60  tbnz      w0, #0, #0x1a9812c                             
01a97a64  ldrb      w8, [x20, #0x679]                              
01a97a68  cbnz      w8, #0x1a97a80                                 
01a97a6c  adrp      x0, #0x3a7c000                                 
01a97a70  ldr       x0, [x0, #0xe18]                               
01a97a74  bl        #0x183db90                                     
01a97a78  mov       w8, #1                                         
01a97a7c  strb      w8, [x20, #0x679]                              
01a97a80  ldr       x8, [x21]                                      
01a97a84  ldr       x8, [x8, #0xb8]                                
01a97a88  ldr       x0, [x8]                                       
01a97a8c  cbz       x0, #0x1a98144                                 
01a97a90  mov       w1, #0xc9                                      
01a97a94  mov       w2, #1                                         
01a97a98  mov       x3, xzr                                        
01a97a9c  mov       w19, #1                                        
01a97aa0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97aa4  tbnz      w0, #0, #0x1a9812c                             
01a97aa8  ldrb      w8, [x20, #0x679]                              
01a97aac  cbnz      w8, #0x1a97ac4                                 
01a97ab0  adrp      x0, #0x3a7c000                                 
01a97ab4  ldr       x0, [x0, #0xe18]                               
01a97ab8  bl        #0x183db90                                     
01a97abc  mov       w8, #1                                         
01a97ac0  strb      w8, [x20, #0x679]                              
01a97ac4  ldr       x8, [x21]                                      
01a97ac8  ldr       x8, [x8, #0xb8]                                
01a97acc  ldr       x0, [x8]                                       
01a97ad0  cbz       x0, #0x1a98144                                 
01a97ad4  mov       w1, #0xdc                                      
01a97ad8  mov       w2, #1                                         
01a97adc  mov       x3, xzr                                        
01a97ae0  mov       w19, #1                                        
01a97ae4  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97ae8  tbnz      w0, #0, #0x1a9812c                             
01a97aec  ldrb      w8, [x20, #0x679]                              
01a97af0  cbnz      w8, #0x1a97b08                                 
01a97af4  adrp      x0, #0x3a7c000                                 
01a97af8  ldr       x0, [x0, #0xe18]                               
01a97afc  bl        #0x183db90                                     
01a97b00  mov       w8, #1                                         
01a97b04  strb      w8, [x20, #0x679]                              
01a97b08  ldr       x8, [x21]                                      
01a97b0c  ldr       x8, [x8, #0xb8]                                
01a97b10  ldr       x0, [x8]                                       
01a97b14  cbz       x0, #0x1a98144                                 
01a97b18  mov       w1, #0xdd                                      
01a97b1c  b         #0x1a97434                                     
01a97b20  adrp      x23, #0x3d14000                                
01a97b24  ldrb      w8, [x23, #0x678]                              
01a97b28  cbnz      w8, #0x1a97b40                                 
01a97b2c  adrp      x0, #0x3a7c000                                 
01a97b30  ldr       x0, [x0, #0xd38]                               
01a97b34  bl        #0x183db90                                     
01a97b38  mov       w8, #1                                         
01a97b3c  strb      w8, [x23, #0x678]                              
01a97b40  adrp      x24, #0x3a7c000                                
01a97b44  ldr       x24, [x24, #0xd38]                             
01a97b48  ldr       x8, [x24]                                      
01a97b4c  ldr       x8, [x8, #0xb8]                                
01a97b50  ldr       x8, [x8]                                       
01a97b54  cbz       x8, #0x1a98144                                 
01a97b58  adrp      x22, #0x3a8c000                                
01a97b5c  ldr       x22, [x22, #0x668]                             
01a97b60  ldr       x19, [x8, #0x48]                               
01a97b64  ldr       x0, [x22]                                      
01a97b68  ldr       w9, [x0, #0xe4]                                
01a97b6c  cbnz      w9, #0x1a97b78                                 
01a97b70  bl        #0x183dcb0                                     
01a97b74  ldr       x0, [x22]                                      
01a97b78  ldr       x8, [x0, #0xb8]                                
01a97b7c  ldr       x20, [x8, #0x28]                               
01a97b80  cbnz      x20, #0x1a97bd4                                
01a97b84  ldr       w9, [x0, #0xe4]                                
01a97b88  cbnz      w9, #0x1a97b98                                 
01a97b8c  bl        #0x183dcb0                                     
01a97b90  ldr       x8, [x22]                                      
01a97b94  ldr       x8, [x8, #0xb8]                                
01a97b98  adrp      x9, #0x3a7c000                                 
01a97b9c  ldr       x9, [x9, #0xce8]                               
01a97ba0  ldr       x21, [x8]                                      
01a97ba4  ldr       x0, [x9]                                       
01a97ba8  bl        #0x183ddcc                                     
01a97bac  adrp      x8, #0x3a8c000                                 
01a97bb0  mov       x1, x21                                        
01a97bb4  mov       x3, xzr                                        
01a97bb8  ldr       x8, [x8, #0x8b0]                               
01a97bbc  mov       x20, x0                                        
01a97bc0  ldr       x2, [x8]                                       
01a97bc4  bl        #0x25b4d6c                                     // System.Func<object, bool>$$.ctor
01a97bc8  ldr       x8, [x22]                                      
01a97bcc  ldr       x8, [x8, #0xb8]                                
01a97bd0  str       x20, [x8, #0x28]                               
01a97bd4  adrp      x25, #0x3a8c000                                
01a97bd8  mov       x0, x19                                        
01a97bdc  mov       x1, x20                                        
01a97be0  ldr       x25, [x25, #0x890]                             
01a97be4  ldr       x2, [x25]                                      
01a97be8  bl        #0x1d8d634                                     // System.Linq.Enumerable$$Any<object>
01a97bec  tbz       w0, #0, #0x1a98128                             
01a97bf0  ldrb      w8, [x23, #0x678]                              
01a97bf4  cbnz      w8, #0x1a97c0c                                 
01a97bf8  adrp      x0, #0x3a7c000                                 
01a97bfc  ldr       x0, [x0, #0xd38]                               
01a97c00  bl        #0x183db90                                     
01a97c04  mov       w8, #1                                         
01a97c08  strb      w8, [x23, #0x678]                              
01a97c0c  ldr       x8, [x24]                                      
01a97c10  ldr       x8, [x8, #0xb8]                                
01a97c14  ldr       x8, [x8]                                       
01a97c18  cbz       x8, #0x1a98144                                 
01a97c1c  ldr       x0, [x22]                                      
01a97c20  ldr       x19, [x8, #0x48]                               
01a97c24  ldr       w9, [x0, #0xe4]                                
01a97c28  cbnz      w9, #0x1a97c34                                 
01a97c2c  bl        #0x183dcb0                                     
01a97c30  ldr       x0, [x22]                                      
01a97c34  ldr       x8, [x0, #0xb8]                                
01a97c38  ldr       x20, [x8, #0x30]                               
01a97c3c  cbnz      x20, #0x1a97c90                                
01a97c40  ldr       w9, [x0, #0xe4]                                
01a97c44  cbnz      w9, #0x1a97c54                                 
01a97c48  bl        #0x183dcb0                                     
01a97c4c  ldr       x8, [x22]                                      
01a97c50  ldr       x8, [x8, #0xb8]                                
01a97c54  adrp      x9, #0x3a7c000                                 
01a97c58  ldr       x9, [x9, #0xce8]                               
01a97c5c  ldr       x21, [x8]                                      
01a97c60  ldr       x0, [x9]                                       
01a97c64  bl        #0x183ddcc                                     
01a97c68  adrp      x8, #0x3a8c000                                 
01a97c6c  mov       x1, x21                                        
01a97c70  mov       x3, xzr                                        
01a97c74  ldr       x8, [x8, #0x8b8]                               
01a97c78  mov       x20, x0                                        
01a97c7c  ldr       x2, [x8]                                       
01a97c80  bl        #0x25b4d6c                                     // System.Func<object, bool>$$.ctor
01a97c84  ldr       x8, [x22]                                      
01a97c88  ldr       x8, [x8, #0xb8]                                
01a97c8c  str       x20, [x8, #0x30]                               
01a97c90  ldr       x2, [x25]                                      
01a97c94  b         #0x1a973dc                                     
01a97c98  adrp      x20, #0x3d14000                                
01a97c9c  ldrb      w8, [x20, #0x679]                              
01a97ca0  cbnz      w8, #0x1a97cb8                                 
01a97ca4  adrp      x0, #0x3a7c000                                 
01a97ca8  ldr       x0, [x0, #0xe18]                               
01a97cac  bl        #0x183db90                                     
01a97cb0  mov       w8, #1                                         
01a97cb4  strb      w8, [x20, #0x679]                              
01a97cb8  adrp      x21, #0x3a7c000                                
01a97cbc  ldr       x21, [x21, #0xe18]                             
01a97cc0  ldr       x8, [x21]                                      
01a97cc4  ldr       x8, [x8, #0xb8]                                
01a97cc8  ldr       x0, [x8]                                       
01a97ccc  cbz       x0, #0x1a98144                                 
01a97cd0  mov       w1, #0x24                                      
01a97cd4  mov       w2, #1                                         
01a97cd8  mov       x3, xzr                                        
01a97cdc  mov       w19, #1                                        
01a97ce0  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97ce4  tbnz      w0, #0, #0x1a9812c                             
01a97ce8  ldrb      w8, [x20, #0x679]                              
01a97cec  cbnz      w8, #0x1a97d04                                 
01a97cf0  adrp      x0, #0x3a7c000                                 
01a97cf4  ldr       x0, [x0, #0xe18]                               
01a97cf8  bl        #0x183db90                                     
01a97cfc  mov       w8, #1                                         
01a97d00  strb      w8, [x20, #0x679]                              
01a97d04  ldr       x8, [x21]                                      
01a97d08  ldr       x8, [x8, #0xb8]                                
01a97d0c  ldr       x0, [x8]                                       
01a97d10  cbz       x0, #0x1a98144                                 
01a97d14  mov       w1, #0xbe                                      
01a97d18  mov       w2, #1                                         
01a97d1c  mov       x3, xzr                                        
01a97d20  mov       w19, #1                                        
01a97d24  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97d28  tbnz      w0, #0, #0x1a9812c                             
01a97d2c  ldrb      w8, [x20, #0x679]                              
01a97d30  cbnz      w8, #0x1a97d48                                 
01a97d34  adrp      x0, #0x3a7c000                                 
01a97d38  ldr       x0, [x0, #0xe18]                               
01a97d3c  bl        #0x183db90                                     
01a97d40  mov       w8, #1                                         
01a97d44  strb      w8, [x20, #0x679]                              
01a97d48  ldr       x8, [x21]                                      
01a97d4c  ldr       x8, [x8, #0xb8]                                
01a97d50  ldr       x0, [x8]                                       
01a97d54  cbz       x0, #0x1a98144                                 
01a97d58  mov       w1, #0x82                                      
01a97d5c  b         #0x1a97434                                     
01a97d60  adrp      x20, #0x3d14000                                
01a97d64  ldrb      w8, [x20, #0x679]                              
01a97d68  cbnz      w8, #0x1a97d80                                 
01a97d6c  adrp      x0, #0x3a7c000                                 
01a97d70  ldr       x0, [x0, #0xe18]                               
01a97d74  bl        #0x183db90                                     
01a97d78  mov       w8, #1                                         
01a97d7c  strb      w8, [x20, #0x679]                              
01a97d80  adrp      x21, #0x3a7c000                                
01a97d84  ldr       x21, [x21, #0xe18]                             
01a97d88  ldr       x8, [x21]                                      
01a97d8c  ldr       x8, [x8, #0xb8]                                
01a97d90  ldr       x0, [x8]                                       
01a97d94  cbz       x0, #0x1a98144                                 
01a97d98  mov       w1, #0x86                                      
01a97d9c  mov       w2, #1                                         
01a97da0  mov       x3, xzr                                        
01a97da4  mov       w19, #1                                        
01a97da8  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97dac  tbnz      w0, #0, #0x1a9812c                             
01a97db0  ldrb      w8, [x20, #0x679]                              
01a97db4  cbnz      w8, #0x1a97dcc                                 
01a97db8  adrp      x0, #0x3a7c000                                 
01a97dbc  ldr       x0, [x0, #0xe18]                               
01a97dc0  bl        #0x183db90                                     
01a97dc4  mov       w8, #1                                         
01a97dc8  strb      w8, [x20, #0x679]                              
01a97dcc  ldr       x8, [x21]                                      
01a97dd0  ldr       x8, [x8, #0xb8]                                
01a97dd4  ldr       x0, [x8]                                       
01a97dd8  cbz       x0, #0x1a98144                                 
01a97ddc  mov       w1, #0x89                                      
01a97de0  mov       w2, #1                                         
01a97de4  mov       x3, xzr                                        
01a97de8  mov       w19, #1                                        
01a97dec  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97df0  tbnz      w0, #0, #0x1a9812c                             
01a97df4  ldrb      w8, [x20, #0x679]                              
01a97df8  cbnz      w8, #0x1a97e10                                 
01a97dfc  adrp      x0, #0x3a7c000                                 
01a97e00  ldr       x0, [x0, #0xe18]                               
01a97e04  bl        #0x183db90                                     
01a97e08  mov       w8, #1                                         
01a97e0c  strb      w8, [x20, #0x679]                              
01a97e10  ldr       x8, [x21]                                      
01a97e14  ldr       x8, [x8, #0xb8]                                
01a97e18  ldr       x0, [x8]                                       
01a97e1c  cbz       x0, #0x1a98144                                 
01a97e20  mov       w1, #0x97                                      
01a97e24  mov       w2, #1                                         
01a97e28  mov       x3, xzr                                        
01a97e2c  mov       w19, #1                                        
01a97e30  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97e34  tbnz      w0, #0, #0x1a9812c                             
01a97e38  ldrb      w8, [x20, #0x679]                              
01a97e3c  cbnz      w8, #0x1a97e54                                 
01a97e40  adrp      x0, #0x3a7c000                                 
01a97e44  ldr       x0, [x0, #0xe18]                               
01a97e48  bl        #0x183db90                                     
01a97e4c  mov       w8, #1                                         
01a97e50  strb      w8, [x20, #0x679]                              
01a97e54  ldr       x8, [x21]                                      
01a97e58  ldr       x8, [x8, #0xb8]                                
01a97e5c  ldr       x0, [x8]                                       
01a97e60  cbz       x0, #0x1a98144                                 
01a97e64  mov       w1, #0xdb                                      
01a97e68  mov       w2, #1                                         
01a97e6c  mov       x3, xzr                                        
01a97e70  mov       w19, #1                                        
01a97e74  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97e78  tbnz      w0, #0, #0x1a9812c                             
01a97e7c  ldrb      w8, [x20, #0x679]                              
01a97e80  cbnz      w8, #0x1a97e98                                 
01a97e84  adrp      x0, #0x3a7c000                                 
01a97e88  ldr       x0, [x0, #0xe18]                               
01a97e8c  bl        #0x183db90                                     
01a97e90  mov       w8, #1                                         
01a97e94  strb      w8, [x20, #0x679]                              
01a97e98  ldr       x8, [x21]                                      
01a97e9c  ldr       x8, [x8, #0xb8]                                
01a97ea0  ldr       x0, [x8]                                       
01a97ea4  cbz       x0, #0x1a98144                                 
01a97ea8  mov       w1, #0xe0                                      
01a97eac  mov       w2, #1                                         
01a97eb0  mov       x3, xzr                                        
01a97eb4  mov       w19, #1                                        
01a97eb8  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97ebc  tbnz      w0, #0, #0x1a9812c                             
01a97ec0  ldrb      w8, [x20, #0x679]                              
01a97ec4  cbnz      w8, #0x1a97edc                                 
01a97ec8  adrp      x0, #0x3a7c000                                 
01a97ecc  ldr       x0, [x0, #0xe18]                               
01a97ed0  bl        #0x183db90                                     
01a97ed4  mov       w8, #1                                         
01a97ed8  strb      w8, [x20, #0x679]                              
01a97edc  ldr       x8, [x21]                                      
01a97ee0  ldr       x8, [x8, #0xb8]                                
01a97ee4  ldr       x0, [x8]                                       
01a97ee8  cbz       x0, #0x1a98144                                 
01a97eec  mov       w1, #0xe1                                      
01a97ef0  mov       w2, #1                                         
01a97ef4  mov       x3, xzr                                        
01a97ef8  mov       w19, #1                                        
01a97efc  bl        #0x1a3ee48                                     // Inventory$$CheckHaveItem
01a97f00  tbnz      w0, #0, #0x1a9812c                             
01a97f04  ldrb      w8, [x20, #0x679]                              
01a97f08  cbnz      w8, #0x1a97f20                                 
01a97f0c  adrp      x0, #0x3a7c000                                 
01a97f10  ldr       x0, [x0, #0xe18]                               
01a97f14  bl        #0x183db90                                     
01a97f18  mov       w8, #1                                         
01a97f1c  strb      w8, [x20, #0x679]                              
01a97f20  ldr       x8, [x21]                                      
01a97f24  ldr       x8, [x8, #0xb8]                                
01a97f28  ldr       x0, [x8]                                       
01a97f2c  cbz       x0, #0x1a98144                                 
01a97f30  mov       w1, #0x100                                     
01a97f34  b         #0x1a96b3c                                     
01a97f38  adrp      x8, #0x3a7c000                                 
01a97f3c  ldr       x8, [x8, #0xc08]                               
01a97f40  ldr       x8, [x8]                                       
01a97f44  ldr       x8, [x8, #0xb8]                                
01a97f48  ldr       x8, [x8]                                       
01a97f4c  cbz       x8, #0x1a98144                                 
01a97f50  adrp      x22, #0x3a8c000                                
01a97f54  ldr       x22, [x22, #0x668]                             
01a97f58  ldr       x19, [x8, #0x178]                              
01a97f5c  ldr       x0, [x22]                                      
01a97f60  ldr       w9, [x0, #0xe4]                                
01a97f64  cbnz      w9, #0x1a97f70                                 
01a97f68  bl        #0x183dcb0                                     
01a97f6c  ldr       x0, [x22]                                      
01a97f70  ldr       x8, [x0, #0xb8]                                
01a97f74  ldr       x20, [x8, #0x10]                               
01a97f78  cbnz      x20, #0x1a97fcc                                
01a97f7c  ldr       w9, [x0, #0xe4]                                
01a97f80  cbnz      w9, #0x1a97f90                                 
01a97f84  bl        #0x183dcb0                                     
01a97f88  ldr       x8, [x22]                                      
01a97f8c  ldr       x8, [x8, #0xb8]                                
01a97f90  adrp      x9, #0x3a8c000                                 
01a97f94  ldr       x9, [x9, #0x658]                               
01a97f98  ldr       x21, [x8]                                      
01a97f9c  ldr       x0, [x9]                                       
01a97fa0  bl        #0x183ddcc                                     
01a97fa4  adrp      x8, #0x3a8c000                                 
01a97fa8  mov       x1, x21                                        
01a97fac  mov       x3, xzr                                        
01a97fb0  ldr       x8, [x8, #0x898]                               
01a97fb4  mov       x20, x0                                        
01a97fb8  ldr       x2, [x8]                                       
01a97fbc  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a97fc0  ldr       x8, [x22]                                      
01a97fc4  ldr       x8, [x8, #0xb8]                                
01a97fc8  str       x20, [x8, #0x10]                               
01a97fcc  cbz       x19, #0x1a98144                                
01a97fd0  adrp      x8, #0x3a8c000                                 
01a97fd4  mov       x0, x19                                        
01a97fd8  mov       x1, x20                                        
01a97fdc  ldr       x8, [x8, #0x640]                               
01a97fe0  ldp       x20, x19, [sp, #0x30]                          
01a97fe4  ldp       x22, x21, [sp, #0x20]                          
01a97fe8  ldp       x24, x23, [sp, #0x10]                          
01a97fec  ldr       x2, [x8]                                       
01a97ff0  ldp       x30, x25, [sp], #0x40                          
01a97ff4  b         #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a97ff8  cbz       x8, #0x1a98144                                 
01a97ffc  ldr       x0, [x8, #0x158]                               
01a98000  cbz       x0, #0x1a98144                                 
01a98004  ldr       x2, [x20]                                      
01a98008  mov       w1, #0x10e                                     
01a9800c  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a98010  cmp       w0, #1                                         
01a98014  b.eq      #0x1a98120                                     
01a98018  ldr       x8, [x19]                                      
01a9801c  ldr       x8, [x8, #0xb8]                                
01a98020  ldr       x8, [x8]                                       
01a98024  cbz       x8, #0x1a98144                                 
01a98028  ldr       x0, [x8, #0x158]                               
01a9802c  cbz       x0, #0x1a98144                                 
01a98030  ldr       x2, [x20]                                      
01a98034  mov       w1, #0x126                                     
01a98038  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a9803c  cmp       w0, #1                                         
01a98040  b.eq      #0x1a98120                                     
01a98044  ldr       x8, [x19]                                      
01a98048  ldr       x8, [x8, #0xb8]                                
01a9804c  ldr       x8, [x8]                                       
01a98050  cbz       x8, #0x1a98144                                 
01a98054  ldr       x0, [x8, #0x158]                               
01a98058  cbz       x0, #0x1a98144                                 
01a9805c  ldr       x2, [x20]                                      
01a98060  mov       w1, #0x1b0                                     
01a98064  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a98068  cmp       w0, #1                                         
01a9806c  b.eq      #0x1a98120                                     
01a98070  ldr       x8, [x19]                                      
01a98074  ldr       x8, [x8, #0xb8]                                
01a98078  ldr       x8, [x8]                                       
01a9807c  cbz       x8, #0x1a98144                                 
01a98080  ldr       x0, [x8, #0x158]                               
01a98084  cbz       x0, #0x1a98144                                 
01a98088  ldr       x2, [x20]                                      
01a9808c  mov       w1, #0x1d1                                     
01a98090  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a98094  cmp       w0, #1                                         
01a98098  b.eq      #0x1a98120                                     
01a9809c  ldr       x8, [x19]                                      
01a980a0  ldr       x8, [x8, #0xb8]                                
01a980a4  ldr       x8, [x8]                                       
01a980a8  cbz       x8, #0x1a98144                                 
01a980ac  ldr       x0, [x8, #0x158]                               
01a980b0  cbz       x0, #0x1a98144                                 
01a980b4  ldr       x2, [x20]                                      
01a980b8  mov       w1, #0x1ce                                     
01a980bc  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a980c0  cmp       w0, #1                                         
01a980c4  b.eq      #0x1a98120                                     
01a980c8  ldr       x8, [x19]                                      
01a980cc  ldr       x8, [x8, #0xb8]                                
01a980d0  ldr       x8, [x8]                                       
01a980d4  cbz       x8, #0x1a98144                                 
01a980d8  ldr       x0, [x8, #0x158]                               
01a980dc  cbz       x0, #0x1a98144                                 
01a980e0  ldr       x2, [x20]                                      
01a980e4  mov       w1, #0x2f8                                     
01a980e8  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a980ec  cmp       w0, #1                                         
01a980f0  b.eq      #0x1a98120                                     
01a980f4  ldr       x8, [x19]                                      
01a980f8  ldr       x8, [x8, #0xb8]                                
01a980fc  ldr       x8, [x8]                                       
01a98100  cbz       x8, #0x1a98144                                 
01a98104  ldr       x0, [x8, #0x158]                               
01a98108  cbz       x0, #0x1a98144                                 
01a9810c  ldr       x2, [x20]                                      
01a98110  mov       w1, #0x2f9                                     
01a98114  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a98118  cmp       w0, #1                                         
01a9811c  b.ne      #0x1a98128                                     
01a98120  mov       w19, #1                                        
01a98124  b         #0x1a9812c                                     
01a98128  mov       w19, wzr                                       
01a9812c  mov       w0, w19                                        
01a98130  ldp       x20, x19, [sp, #0x30]                          
01a98134  ldp       x22, x21, [sp, #0x20]                          
01a98138  ldp       x24, x23, [sp, #0x10]                          
01a9813c  ldp       x30, x25, [sp], #0x40                          
01a98140  ret                                                      
01a98144  bl        #0x183dddc                                     