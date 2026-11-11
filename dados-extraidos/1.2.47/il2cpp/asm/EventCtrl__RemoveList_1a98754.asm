void EventCtrl__RemoveList (EventCtrl_o* __this, int32_t id, const MethodInfo* method);
// RVA 0x1a98754 to 0x1a992c0
01a98754  str       x30, [sp, #-0x40]!                             
01a98758  stp       x24, x23, [sp, #0x10]                          
01a9875c  stp       x22, x21, [sp, #0x20]                          
01a98760  stp       x20, x19, [sp, #0x30]                          
01a98764  adrp      x20, #0x3d14000                                
01a98768  mov       w19, w1                                        
01a9876c  ldrb      w8, [x20, #0xcdc]                              
01a98770  tbnz      w8, #0, #0x1a9883c                             
01a98774  adrp      x0, #0x3a7c000                                 
01a98778  ldr       x0, [x0, #0xc08]                               
01a9877c  bl        #0x183db90                                     
01a98780  adrp      x0, #0x3a7c000                                 
01a98784  ldr       x0, [x0, #0xc10]                               
01a98788  bl        #0x183db90                                     
01a9878c  adrp      x0, #0x3a8c000                                 
01a98790  ldr       x0, [x0, #0x640]                               
01a98794  bl        #0x183db90                                     
01a98798  adrp      x0, #0x3a81000                                 
01a9879c  ldr       x0, [x0, #0xb88]                               
01a987a0  bl        #0x183db90                                     
01a987a4  adrp      x0, #0x3a8c000                                 
01a987a8  ldr       x0, [x0, #0x658]                               
01a987ac  bl        #0x183db90                                     
01a987b0  adrp      x0, #0x3a8c000                                 
01a987b4  ldr       x0, [x0, #0x8d8]                               
01a987b8  bl        #0x183db90                                     
01a987bc  adrp      x0, #0x3a8c000                                 
01a987c0  ldr       x0, [x0, #0x8e0]                               
01a987c4  bl        #0x183db90                                     
01a987c8  adrp      x0, #0x3a8c000                                 
01a987cc  ldr       x0, [x0, #0x8e8]                               
01a987d0  bl        #0x183db90                                     
01a987d4  adrp      x0, #0x3a8c000                                 
01a987d8  ldr       x0, [x0, #0x8f0]                               
01a987dc  bl        #0x183db90                                     
01a987e0  adrp      x0, #0x3a8c000                                 
01a987e4  ldr       x0, [x0, #0x8f8]                               
01a987e8  bl        #0x183db90                                     
01a987ec  adrp      x0, #0x3a8c000                                 
01a987f0  ldr       x0, [x0, #0x900]                               
01a987f4  bl        #0x183db90                                     
01a987f8  adrp      x0, #0x3a8c000                                 
01a987fc  ldr       x0, [x0, #0x908]                               
01a98800  bl        #0x183db90                                     
01a98804  adrp      x0, #0x3a8c000                                 
01a98808  ldr       x0, [x0, #0x910]                               
01a9880c  bl        #0x183db90                                     
01a98810  adrp      x0, #0x3a8c000                                 
01a98814  ldr       x0, [x0, #0x918]                               
01a98818  bl        #0x183db90                                     
01a9881c  adrp      x0, #0x3a8c000                                 
01a98820  ldr       x0, [x0, #0x920]                               
01a98824  bl        #0x183db90                                     
01a98828  adrp      x0, #0x3a8c000                                 
01a9882c  ldr       x0, [x0, #0x668]                               
01a98830  bl        #0x183db90                                     
01a98834  mov       w8, #1                                         
01a98838  strb      w8, [x20, #0xcdc]                              
01a9883c  cmp       w19, #8                                        
01a98840  b.ne      #0x1a98cf8                                     
01a98844  adrp      x22, #0x3a7c000                                
01a98848  ldr       x22, [x22, #0xc08]                             
01a9884c  ldr       x8, [x22]                                      
01a98850  ldr       x8, [x8, #0xb8]                                
01a98854  ldr       x8, [x8]                                       
01a98858  cbz       x8, #0x1a992bc                                 
01a9885c  adrp      x23, #0x3a8c000                                
01a98860  ldr       x23, [x23, #0x668]                             
01a98864  ldr       x19, [x8, #0x178]                              
01a98868  ldr       x0, [x23]                                      
01a9886c  ldr       w9, [x0, #0xe4]                                
01a98870  cbnz      w9, #0x1a9887c                                 
01a98874  bl        #0x183dcb0                                     
01a98878  ldr       x0, [x23]                                      
01a9887c  ldr       x8, [x0, #0xb8]                                
01a98880  ldr       x20, [x8, #0x38]                               
01a98884  cbnz      x20, #0x1a988d8                                
01a98888  ldr       w9, [x0, #0xe4]                                
01a9888c  cbnz      w9, #0x1a9889c                                 
01a98890  bl        #0x183dcb0                                     
01a98894  ldr       x8, [x23]                                      
01a98898  ldr       x8, [x8, #0xb8]                                
01a9889c  adrp      x9, #0x3a8c000                                 
01a988a0  ldr       x9, [x9, #0x658]                               
01a988a4  ldr       x21, [x8]                                      
01a988a8  ldr       x0, [x9]                                       
01a988ac  bl        #0x183ddcc                                     
01a988b0  adrp      x8, #0x3a8c000                                 
01a988b4  mov       x1, x21                                        
01a988b8  mov       x3, xzr                                        
01a988bc  ldr       x8, [x8, #0x8d8]                               
01a988c0  mov       x20, x0                                        
01a988c4  ldr       x2, [x8]                                       
01a988c8  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a988cc  ldr       x8, [x23]                                      
01a988d0  ldr       x8, [x8, #0xb8]                                
01a988d4  str       x20, [x8, #0x38]                               
01a988d8  cbz       x19, #0x1a992bc                                
01a988dc  adrp      x24, #0x3a8c000                                
01a988e0  mov       x0, x19                                        
01a988e4  mov       x1, x20                                        
01a988e8  ldr       x24, [x24, #0x640]                             
01a988ec  ldr       x2, [x24]                                      
01a988f0  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a988f4  ldr       x8, [x22]                                      
01a988f8  ldr       x8, [x8, #0xb8]                                
01a988fc  ldr       x8, [x8]                                       
01a98900  tbz       w0, #0, #0x1a98980                             
01a98904  cbz       x8, #0x1a992bc                                 
01a98908  ldr       x0, [x8, #0x178]                               
01a9890c  cbz       x0, #0x1a992bc                                 
01a98910  adrp      x8, #0x3a81000                                 
01a98914  mov       w1, #7                                         
01a98918  ldr       x8, [x8, #0xb88]                               
01a9891c  ldr       x2, [x8]                                       
01a98920  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98924  ldr       x8, [x22]                                      
01a98928  ldr       x8, [x8, #0xb8]                                
01a9892c  ldr       x8, [x8]                                       
01a98930  cbz       x8, #0x1a992bc                                 
01a98934  ldr       x0, [x8, #0x178]                               
01a98938  cbz       x0, #0x1a992bc                                 
01a9893c  adrp      x9, #0x3a7c000                                 
01a98940  ldr       x9, [x9, #0xc10]                               
01a98944  ldr       w10, [x0, #0x1c]                               
01a98948  ldr       x8, [x0, #0x10]                                
01a9894c  ldr       x9, [x9]                                       
01a98950  add       w10, w10, #1                                   
01a98954  str       w10, [x0, #0x1c]                               
01a98958  cbz       x8, #0x1a992bc                                 
01a9895c  ldrsw     x10, [x0, #0x18]                               
01a98960  ldr       w11, [x8, #0x18]                               
01a98964  cmp       w10, w11                                       
01a98968  b.hs      #0x1a98bd4                                     
01a9896c  add       w9, w10, #1                                    
01a98970  add       x8, x8, x10, lsl #2                            
01a98974  str       w9, [x0, #0x18]                                
01a98978  mov       w9, #8                                         
01a9897c  b         #0x1a98cf4                                     
01a98980  cbz       x8, #0x1a992bc                                 
01a98984  ldr       x0, [x23]                                      
01a98988  ldr       x19, [x8, #0x178]                              
01a9898c  ldr       w9, [x0, #0xe4]                                
01a98990  cbnz      w9, #0x1a9899c                                 
01a98994  bl        #0x183dcb0                                     
01a98998  ldr       x0, [x23]                                      
01a9899c  ldr       x8, [x0, #0xb8]                                
01a989a0  ldr       x20, [x8, #0x40]                               
01a989a4  cbnz      x20, #0x1a989f8                                
01a989a8  ldr       w9, [x0, #0xe4]                                
01a989ac  cbnz      w9, #0x1a989bc                                 
01a989b0  bl        #0x183dcb0                                     
01a989b4  ldr       x8, [x23]                                      
01a989b8  ldr       x8, [x8, #0xb8]                                
01a989bc  adrp      x9, #0x3a8c000                                 
01a989c0  ldr       x9, [x9, #0x658]                               
01a989c4  ldr       x21, [x8]                                      
01a989c8  ldr       x0, [x9]                                       
01a989cc  bl        #0x183ddcc                                     
01a989d0  adrp      x8, #0x3a8c000                                 
01a989d4  mov       x1, x21                                        
01a989d8  mov       x3, xzr                                        
01a989dc  ldr       x8, [x8, #0x8e0]                               
01a989e0  mov       x20, x0                                        
01a989e4  ldr       x2, [x8]                                       
01a989e8  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a989ec  ldr       x8, [x23]                                      
01a989f0  ldr       x8, [x8, #0xb8]                                
01a989f4  str       x20, [x8, #0x40]                               
01a989f8  cbz       x19, #0x1a992bc                                
01a989fc  ldr       x2, [x24]                                      
01a98a00  mov       x0, x19                                        
01a98a04  mov       x1, x20                                        
01a98a08  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a98a0c  ldr       x8, [x22]                                      
01a98a10  ldr       x8, [x8, #0xb8]                                
01a98a14  ldr       x8, [x8]                                       
01a98a18  tbz       w0, #0, #0x1a98a98                             
01a98a1c  cbz       x8, #0x1a992bc                                 
01a98a20  ldr       x0, [x8, #0x178]                               
01a98a24  cbz       x0, #0x1a992bc                                 
01a98a28  adrp      x8, #0x3a81000                                 
01a98a2c  mov       w1, #0x138d                                    
01a98a30  ldr       x8, [x8, #0xb88]                               
01a98a34  ldr       x2, [x8]                                       
01a98a38  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98a3c  ldr       x8, [x22]                                      
01a98a40  ldr       x8, [x8, #0xb8]                                
01a98a44  ldr       x8, [x8]                                       
01a98a48  cbz       x8, #0x1a992bc                                 
01a98a4c  ldr       x0, [x8, #0x178]                               
01a98a50  cbz       x0, #0x1a992bc                                 
01a98a54  adrp      x9, #0x3a7c000                                 
01a98a58  ldr       x9, [x9, #0xc10]                               
01a98a5c  ldr       w10, [x0, #0x1c]                               
01a98a60  ldr       x8, [x0, #0x10]                                
01a98a64  ldr       x9, [x9]                                       
01a98a68  add       w10, w10, #1                                   
01a98a6c  str       w10, [x0, #0x1c]                               
01a98a70  cbz       x8, #0x1a992bc                                 
01a98a74  ldrsw     x10, [x0, #0x18]                               
01a98a78  ldr       w11, [x8, #0x18]                               
01a98a7c  cmp       w10, w11                                       
01a98a80  b.hs      #0x1a98d0c                                     
01a98a84  add       w9, w10, #1                                    
01a98a88  add       x8, x8, x10, lsl #2                            
01a98a8c  str       w9, [x0, #0x18]                                
01a98a90  mov       w9, #0x1393                                    
01a98a94  b         #0x1a98cf4                                     
01a98a98  cbz       x8, #0x1a992bc                                 
01a98a9c  ldr       x0, [x23]                                      
01a98aa0  ldr       x19, [x8, #0x178]                              
01a98aa4  ldr       w9, [x0, #0xe4]                                
01a98aa8  cbnz      w9, #0x1a98ab4                                 
01a98aac  bl        #0x183dcb0                                     
01a98ab0  ldr       x0, [x23]                                      
01a98ab4  ldr       x8, [x0, #0xb8]                                
01a98ab8  ldr       x20, [x8, #0x48]                               
01a98abc  cbnz      x20, #0x1a98b10                                
01a98ac0  ldr       w9, [x0, #0xe4]                                
01a98ac4  cbnz      w9, #0x1a98ad4                                 
01a98ac8  bl        #0x183dcb0                                     
01a98acc  ldr       x8, [x23]                                      
01a98ad0  ldr       x8, [x8, #0xb8]                                
01a98ad4  adrp      x9, #0x3a8c000                                 
01a98ad8  ldr       x9, [x9, #0x658]                               
01a98adc  ldr       x21, [x8]                                      
01a98ae0  ldr       x0, [x9]                                       
01a98ae4  bl        #0x183ddcc                                     
01a98ae8  adrp      x8, #0x3a8c000                                 
01a98aec  mov       x1, x21                                        
01a98af0  mov       x3, xzr                                        
01a98af4  ldr       x8, [x8, #0x8e8]                               
01a98af8  mov       x20, x0                                        
01a98afc  ldr       x2, [x8]                                       
01a98b00  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a98b04  ldr       x8, [x23]                                      
01a98b08  ldr       x8, [x8, #0xb8]                                
01a98b0c  str       x20, [x8, #0x48]                               
01a98b10  cbz       x19, #0x1a992bc                                
01a98b14  ldr       x2, [x24]                                      
01a98b18  mov       x0, x19                                        
01a98b1c  mov       x1, x20                                        
01a98b20  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a98b24  ldr       x8, [x22]                                      
01a98b28  ldr       x8, [x8, #0xb8]                                
01a98b2c  ldr       x8, [x8]                                       
01a98b30  tbz       w0, #0, #0x1a98be0                             
01a98b34  cbz       x8, #0x1a992bc                                 
01a98b38  ldr       x0, [x8, #0x178]                               
01a98b3c  cbz       x0, #0x1a992bc                                 
01a98b40  adrp      x19, #0x3a81000                                
01a98b44  mov       w1, #0x138f                                    
01a98b48  ldr       x19, [x19, #0xb88]                             
01a98b4c  ldr       x2, [x19]                                      
01a98b50  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98b54  ldr       x8, [x22]                                      
01a98b58  ldr       x8, [x8, #0xb8]                                
01a98b5c  ldr       x8, [x8]                                       
01a98b60  cbz       x8, #0x1a992bc                                 
01a98b64  ldr       x0, [x8, #0x178]                               
01a98b68  cbz       x0, #0x1a992bc                                 
01a98b6c  ldr       x2, [x19]                                      
01a98b70  mov       w1, #0x1390                                    
01a98b74  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98b78  ldr       x8, [x22]                                      
01a98b7c  ldr       x8, [x8, #0xb8]                                
01a98b80  ldr       x8, [x8]                                       
01a98b84  cbz       x8, #0x1a992bc                                 
01a98b88  ldr       x0, [x8, #0x178]                               
01a98b8c  cbz       x0, #0x1a992bc                                 
01a98b90  adrp      x9, #0x3a7c000                                 
01a98b94  ldr       x9, [x9, #0xc10]                               
01a98b98  ldr       w10, [x0, #0x1c]                               
01a98b9c  ldr       x8, [x0, #0x10]                                
01a98ba0  ldr       x9, [x9]                                       
01a98ba4  add       w10, w10, #1                                   
01a98ba8  str       w10, [x0, #0x1c]                               
01a98bac  cbz       x8, #0x1a992bc                                 
01a98bb0  ldrsw     x10, [x0, #0x18]                               
01a98bb4  ldr       w11, [x8, #0x18]                               
01a98bb8  cmp       w10, w11                                       
01a98bbc  b.hs      #0x1a98e1c                                     
01a98bc0  add       w9, w10, #1                                    
01a98bc4  add       x8, x8, x10, lsl #2                            
01a98bc8  str       w9, [x0, #0x18]                                
01a98bcc  mov       w9, #0x1392                                    
01a98bd0  b         #0x1a98cf4                                     
01a98bd4  ldr       x8, [x9, #0x20]                                
01a98bd8  mov       w1, #8                                         
01a98bdc  b         #0x1a98f10                                     
01a98be0  cbz       x8, #0x1a992bc                                 
01a98be4  ldr       x0, [x23]                                      
01a98be8  ldr       x19, [x8, #0x178]                              
01a98bec  ldr       w9, [x0, #0xe4]                                
01a98bf0  cbnz      w9, #0x1a98bfc                                 
01a98bf4  bl        #0x183dcb0                                     
01a98bf8  ldr       x0, [x23]                                      
01a98bfc  ldr       x8, [x0, #0xb8]                                
01a98c00  ldr       x20, [x8, #0x50]                               
01a98c04  cbnz      x20, #0x1a98c58                                
01a98c08  ldr       w9, [x0, #0xe4]                                
01a98c0c  cbnz      w9, #0x1a98c1c                                 
01a98c10  bl        #0x183dcb0                                     
01a98c14  ldr       x8, [x23]                                      
01a98c18  ldr       x8, [x8, #0xb8]                                
01a98c1c  adrp      x9, #0x3a8c000                                 
01a98c20  ldr       x9, [x9, #0x658]                               
01a98c24  ldr       x21, [x8]                                      
01a98c28  ldr       x0, [x9]                                       
01a98c2c  bl        #0x183ddcc                                     
01a98c30  adrp      x8, #0x3a8c000                                 
01a98c34  mov       x1, x21                                        
01a98c38  mov       x3, xzr                                        
01a98c3c  ldr       x8, [x8, #0x8f0]                               
01a98c40  mov       x20, x0                                        
01a98c44  ldr       x2, [x8]                                       
01a98c48  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a98c4c  ldr       x8, [x23]                                      
01a98c50  ldr       x8, [x8, #0xb8]                                
01a98c54  str       x20, [x8, #0x50]                               
01a98c58  cbz       x19, #0x1a992bc                                
01a98c5c  ldr       x2, [x24]                                      
01a98c60  mov       x0, x19                                        
01a98c64  mov       x1, x20                                        
01a98c68  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a98c6c  ldr       x8, [x22]                                      
01a98c70  ldr       x8, [x8, #0xb8]                                
01a98c74  ldr       x8, [x8]                                       
01a98c78  tbz       w0, #0, #0x1a98d18                             
01a98c7c  cbz       x8, #0x1a992bc                                 
01a98c80  ldr       x0, [x8, #0x178]                               
01a98c84  cbz       x0, #0x1a992bc                                 
01a98c88  adrp      x8, #0x3a81000                                 
01a98c8c  mov       w1, #0x1b61                                    
01a98c90  ldr       x8, [x8, #0xb88]                               
01a98c94  ldr       x2, [x8]                                       
01a98c98  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98c9c  ldr       x8, [x22]                                      
01a98ca0  ldr       x8, [x8, #0xb8]                                
01a98ca4  ldr       x8, [x8]                                       
01a98ca8  cbz       x8, #0x1a992bc                                 
01a98cac  ldr       x0, [x8, #0x178]                               
01a98cb0  cbz       x0, #0x1a992bc                                 
01a98cb4  adrp      x9, #0x3a7c000                                 
01a98cb8  ldr       x9, [x9, #0xc10]                               
01a98cbc  ldr       w10, [x0, #0x1c]                               
01a98cc0  ldr       x8, [x0, #0x10]                                
01a98cc4  ldr       x9, [x9]                                       
01a98cc8  add       w10, w10, #1                                   
01a98ccc  str       w10, [x0, #0x1c]                               
01a98cd0  cbz       x8, #0x1a992bc                                 
01a98cd4  ldrsw     x10, [x0, #0x18]                               
01a98cd8  ldr       w11, [x8, #0x18]                               
01a98cdc  cmp       w10, w11                                       
01a98ce0  b.hs      #0x1a98f08                                     
01a98ce4  add       w9, w10, #1                                    
01a98ce8  add       x8, x8, x10, lsl #2                            
01a98cec  str       w9, [x0, #0x18]                                
01a98cf0  mov       w9, #0x1b65                                    
01a98cf4  str       w9, [x8, #0x20]                                
01a98cf8  ldp       x20, x19, [sp, #0x30]                          
01a98cfc  ldp       x22, x21, [sp, #0x20]                          
01a98d00  ldp       x24, x23, [sp, #0x10]                          
01a98d04  ldr       x30, [sp], #0x40                               
01a98d08  ret                                                      
01a98d0c  ldr       x8, [x9, #0x20]                                
01a98d10  mov       w1, #0x1393                                    
01a98d14  b         #0x1a98f10                                     
01a98d18  cbz       x8, #0x1a992bc                                 
01a98d1c  ldr       x0, [x23]                                      
01a98d20  ldr       x19, [x8, #0x178]                              
01a98d24  ldr       w9, [x0, #0xe4]                                
01a98d28  cbnz      w9, #0x1a98d34                                 
01a98d2c  bl        #0x183dcb0                                     
01a98d30  ldr       x0, [x23]                                      
01a98d34  ldr       x8, [x0, #0xb8]                                
01a98d38  ldr       x20, [x8, #0x58]                               
01a98d3c  cbnz      x20, #0x1a98d90                                
01a98d40  ldr       w9, [x0, #0xe4]                                
01a98d44  cbnz      w9, #0x1a98d54                                 
01a98d48  bl        #0x183dcb0                                     
01a98d4c  ldr       x8, [x23]                                      
01a98d50  ldr       x8, [x8, #0xb8]                                
01a98d54  adrp      x9, #0x3a8c000                                 
01a98d58  ldr       x9, [x9, #0x658]                               
01a98d5c  ldr       x21, [x8]                                      
01a98d60  ldr       x0, [x9]                                       
01a98d64  bl        #0x183ddcc                                     
01a98d68  adrp      x8, #0x3a8c000                                 
01a98d6c  mov       x1, x21                                        
01a98d70  mov       x3, xzr                                        
01a98d74  ldr       x8, [x8, #0x8f8]                               
01a98d78  mov       x20, x0                                        
01a98d7c  ldr       x2, [x8]                                       
01a98d80  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a98d84  ldr       x8, [x23]                                      
01a98d88  ldr       x8, [x8, #0xb8]                                
01a98d8c  str       x20, [x8, #0x58]                               
01a98d90  cbz       x19, #0x1a992bc                                
01a98d94  ldr       x2, [x24]                                      
01a98d98  mov       x0, x19                                        
01a98d9c  mov       x1, x20                                        
01a98da0  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a98da4  ldr       x8, [x22]                                      
01a98da8  ldr       x8, [x8, #0xb8]                                
01a98dac  ldr       x8, [x8]                                       
01a98db0  tbz       w0, #0, #0x1a98e28                             
01a98db4  cbz       x8, #0x1a992bc                                 
01a98db8  ldr       x0, [x8, #0x178]                               
01a98dbc  cbz       x0, #0x1a992bc                                 
01a98dc0  adrp      x19, #0x3a81000                                
01a98dc4  mov       w1, #0x232a                                    
01a98dc8  ldr       x19, [x19, #0xb88]                             
01a98dcc  ldr       x2, [x19]                                      
01a98dd0  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98dd4  ldr       x8, [x22]                                      
01a98dd8  ldr       x8, [x8, #0xb8]                                
01a98ddc  ldr       x8, [x8]                                       
01a98de0  cbz       x8, #0x1a992bc                                 
01a98de4  ldr       x0, [x8, #0x178]                               
01a98de8  cbz       x0, #0x1a992bc                                 
01a98dec  ldr       x2, [x19]                                      
01a98df0  mov       w1, #0x232c                                    
01a98df4  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98df8  ldr       x8, [x22]                                      
01a98dfc  ldr       x8, [x8, #0xb8]                                
01a98e00  ldr       x8, [x8]                                       
01a98e04  cbz       x8, #0x1a992bc                                 
01a98e08  ldr       x0, [x8, #0x178]                               
01a98e0c  cbz       x0, #0x1a992bc                                 
01a98e10  adrp      x8, #0x3a7c000                                 
01a98e14  mov       w1, #0x2337                                    
01a98e18  b         #0x1a9910c                                     
01a98e1c  ldr       x8, [x9, #0x20]                                
01a98e20  mov       w1, #0x1392                                    
01a98e24  b         #0x1a98f10                                     
01a98e28  cbz       x8, #0x1a992bc                                 
01a98e2c  ldr       x0, [x23]                                      
01a98e30  ldr       x19, [x8, #0x178]                              
01a98e34  ldr       w9, [x0, #0xe4]                                
01a98e38  cbnz      w9, #0x1a98e44                                 
01a98e3c  bl        #0x183dcb0                                     
01a98e40  ldr       x0, [x23]                                      
01a98e44  ldr       x8, [x0, #0xb8]                                
01a98e48  ldr       x20, [x8, #0x60]                               
01a98e4c  cbnz      x20, #0x1a98ea0                                
01a98e50  ldr       w9, [x0, #0xe4]                                
01a98e54  cbnz      w9, #0x1a98e64                                 
01a98e58  bl        #0x183dcb0                                     
01a98e5c  ldr       x8, [x23]                                      
01a98e60  ldr       x8, [x8, #0xb8]                                
01a98e64  adrp      x9, #0x3a8c000                                 
01a98e68  ldr       x9, [x9, #0x658]                               
01a98e6c  ldr       x21, [x8]                                      
01a98e70  ldr       x0, [x9]                                       
01a98e74  bl        #0x183ddcc                                     
01a98e78  adrp      x8, #0x3a8c000                                 
01a98e7c  mov       x1, x21                                        
01a98e80  mov       x3, xzr                                        
01a98e84  ldr       x8, [x8, #0x900]                               
01a98e88  mov       x20, x0                                        
01a98e8c  ldr       x2, [x8]                                       
01a98e90  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a98e94  ldr       x8, [x23]                                      
01a98e98  ldr       x8, [x8, #0xb8]                                
01a98e9c  str       x20, [x8, #0x60]                               
01a98ea0  cbz       x19, #0x1a992bc                                
01a98ea4  ldr       x2, [x24]                                      
01a98ea8  mov       x0, x19                                        
01a98eac  mov       x1, x20                                        
01a98eb0  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a98eb4  ldr       x8, [x22]                                      
01a98eb8  ldr       x8, [x8, #0xb8]                                
01a98ebc  ldr       x8, [x8]                                       
01a98ec0  tbz       w0, #0, #0x1a98f2c                             
01a98ec4  cbz       x8, #0x1a992bc                                 
01a98ec8  ldr       x0, [x8, #0x178]                               
01a98ecc  cbz       x0, #0x1a992bc                                 
01a98ed0  adrp      x8, #0x3a81000                                 
01a98ed4  mov       w1, #0x232e                                    
01a98ed8  ldr       x8, [x8, #0xb88]                               
01a98edc  ldr       x2, [x8]                                       
01a98ee0  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98ee4  ldr       x8, [x22]                                      
01a98ee8  ldr       x8, [x8, #0xb8]                                
01a98eec  ldr       x8, [x8]                                       
01a98ef0  cbz       x8, #0x1a992bc                                 
01a98ef4  ldr       x0, [x8, #0x178]                               
01a98ef8  cbz       x0, #0x1a992bc                                 
01a98efc  adrp      x8, #0x3a7c000                                 
01a98f00  mov       w1, #0x2338                                    
01a98f04  b         #0x1a9910c                                     
01a98f08  ldr       x8, [x9, #0x20]                                
01a98f0c  mov       w1, #0x1b65                                    
01a98f10  ldr       x8, [x8, #0xc0]                                
01a98f14  ldr       x2, [x8, #0x70]                                
01a98f18  ldp       x20, x19, [sp, #0x30]                          
01a98f1c  ldp       x22, x21, [sp, #0x20]                          
01a98f20  ldp       x24, x23, [sp, #0x10]                          
01a98f24  ldr       x30, [sp], #0x40                               
01a98f28  b         #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a98f2c  cbz       x8, #0x1a992bc                                 
01a98f30  ldr       x0, [x23]                                      
01a98f34  ldr       x19, [x8, #0x178]                              
01a98f38  ldr       w9, [x0, #0xe4]                                
01a98f3c  cbnz      w9, #0x1a98f48                                 
01a98f40  bl        #0x183dcb0                                     
01a98f44  ldr       x0, [x23]                                      
01a98f48  ldr       x8, [x0, #0xb8]                                
01a98f4c  ldr       x20, [x8, #0x68]                               
01a98f50  cbnz      x20, #0x1a98fa4                                
01a98f54  ldr       w9, [x0, #0xe4]                                
01a98f58  cbnz      w9, #0x1a98f68                                 
01a98f5c  bl        #0x183dcb0                                     
01a98f60  ldr       x8, [x23]                                      
01a98f64  ldr       x8, [x8, #0xb8]                                
01a98f68  adrp      x9, #0x3a8c000                                 
01a98f6c  ldr       x9, [x9, #0x658]                               
01a98f70  ldr       x21, [x8]                                      
01a98f74  ldr       x0, [x9]                                       
01a98f78  bl        #0x183ddcc                                     
01a98f7c  adrp      x8, #0x3a8c000                                 
01a98f80  mov       x1, x21                                        
01a98f84  mov       x3, xzr                                        
01a98f88  ldr       x8, [x8, #0x908]                               
01a98f8c  mov       x20, x0                                        
01a98f90  ldr       x2, [x8]                                       
01a98f94  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a98f98  ldr       x8, [x23]                                      
01a98f9c  ldr       x8, [x8, #0xb8]                                
01a98fa0  str       x20, [x8, #0x68]                               
01a98fa4  cbz       x19, #0x1a992bc                                
01a98fa8  ldr       x2, [x24]                                      
01a98fac  mov       x0, x19                                        
01a98fb0  mov       x1, x20                                        
01a98fb4  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a98fb8  ldr       x8, [x22]                                      
01a98fbc  ldr       x8, [x8, #0xb8]                                
01a98fc0  ldr       x8, [x8]                                       
01a98fc4  tbz       w0, #0, #0x1a9900c                             
01a98fc8  cbz       x8, #0x1a992bc                                 
01a98fcc  ldr       x0, [x8, #0x178]                               
01a98fd0  cbz       x0, #0x1a992bc                                 
01a98fd4  adrp      x8, #0x3a81000                                 
01a98fd8  mov       w1, #0x2afc                                    
01a98fdc  ldr       x8, [x8, #0xb88]                               
01a98fe0  ldr       x2, [x8]                                       
01a98fe4  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a98fe8  ldr       x8, [x22]                                      
01a98fec  ldr       x8, [x8, #0xb8]                                
01a98ff0  ldr       x8, [x8]                                       
01a98ff4  cbz       x8, #0x1a992bc                                 
01a98ff8  ldr       x0, [x8, #0x178]                               
01a98ffc  cbz       x0, #0x1a992bc                                 
01a99000  adrp      x8, #0x3a7c000                                 
01a99004  mov       w1, #0x2b03                                    
01a99008  b         #0x1a9910c                                     
01a9900c  cbz       x8, #0x1a992bc                                 
01a99010  ldr       x0, [x23]                                      
01a99014  ldr       x19, [x8, #0x178]                              
01a99018  ldr       w9, [x0, #0xe4]                                
01a9901c  cbnz      w9, #0x1a99028                                 
01a99020  bl        #0x183dcb0                                     
01a99024  ldr       x0, [x23]                                      
01a99028  ldr       x8, [x0, #0xb8]                                
01a9902c  ldr       x20, [x8, #0x70]                               
01a99030  cbnz      x20, #0x1a99084                                
01a99034  ldr       w9, [x0, #0xe4]                                
01a99038  cbnz      w9, #0x1a99048                                 
01a9903c  bl        #0x183dcb0                                     
01a99040  ldr       x8, [x23]                                      
01a99044  ldr       x8, [x8, #0xb8]                                
01a99048  adrp      x9, #0x3a8c000                                 
01a9904c  ldr       x9, [x9, #0x658]                               
01a99050  ldr       x21, [x8]                                      
01a99054  ldr       x0, [x9]                                       
01a99058  bl        #0x183ddcc                                     
01a9905c  adrp      x8, #0x3a8c000                                 
01a99060  mov       x1, x21                                        
01a99064  mov       x3, xzr                                        
01a99068  ldr       x8, [x8, #0x910]                               
01a9906c  mov       x20, x0                                        
01a99070  ldr       x2, [x8]                                       
01a99074  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a99078  ldr       x8, [x23]                                      
01a9907c  ldr       x8, [x8, #0xb8]                                
01a99080  str       x20, [x8, #0x70]                               
01a99084  cbz       x19, #0x1a992bc                                
01a99088  ldr       x2, [x24]                                      
01a9908c  mov       x0, x19                                        
01a99090  mov       x1, x20                                        
01a99094  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a99098  ldr       x8, [x22]                                      
01a9909c  ldr       x8, [x8, #0xb8]                                
01a990a0  ldr       x8, [x8]                                       
01a990a4  tbz       w0, #0, #0x1a99128                             
01a990a8  cbz       x8, #0x1a992bc                                 
01a990ac  ldr       x0, [x8, #0x178]                               
01a990b0  cbz       x0, #0x1a992bc                                 
01a990b4  adrp      x19, #0x3a81000                                
01a990b8  mov       w1, #0x2b06                                    
01a990bc  ldr       x19, [x19, #0xb88]                             
01a990c0  ldr       x2, [x19]                                      
01a990c4  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a990c8  ldr       x8, [x22]                                      
01a990cc  ldr       x8, [x8, #0xb8]                                
01a990d0  ldr       x8, [x8]                                       
01a990d4  cbz       x8, #0x1a992bc                                 
01a990d8  ldr       x0, [x8, #0x178]                               
01a990dc  cbz       x0, #0x1a992bc                                 
01a990e0  ldr       x2, [x19]                                      
01a990e4  mov       w1, #0x2b0a                                    
01a990e8  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a990ec  ldr       x8, [x22]                                      
01a990f0  ldr       x8, [x8, #0xb8]                                
01a990f4  ldr       x8, [x8]                                       
01a990f8  cbz       x8, #0x1a992bc                                 
01a990fc  ldr       x0, [x8, #0x178]                               
01a99100  cbz       x0, #0x1a992bc                                 
01a99104  adrp      x8, #0x3a7c000                                 
01a99108  mov       w1, #0x2b07                                    
01a9910c  ldr       x8, [x8, #0xc10]                               
01a99110  ldr       x2, [x8]                                       
01a99114  ldp       x20, x19, [sp, #0x30]                          
01a99118  ldp       x22, x21, [sp, #0x20]                          
01a9911c  ldp       x24, x23, [sp, #0x10]                          
01a99120  ldr       x30, [sp], #0x40                               
01a99124  b         #0x166187c                                     
01a99128  cbz       x8, #0x1a992bc                                 
01a9912c  ldr       x0, [x23]                                      
01a99130  ldr       x19, [x8, #0x178]                              
01a99134  ldr       w9, [x0, #0xe4]                                
01a99138  cbnz      w9, #0x1a99144                                 
01a9913c  bl        #0x183dcb0                                     
01a99140  ldr       x0, [x23]                                      
01a99144  ldr       x8, [x0, #0xb8]                                
01a99148  ldr       x20, [x8, #0x78]                               
01a9914c  cbnz      x20, #0x1a991a0                                
01a99150  ldr       w9, [x0, #0xe4]                                
01a99154  cbnz      w9, #0x1a99164                                 
01a99158  bl        #0x183dcb0                                     
01a9915c  ldr       x8, [x23]                                      
01a99160  ldr       x8, [x8, #0xb8]                                
01a99164  adrp      x9, #0x3a8c000                                 
01a99168  ldr       x9, [x9, #0x658]                               
01a9916c  ldr       x21, [x8]                                      
01a99170  ldr       x0, [x9]                                       
01a99174  bl        #0x183ddcc                                     
01a99178  adrp      x8, #0x3a8c000                                 
01a9917c  mov       x1, x21                                        
01a99180  mov       x3, xzr                                        
01a99184  ldr       x8, [x8, #0x918]                               
01a99188  mov       x20, x0                                        
01a9918c  ldr       x2, [x8]                                       
01a99190  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a99194  ldr       x8, [x23]                                      
01a99198  ldr       x8, [x8, #0xb8]                                
01a9919c  str       x20, [x8, #0x78]                               
01a991a0  cbz       x19, #0x1a992bc                                
01a991a4  ldr       x2, [x24]                                      
01a991a8  mov       x0, x19                                        
01a991ac  mov       x1, x20                                        
01a991b0  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a991b4  ldr       x8, [x22]                                      
01a991b8  ldr       x8, [x8, #0xb8]                                
01a991bc  ldr       x8, [x8]                                       
01a991c0  tbz       w0, #0, #0x1a991dc                             
01a991c4  cbz       x8, #0x1a992bc                                 
01a991c8  ldr       x0, [x8, #0x178]                               
01a991cc  cbz       x0, #0x1a992bc                                 
01a991d0  adrp      x8, #0x3a81000                                 
01a991d4  mov       w1, #0x2339                                    
01a991d8  b         #0x1a98ed8                                     
01a991dc  cbz       x8, #0x1a992bc                                 
01a991e0  ldr       x0, [x23]                                      
01a991e4  ldr       x19, [x8, #0x178]                              
01a991e8  ldr       w9, [x0, #0xe4]                                
01a991ec  cbnz      w9, #0x1a991f8                                 
01a991f0  bl        #0x183dcb0                                     
01a991f4  ldr       x0, [x23]                                      
01a991f8  ldr       x8, [x0, #0xb8]                                
01a991fc  ldr       x20, [x8, #0x80]                               
01a99200  cbnz      x20, #0x1a99254                                
01a99204  ldr       w9, [x0, #0xe4]                                
01a99208  cbnz      w9, #0x1a99218                                 
01a9920c  bl        #0x183dcb0                                     
01a99210  ldr       x8, [x23]                                      
01a99214  ldr       x8, [x8, #0xb8]                                
01a99218  adrp      x9, #0x3a8c000                                 
01a9921c  ldr       x9, [x9, #0x658]                               
01a99220  ldr       x21, [x8]                                      
01a99224  ldr       x0, [x9]                                       
01a99228  bl        #0x183ddcc                                     
01a9922c  adrp      x8, #0x3a8c000                                 
01a99230  mov       x1, x21                                        
01a99234  mov       x3, xzr                                        
01a99238  ldr       x8, [x8, #0x920]                               
01a9923c  mov       x20, x0                                        
01a99240  ldr       x2, [x8]                                       
01a99244  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a99248  ldr       x8, [x23]                                      
01a9924c  ldr       x8, [x8, #0xb8]                                
01a99250  str       x20, [x8, #0x80]                               
01a99254  cbz       x19, #0x1a992bc                                
01a99258  ldr       x2, [x24]                                      
01a9925c  mov       x0, x19                                        
01a99260  mov       x1, x20                                        
01a99264  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a99268  tbz       w0, #0, #0x1a98cf8                             
01a9926c  ldr       x8, [x22]                                      
01a99270  ldr       x8, [x8, #0xb8]                                
01a99274  ldr       x8, [x8]                                       
01a99278  cbz       x8, #0x1a992bc                                 
01a9927c  ldr       x0, [x8, #0x178]                               
01a99280  cbz       x0, #0x1a992bc                                 
01a99284  adrp      x8, #0x3a81000                                 
01a99288  mov       w1, #0x1394                                    
01a9928c  ldr       x8, [x8, #0xb88]                               
01a99290  ldr       x2, [x8]                                       
01a99294  bl        #0x276c6e8                                     // System.Collections.Generic.List<int>$$Remove
01a99298  ldr       x8, [x22]                                      
01a9929c  ldr       x8, [x8, #0xb8]                                
01a992a0  ldr       x8, [x8]                                       
01a992a4  cbz       x8, #0x1a992bc                                 
01a992a8  ldr       x0, [x8, #0x178]                               
01a992ac  cbz       x0, #0x1a992bc                                 
01a992b0  adrp      x8, #0x3a7c000                                 
01a992b4  mov       w1, #0x1392                                    
01a992b8  b         #0x1a9910c                                     
01a992bc  bl        #0x183dddc                                     