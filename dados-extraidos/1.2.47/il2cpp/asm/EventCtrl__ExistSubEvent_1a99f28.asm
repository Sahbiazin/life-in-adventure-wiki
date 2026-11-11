bool EventCtrl__ExistSubEvent (EventCtrl_o* __this, int32_t curSubEvent, const MethodInfo* method);
// RVA 0x1a99f28 to 0x1a9a280
01a99f28  stp       x30, x25, [sp, #-0x40]!                        
01a99f2c  stp       x24, x23, [sp, #0x10]                          
01a99f30  stp       x22, x21, [sp, #0x20]                          
01a99f34  stp       x20, x19, [sp, #0x30]                          
01a99f38  adrp      x21, #0x3d14000                                
01a99f3c  mov       w20, w1                                        
01a99f40  mov       x19, x0                                        
01a99f44  ldrb      w8, [x21, #0xce2]                              
01a99f48  tbnz      w8, #0, #0x1a99fe4                             
01a99f4c  adrp      x0, #0x3a8c000                                 
01a99f50  ldr       x0, [x0, #0x948]                               
01a99f54  bl        #0x183db90                                     
01a99f58  adrp      x0, #0x3a8c000                                 
01a99f5c  ldr       x0, [x0, #0x950]                               
01a99f60  bl        #0x183db90                                     
01a99f64  adrp      x0, #0x3a8c000                                 
01a99f68  ldr       x0, [x0, #0x958]                               
01a99f6c  bl        #0x183db90                                     
01a99f70  adrp      x0, #0x3a8c000                                 
01a99f74  ldr       x0, [x0, #0x960]                               
01a99f78  bl        #0x183db90                                     
01a99f7c  adrp      x0, #0x3a8c000                                 
01a99f80  ldr       x0, [x0, #0x968]                               
01a99f84  bl        #0x183db90                                     
01a99f88  adrp      x0, #0x3a7c000                                 
01a99f8c  ldr       x0, [x0, #0xc20]                               
01a99f90  bl        #0x183db90                                     
01a99f94  adrp      x0, #0x3a7c000                                 
01a99f98  ldr       x0, [x0, #0xc30]                               
01a99f9c  bl        #0x183db90                                     
01a99fa0  adrp      x0, #0x3a8c000                                 
01a99fa4  ldr       x0, [x0, #0x6a8]                               
01a99fa8  bl        #0x183db90                                     
01a99fac  adrp      x0, #0x3a8c000                                 
01a99fb0  ldr       x0, [x0, #0x970]                               
01a99fb4  bl        #0x183db90                                     
01a99fb8  adrp      x0, #0x3a8c000                                 
01a99fbc  ldr       x0, [x0, #0x978]                               
01a99fc0  bl        #0x183db90                                     
01a99fc4  adrp      x0, #0x3a8c000                                 
01a99fc8  ldr       x0, [x0, #0x980]                               
01a99fcc  bl        #0x183db90                                     
01a99fd0  adrp      x0, #0x3a8c000                                 
01a99fd4  ldr       x0, [x0, #0x668]                               
01a99fd8  bl        #0x183db90                                     
01a99fdc  mov       w8, #1                                         
01a99fe0  strb      w8, [x21, #0xce2]                              
01a99fe4  cmn       w20, #1                                        
01a99fe8  b.eq      #0x1a9a264                                     
01a99fec  ldr       x8, [x19, #0x118]                              
01a99ff0  cbz       x8, #0x1a9a250                                 
01a99ff4  ldr       w9, [x8, #0x18]                                
01a99ff8  cbz       w9, #0x1a9a27c                                 
01a99ffc  adrp      x24, #0x3a8c000                                
01a9a000  ldr       x24, [x24, #0x668]                             
01a9a004  ldr       x21, [x8, #0x20]                               
01a9a008  ldr       x0, [x24]                                      
01a9a00c  ldr       w9, [x0, #0xe4]                                
01a9a010  cbnz      w9, #0x1a9a01c                                 
01a9a014  bl        #0x183dcb0                                     
01a9a018  ldr       x0, [x24]                                      
01a9a01c  ldr       x8, [x0, #0xb8]                                
01a9a020  ldr       x22, [x8, #0x88]                               
01a9a024  cbnz      x22, #0x1a9a078                                
01a9a028  ldr       w9, [x0, #0xe4]                                
01a9a02c  cbnz      w9, #0x1a9a03c                                 
01a9a030  bl        #0x183dcb0                                     
01a9a034  ldr       x8, [x24]                                      
01a9a038  ldr       x8, [x8, #0xb8]                                
01a9a03c  adrp      x9, #0x3a8c000                                 
01a9a040  ldr       x9, [x9, #0x978]                               
01a9a044  ldr       x23, [x8]                                      
01a9a048  ldr       x0, [x9]                                       
01a9a04c  bl        #0x183ddcc                                     
01a9a050  adrp      x8, #0x3a8c000                                 
01a9a054  mov       x1, x23                                        
01a9a058  mov       x3, xzr                                        
01a9a05c  ldr       x8, [x8, #0x980]                               
01a9a060  mov       x22, x0                                        
01a9a064  ldr       x2, [x8]                                       
01a9a068  bl        #0x29630a8                                     // System.Predicate<object>$$.ctor
01a9a06c  ldr       x8, [x24]                                      
01a9a070  ldr       x8, [x8, #0xb8]                                
01a9a074  str       x22, [x8, #0x88]                               
01a9a078  cbz       x21, #0x1a9a250                                
01a9a07c  adrp      x8, #0x3a8c000                                 
01a9a080  adrp      x23, #0x3a8c000                                
01a9a084  adrp      x24, #0x3a8c000                                
01a9a088  ldr       x8, [x8, #0x950]                               
01a9a08c  ldr       x23, [x23, #0x970]                             
01a9a090  ldr       x24, [x24, #0x960]                             
01a9a094  mov       x0, x21                                        
01a9a098  mov       x1, x22                                        
01a9a09c  ldr       x2, [x8]                                       
01a9a0a0  bl        #0x2794e98                                     // System.Collections.Generic.List<object>$$FindAll
01a9a0a4  ldr       x8, [x23]                                      
01a9a0a8  mov       x21, x0                                        
01a9a0ac  mov       x0, x8                                         
01a9a0b0  bl        #0x183ddcc                                     
01a9a0b4  ldr       x1, [x24]                                      
01a9a0b8  mov       x22, x0                                        
01a9a0bc  bl        #0x2793f9c                                     // System.Collections.Generic.List<object>$$.ctor
01a9a0c0  cbz       x21, #0x1a9a250                                
01a9a0c4  ldr       w8, [x21, #0x18]                               
01a9a0c8  adrp      x24, #0x3a8c000                                
01a9a0cc  ldr       x24, [x24, #0x6a8]                             
01a9a0d0  cmp       w8, #1                                         
01a9a0d4  b.lt      #0x1a9a184                                     
01a9a0d8  adrp      x25, #0x3a8c000                                
01a9a0dc  mov       w23, wzr                                       
01a9a0e0  ldr       x25, [x25, #0x948]                             
01a9a0e4  ldr       x2, [x24]                                      
01a9a0e8  mov       x0, x21                                        
01a9a0ec  mov       w1, w23                                        
01a9a0f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a0f4  cbz       x0, #0x1a9a250                                 
01a9a0f8  ldr       x1, [x0, #0x28]                                
01a9a0fc  mov       x0, x19                                        
01a9a100  mov       w2, w20                                        
01a9a104  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a9a108  tbnz      w0, #0, #0x1a9a174                             
01a9a10c  ldr       x2, [x24]                                      
01a9a110  mov       x0, x21                                        
01a9a114  mov       w1, w23                                        
01a9a118  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a11c  cbz       x22, #0x1a9a250                                
01a9a120  ldr       w10, [x22, #0x1c]                              
01a9a124  ldr       x8, [x22, #0x10]                               
01a9a128  ldr       x9, [x25]                                      
01a9a12c  add       w10, w10, #1                                   
01a9a130  str       w10, [x22, #0x1c]                              
01a9a134  cbz       x8, #0x1a9a250                                 
01a9a138  ldrsw     x10, [x22, #0x18]                              
01a9a13c  ldr       w11, [x8, #0x18]                               
01a9a140  mov       x1, x0                                         
01a9a144  cmp       w10, w11                                       
01a9a148  b.hs      #0x1a9a160                                     
01a9a14c  add       x8, x8, x10, lsl #3                            
01a9a150  add       w9, w10, #1                                    
01a9a154  str       w9, [x22, #0x18]                               
01a9a158  str       x1, [x8, #0x20]                                
01a9a15c  b         #0x1a9a174                                     
01a9a160  ldr       x8, [x9, #0x20]                                
01a9a164  mov       x0, x22                                        
01a9a168  ldr       x8, [x8, #0xc0]                                
01a9a16c  ldr       x2, [x8, #0x70]                                
01a9a170  bl        #0x2794798                                     // System.Collections.Generic.List<object>$$AddWithResize
01a9a174  ldr       w8, [x21, #0x18]                               
01a9a178  add       w23, w23, #1                                   
01a9a17c  cmp       w23, w8                                        
01a9a180  b.lt      #0x1a9a0e4                                     
01a9a184  cbz       x22, #0x1a9a250                                
01a9a188  ldr       w8, [x22, #0x18]                               
01a9a18c  adrp      x23, #0x3a8c000                                
01a9a190  ldr       x23, [x23, #0x958]                             
01a9a194  cmp       w8, #1                                         
01a9a198  b.lt      #0x1a9a1d0                                     
01a9a19c  mov       w20, wzr                                       
01a9a1a0  ldr       x2, [x24]                                      
01a9a1a4  mov       x0, x22                                        
01a9a1a8  mov       w1, w20                                        
01a9a1ac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a1b0  ldr       x2, [x23]                                      
01a9a1b4  mov       x1, x0                                         
01a9a1b8  mov       x0, x21                                        
01a9a1bc  bl        #0x2795c74                                     // System.Collections.Generic.List<object>$$Remove
01a9a1c0  ldr       w8, [x22, #0x18]                               
01a9a1c4  add       w20, w20, #1                                   
01a9a1c8  cmp       w20, w8                                        
01a9a1cc  b.lt      #0x1a9a1a0                                     
01a9a1d0  ldr       x8, [x19, #0x120]                              
01a9a1d4  cbz       x8, #0x1a9a250                                 
01a9a1d8  adrp      x25, #0x3a7c000                                
01a9a1dc  mov       w20, wzr                                       
01a9a1e0  ldr       x25, [x25, #0xc30]                             
01a9a1e4  ldr       w9, [x8, #0x18]                                
01a9a1e8  cbz       w9, #0x1a9a27c                                 
01a9a1ec  ldr       x0, [x8, #0x20]                                
01a9a1f0  cbz       x0, #0x1a9a250                                 
01a9a1f4  ldr       w8, [x0, #0x18]                                
01a9a1f8  cmp       w20, w8                                        
01a9a1fc  b.ge      #0x1a9a254                                     
01a9a200  ldr       x8, [x19, #0x118]                              
01a9a204  cbz       x8, #0x1a9a250                                 
01a9a208  ldr       w9, [x8, #0x18]                                
01a9a20c  cbz       w9, #0x1a9a27c                                 
01a9a210  ldr       x2, [x25]                                      
01a9a214  ldr       x22, [x8, #0x20]                               
01a9a218  mov       w1, w20                                        
01a9a21c  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a9a220  cbz       x22, #0x1a9a250                                
01a9a224  ldr       x2, [x24]                                      
01a9a228  mov       w1, w0                                         
01a9a22c  mov       x0, x22                                        
01a9a230  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9a234  ldr       x2, [x23]                                      
01a9a238  mov       x1, x0                                         
01a9a23c  mov       x0, x21                                        
01a9a240  bl        #0x2795c74                                     // System.Collections.Generic.List<object>$$Remove
01a9a244  ldr       x8, [x19, #0x120]                              
01a9a248  add       w20, w20, #1                                   
01a9a24c  cbnz      x8, #0x1a9a1e4                                 
01a9a250  bl        #0x183dddc                                     
01a9a254  ldr       w8, [x21, #0x18]                               
01a9a258  cmp       w8, #0                                         
01a9a25c  cset      w0, ne                                         
01a9a260  b         #0x1a9a268                                     
01a9a264  mov       w0, wzr                                        
01a9a268  ldp       x20, x19, [sp, #0x30]                          
01a9a26c  ldp       x22, x21, [sp, #0x20]                          
01a9a270  ldp       x24, x23, [sp, #0x10]                          
01a9a274  ldp       x30, x25, [sp], #0x40                          
01a9a278  ret                                                      
01a9a27c  bl        #0x183dde4                                     