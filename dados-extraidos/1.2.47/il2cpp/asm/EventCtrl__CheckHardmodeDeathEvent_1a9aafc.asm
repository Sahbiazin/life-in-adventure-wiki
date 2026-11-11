int32_t EventCtrl__CheckHardmodeDeathEvent (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a9aafc to 0x1a9ace4
01a9aafc  stp       x30, x23, [sp, #-0x30]!                        
01a9ab00  stp       x22, x21, [sp, #0x10]                          
01a9ab04  stp       x20, x19, [sp, #0x20]                          
01a9ab08  adrp      x20, #0x3d14000                                
01a9ab0c  mov       x19, x0                                        
01a9ab10  ldrb      w8, [x20, #0xce5]                              
01a9ab14  tbnz      w8, #0, #0x1a9ab74                             
01a9ab18  adrp      x0, #0x3a8c000                                 
01a9ab1c  ldr       x0, [x0, #0x950]                               
01a9ab20  bl        #0x183db90                                     
01a9ab24  adrp      x0, #0x3a8c000                                 
01a9ab28  ldr       x0, [x0, #0x9a0]                               
01a9ab2c  bl        #0x183db90                                     
01a9ab30  adrp      x0, #0x3a8c000                                 
01a9ab34  ldr       x0, [x0, #0x968]                               
01a9ab38  bl        #0x183db90                                     
01a9ab3c  adrp      x0, #0x3a8c000                                 
01a9ab40  ldr       x0, [x0, #0x6a8]                               
01a9ab44  bl        #0x183db90                                     
01a9ab48  adrp      x0, #0x3a8c000                                 
01a9ab4c  ldr       x0, [x0, #0x978]                               
01a9ab50  bl        #0x183db90                                     
01a9ab54  adrp      x0, #0x3a8c000                                 
01a9ab58  ldr       x0, [x0, #0x9d0]                               
01a9ab5c  bl        #0x183db90                                     
01a9ab60  adrp      x0, #0x3a8c000                                 
01a9ab64  ldr       x0, [x0, #0x668]                               
01a9ab68  bl        #0x183db90                                     
01a9ab6c  mov       w8, #1                                         
01a9ab70  strb      w8, [x20, #0xce5]                              
01a9ab74  ldr       x8, [x19, #0x118]                              
01a9ab78  cbz       x8, #0x1a9acdc                                 
01a9ab7c  ldr       w9, [x8, #0x18]                                
01a9ab80  cmp       w9, #2                                         
01a9ab84  b.ls      #0x1a9ace0                                     
01a9ab88  adrp      x23, #0x3a8c000                                
01a9ab8c  ldr       x23, [x23, #0x668]                             
01a9ab90  ldr       x20, [x8, #0x30]                               
01a9ab94  ldr       x0, [x23]                                      
01a9ab98  ldr       w9, [x0, #0xe4]                                
01a9ab9c  cbnz      w9, #0x1a9aba8                                 
01a9aba0  bl        #0x183dcb0                                     
01a9aba4  ldr       x0, [x23]                                      
01a9aba8  ldr       x8, [x0, #0xb8]                                
01a9abac  ldr       x21, [x8, #0xa8]                               
01a9abb0  cbnz      x21, #0x1a9ac04                                
01a9abb4  ldr       w9, [x0, #0xe4]                                
01a9abb8  cbnz      w9, #0x1a9abc8                                 
01a9abbc  bl        #0x183dcb0                                     
01a9abc0  ldr       x8, [x23]                                      
01a9abc4  ldr       x8, [x8, #0xb8]                                
01a9abc8  adrp      x9, #0x3a8c000                                 
01a9abcc  ldr       x9, [x9, #0x978]                               
01a9abd0  ldr       x22, [x8]                                      
01a9abd4  ldr       x0, [x9]                                       
01a9abd8  bl        #0x183ddcc                                     
01a9abdc  adrp      x8, #0x3a8c000                                 
01a9abe0  mov       x1, x22                                        
01a9abe4  mov       x3, xzr                                        
01a9abe8  ldr       x8, [x8, #0x9d0]                               
01a9abec  mov       x21, x0                                        
01a9abf0  ldr       x2, [x8]                                       
01a9abf4  bl        #0x29630a8                                     // System.Predicate<object>$$.ctor
01a9abf8  ldr       x8, [x23]                                      
01a9abfc  ldr       x8, [x8, #0xb8]                                
01a9ac00  str       x21, [x8, #0xa8]                               
01a9ac04  cbz       x20, #0x1a9acdc                                
01a9ac08  adrp      x8, #0x3a8c000                                 
01a9ac0c  mov       x0, x20                                        
01a9ac10  mov       x1, x21                                        
01a9ac14  ldr       x8, [x8, #0x950]                               
01a9ac18  ldr       x2, [x8]                                       
01a9ac1c  bl        #0x2794e98                                     // System.Collections.Generic.List<object>$$FindAll
01a9ac20  cbz       x0, #0x1a9acdc                                 
01a9ac24  ldr       w8, [x0, #0x18]                                
01a9ac28  mov       x20, x0                                        
01a9ac2c  cmp       w8, #1                                         
01a9ac30  b.lt      #0x1a9ac78                                     
01a9ac34  adrp      x22, #0x3a8c000                                
01a9ac38  mov       w21, wzr                                       
01a9ac3c  ldr       x22, [x22, #0x6a8]                             
01a9ac40  ldr       x2, [x22]                                      
01a9ac44  mov       x0, x20                                        
01a9ac48  mov       w1, w21                                        
01a9ac4c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ac50  cbz       x0, #0x1a9acdc                                 
01a9ac54  ldr       x1, [x0, #0x28]                                
01a9ac58  mov       x0, x19                                        
01a9ac5c  mov       w2, #-1                                        
01a9ac60  bl        #0x1a95244                                     // EventCtrl$$CheckRequire
01a9ac64  tbnz      w0, #0, #0x1a9ac8c                             
01a9ac68  ldr       w8, [x20, #0x18]                               
01a9ac6c  add       w21, w21, #1                                   
01a9ac70  cmp       w21, w8                                        
01a9ac74  b.lt      #0x1a9ac40                                     
01a9ac78  ldp       x20, x19, [sp, #0x20]                          
01a9ac7c  mov       w0, #-1                                        
01a9ac80  ldp       x22, x21, [sp, #0x10]                          
01a9ac84  ldp       x30, x23, [sp], #0x30                          
01a9ac88  ret                                                      
01a9ac8c  ldr       x8, [x19, #0x118]                              
01a9ac90  cbz       x8, #0x1a9acdc                                 
01a9ac94  ldr       w9, [x8, #0x18]                                
01a9ac98  cmp       w9, #2                                         
01a9ac9c  b.ls      #0x1a9ace0                                     
01a9aca0  ldr       x2, [x22]                                      
01a9aca4  ldr       x19, [x8, #0x30]                               
01a9aca8  mov       x0, x20                                        
01a9acac  mov       w1, w21                                        
01a9acb0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9acb4  cbz       x19, #0x1a9acdc                                
01a9acb8  adrp      x8, #0x3a8c000                                 
01a9acbc  mov       x1, x0                                         
01a9acc0  mov       x0, x19                                        
01a9acc4  ldr       x8, [x8, #0x9a0]                               
01a9acc8  ldp       x20, x19, [sp, #0x20]                          
01a9accc  ldp       x22, x21, [sp, #0x10]                          
01a9acd0  ldr       x2, [x8]                                       
01a9acd4  ldp       x30, x23, [sp], #0x30                          
01a9acd8  b         #0x2795410                                     // System.Collections.Generic.List<object>$$IndexOf
01a9acdc  bl        #0x183dddc                                     
01a9ace0  bl        #0x183dde4                                     