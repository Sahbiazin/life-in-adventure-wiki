int32_t EventCtrl__GetDeathMainEp (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8cbc8 to 0x1a8cda0
01a8cbc8  str       x30, [sp, #-0x20]!                             
01a8cbcc  stp       x20, x19, [sp, #0x10]                          
01a8cbd0  adrp      x20, #0x3d14000                                
01a8cbd4  adrp      x19, #0x3a7c000                                
01a8cbd8  ldrb      w8, [x20, #0xcf9]                              
01a8cbdc  ldr       x19, [x19, #0xc08]                             
01a8cbe0  tbnz      w8, #0, #0x1a8cbf8                             
01a8cbe4  adrp      x0, #0x3a7c000                                 
01a8cbe8  ldr       x0, [x0, #0xc08]                               
01a8cbec  bl        #0x183db90                                     
01a8cbf0  mov       w8, #1                                         
01a8cbf4  strb      w8, [x20, #0xcf9]                              
01a8cbf8  ldr       x8, [x19]                                      
01a8cbfc  ldr       x8, [x8, #0xb8]                                
01a8cc00  ldr       x0, [x8]                                       
01a8cc04  cbz       x0, #0x1a8cd9c                                 
01a8cc08  mov       w1, #3                                         
01a8cc0c  mov       x2, xzr                                        
01a8cc10  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cc14  fmov      s1, #-24.00000000                              
01a8cc18  ldr       x8, [x19]                                      
01a8cc1c  ldr       x8, [x8, #0xb8]                                
01a8cc20  fcmp      s0, s1                                         
01a8cc24  ldr       x0, [x8]                                       
01a8cc28  b.pl      #0x1a8cc7c                                     
01a8cc2c  cbz       x0, #0x1a8cd9c                                 
01a8cc30  mov       w1, #2                                         
01a8cc34  mov       x2, xzr                                        
01a8cc38  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cc3c  fmov      s1, #30.00000000                               
01a8cc40  fcmp      s0, s1                                         
01a8cc44  b.mi      #0x1a8ccf8                                     
01a8cc48  ldr       x8, [x19]                                      
01a8cc4c  ldr       x8, [x8, #0xb8]                                
01a8cc50  ldr       x0, [x8]                                       
01a8cc54  cbz       x0, #0x1a8cd9c                                 
01a8cc58  mov       w1, #2                                         
01a8cc5c  mov       x2, xzr                                        
01a8cc60  mov       w19, #2                                        
01a8cc64  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cc68  mov       w8, #0x428c0000                                
01a8cc6c  fmov      s1, w8                                         
01a8cc70  fcmp      s0, s1                                         
01a8cc74  csinc     w0, w19, wzr, pl                               
01a8cc78  b         #0x1a8cd90                                     
01a8cc7c  cbz       x0, #0x1a8cd9c                                 
01a8cc80  mov       w1, #3                                         
01a8cc84  mov       x2, xzr                                        
01a8cc88  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cc8c  fmov      s1, #25.00000000                               
01a8cc90  ldr       x8, [x19]                                      
01a8cc94  ldr       x8, [x8, #0xb8]                                
01a8cc98  fcmp      s0, s1                                         
01a8cc9c  ldr       x0, [x8]                                       
01a8cca0  b.pl      #0x1a8cd00                                     
01a8cca4  cbz       x0, #0x1a8cd9c                                 
01a8cca8  mov       w1, #2                                         
01a8ccac  mov       x2, xzr                                        
01a8ccb0  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8ccb4  fmov      s1, #30.00000000                               
01a8ccb8  fcmp      s0, s1                                         
01a8ccbc  b.mi      #0x1a8cd24                                     
01a8ccc0  ldr       x8, [x19]                                      
01a8ccc4  ldr       x8, [x8, #0xb8]                                
01a8ccc8  ldr       x0, [x8]                                       
01a8cccc  cbz       x0, #0x1a8cd9c                                 
01a8ccd0  mov       w1, #2                                         
01a8ccd4  mov       x2, xzr                                        
01a8ccd8  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8ccdc  mov       w8, #0x428c0000                                
01a8cce0  mov       w9, #4                                         
01a8cce4  fmov      s1, w8                                         
01a8cce8  mov       w8, #5                                         
01a8ccec  fcmp      s0, s1                                         
01a8ccf0  csel      w0, w9, w8, mi                                 
01a8ccf4  b         #0x1a8cd90                                     
01a8ccf8  mov       w0, wzr                                        
01a8ccfc  b         #0x1a8cd90                                     
01a8cd00  cbz       x0, #0x1a8cd9c                                 
01a8cd04  mov       w1, #3                                         
01a8cd08  mov       x2, xzr                                        
01a8cd0c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cd10  fmov      s1, #25.00000000                               
01a8cd14  fcmp      s0, s1                                         
01a8cd18  b.ge      #0x1a8cd2c                                     
01a8cd1c  mov       w0, #-1                                        
01a8cd20  b         #0x1a8cd90                                     
01a8cd24  mov       w0, #3                                         
01a8cd28  b         #0x1a8cd90                                     
01a8cd2c  ldr       x8, [x19]                                      
01a8cd30  ldr       x8, [x8, #0xb8]                                
01a8cd34  ldr       x0, [x8]                                       
01a8cd38  cbz       x0, #0x1a8cd9c                                 
01a8cd3c  mov       w1, #2                                         
01a8cd40  mov       x2, xzr                                        
01a8cd44  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cd48  fmov      s1, #30.00000000                               
01a8cd4c  fcmp      s0, s1                                         
01a8cd50  b.mi      #0x1a8cd8c                                     
01a8cd54  ldr       x8, [x19]                                      
01a8cd58  ldr       x8, [x8, #0xb8]                                
01a8cd5c  ldr       x0, [x8]                                       
01a8cd60  cbz       x0, #0x1a8cd9c                                 
01a8cd64  mov       w1, #2                                         
01a8cd68  mov       x2, xzr                                        
01a8cd6c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8cd70  mov       w8, #0x428c0000                                
01a8cd74  mov       w9, #8                                         
01a8cd78  fmov      s1, w8                                         
01a8cd7c  mov       w8, #7                                         
01a8cd80  fcmp      s0, s1                                         
01a8cd84  csel      w0, w9, w8, pl                                 
01a8cd88  b         #0x1a8cd90                                     
01a8cd8c  mov       w0, #6                                         
01a8cd90  ldp       x20, x19, [sp, #0x10]                          
01a8cd94  ldr       x30, [sp], #0x20                               
01a8cd98  ret                                                      
01a8cd9c  bl        #0x183dddc                                     