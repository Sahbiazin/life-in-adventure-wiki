void EventCtrl__SetChoiceBtn (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a9dc34 to 0x1a9e368
01a9dc34  sub       sp, sp, #0x80                                  
01a9dc38  stp       x29, x30, [sp, #0x20]                          
01a9dc3c  stp       x28, x27, [sp, #0x30]                          
01a9dc40  stp       x26, x25, [sp, #0x40]                          
01a9dc44  stp       x24, x23, [sp, #0x50]                          
01a9dc48  stp       x22, x21, [sp, #0x60]                          
01a9dc4c  stp       x20, x19, [sp, #0x70]                          
01a9dc50  adrp      x20, #0x3d14000                                
01a9dc54  mov       x19, x0                                        
01a9dc58  ldrb      w8, [x20, #0xce9]                              
01a9dc5c  tbnz      w8, #0, #0x1a9dd28                             
01a9dc60  adrp      x0, #0x3a8c000                                 
01a9dc64  ldr       x0, [x0, #0x9e0]                               
01a9dc68  bl        #0x183db90                                     
01a9dc6c  adrp      x0, #0x3a8c000                                 
01a9dc70  ldr       x0, [x0, #0x7d8]                               
01a9dc74  bl        #0x183db90                                     
01a9dc78  adrp      x0, #0x3a8c000                                 
01a9dc7c  ldr       x0, [x0, #0x698]                               
01a9dc80  bl        #0x183db90                                     
01a9dc84  adrp      x0, #0x3a8c000                                 
01a9dc88  ldr       x0, [x0, #0x610]                               
01a9dc8c  bl        #0x183db90                                     
01a9dc90  adrp      x0, #0x3a8c000                                 
01a9dc94  ldr       x0, [x0, #0x6a0]                               
01a9dc98  bl        #0x183db90                                     
01a9dc9c  adrp      x0, #0x3a8c000                                 
01a9dca0  ldr       x0, [x0, #0x6a8]                               
01a9dca4  bl        #0x183db90                                     
01a9dca8  adrp      x0, #0x3a7b000                                 
01a9dcac  ldr       x0, [x0, #0x7c8]                               
01a9dcb0  bl        #0x183db90                                     
01a9dcb4  adrp      x0, #0x3a8c000                                 
01a9dcb8  ldr       x0, [x0, #0xaa0]                               
01a9dcbc  bl        #0x183db90                                     
01a9dcc0  adrp      x0, #0x3a8c000                                 
01a9dcc4  ldr       x0, [x0, #0xaa8]                               
01a9dcc8  bl        #0x183db90                                     
01a9dccc  adrp      x0, #0x3a7c000                                 
01a9dcd0  ldr       x0, [x0, #0xc78]                               
01a9dcd4  bl        #0x183db90                                     
01a9dcd8  adrp      x0, #0x3a8c000                                 
01a9dcdc  ldr       x0, [x0, #0xab0]                               
01a9dce0  bl        #0x183db90                                     
01a9dce4  adrp      x0, #0x3a8c000                                 
01a9dce8  ldr       x0, [x0, #0xab8]                               
01a9dcec  bl        #0x183db90                                     
01a9dcf0  adrp      x0, #0x3a8c000                                 
01a9dcf4  ldr       x0, [x0, #0x8d0]                               
01a9dcf8  bl        #0x183db90                                     
01a9dcfc  adrp      x0, #0x3a7e000                                 
01a9dd00  ldr       x0, [x0, #0x470]                               
01a9dd04  bl        #0x183db90                                     
01a9dd08  adrp      x0, #0x3a7b000                                 
01a9dd0c  ldr       x0, [x0, #0xaf0]                               
01a9dd10  bl        #0x183db90                                     
01a9dd14  adrp      x0, #0x3a8c000                                 
01a9dd18  ldr       x0, [x0, #0xac0]                               
01a9dd1c  bl        #0x183db90                                     
01a9dd20  mov       w8, #1                                         
01a9dd24  strb      w8, [x20, #0xce9]                              
01a9dd28  ldr       x8, [x19, #0x118]                              
01a9dd2c  str       wzr, [sp, #0x1c]                               
01a9dd30  cbz       x8, #0x1a9e340                                 
01a9dd34  adrp      x27, #0x3a8c000                                
01a9dd38  adrp      x26, #0x3a8c000                                
01a9dd3c  adrp      x29, #0x3a8c000                                
01a9dd40  adrp      x25, #0x3a8c000                                
01a9dd44  adrp      x20, #0x3a7b000                                
01a9dd48  adrp      x28, #0x3a8c000                                
01a9dd4c  ldr       x27, [x27, #0x6a8]                             
01a9dd50  ldr       x26, [x26, #0xaa8]                             
01a9dd54  ldr       x29, [x29, #0x698]                             
01a9dd58  ldr       x25, [x25, #0x610]                             
01a9dd5c  ldr       x20, [x20, #0x7c8]                             
01a9dd60  ldr       x28, [x28, #0x6a0]                             
01a9dd64  mov       w24, wzr                                       
01a9dd68  ldrsw     x9, [x19, #0x13c]                              
01a9dd6c  ldr       w10, [x8, #0x18]                               
01a9dd70  cmp       w9, w10                                        
01a9dd74  b.hs      #0x1a9e364                                     
01a9dd78  add       x8, x8, x9, lsl #3                             
01a9dd7c  ldr       x0, [x8, #0x20]                                
01a9dd80  cbz       x0, #0x1a9e340                                 
01a9dd84  ldr       w1, [x19, #0xe0]                               
01a9dd88  ldr       x2, [x27]                                      
01a9dd8c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9dd90  cbz       x0, #0x1a9e340                                 
01a9dd94  ldr       x8, [x0, #0x38]                                
01a9dd98  cbz       x8, #0x1a9e340                                 
01a9dd9c  ldr       w8, [x8, #0x18]                                
01a9dda0  cmp       w24, w8                                        
01a9dda4  b.ge      #0x1a9e344                                     
01a9dda8  ldr       x0, [x26]                                      
01a9ddac  bl        #0x183ddcc                                     
01a9ddb0  mov       x1, xzr                                        
01a9ddb4  mov       x21, x0                                        
01a9ddb8  bl        #0x1ab1e7c                                     // EventCtrl.<>c__DisplayClass120_0$$.ctor
01a9ddbc  cbz       x21, #0x1a9e340                                
01a9ddc0  ldrb      w9, [x19, #0x116]                              
01a9ddc4  ldr       x8, [x19, #0x118]                              
01a9ddc8  str       x19, [x21, #0x18]                              
01a9ddcc  str       w24, [x21, #0x10]                              
01a9ddd0  cbz       w9, #0x1a9e0bc                                 
01a9ddd4  cbz       x8, #0x1a9e340                                 
01a9ddd8  ldrsw     x9, [x19, #0x13c]                              
01a9dddc  ldr       w10, [x8, #0x18]                               
01a9dde0  cmp       w9, w10                                        
01a9dde4  b.hs      #0x1a9e364                                     
01a9dde8  add       x8, x8, x9, lsl #3                             
01a9ddec  ldr       x0, [x8, #0x20]                                
01a9ddf0  cbz       x0, #0x1a9e340                                 
01a9ddf4  ldr       w1, [x19, #0xe0]                               
01a9ddf8  ldr       x2, [x27]                                      
01a9ddfc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9de00  cbz       x0, #0x1a9e340                                 
01a9de04  ldr       x0, [x0, #0x38]                                
01a9de08  cbz       x0, #0x1a9e340                                 
01a9de0c  ldr       w1, [x21, #0x10]                               
01a9de10  ldr       x2, [x29]                                      
01a9de14  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9de18  cbz       x0, #0x1a9e340                                 
01a9de1c  ldr       x8, [x19, #0x118]                              
01a9de20  cbz       x8, #0x1a9e340                                 
01a9de24  ldrsw     x9, [x19, #0x13c]                              
01a9de28  ldr       w10, [x8, #0x18]                               
01a9de2c  cmp       w9, w10                                        
01a9de30  b.hs      #0x1a9e364                                     
01a9de34  add       x8, x8, x9, lsl #3                             
01a9de38  ldr       x8, [x8, #0x20]                                
01a9de3c  cbz       x8, #0x1a9e340                                 
01a9de40  ldr       w1, [x19, #0xe0]                               
01a9de44  ldr       x2, [x27]                                      
01a9de48  ldr       x22, [x0, #0x18]                               
01a9de4c  mov       x0, x8                                         
01a9de50  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9de54  cbz       x0, #0x1a9e340                                 
01a9de58  ldr       x0, [x0, #0x38]                                
01a9de5c  cbz       x0, #0x1a9e340                                 
01a9de60  ldr       w1, [x21, #0x10]                               
01a9de64  ldr       x2, [x29]                                      
01a9de68  mov       x25, x26                                       
01a9de6c  mov       w26, w24                                       
01a9de70  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9de74  cbz       x0, #0x1a9e340                                 
01a9de78  adrp      x8, #0x3a8c000                                 
01a9de7c  ldr       x2, [x0, #0x10]                                
01a9de80  mov       x0, x22                                        
01a9de84  ldr       x8, [x8, #0xab8]                               
01a9de88  mov       x4, xzr                                        
01a9de8c  ldr       x1, [x8]                                       
01a9de90  adrp      x8, #0x3a8c000                                 
01a9de94  ldr       x8, [x8, #0xab0]                               
01a9de98  ldr       x3, [x8]                                       
01a9de9c  bl        #0x2c6e254                                     // System.String$$Concat
01a9dea0  ldr       x8, [x19, #0x118]                              
01a9dea4  cbz       x8, #0x1a9e340                                 
01a9dea8  mov       x22, x0                                        
01a9deac  mov       w23, wzr                                       
01a9deb0  ldrsw     x9, [x19, #0x13c]                              
01a9deb4  ldr       w10, [x8, #0x18]                               
01a9deb8  cmp       w9, w10                                        
01a9debc  b.hs      #0x1a9e364                                     
01a9dec0  add       x8, x8, x9, lsl #3                             
01a9dec4  ldr       x0, [x8, #0x20]                                
01a9dec8  cbz       x0, #0x1a9e340                                 
01a9decc  ldr       w1, [x19, #0xe0]                               
01a9ded0  ldr       x2, [x27]                                      
01a9ded4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ded8  cbz       x0, #0x1a9e340                                 
01a9dedc  ldr       x0, [x0, #0x38]                                
01a9dee0  cbz       x0, #0x1a9e340                                 
01a9dee4  ldr       w1, [x21, #0x10]                               
01a9dee8  ldr       x2, [x29]                                      
01a9deec  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9def0  cbz       x0, #0x1a9e340                                 
01a9def4  ldr       x8, [x0, #0x20]                                
01a9def8  cbz       x8, #0x1a9e340                                 
01a9defc  ldr       w8, [x8, #0x18]                                
01a9df00  cmp       w23, w8                                        
01a9df04  b.ge      #0x1a9e0a8                                     
01a9df08  cbz       w23, #0x1a9df28                                
01a9df0c  adrp      x8, #0x3a8c000                                 
01a9df10  mov       x0, x22                                        
01a9df14  mov       x2, xzr                                        
01a9df18  ldr       x8, [x8, #0x8d0]                               
01a9df1c  ldr       x1, [x8]                                       
01a9df20  bl        #0x2c63780                                     // System.String$$Concat
01a9df24  mov       x22, x0                                        
01a9df28  ldr       x0, [x20]                                      
01a9df2c  mov       w1, #6                                         
01a9df30  bl        #0x183dc20                                     
01a9df34  cbz       x0, #0x1a9e340                                 
01a9df38  ldr       w8, [x0, #0x18]                                
01a9df3c  mov       x24, x0                                        
01a9df40  cbz       w8, #0x1a9e364                                 
01a9df44  add       x0, sp, #0x1c                                  
01a9df48  mov       x1, xzr                                        
01a9df4c  str       x22, [x24, #0x20]                              
01a9df50  str       w23, [sp, #0x1c]                               
01a9df54  bl        #0x2dcd834                                     // System.Int32$$ToString
01a9df58  ldr       w8, [x24, #0x18]                               
01a9df5c  cmp       w8, #1                                         
01a9df60  b.ls      #0x1a9e364                                     
01a9df64  cmp       w8, #2                                         
01a9df68  str       x0, [x24, #0x28]                               
01a9df6c  b.eq      #0x1a9e364                                     
01a9df70  adrp      x8, #0x3a8c000                                 
01a9df74  ldr       x8, [x8, #0xac0]                               
01a9df78  ldr       x8, [x8]                                       
01a9df7c  str       x8, [x24, #0x30]                               
01a9df80  ldr       x8, [x19, #0x118]                              
01a9df84  cbz       x8, #0x1a9e340                                 
01a9df88  ldrsw     x9, [x19, #0x13c]                              
01a9df8c  ldr       w10, [x8, #0x18]                               
01a9df90  cmp       w9, w10                                        
01a9df94  b.hs      #0x1a9e364                                     
01a9df98  add       x8, x8, x9, lsl #3                             
01a9df9c  ldr       x0, [x8, #0x20]                                
01a9dfa0  cbz       x0, #0x1a9e340                                 
01a9dfa4  ldr       w1, [x19, #0xe0]                               
01a9dfa8  ldr       x2, [x27]                                      
01a9dfac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9dfb0  cbz       x0, #0x1a9e340                                 
01a9dfb4  ldr       x0, [x0, #0x38]                                
01a9dfb8  cbz       x0, #0x1a9e340                                 
01a9dfbc  ldr       w1, [x21, #0x10]                               
01a9dfc0  ldr       x2, [x29]                                      
01a9dfc4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9dfc8  cbz       x0, #0x1a9e340                                 
01a9dfcc  ldr       x0, [x0, #0x20]                                
01a9dfd0  cbz       x0, #0x1a9e340                                 
01a9dfd4  ldr       x2, [x28]                                      
01a9dfd8  mov       w1, w23                                        
01a9dfdc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9dfe0  cbz       x0, #0x1a9e340                                 
01a9dfe4  ldr       w8, [x24, #0x18]                               
01a9dfe8  cmp       w8, #3                                         
01a9dfec  b.ls      #0x1a9e364                                     
01a9dff0  ldr       x9, [x0, #0x10]                                
01a9dff4  cmp       w8, #4                                         
01a9dff8  str       x9, [x24, #0x38]                               
01a9dffc  b.eq      #0x1a9e364                                     
01a9e000  adrp      x8, #0x3a7e000                                 
01a9e004  ldr       x8, [x8, #0x470]                               
01a9e008  ldr       x8, [x8]                                       
01a9e00c  str       x8, [x24, #0x40]                               
01a9e010  ldr       x8, [x19, #0x118]                              
01a9e014  cbz       x8, #0x1a9e340                                 
01a9e018  ldrsw     x9, [x19, #0x13c]                              
01a9e01c  ldr       w10, [x8, #0x18]                               
01a9e020  cmp       w9, w10                                        
01a9e024  b.hs      #0x1a9e364                                     
01a9e028  add       x8, x8, x9, lsl #3                             
01a9e02c  ldr       x0, [x8, #0x20]                                
01a9e030  cbz       x0, #0x1a9e340                                 
01a9e034  ldr       w1, [x19, #0xe0]                               
01a9e038  ldr       x2, [x27]                                      
01a9e03c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e040  cbz       x0, #0x1a9e340                                 
01a9e044  ldr       x0, [x0, #0x38]                                
01a9e048  cbz       x0, #0x1a9e340                                 
01a9e04c  ldr       w1, [x21, #0x10]                               
01a9e050  ldr       x2, [x29]                                      
01a9e054  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e058  cbz       x0, #0x1a9e340                                 
01a9e05c  ldr       x0, [x0, #0x20]                                
01a9e060  cbz       x0, #0x1a9e340                                 
01a9e064  ldr       x2, [x28]                                      
01a9e068  mov       w1, w23                                        
01a9e06c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e070  cbz       x0, #0x1a9e340                                 
01a9e074  ldr       w8, [x24, #0x18]                               
01a9e078  cmp       w8, #5                                         
01a9e07c  b.ls      #0x1a9e364                                     
01a9e080  ldr       x8, [x0, #0x28]                                
01a9e084  mov       x0, x24                                        
01a9e088  mov       x1, xzr                                        
01a9e08c  str       x8, [x24, #0x48]                               
01a9e090  bl        #0x2c6e35c                                     // System.String$$Concat
01a9e094  ldr       x8, [x19, #0x118]                              
01a9e098  mov       x22, x0                                        
01a9e09c  add       w23, w23, #1                                   
01a9e0a0  cbnz      x8, #0x1a9deb0                                 
01a9e0a4  b         #0x1a9e340                                     
01a9e0a8  mov       w24, w26                                       
01a9e0ac  mov       x26, x25                                       
01a9e0b0  adrp      x25, #0x3a8c000                                
01a9e0b4  ldr       x25, [x25, #0x610]                             
01a9e0b8  b         #0x1a9e108                                     
01a9e0bc  cbz       x8, #0x1a9e340                                 
01a9e0c0  ldrsw     x9, [x19, #0x13c]                              
01a9e0c4  ldr       w10, [x8, #0x18]                               
01a9e0c8  cmp       w9, w10                                        
01a9e0cc  b.hs      #0x1a9e364                                     
01a9e0d0  add       x8, x8, x9, lsl #3                             
01a9e0d4  ldr       x0, [x8, #0x20]                                
01a9e0d8  cbz       x0, #0x1a9e340                                 
01a9e0dc  ldr       w1, [x19, #0xe0]                               
01a9e0e0  ldr       x2, [x27]                                      
01a9e0e4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e0e8  cbz       x0, #0x1a9e340                                 
01a9e0ec  ldr       x0, [x0, #0x38]                                
01a9e0f0  cbz       x0, #0x1a9e340                                 
01a9e0f4  ldr       w1, [x21, #0x10]                               
01a9e0f8  ldr       x2, [x29]                                      
01a9e0fc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e100  cbz       x0, #0x1a9e340                                 
01a9e104  ldr       x22, [x0, #0x18]                               
01a9e108  ldr       x8, [x19, #0x118]                              
01a9e10c  cbz       x8, #0x1a9e340                                 
01a9e110  ldrsw     x9, [x19, #0x13c]                              
01a9e114  ldr       w10, [x8, #0x18]                               
01a9e118  cmp       w9, w10                                        
01a9e11c  b.hs      #0x1a9e364                                     
01a9e120  add       x8, x8, x9, lsl #3                             
01a9e124  ldr       x0, [x8, #0x20]                                
01a9e128  cbz       x0, #0x1a9e340                                 
01a9e12c  ldr       w1, [x19, #0xe0]                               
01a9e130  ldr       x2, [x27]                                      
01a9e134  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e138  cbz       x0, #0x1a9e340                                 
01a9e13c  ldr       x0, [x0, #0x38]                                
01a9e140  cbz       x0, #0x1a9e340                                 
01a9e144  ldr       w1, [x21, #0x10]                               
01a9e148  ldr       x2, [x29]                                      
01a9e14c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e150  cbz       x0, #0x1a9e340                                 
01a9e154  ldr       x1, [x0, #0x10]                                
01a9e158  mov       x0, x19                                        
01a9e15c  mov       w2, #-1                                        
01a9e160  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a9e164  mov       w8, w0                                         
01a9e168  ldr       x0, [x19, #0xb8]                               
01a9e16c  tbz       w8, #0, #0x1a9e2f8                             
01a9e170  cbz       x0, #0x1a9e340                                 
01a9e174  ldr       x2, [x25]                                      
01a9e178  mov       w1, w24                                        
01a9e17c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e180  adrp      x8, #0x3a7c000                                 
01a9e184  mov       x20, x0                                        
01a9e188  ldr       x8, [x8, #0xc78]                               
01a9e18c  ldr       x8, [x8]                                       
01a9e190  mov       x0, x8                                         
01a9e194  bl        #0x183ddcc                                     
01a9e198  adrp      x8, #0x3a8c000                                 
01a9e19c  mov       x1, x21                                        
01a9e1a0  mov       x3, xzr                                        
01a9e1a4  ldr       x8, [x8, #0xaa0]                               
01a9e1a8  mov       x25, x0                                        
01a9e1ac  ldr       x2, [x8]                                       
01a9e1b0  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9e1b4  ldr       x8, [x19, #0x118]                              
01a9e1b8  cbz       x8, #0x1a9e340                                 
01a9e1bc  ldrsw     x9, [x19, #0x13c]                              
01a9e1c0  ldr       w10, [x8, #0x18]                               
01a9e1c4  cmp       w9, w10                                        
01a9e1c8  b.hs      #0x1a9e364                                     
01a9e1cc  add       x8, x8, x9, lsl #3                             
01a9e1d0  ldr       x0, [x8, #0x20]                                
01a9e1d4  cbz       x0, #0x1a9e340                                 
01a9e1d8  ldr       w1, [x19, #0xe0]                               
01a9e1dc  ldr       x2, [x27]                                      
01a9e1e0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e1e4  cbz       x0, #0x1a9e340                                 
01a9e1e8  ldr       x0, [x0, #0x38]                                
01a9e1ec  cbz       x0, #0x1a9e340                                 
01a9e1f0  ldr       w1, [x21, #0x10]                               
01a9e1f4  ldr       x2, [x29]                                      
01a9e1f8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e1fc  cbz       x0, #0x1a9e340                                 
01a9e200  ldr       x8, [x19, #0x118]                              
01a9e204  cbz       x8, #0x1a9e340                                 
01a9e208  ldrsw     x9, [x19, #0x13c]                              
01a9e20c  ldr       w10, [x8, #0x18]                               
01a9e210  cmp       w9, w10                                        
01a9e214  b.hs      #0x1a9e364                                     
01a9e218  add       x8, x8, x9, lsl #3                             
01a9e21c  ldr       x8, [x8, #0x20]                                
01a9e220  cbz       x8, #0x1a9e340                                 
01a9e224  ldr       x9, [x0, #0x20]                                
01a9e228  ldr       w1, [x19, #0xe0]                               
01a9e22c  mov       x0, x8                                         
01a9e230  ldr       x2, [x27]                                      
01a9e234  str       x9, [sp, #0x10]                                
01a9e238  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e23c  cbz       x0, #0x1a9e340                                 
01a9e240  ldr       x0, [x0, #0x38]                                
01a9e244  cbz       x0, #0x1a9e340                                 
01a9e248  ldr       w1, [x21, #0x10]                               
01a9e24c  ldr       x2, [x29]                                      
01a9e250  mov       x23, x26                                       
01a9e254  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e258  cbz       x0, #0x1a9e340                                 
01a9e25c  ldr       x1, [x0, #0x10]                                
01a9e260  bl        #0x1a944dc                                     // EventCtrl$$CheckJewel
01a9e264  ldr       x8, [x19, #0x118]                              
01a9e268  cbz       x8, #0x1a9e340                                 
01a9e26c  ldrsw     x9, [x19, #0x13c]                              
01a9e270  ldr       w10, [x8, #0x18]                               
01a9e274  cmp       w9, w10                                        
01a9e278  b.hs      #0x1a9e364                                     
01a9e27c  add       x8, x8, x9, lsl #3                             
01a9e280  mov       w26, w0                                        
01a9e284  ldr       x0, [x8, #0x20]                                
01a9e288  cbz       x0, #0x1a9e340                                 
01a9e28c  ldr       w1, [x19, #0xe0]                               
01a9e290  ldr       x2, [x27]                                      
01a9e294  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e298  cbz       x0, #0x1a9e340                                 
01a9e29c  ldr       x0, [x0, #0x38]                                
01a9e2a0  cbz       x0, #0x1a9e340                                 
01a9e2a4  ldr       w1, [x21, #0x10]                               
01a9e2a8  ldr       x2, [x29]                                      
01a9e2ac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e2b0  cbz       x0, #0x1a9e340                                 
01a9e2b4  ldr       x1, [x0, #0x10]                                
01a9e2b8  bl        #0x1a98148                                     // EventCtrl$$GetChoiceRequireAbilityString
01a9e2bc  ldr       x5, [sp, #0x10]                                
01a9e2c0  mov       x7, x0                                         
01a9e2c4  mov       x0, x19                                        
01a9e2c8  mov       x1, x20                                        
01a9e2cc  mov       w2, #1                                         
01a9e2d0  mov       x3, x25                                        
01a9e2d4  mov       x4, x22                                        
01a9e2d8  mov       w6, w26                                        
01a9e2dc  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9e2e0  adrp      x25, #0x3a8c000                                
01a9e2e4  adrp      x20, #0x3a7b000                                
01a9e2e8  mov       x26, x23                                       
01a9e2ec  ldr       x25, [x25, #0x610]                             
01a9e2f0  ldr       x20, [x20, #0x7c8]                             
01a9e2f4  b         #0x1a9e334                                     
01a9e2f8  cbz       x0, #0x1a9e340                                 
01a9e2fc  ldr       x2, [x25]                                      
01a9e300  mov       w1, w24                                        
01a9e304  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9e308  adrp      x8, #0x3a7b000                                 
01a9e30c  mov       x1, x0                                         
01a9e310  mov       x0, x19                                        
01a9e314  ldr       x8, [x8, #0xaf0]                               
01a9e318  mov       w2, wzr                                        
01a9e31c  mov       x3, xzr                                        
01a9e320  mov       x4, x22                                        
01a9e324  mov       x5, xzr                                        
01a9e328  mov       w6, wzr                                        
01a9e32c  ldr       x7, [x8]                                       
01a9e330  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9e334  ldr       x8, [x19, #0x118]                              
01a9e338  add       w24, w24, #1                                   
01a9e33c  cbnz      x8, #0x1a9dd68                                 
01a9e340  bl        #0x183dddc                                     
01a9e344  ldp       x20, x19, [sp, #0x70]                          
01a9e348  ldp       x22, x21, [sp, #0x60]                          
01a9e34c  ldp       x24, x23, [sp, #0x50]                          
01a9e350  ldp       x26, x25, [sp, #0x40]                          
01a9e354  ldp       x28, x27, [sp, #0x30]                          
01a9e358  ldp       x29, x30, [sp, #0x20]                          
01a9e35c  add       sp, sp, #0x80                                  
01a9e360  ret                                                      
01a9e364  bl        #0x183dde4                                     