int32_t EventCtrl__CheckMainEvent (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a9a914 to 0x1a9aafc
01a9a914  stp       x30, x23, [sp, #-0x30]!                        
01a9a918  stp       x22, x21, [sp, #0x10]                          
01a9a91c  stp       x20, x19, [sp, #0x20]                          
01a9a920  adrp      x20, #0x3d14000                                
01a9a924  mov       x19, x0                                        
01a9a928  ldrb      w8, [x20, #0xce4]                              
01a9a92c  tbnz      w8, #0, #0x1a9a98c                             
01a9a930  adrp      x0, #0x3a8c000                                 
01a9a934  ldr       x0, [x0, #0x950]                               
01a9a938  bl        #0x183db90                                     
01a9a93c  adrp      x0, #0x3a8c000                                 
01a9a940  ldr       x0, [x0, #0x9a0]                               
01a9a944  bl        #0x183db90                                     
01a9a948  adrp      x0, #0x3a8c000                                 
01a9a94c  ldr       x0, [x0, #0x968]                               
01a9a950  bl        #0x183db90                                     
01a9a954  adrp      x0, #0x3a8c000                                 
01a9a958  ldr       x0, [x0, #0x6a8]                               
01a9a95c  bl        #0x183db90                                     
01a9a960  adrp      x0, #0x3a8c000                                 
01a9a964  ldr       x0, [x0, #0x978]                               
01a9a968  bl        #0x183db90                                     
01a9a96c  adrp      x0, #0x3a8c000                                 
01a9a970  ldr       x0, [x0, #0x9c8]                               
01a9a974  bl        #0x183db90                                     
01a9a978  adrp      x0, #0x3a8c000                                 
01a9a97c  ldr       x0, [x0, #0x668]                               
01a9a980  bl        #0x183db90                                     
01a9a984  mov       w8, #1                                         
01a9a988  strb      w8, [x20, #0xce4]                              
01a9a98c  ldr       x8, [x19, #0x118]                              
01a9a990  cbz       x8, #0x1a9aaf4                                 
01a9a994  ldr       w9, [x8, #0x18]                                
01a9a998  cmp       w9, #4                                         
01a9a99c  b.ls      #0x1a9aaf8                                     
01a9a9a0  adrp      x23, #0x3a8c000                                
01a9a9a4  ldr       x23, [x23, #0x668]                             
01a9a9a8  ldr       x20, [x8, #0x40]                               
01a9a9ac  ldr       x0, [x23]                                      
01a9a9b0  ldr       w9, [x0, #0xe4]                                
01a9a9b4  cbnz      w9, #0x1a9a9c0                                 
01a9a9b8  bl        #0x183dcb0                                     
01a9a9bc  ldr       x0, [x23]                                      
01a9a9c0  ldr       x8, [x0, #0xb8]                                
01a9a9c4  ldr       x21, [x8, #0xa0]                               
01a9a9c8  cbnz      x21, #0x1a9aa1c                                
01a9a9cc  ldr       w9, [x0, #0xe4]                                
01a9a9d0  cbnz      w9, #0x1a9a9e0                                 
01a9a9d4  bl        #0x183dcb0                                     
01a9a9d8  ldr       x8, [x23]                                      
01a9a9dc  ldr       x8, [x8, #0xb8]                                
01a9a9e0  adrp      x9, #0x3a8c000                                 
01a9a9e4  ldr       x9, [x9, #0x978]                               
01a9a9e8  ldr       x22, [x8]                                      
01a9a9ec  ldr       x0, [x9]                                       
01a9a9f0  bl        #0x183ddcc                                     
01a9a9f4  adrp      x8, #0x3a8c000                                 
01a9a9f8  mov       x1, x22                                        
01a9a9fc  mov       x3, xzr                                        
01a9aa00  ldr       x8, [x8, #0x9c8]                               
01a9aa04  mov       x21, x0                                        
01a9aa08  ldr       x2, [x8]                                       
01a9aa0c  bl        #0x29630a8                                     // System.Predicate<object>$$.ctor
01a9aa10  ldr       x8, [x23]                                      
01a9aa14  ldr       x8, [x8, #0xb8]                                
01a9aa18  str       x21, [x8, #0xa0]                               
01a9aa1c  cbz       x20, #0x1a9aaf4                                
01a9aa20  adrp      x8, #0x3a8c000                                 
01a9aa24  mov       x0, x20                                        
01a9aa28  mov       x1, x21                                        
01a9aa2c  ldr       x8, [x8, #0x950]                               
01a9aa30  ldr       x2, [x8]                                       
01a9aa34  bl        #0x2794e98                                     // System.Collections.Generic.List<object>$$FindAll
01a9aa38  cbz       x0, #0x1a9aaf4                                 
01a9aa3c  ldr       w8, [x0, #0x18]                                
01a9aa40  mov       x20, x0                                        
01a9aa44  cmp       w8, #1                                         
01a9aa48  b.lt      #0x1a9aa90                                     
01a9aa4c  adrp      x22, #0x3a8c000                                
01a9aa50  mov       w21, wzr                                       
01a9aa54  ldr       x22, [x22, #0x6a8]                             
01a9aa58  ldr       x2, [x22]                                      
01a9aa5c  mov       x0, x20                                        
01a9aa60  mov       w1, w21                                        
01a9aa64  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9aa68  cbz       x0, #0x1a9aaf4                                 
01a9aa6c  ldr       x1, [x0, #0x28]                                
01a9aa70  mov       x0, x19                                        
01a9aa74  mov       w2, #-1                                        
01a9aa78  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a9aa7c  tbnz      w0, #0, #0x1a9aaa4                             
01a9aa80  ldr       w8, [x20, #0x18]                               
01a9aa84  add       w21, w21, #1                                   
01a9aa88  cmp       w21, w8                                        
01a9aa8c  b.lt      #0x1a9aa58                                     
01a9aa90  ldp       x20, x19, [sp, #0x20]                          
01a9aa94  mov       w0, #-1                                        
01a9aa98  ldp       x22, x21, [sp, #0x10]                          
01a9aa9c  ldp       x30, x23, [sp], #0x30                          
01a9aaa0  ret                                                      
01a9aaa4  ldr       x8, [x19, #0x118]                              
01a9aaa8  cbz       x8, #0x1a9aaf4                                 
01a9aaac  ldr       w9, [x8, #0x18]                                
01a9aab0  cmp       w9, #4                                         
01a9aab4  b.ls      #0x1a9aaf8                                     
01a9aab8  ldr       x2, [x22]                                      
01a9aabc  ldr       x19, [x8, #0x40]                               
01a9aac0  mov       x0, x20                                        
01a9aac4  mov       w1, w21                                        
01a9aac8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9aacc  cbz       x19, #0x1a9aaf4                                
01a9aad0  adrp      x8, #0x3a8c000                                 
01a9aad4  mov       x1, x0                                         
01a9aad8  mov       x0, x19                                        
01a9aadc  ldr       x8, [x8, #0x9a0]                               
01a9aae0  ldp       x20, x19, [sp, #0x20]                          
01a9aae4  ldp       x22, x21, [sp, #0x10]                          
01a9aae8  ldr       x2, [x8]                                       
01a9aaec  ldp       x30, x23, [sp], #0x30                          
01a9aaf0  b         #0x2795410                                     // System.Collections.Generic.List<object>$$IndexOf
01a9aaf4  bl        #0x183dddc                                     
01a9aaf8  bl        #0x183dde4                                     