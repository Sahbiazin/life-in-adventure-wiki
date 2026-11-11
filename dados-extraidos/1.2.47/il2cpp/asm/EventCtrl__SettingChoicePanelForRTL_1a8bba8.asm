void EventCtrl__SettingChoicePanelForRTL (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8bba8 to 0x1a8c080
01a8bba8  sub       sp, sp, #0x70                                  
01a8bbac  stp       x29, x30, [sp, #0x10]                          
01a8bbb0  stp       x28, x27, [sp, #0x20]                          
01a8bbb4  stp       x26, x25, [sp, #0x30]                          
01a8bbb8  stp       x24, x23, [sp, #0x40]                          
01a8bbbc  stp       x22, x21, [sp, #0x50]                          
01a8bbc0  stp       x20, x19, [sp, #0x60]                          
01a8bbc4  adrp      x20, #0x3d14000                                
01a8bbc8  mov       x19, x0                                        
01a8bbcc  ldrb      w8, [x20, #0xd01]                              
01a8bbd0  tbnz      w8, #0, #0x1a8bc54                             
01a8bbd4  adrp      x0, #0x3a8c000                                 
01a8bbd8  ldr       x0, [x0, #0x620]                               
01a8bbdc  bl        #0x183db90                                     
01a8bbe0  adrp      x0, #0x3a7c000                                 
01a8bbe4  ldr       x0, [x0, #0xc80]                               
01a8bbe8  bl        #0x183db90                                     
01a8bbec  adrp      x0, #0x3a8c000                                 
01a8bbf0  ldr       x0, [x0, #0x608]                               
01a8bbf4  bl        #0x183db90                                     
01a8bbf8  adrp      x0, #0x3a8c000                                 
01a8bbfc  ldr       x0, [x0, #0x610]                               
01a8bc00  bl        #0x183db90                                     
01a8bc04  adrp      x0, #0x3a7b000                                 
01a8bc08  ldr       x0, [x0, #0xc10]                               
01a8bc0c  bl        #0x183db90                                     
01a8bc10  adrp      x0, #0x3a8c000                                 
01a8bc14  ldr       x0, [x0, #0x628]                               
01a8bc18  bl        #0x183db90                                     
01a8bc1c  adrp      x0, #0x3a7d000                                 
01a8bc20  ldr       x0, [x0, #0x368]                               
01a8bc24  bl        #0x183db90                                     
01a8bc28  adrp      x0, #0x3a7e000                                 
01a8bc2c  ldr       x0, [x0, #8]                                   
01a8bc30  bl        #0x183db90                                     
01a8bc34  adrp      x0, #0x3a8c000                                 
01a8bc38  ldr       x0, [x0, #0x618]                               
01a8bc3c  bl        #0x183db90                                     
01a8bc40  adrp      x0, #0x3a8c000                                 
01a8bc44  ldr       x0, [x0, #0x630]                               
01a8bc48  bl        #0x183db90                                     
01a8bc4c  mov       w8, #1                                         
01a8bc50  strb      w8, [x20, #0xd01]                              
01a8bc54  ldr       x0, [x19, #0xb8]                               
01a8bc58  cbz       x0, #0x1a8c05c                                 
01a8bc5c  adrp      x23, #0x3a8c000                                
01a8bc60  adrp      x22, #0x3a8c000                                
01a8bc64  adrp      x25, #0x3a7b000                                
01a8bc68  adrp      x26, #0x3a7d000                                
01a8bc6c  adrp      x27, #0x3a7c000                                
01a8bc70  adrp      x29, #0x3a8c000                                
01a8bc74  adrp      x24, #0x3a7e000                                
01a8bc78  adrp      x28, #0x3a8c000                                
01a8bc7c  adrp      x20, #0x3a8c000                                
01a8bc80  ldr       x23, [x23, #0x610]                             
01a8bc84  ldr       x22, [x22, #0x630]                             
01a8bc88  ldr       x25, [x25, #0xc10]                             
01a8bc8c  ldr       x26, [x26, #0x368]                             
01a8bc90  ldr       x27, [x27, #0xc80]                             
01a8bc94  ldr       x29, [x29, #0x618]                             
01a8bc98  ldr       x24, [x24, #8]                                 
01a8bc9c  ldr       x28, [x28, #0x628]                             
01a8bca0  ldr       x20, [x20, #0x620]                             
01a8bca4  mov       w21, wzr                                       
01a8bca8  ldr       w8, [x0, #0x18]                                
01a8bcac  cmp       w21, w8                                        
01a8bcb0  b.ge      #0x1a8c060                                     
01a8bcb4  ldr       x2, [x23]                                      
01a8bcb8  mov       w1, w21                                        
01a8bcbc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8bcc0  cbz       x0, #0x1a8c05c                                 
01a8bcc4  mov       x1, xzr                                        
01a8bcc8  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8bccc  cbz       x0, #0x1a8c05c                                 
01a8bcd0  ldr       x1, [x22]                                      
01a8bcd4  mov       x2, xzr                                        
01a8bcd8  str       w21, [sp, #0xc]                                
01a8bcdc  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8bce0  cbz       x0, #0x1a8bcf4                                 
01a8bce4  ldr       x1, [x20]                                      
01a8bce8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8bcec  mov       x21, x0                                        
01a8bcf0  b         #0x1a8bcf8                                     
01a8bcf4  mov       x21, xzr                                       
01a8bcf8  ldr       x0, [x25]                                      
01a8bcfc  ldr       w8, [x0, #0xe4]                                
01a8bd00  cbnz      w8, #0x1a8bd08                                 
01a8bd04  bl        #0x183dcb0                                     
01a8bd08  mov       x0, x21                                        
01a8bd0c  mov       x1, xzr                                        
01a8bd10  mov       x2, xzr                                        
01a8bd14  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a8bd18  tbz       w0, #0, #0x1a8bd68                             
01a8bd1c  cbz       x21, #0x1a8c05c                                
01a8bd20  mov       x0, x21                                        
01a8bd24  mov       w1, #5                                         
01a8bd28  mov       x2, xzr                                        
01a8bd2c  bl        #0x38568d8                                     // UnityEngine.UI.LayoutGroup$$set_childAlignment
01a8bd30  mov       x0, x21                                        
01a8bd34  mov       x1, xzr                                        
01a8bd38  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8bd3c  cbz       x0, #0x1a8c05c                                 
01a8bd40  ldr       x1, [x26]                                      
01a8bd44  mov       x2, xzr                                        
01a8bd48  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8bd4c  cbz       x0, #0x1a8c05c                                 
01a8bd50  ldr       x1, [x27]                                      
01a8bd54  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8bd58  cbz       x0, #0x1a8c05c                                 
01a8bd5c  mov       w1, #5                                         
01a8bd60  mov       x2, xzr                                        
01a8bd64  bl        #0x3868568                                     // UnityEngine.UI.Text$$set_alignment
01a8bd68  ldr       x0, [x19, #0xb8]                               
01a8bd6c  cbz       x0, #0x1a8c05c                                 
01a8bd70  ldr       x2, [x23]                                      
01a8bd74  ldr       w1, [sp, #0xc]                                 
01a8bd78  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8bd7c  cbz       x0, #0x1a8c05c                                 
01a8bd80  mov       x1, xzr                                        
01a8bd84  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8bd88  cbz       x0, #0x1a8c05c                                 
01a8bd8c  ldr       x1, [x29]                                      
01a8bd90  mov       x2, xzr                                        
01a8bd94  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8bd98  cbz       x0, #0x1a8bdac                                 
01a8bd9c  ldr       x1, [x20]                                      
01a8bda0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8bda4  mov       x21, x0                                        
01a8bda8  b         #0x1a8bdb0                                     
01a8bdac  mov       x21, xzr                                       
01a8bdb0  ldr       x0, [x25]                                      
01a8bdb4  ldr       w8, [x0, #0xe4]                                
01a8bdb8  cbnz      w8, #0x1a8bdc0                                 
01a8bdbc  bl        #0x183dcb0                                     
01a8bdc0  mov       x0, x21                                        
01a8bdc4  mov       x1, xzr                                        
01a8bdc8  mov       x2, xzr                                        
01a8bdcc  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a8bdd0  tbz       w0, #0, #0x1a8be94                             
01a8bdd4  cbz       x21, #0x1a8c05c                                
01a8bdd8  mov       x20, x19                                       
01a8bddc  mov       x19, x25                                       
01a8bde0  mov       x25, x23                                       
01a8bde4  mov       x23, x28                                       
01a8bde8  mov       x28, x24                                       
01a8bdec  mov       x24, x29                                       
01a8bdf0  mov       x29, x22                                       
01a8bdf4  ldr       x22, [x21, #0x20]                              
01a8bdf8  cbz       x22, #0x1a8c05c                                
01a8bdfc  mov       x0, x22                                        
01a8be00  mov       x1, xzr                                        
01a8be04  bl        #0x35a2f5c                                     // UnityEngine.RectOffset$$get_left
01a8be08  neg       w1, w0                                         
01a8be0c  mov       x0, x22                                        
01a8be10  mov       x2, xzr                                        
01a8be14  bl        #0x35a2bd0                                     // UnityEngine.RectOffset$$set_left
01a8be18  mov       x0, x21                                        
01a8be1c  mov       w1, #5                                         
01a8be20  mov       x2, xzr                                        
01a8be24  bl        #0x38568d8                                     // UnityEngine.UI.LayoutGroup$$set_childAlignment
01a8be28  mov       x0, x21                                        
01a8be2c  mov       w1, #1                                         
01a8be30  mov       x2, xzr                                        
01a8be34  bl        #0x3855c04                                     // UnityEngine.UI.HorizontalOrVerticalLayoutGroup$$set_reverseArrangement
01a8be38  mov       x0, x21                                        
01a8be3c  mov       x1, xzr                                        
01a8be40  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8be44  cbz       x0, #0x1a8c05c                                 
01a8be48  ldr       x1, [x26]                                      
01a8be4c  mov       x2, xzr                                        
01a8be50  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8be54  cbz       x0, #0x1a8c05c                                 
01a8be58  ldr       x1, [x27]                                      
01a8be5c  mov       x22, x29                                       
01a8be60  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8be64  cbz       x0, #0x1a8c05c                                 
01a8be68  mov       w1, #5                                         
01a8be6c  mov       x2, xzr                                        
01a8be70  mov       x29, x24                                       
01a8be74  bl        #0x3868568                                     // UnityEngine.UI.Text$$set_alignment
01a8be78  mov       x24, x28                                       
01a8be7c  mov       x28, x23                                       
01a8be80  mov       x23, x25                                       
01a8be84  mov       x25, x19                                       
01a8be88  mov       x19, x20                                       
01a8be8c  adrp      x20, #0x3a8c000                                
01a8be90  ldr       x20, [x20, #0x620]                             
01a8be94  ldr       x0, [x19, #0xb8]                               
01a8be98  cbz       x0, #0x1a8c05c                                 
01a8be9c  ldr       x2, [x23]                                      
01a8bea0  ldr       w1, [sp, #0xc]                                 
01a8bea4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8bea8  cbz       x0, #0x1a8c05c                                 
01a8beac  mov       x1, xzr                                        
01a8beb0  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8beb4  cbz       x0, #0x1a8c05c                                 
01a8beb8  ldr       x1, [x24]                                      
01a8bebc  mov       x2, xzr                                        
01a8bec0  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8bec4  cbz       x0, #0x1a8bed8                                 
01a8bec8  ldr       x1, [x20]                                      
01a8becc  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8bed0  mov       x21, x0                                        
01a8bed4  b         #0x1a8bedc                                     
01a8bed8  mov       x21, xzr                                       
01a8bedc  ldr       x0, [x25]                                      
01a8bee0  ldr       w8, [x0, #0xe4]                                
01a8bee4  cbnz      w8, #0x1a8beec                                 
01a8bee8  bl        #0x183dcb0                                     
01a8beec  mov       x0, x21                                        
01a8bef0  mov       x1, xzr                                        
01a8bef4  mov       x2, xzr                                        
01a8bef8  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a8befc  tbz       w0, #0, #0x1a8bf70                             
01a8bf00  cbz       x21, #0x1a8c05c                                
01a8bf04  ldr       x0, [x21, #0x20]                               
01a8bf08  cbz       x0, #0x1a8c05c                                 
01a8bf0c  mov       w1, #5                                         
01a8bf10  mov       x2, xzr                                        
01a8bf14  bl        #0x35a2bd0                                     // UnityEngine.RectOffset$$set_left
01a8bf18  mov       x0, x21                                        
01a8bf1c  mov       w1, #5                                         
01a8bf20  mov       x2, xzr                                        
01a8bf24  bl        #0x38568d8                                     // UnityEngine.UI.LayoutGroup$$set_childAlignment
01a8bf28  mov       x0, x21                                        
01a8bf2c  mov       w1, #1                                         
01a8bf30  mov       x2, xzr                                        
01a8bf34  bl        #0x3855c04                                     // UnityEngine.UI.HorizontalOrVerticalLayoutGroup$$set_reverseArrangement
01a8bf38  mov       x0, x21                                        
01a8bf3c  mov       x1, xzr                                        
01a8bf40  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8bf44  cbz       x0, #0x1a8c05c                                 
01a8bf48  ldr       x1, [x26]                                      
01a8bf4c  mov       x2, xzr                                        
01a8bf50  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8bf54  cbz       x0, #0x1a8c05c                                 
01a8bf58  ldr       x1, [x27]                                      
01a8bf5c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8bf60  cbz       x0, #0x1a8c05c                                 
01a8bf64  mov       w1, #5                                         
01a8bf68  mov       x2, xzr                                        
01a8bf6c  bl        #0x3868568                                     // UnityEngine.UI.Text$$set_alignment
01a8bf70  ldr       x0, [x19, #0xb8]                               
01a8bf74  cbz       x0, #0x1a8c05c                                 
01a8bf78  ldr       x2, [x23]                                      
01a8bf7c  ldr       w1, [sp, #0xc]                                 
01a8bf80  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8bf84  cbz       x0, #0x1a8c05c                                 
01a8bf88  mov       x1, xzr                                        
01a8bf8c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8bf90  cbz       x0, #0x1a8c05c                                 
01a8bf94  ldr       x1, [x28]                                      
01a8bf98  mov       x2, xzr                                        
01a8bf9c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8bfa0  cbz       x0, #0x1a8bfb4                                 
01a8bfa4  ldr       x1, [x20]                                      
01a8bfa8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8bfac  mov       x21, x0                                        
01a8bfb0  b         #0x1a8bfb8                                     
01a8bfb4  mov       x21, xzr                                       
01a8bfb8  ldr       x0, [x25]                                      
01a8bfbc  ldr       w8, [x0, #0xe4]                                
01a8bfc0  cbnz      w8, #0x1a8bfc8                                 
01a8bfc4  bl        #0x183dcb0                                     
01a8bfc8  mov       x0, x21                                        
01a8bfcc  mov       x1, xzr                                        
01a8bfd0  mov       x2, xzr                                        
01a8bfd4  bl        #0x35c898c                                     // UnityEngine.Object$$op_Inequality
01a8bfd8  tbz       w0, #0, #0x1a8c04c                             
01a8bfdc  cbz       x21, #0x1a8c05c                                
01a8bfe0  ldr       x0, [x21, #0x20]                               
01a8bfe4  cbz       x0, #0x1a8c05c                                 
01a8bfe8  mov       w1, #0xf                                       
01a8bfec  mov       x2, xzr                                        
01a8bff0  bl        #0x35a2bd0                                     // UnityEngine.RectOffset$$set_left
01a8bff4  mov       x0, x21                                        
01a8bff8  mov       w1, #5                                         
01a8bffc  mov       x2, xzr                                        
01a8c000  bl        #0x38568d8                                     // UnityEngine.UI.LayoutGroup$$set_childAlignment
01a8c004  mov       x0, x21                                        
01a8c008  mov       w1, #1                                         
01a8c00c  mov       x2, xzr                                        
01a8c010  bl        #0x3855c04                                     // UnityEngine.UI.HorizontalOrVerticalLayoutGroup$$set_reverseArrangement
01a8c014  mov       x0, x21                                        
01a8c018  mov       x1, xzr                                        
01a8c01c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a8c020  cbz       x0, #0x1a8c05c                                 
01a8c024  ldr       x1, [x26]                                      
01a8c028  mov       x2, xzr                                        
01a8c02c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a8c030  cbz       x0, #0x1a8c05c                                 
01a8c034  ldr       x1, [x27]                                      
01a8c038  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8c03c  cbz       x0, #0x1a8c05c                                 
01a8c040  mov       w1, #5                                         
01a8c044  mov       x2, xzr                                        
01a8c048  bl        #0x3868568                                     // UnityEngine.UI.Text$$set_alignment
01a8c04c  ldr       w21, [sp, #0xc]                                
01a8c050  ldr       x0, [x19, #0xb8]                               
01a8c054  add       w21, w21, #1                                   
01a8c058  cbnz      x0, #0x1a8bca8                                 
01a8c05c  bl        #0x183dddc                                     
01a8c060  ldp       x20, x19, [sp, #0x60]                          
01a8c064  ldp       x22, x21, [sp, #0x50]                          
01a8c068  ldp       x24, x23, [sp, #0x40]                          
01a8c06c  ldp       x26, x25, [sp, #0x30]                          
01a8c070  ldp       x28, x27, [sp, #0x20]                          
01a8c074  ldp       x29, x30, [sp, #0x10]                          
01a8c078  add       sp, sp, #0x70                                  
01a8c07c  ret                                                      