void EventCtrl__ResetText (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8b644 to 0x1a8bb4c
01a8b644  sub       sp, sp, #0x100                                 
01a8b648  str       d10, [sp, #0x80]                               
01a8b64c  stp       d9, d8, [sp, #0x90]                            
01a8b650  stp       x29, x30, [sp, #0xa0]                          
01a8b654  stp       x28, x27, [sp, #0xb0]                          
01a8b658  stp       x26, x25, [sp, #0xc0]                          
01a8b65c  stp       x24, x23, [sp, #0xd0]                          
01a8b660  stp       x22, x21, [sp, #0xe0]                          
01a8b664  stp       x20, x19, [sp, #0xf0]                          
01a8b668  adrp      x20, #0x3d14000                                
01a8b66c  mov       x19, x0                                        
01a8b670  ldrb      w8, [x20, #0xcd4]                              
01a8b674  tbnz      w8, #0, #0x1a8b728                             
01a8b678  adrp      x0, #0x3a7c000                                 
01a8b67c  ldr       x0, [x0, #0xf20]                               
01a8b680  bl        #0x183db90                                     
01a8b684  adrp      x0, #0x3a7d000                                 
01a8b688  ldr       x0, [x0, #0xa00]                               
01a8b68c  bl        #0x183db90                                     
01a8b690  adrp      x0, #0x3a8c000                                 
01a8b694  ldr       x0, [x0, #0x600]                               
01a8b698  bl        #0x183db90                                     
01a8b69c  adrp      x0, #0x3a7c000                                 
01a8b6a0  ldr       x0, [x0, #0xc80]                               
01a8b6a4  bl        #0x183db90                                     
01a8b6a8  adrp      x0, #0x3a7c000                                 
01a8b6ac  ldr       x0, [x0, #0xc08]                               
01a8b6b0  bl        #0x183db90                                     
01a8b6b4  adrp      x0, #0x3a7d000                                 
01a8b6b8  ldr       x0, [x0, #0x428]                               
01a8b6bc  bl        #0x183db90                                     
01a8b6c0  adrp      x0, #0x3a8c000                                 
01a8b6c4  ldr       x0, [x0, #0x608]                               
01a8b6c8  bl        #0x183db90                                     
01a8b6cc  adrp      x0, #0x3a7e000                                 
01a8b6d0  ldr       x0, [x0, #0xf20]                               
01a8b6d4  bl        #0x183db90                                     
01a8b6d8  adrp      x0, #0x3a8c000                                 
01a8b6dc  ldr       x0, [x0, #0x610]                               
01a8b6e0  bl        #0x183db90                                     
01a8b6e4  adrp      x0, #0x3a7d000                                 
01a8b6e8  ldr       x0, [x0, #0x738]                               
01a8b6ec  bl        #0x183db90                                     
01a8b6f0  adrp      x0, #0x3a7b000                                 
01a8b6f4  ldr       x0, [x0, #0xc10]                               
01a8b6f8  bl        #0x183db90                                     
01a8b6fc  adrp      x0, #0x3a7d000                                 
01a8b700  ldr       x0, [x0, #0x368]                               
01a8b704  bl        #0x183db90                                     
01a8b708  adrp      x0, #0x3a7e000                                 
01a8b70c  ldr       x0, [x0, #8]                                   
01a8b710  bl        #0x183db90                                     
01a8b714  adrp      x0, #0x3a8c000                                 
01a8b718  ldr       x0, [x0, #0x618]                               
01a8b71c  bl        #0x183db90                                     
01a8b720  mov       w8, #1                                         
01a8b724  strb      w8, [x20, #0xcd4]                              
01a8b728  ldr       x0, [x19, #0x38]                               
01a8b72c  cbz       x0, #0x1a8bad4                                 
01a8b730  adrp      x22, #0x3a7d000                                
01a8b734  adrp      x24, #0x3a7d000                                
01a8b738  adrp      x26, #0x3a7b000                                
01a8b73c  adrp      x23, #0x3a7c000                                
01a8b740  adrp      x25, #0x3a8c000                                
01a8b744  adrp      x27, #0x3a7d000                                
01a8b748  adrp      x28, #0x3a7c000                                
01a8b74c  adrp      x29, #0x3a7e000                                
01a8b750  ldr       x22, [x22, #0x738]                             
01a8b754  ldr       x24, [x24, #0xa00]                             
01a8b758  ldr       x26, [x26, #0xc10]                             
01a8b75c  ldr       x23, [x23, #0xc08]                             
01a8b760  ldr       x25, [x25, #0x610]                             
01a8b764  ldr       x27, [x27, #0x368]                             
01a8b768  ldr       x28, [x28, #0xc80]                             
01a8b76c  ldr       x29, [x29, #8]                                 
01a8b770  mov       w20, wzr                                       
01a8b774  ldr       w8, [x0, #0x18]                                
01a8b778  cmp       w20, w8                                        
01a8b77c  b.ge      #0x1a8b990                                     
01a8b780  ldr       x2, [x22]                                      
01a8b784  mov       w1, w20                                        
01a8b788  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b78c  cbz       x0, #0x1a8bad4                                 
01a8b790  ldr       x1, [x24]                                      
01a8b794  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b798  ldr       x8, [x26]                                      
01a8b79c  mov       x21, x0                                        
01a8b7a0  ldr       w9, [x8, #0xe4]                                
01a8b7a4  cbnz      w9, #0x1a8b7b0                                 
01a8b7a8  mov       x0, x8                                         
01a8b7ac  bl        #0x183dcb0                                     
01a8b7b0  mov       x0, x21                                        
01a8b7b4  mov       x1, xzr                                        
01a8b7b8  mov       x2, xzr                                        
01a8b7bc  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a8b7c0  tbz       w0, #0, #0x1a8b980                             
01a8b7c4  ldr       x0, [x19, #0x38]                               
01a8b7c8  cbz       x0, #0x1a8bad4                                 
01a8b7cc  ldr       x2, [x22]                                      
01a8b7d0  mov       w1, w20                                        
01a8b7d4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b7d8  cbz       x0, #0x1a8bad4                                 
01a8b7dc  ldr       x1, [x24]                                      
01a8b7e0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b7e4  ldr       x8, [x23]                                      
01a8b7e8  ldr       x8, [x8, #0xb8]                                
01a8b7ec  ldr       x8, [x8]                                       
01a8b7f0  cbz       x8, #0x1a8bad4                                 
01a8b7f4  ldr       q0, [x8, #0x490]                               
01a8b7f8  ldr       w8, [x8, #0x4a0]                               
01a8b7fc  mov       x21, x0                                        
01a8b800  add       x0, sp, #0x60                                  
01a8b804  mov       x1, xzr                                        
01a8b808  str       q0, [sp, #0x60]                                
01a8b80c  str       w8, [sp, #0x70]                                
01a8b810  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8b814  cbz       x21, #0x1a8bad4                                
01a8b818  scvtf     s0, w0                                         
01a8b81c  mov       x0, x21                                        
01a8b820  mov       x1, xzr                                        
01a8b824  bl        #0x351e1b4                                     // TMPro.TMP_Text$$set_fontSize
01a8b828  ldr       x0, [x19, #0x38]                               
01a8b82c  cbz       x0, #0x1a8bad4                                 
01a8b830  ldr       x2, [x22]                                      
01a8b834  mov       w1, w20                                        
01a8b838  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b83c  cbz       x0, #0x1a8bad4                                 
01a8b840  ldr       x1, [x24]                                      
01a8b844  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b848  ldr       x8, [x23]                                      
01a8b84c  ldr       x8, [x8, #0xb8]                                
01a8b850  ldr       x8, [x8]                                       
01a8b854  cbz       x8, #0x1a8bad4                                 
01a8b858  add       x8, x8, #0x4a4                                 
01a8b85c  mov       x21, x0                                        
01a8b860  add       x0, sp, #0x40                                  
01a8b864  ldr       q0, [x8]                                       
01a8b868  ldr       x8, [x8, #0x10]                                
01a8b86c  mov       x1, xzr                                        
01a8b870  str       q0, [sp, #0x40]                                
01a8b874  str       x8, [sp, #0x50]                                
01a8b878  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01a8b87c  cbz       x21, #0x1a8bad4                                
01a8b880  mov       x0, x21                                        
01a8b884  mov       x1, xzr                                        
01a8b888  bl        #0x351e6e8                                     // TMPro.TMP_Text$$set_lineSpacing
01a8b88c  ldr       x0, [x19, #0x38]                               
01a8b890  cbz       x0, #0x1a8bad4                                 
01a8b894  ldr       x2, [x22]                                      
01a8b898  mov       w1, w20                                        
01a8b89c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b8a0  cbz       x0, #0x1a8bad4                                 
01a8b8a4  ldr       x1, [x24]                                      
01a8b8a8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b8ac  cbz       x0, #0x1a8bad4                                 
01a8b8b0  ldr       x8, [x0]                                       
01a8b8b4  mov       w1, wzr                                        
01a8b8b8  mov       w2, wzr                                        
01a8b8bc  ldr       x9, [x8, #0x7d8]                               
01a8b8c0  ldr       x3, [x8, #0x7e0]                               
01a8b8c4  blr       x9                                             
01a8b8c8  ldr       x0, [x19, #0x38]                               
01a8b8cc  cbz       x0, #0x1a8bad4                                 
01a8b8d0  ldr       x2, [x22]                                      
01a8b8d4  mov       w1, w20                                        
01a8b8d8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b8dc  cbz       x0, #0x1a8bad4                                 
01a8b8e0  adrp      x8, #0x3a8c000                                 
01a8b8e4  ldr       x8, [x8, #0x600]                               
01a8b8e8  ldr       x1, [x8]                                       
01a8b8ec  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b8f0  cbz       x0, #0x1a8bad4                                 
01a8b8f4  mov       x1, xzr                                        
01a8b8f8  bl        #0x1a36ed0                                     // TextSelector$$RefreshMesh
01a8b8fc  ldr       x0, [x19, #0x38]                               
01a8b900  cbz       x0, #0x1a8bad4                                 
01a8b904  ldr       x2, [x22]                                      
01a8b908  mov       w1, w20                                        
01a8b90c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b910  cbz       x0, #0x1a8bad4                                 
01a8b914  ldr       x1, [x24]                                      
01a8b918  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b91c  cbz       x0, #0x1a8bad4                                 
01a8b920  ldr       x8, [x0]                                       
01a8b924  ldr       x9, [x8, #0x298]                               
01a8b928  ldr       x1, [x8, #0x2a0]                               
01a8b92c  blr       x9                                             
01a8b930  ldr       x0, [x19, #0x38]                               
01a8b934  cbz       x0, #0x1a8bad4                                 
01a8b938  ldr       x2, [x22]                                      
01a8b93c  mov       w1, w20                                        
01a8b940  fmov      s8, s0                                         
01a8b944  fmov      s9, s1                                         
01a8b948  fmov      s10, s2                                        
01a8b94c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b950  cbz       x0, #0x1a8bad4                                 
01a8b954  ldr       x1, [x24]                                      
01a8b958  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b95c  cbz       x0, #0x1a8bad4                                 
01a8b960  ldr       x8, [x0]                                       
01a8b964  fmov      s0, s8                                         
01a8b968  fmov      s1, s9                                         
01a8b96c  fmov      s2, s10                                        
01a8b970  fmov      s3, #1.00000000                                
01a8b974  ldr       x9, [x8, #0x2a8]                               
01a8b978  ldr       x1, [x8, #0x2b0]                               
01a8b97c  blr       x9                                             
01a8b980  ldr       x0, [x19, #0x38]                               
01a8b984  add       w20, w20, #1                                   
01a8b988  cbnz      x0, #0x1a8b774                                 
01a8b98c  b         #0x1a8bad4                                     
01a8b990  adrp      x22, #0x3a8c000                                
01a8b994  ldr       x0, [x19, #0xb8]                               
01a8b998  ldr       x22, [x22, #0x618]                             
01a8b99c  cbz       x0, #0x1a8bad4                                 
01a8b9a0  mov       w20, wzr                                       
01a8b9a4  ldr       w8, [x0, #0x18]                                
01a8b9a8  cmp       w20, w8                                        
01a8b9ac  b.ge      #0x1a8bad8                                     
01a8b9b0  ldr       x2, [x25]                                      
01a8b9b4  mov       w1, w20                                        
01a8b9b8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8b9bc  cbz       x0, #0x1a8bad4                                 
01a8b9c0  mov       x1, xzr                                        
01a8b9c4  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8b9c8  cbz       x0, #0x1a8bad4                                 
01a8b9cc  ldr       x1, [x22]                                      
01a8b9d0  mov       x2, xzr                                        
01a8b9d4  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8b9d8  cbz       x0, #0x1a8bad4                                 
01a8b9dc  ldr       x1, [x27]                                      
01a8b9e0  mov       x2, xzr                                        
01a8b9e4  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8b9e8  cbz       x0, #0x1a8bad4                                 
01a8b9ec  ldr       x1, [x28]                                      
01a8b9f0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8b9f4  ldr       x8, [x23]                                      
01a8b9f8  ldr       x8, [x8, #0xb8]                                
01a8b9fc  ldr       x8, [x8]                                       
01a8ba00  cbz       x8, #0x1a8bad4                                 
01a8ba04  ldr       q0, [x8, #0x490]                               
01a8ba08  ldr       w8, [x8, #0x4a0]                               
01a8ba0c  mov       x21, x0                                        
01a8ba10  add       x0, sp, #0x20                                  
01a8ba14  mov       x1, xzr                                        
01a8ba18  str       q0, [sp, #0x20]                                
01a8ba1c  str       w8, [sp, #0x30]                                
01a8ba20  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8ba24  cbz       x21, #0x1a8bad4                                
01a8ba28  mov       w1, w0                                         
01a8ba2c  mov       x0, x21                                        
01a8ba30  mov       x2, xzr                                        
01a8ba34  bl        #0x386862c                                     // UnityEngine.UI.Text$$set_fontSize
01a8ba38  ldr       x0, [x19, #0xb8]                               
01a8ba3c  cbz       x0, #0x1a8bad4                                 
01a8ba40  ldr       x2, [x25]                                      
01a8ba44  mov       w1, w20                                        
01a8ba48  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8ba4c  cbz       x0, #0x1a8bad4                                 
01a8ba50  mov       x1, xzr                                        
01a8ba54  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8ba58  cbz       x0, #0x1a8bad4                                 
01a8ba5c  ldr       x1, [x29]                                      
01a8ba60  mov       x2, xzr                                        
01a8ba64  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8ba68  cbz       x0, #0x1a8bad4                                 
01a8ba6c  ldr       x1, [x27]                                      
01a8ba70  mov       x2, xzr                                        
01a8ba74  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8ba78  cbz       x0, #0x1a8bad4                                 
01a8ba7c  ldr       x1, [x28]                                      
01a8ba80  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8ba84  ldr       x8, [x23]                                      
01a8ba88  ldr       x8, [x8, #0xb8]                                
01a8ba8c  ldr       x8, [x8]                                       
01a8ba90  cbz       x8, #0x1a8bad4                                 
01a8ba94  ldr       q0, [x8, #0x490]                               
01a8ba98  ldr       w8, [x8, #0x4a0]                               
01a8ba9c  mov       x21, x0                                        
01a8baa0  mov       x0, sp                                         
01a8baa4  mov       x1, xzr                                        
01a8baa8  str       q0, [sp]                                       
01a8baac  str       w8, [sp, #0x10]                                
01a8bab0  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8bab4  cbz       x21, #0x1a8bad4                                
01a8bab8  sub       w1, w0, #4                                     
01a8babc  mov       x0, x21                                        
01a8bac0  mov       x2, xzr                                        
01a8bac4  bl        #0x386862c                                     // UnityEngine.UI.Text$$set_fontSize
01a8bac8  ldr       x0, [x19, #0xb8]                               
01a8bacc  add       w20, w20, #1                                   
01a8bad0  cbnz      x0, #0x1a8b9a4                                 
01a8bad4  bl        #0x183dddc                                     
01a8bad8  ldr       x0, [x19, #0x28]                               
01a8badc  cbz       x0, #0x1a8bad4                                 
01a8bae0  adrp      x8, #0x3a7c000                                 
01a8bae4  ldr       x8, [x8, #0xf20]                               
01a8bae8  ldr       x1, [x8]                                       
01a8baec  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8baf0  adrp      x8, #0x3a7d000                                 
01a8baf4  mov       x19, x0                                        
01a8baf8  ldr       x8, [x8, #0x428]                               
01a8bafc  ldr       x8, [x8]                                       
01a8bb00  ldr       w9, [x8, #0xe4]                                
01a8bb04  cbnz      w9, #0x1a8bb10                                 
01a8bb08  mov       x0, x8                                         
01a8bb0c  bl        #0x183dcb0                                     
01a8bb10  mov       x0, x19                                        
01a8bb14  mov       x1, xzr                                        
01a8bb18  bl        #0x38572c0                                     // UnityEngine.UI.LayoutRebuilder$$ForceRebuildLayoutImmediate
01a8bb1c  mov       x0, xzr                                        
01a8bb20  bl        #0x3848074                                     // UnityEngine.Canvas$$ForceUpdateCanvases
01a8bb24  ldp       x20, x19, [sp, #0xf0]                          
01a8bb28  ldr       d10, [sp, #0x80]                               
01a8bb2c  ldp       x22, x21, [sp, #0xe0]                          
01a8bb30  ldp       x24, x23, [sp, #0xd0]                          
01a8bb34  ldp       x26, x25, [sp, #0xc0]                          
01a8bb38  ldp       x28, x27, [sp, #0xb0]                          
01a8bb3c  ldp       x29, x30, [sp, #0xa0]                          
01a8bb40  ldp       d9, d8, [sp, #0x90]                            
01a8bb44  add       sp, sp, #0x100                                 
01a8bb48  ret                                                      