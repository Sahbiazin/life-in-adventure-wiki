int32_t EventCtrl__GetMonsterIndex (EventCtrl_o* __this, System_String_o* monstersStr, const MethodInfo* method);
// RVA 0x1a9e5d4 to 0x1a9e924
01a9e5d4  str       x30, [sp, #-0x60]!                             
01a9e5d8  stp       x28, x27, [sp, #0x10]                          
01a9e5dc  stp       x26, x25, [sp, #0x20]                          
01a9e5e0  stp       x24, x23, [sp, #0x30]                          
01a9e5e4  stp       x22, x21, [sp, #0x40]                          
01a9e5e8  stp       x20, x19, [sp, #0x50]                          
01a9e5ec  adrp      x21, #0x3d14000                                
01a9e5f0  mov       x20, x1                                        
01a9e5f4  mov       x19, x0                                        
01a9e5f8  ldrb      w8, [x21, #0xce8]                              
01a9e5fc  tbnz      w8, #0, #0x1a9e650                             
01a9e600  adrp      x0, #0x3a7b000                                 
01a9e604  ldr       x0, [x0, #0xf88]                               
01a9e608  bl        #0x183db90                                     
01a9e60c  adrp      x0, #0x3a7c000                                 
01a9e610  ldr       x0, [x0, #0xc08]                               
01a9e614  bl        #0x183db90                                     
01a9e618  adrp      x0, #0x3a7c000                                 
01a9e61c  ldr       x0, [x0, #0xc10]                               
01a9e620  bl        #0x183db90                                     
01a9e624  adrp      x0, #0x3a7c000                                 
01a9e628  ldr       x0, [x0, #0xff0]                               
01a9e62c  bl        #0x183db90                                     
01a9e630  adrp      x0, #0x3a7c000                                 
01a9e634  ldr       x0, [x0, #0xc20]                               
01a9e638  bl        #0x183db90                                     
01a9e63c  adrp      x0, #0x3a7c000                                 
01a9e640  ldr       x0, [x0, #0xc30]                               
01a9e644  bl        #0x183db90                                     
01a9e648  mov       w8, #1                                         
01a9e64c  strb      w8, [x21, #0xce8]                              
01a9e650  ldr       x8, [x19, #0x1f8]                              
01a9e654  cbz       x8, #0x1a9e91c                                 
01a9e658  ldr       w9, [x8, #0x1c]                                
01a9e65c  mov       x1, x20                                        
01a9e660  add       w9, w9, #1                                     
01a9e664  stp       wzr, w9, [x8, #0x18]                           
01a9e668  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a9e66c  cbz       x0, #0x1a9e91c                                 
01a9e670  ldr       w8, [x0, #0x18]                                
01a9e674  adrp      x22, #0x3a7c000                                
01a9e678  mov       x20, x0                                        
01a9e67c  ldr       x22, [x22, #0xc10]                             
01a9e680  cmp       w8, #1                                         
01a9e684  b.lt      #0x1a9e870                                     
01a9e688  adrp      x24, #0x3a7b000                                
01a9e68c  adrp      x25, #0x3a7c000                                
01a9e690  mov       w23, wzr                                       
01a9e694  ldr       x24, [x24, #0xf88]                             
01a9e698  ldr       x25, [x25, #0xc08]                             
01a9e69c  mov       w26, #0x7f800000                               
01a9e6a0  mov       w27, #-0xffffffff80000000                      
01a9e6a4  cmp       w23, w8                                        
01a9e6a8  b.hs      #0x1a9e920                                     
01a9e6ac  add       x28, x20, w23, sxtw #3                         
01a9e6b0  ldr       x8, [x28, #0x20]!                              
01a9e6b4  cbz       x8, #0x1a9e91c                                 
01a9e6b8  ldr       w9, [x8, #0x24]                                
01a9e6bc  cmp       w9, #3                                         
01a9e6c0  b.eq      #0x1a9e724                                     
01a9e6c4  cmp       w9, #1                                         
01a9e6c8  b.ne      #0x1a9e860                                     
01a9e6cc  ldr       x0, [x19, #0x1f8]                              
01a9e6d0  cbz       x0, #0x1a9e91c                                 
01a9e6d4  ldr       s0, [x8, #0x20]                                
01a9e6d8  fmov      s1, w26                                        
01a9e6dc  ldr       w11, [x0, #0x1c]                               
01a9e6e0  ldr       x8, [x0, #0x10]                                
01a9e6e4  ldr       x9, [x22]                                      
01a9e6e8  fcvtzs    w10, s0                                        
01a9e6ec  add       w11, w11, #1                                   
01a9e6f0  fcmp      s0, s1                                         
01a9e6f4  str       w11, [x0, #0x1c]                               
01a9e6f8  csel      w1, w27, w10, eq                               
01a9e6fc  cbz       x8, #0x1a9e91c                                 
01a9e700  ldrsw     x10, [x0, #0x18]                               
01a9e704  ldr       w11, [x8, #0x18]                               
01a9e708  cmp       w10, w11                                       
01a9e70c  b.hs      #0x1a9e7c4                                     
01a9e710  add       x8, x8, x10, lsl #2                            
01a9e714  add       w9, w10, #1                                    
01a9e718  str       w9, [x0, #0x18]                                
01a9e71c  str       w1, [x8, #0x20]                                
01a9e720  b         #0x1a9e860                                     
01a9e724  ldr       x0, [x24]                                      
01a9e728  ldr       x21, [x8, #0x18]                               
01a9e72c  ldr       w9, [x0, #0xe4]                                
01a9e730  cbnz      w9, #0x1a9e738                                 
01a9e734  bl        #0x183dcb0                                     
01a9e738  mov       x0, x21                                        
01a9e73c  mov       x1, xzr                                        
01a9e740  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9e744  cbz       w0, #0x1a9e7cc                                 
01a9e748  ldr       w8, [x20, #0x18]                               
01a9e74c  cmp       w23, w8                                        
01a9e750  b.hs      #0x1a9e920                                     
01a9e754  ldr       x8, [x28]                                      
01a9e758  cbz       x8, #0x1a9e91c                                 
01a9e75c  ldr       x0, [x24]                                      
01a9e760  ldr       x21, [x8, #0x18]                               
01a9e764  ldr       w9, [x0, #0xe4]                                
01a9e768  cbnz      w9, #0x1a9e770                                 
01a9e76c  bl        #0x183dcb0                                     
01a9e770  mov       x0, x21                                        
01a9e774  mov       x1, xzr                                        
01a9e778  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9e77c  cmp       w0, #1                                         
01a9e780  b.ne      #0x1a9e860                                     
01a9e784  ldr       x8, [x25]                                      
01a9e788  ldr       x8, [x8, #0xb8]                                
01a9e78c  ldr       x0, [x8]                                       
01a9e790  cbz       x0, #0x1a9e91c                                 
01a9e794  mov       w1, #2                                         
01a9e798  mov       x2, xzr                                        
01a9e79c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9e7a0  ldr       w8, [x20, #0x18]                               
01a9e7a4  cmp       w23, w8                                        
01a9e7a8  b.hs      #0x1a9e920                                     
01a9e7ac  ldr       x8, [x28]                                      
01a9e7b0  cbz       x8, #0x1a9e91c                                 
01a9e7b4  ldr       s1, [x8, #0x20]                                
01a9e7b8  fcmp      s0, s1                                         
01a9e7bc  b.mi      #0x1a9e808                                     
01a9e7c0  b         #0x1a9e860                                     
01a9e7c4  ldr       x8, [x9, #0x20]                                
01a9e7c8  b         #0x1a9e854                                     
01a9e7cc  ldr       x8, [x25]                                      
01a9e7d0  ldr       x8, [x8, #0xb8]                                
01a9e7d4  ldr       x0, [x8]                                       
01a9e7d8  cbz       x0, #0x1a9e91c                                 
01a9e7dc  mov       w1, #2                                         
01a9e7e0  mov       x2, xzr                                        
01a9e7e4  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9e7e8  ldr       w8, [x20, #0x18]                               
01a9e7ec  cmp       w23, w8                                        
01a9e7f0  b.hs      #0x1a9e920                                     
01a9e7f4  ldr       x8, [x28]                                      
01a9e7f8  cbz       x8, #0x1a9e91c                                 
01a9e7fc  ldr       s1, [x8, #0x20]                                
01a9e800  fcmp      s0, s1                                         
01a9e804  b.lt      #0x1a9e860                                     
01a9e808  ldr       x0, [x19, #0x1f8]                              
01a9e80c  cbz       x0, #0x1a9e91c                                 
01a9e810  ldr       w10, [x0, #0x1c]                               
01a9e814  ldr       x9, [x0, #0x10]                                
01a9e818  ldr       w1, [x8, #0x10]                                
01a9e81c  ldr       x8, [x22]                                      
01a9e820  add       w10, w10, #1                                   
01a9e824  str       w10, [x0, #0x1c]                               
01a9e828  cbz       x9, #0x1a9e91c                                 
01a9e82c  ldrsw     x10, [x0, #0x18]                               
01a9e830  ldr       w11, [x9, #0x18]                               
01a9e834  cmp       w10, w11                                       
01a9e838  b.hs      #0x1a9e850                                     
01a9e83c  add       x9, x9, x10, lsl #2                            
01a9e840  add       w8, w10, #1                                    
01a9e844  str       w8, [x0, #0x18]                                
01a9e848  str       w1, [x9, #0x20]                                
01a9e84c  b         #0x1a9e860                                     
01a9e850  ldr       x8, [x8, #0x20]                                
01a9e854  ldr       x8, [x8, #0xc0]                                
01a9e858  ldr       x2, [x8, #0x70]                                
01a9e85c  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a9e860  ldr       w8, [x20, #0x18]                               
01a9e864  add       w23, w23, #1                                   
01a9e868  cmp       w23, w8                                        
01a9e86c  b.lt      #0x1a9e6a4                                     
01a9e870  ldr       x21, [x19, #0x1f8]                             
01a9e874  cbz       x21, #0x1a9e91c                                
01a9e878  ldr       w9, [x21, #0x18]                               
01a9e87c  cbnz      w9, #0x1a9e8dc                                 
01a9e880  cbz       w8, #0x1a9e920                                 
01a9e884  ldr       x9, [x20, #0x20]                               
01a9e888  cbz       x9, #0x1a9e91c                                 
01a9e88c  ldr       w10, [x21, #0x1c]                              
01a9e890  ldr       x8, [x21, #0x10]                               
01a9e894  ldr       w1, [x9, #0x10]                                
01a9e898  ldr       x9, [x22]                                      
01a9e89c  add       w10, w10, #1                                   
01a9e8a0  str       w10, [x21, #0x1c]                              
01a9e8a4  cbz       x8, #0x1a9e91c                                 
01a9e8a8  ldr       w10, [x8, #0x18]                               
01a9e8ac  cbz       w10, #0x1a9e8c0                                
01a9e8b0  mov       w9, #1                                         
01a9e8b4  str       w9, [x21, #0x18]                               
01a9e8b8  str       w1, [x8, #0x20]                                
01a9e8bc  b         #0x1a9e8dc                                     
01a9e8c0  ldr       x8, [x9, #0x20]                                
01a9e8c4  mov       x0, x21                                        
01a9e8c8  ldr       x8, [x8, #0xc0]                                
01a9e8cc  ldr       x2, [x8, #0x70]                                
01a9e8d0  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a9e8d4  ldr       x21, [x19, #0x1f8]                             
01a9e8d8  cbz       x21, #0x1a9e91c                                
01a9e8dc  adrp      x19, #0x3a7c000                                
01a9e8e0  mov       w0, wzr                                        
01a9e8e4  mov       x2, xzr                                        
01a9e8e8  ldr       x19, [x19, #0xc30]                             
01a9e8ec  ldr       w1, [x21, #0x18]                               
01a9e8f0  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a9e8f4  ldr       x2, [x19]                                      
01a9e8f8  mov       w1, w0                                         
01a9e8fc  mov       x0, x21                                        
01a9e900  ldp       x20, x19, [sp, #0x50]                          
01a9e904  ldp       x22, x21, [sp, #0x40]                          
01a9e908  ldp       x24, x23, [sp, #0x30]                          
01a9e90c  ldp       x26, x25, [sp, #0x20]                          
01a9e910  ldp       x28, x27, [sp, #0x10]                          
01a9e914  ldr       x30, [sp], #0x60                               
01a9e918  b         #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a9e91c  bl        #0x183dddc                                     
01a9e920  bl        #0x183dde4                                     