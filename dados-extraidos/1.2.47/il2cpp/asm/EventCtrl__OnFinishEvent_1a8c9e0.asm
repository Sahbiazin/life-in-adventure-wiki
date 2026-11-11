void EventCtrl__OnFinishEvent (EventCtrl_o* __this, int32_t age, bool isNoSound, const MethodInfo* method);
// RVA 0x1a8c9e0 to 0x1a8cbc8
01a8c9e0  stp       x30, x23, [sp, #-0x30]!                        
01a8c9e4  stp       x22, x21, [sp, #0x10]                          
01a8c9e8  stp       x20, x19, [sp, #0x20]                          
01a8c9ec  adrp      x22, #0x3d14000                                
01a8c9f0  mov       w21, w2                                        
01a8c9f4  mov       w20, w1                                        
01a8c9f8  ldrb      w8, [x22, #0xccc]                              
01a8c9fc  mov       x19, x0                                        
01a8ca00  tbnz      w8, #0, #0x1a8ca54                             
01a8ca04  adrp      x0, #0x3a7d000                                 
01a8ca08  ldr       x0, [x0, #0x360]                               
01a8ca0c  bl        #0x183db90                                     
01a8ca10  adrp      x0, #0x3a7c000                                 
01a8ca14  ldr       x0, [x0, #0xc08]                               
01a8ca18  bl        #0x183db90                                     
01a8ca1c  adrp      x0, #0x3a81000                                 
01a8ca20  ldr       x0, [x0, #0xbf0]                               
01a8ca24  bl        #0x183db90                                     
01a8ca28  adrp      x0, #0x3a7e000                                 
01a8ca2c  ldr       x0, [x0, #0xf20]                               
01a8ca30  bl        #0x183db90                                     
01a8ca34  adrp      x0, #0x3a7d000                                 
01a8ca38  ldr       x0, [x0, #0x738]                               
01a8ca3c  bl        #0x183db90                                     
01a8ca40  adrp      x0, #0x3a7b000                                 
01a8ca44  ldr       x0, [x0, #0xc10]                               
01a8ca48  bl        #0x183db90                                     
01a8ca4c  mov       w8, #1                                         
01a8ca50  strb      w8, [x22, #0xccc]                              
01a8ca54  tbnz      w21, #0, #0x1a8ca70                            
01a8ca58  mov       x0, xzr                                        
01a8ca5c  bl        #0x19bb370                                     // SoundMgr$$get_ins
01a8ca60  cbz       x0, #0x1a8cb4c                                 
01a8ca64  mov       w1, wzr                                        
01a8ca68  mov       x2, xzr                                        
01a8ca6c  bl        #0x19bb4fc                                     // SoundMgr$$PlayEffectSound
01a8ca70  cmp       w20, #1                                        
01a8ca74  b.lt      #0x1a8cb74                                     
01a8ca78  ldr       x0, [x19, #0x28]                               
01a8ca7c  cbz       x0, #0x1a8cb4c                                 
01a8ca80  mov       x1, xzr                                        
01a8ca84  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a8ca88  cbz       x0, #0x1a8cb4c                                 
01a8ca8c  mov       x1, xzr                                        
01a8ca90  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a8ca94  cbz       x0, #0x1a8cb4c                                 
01a8ca98  adrp      x8, #0x3a7d000                                 
01a8ca9c  ldr       x8, [x8, #0x360]                               
01a8caa0  ldr       x1, [x8]                                       
01a8caa4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8caa8  cbz       x0, #0x1a8cb4c                                 
01a8caac  adrp      x21, #0x3a7c000                                
01a8cab0  mov       w1, wzr                                        
01a8cab4  mov       x2, xzr                                        
01a8cab8  ldr       x21, [x21, #0xc08]                             
01a8cabc  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a8cac0  ldr       x8, [x21]                                      
01a8cac4  ldr       x8, [x8, #0xb8]                                
01a8cac8  ldr       x0, [x8]                                       
01a8cacc  cbz       x0, #0x1a8cb4c                                 
01a8cad0  mov       w1, w20                                        
01a8cad4  mov       x2, xzr                                        
01a8cad8  bl        #0x1afa100                                     // DataMgr$$AddAge
01a8cadc  ldr       x0, [x19, #0x38]                               
01a8cae0  cbz       x0, #0x1a8cb4c                                 
01a8cae4  adrp      x22, #0x3a7d000                                
01a8cae8  adrp      x23, #0x3a7b000                                
01a8caec  mov       w20, wzr                                       
01a8caf0  ldr       x22, [x22, #0x738]                             
01a8caf4  ldr       x23, [x23, #0xc10]                             
01a8caf8  ldr       w2, [x0, #0x18]                                
01a8cafc  cmp       w20, w2                                        
01a8cb00  b.ge      #0x1a8cb50                                     
01a8cb04  ldr       x2, [x22]                                      
01a8cb08  mov       w1, w20                                        
01a8cb0c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8cb10  cbz       x0, #0x1a8cb4c                                 
01a8cb14  mov       x1, xzr                                        
01a8cb18  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8cb1c  ldr       x8, [x23]                                      
01a8cb20  mov       x21, x0                                        
01a8cb24  ldr       w9, [x8, #0xe4]                                
01a8cb28  cbnz      w9, #0x1a8cb34                                 
01a8cb2c  mov       x0, x8                                         
01a8cb30  bl        #0x183dcb0                                     
01a8cb34  mov       x0, x21                                        
01a8cb38  mov       x1, xzr                                        
01a8cb3c  bl        #0x35ce474                                     // UnityEngine.Object$$Destroy
01a8cb40  ldr       x0, [x19, #0x38]                               
01a8cb44  add       w20, w20, #1                                   
01a8cb48  cbnz      x0, #0x1a8caf8                                 
01a8cb4c  bl        #0x183dddc                                     
01a8cb50  ldr       w8, [x0, #0x1c]                                
01a8cb54  cmp       w2, #1                                         
01a8cb58  add       w8, w8, #1                                     
01a8cb5c  stp       wzr, w8, [x0, #0x18]                           
01a8cb60  b.lt      #0x1a8cb74                                     
01a8cb64  ldr       x0, [x0, #0x10]                                
01a8cb68  mov       w1, wzr                                        
01a8cb6c  mov       x3, xzr                                        
01a8cb70  bl        #0x2df1fa4                                     // System.Array$$Clear
01a8cb74  adrp      x20, #0x3d14000                                
01a8cb78  strb      wzr, [x19, #0x180]                             
01a8cb7c  ldrb      w8, [x20, #0x70e]                              
01a8cb80  cbnz      w8, #0x1a8cb98                                 
01a8cb84  adrp      x0, #0x3a7d000                                 
01a8cb88  ldr       x0, [x0, #0x438]                               
01a8cb8c  bl        #0x183db90                                     
01a8cb90  mov       w8, #1                                         
01a8cb94  strb      w8, [x20, #0x70e]                              
01a8cb98  adrp      x8, #0x3a7d000                                 
01a8cb9c  ldr       x8, [x8, #0x438]                               
01a8cba0  ldr       x8, [x8]                                       
01a8cba4  ldr       x8, [x8, #0xb8]                                
01a8cba8  ldr       x0, [x8]                                       
01a8cbac  cbz       x0, #0x1a8cb4c                                 
01a8cbb0  ldp       x20, x19, [sp, #0x20]                          
01a8cbb4  mov       w1, wzr                                        
01a8cbb8  ldp       x22, x21, [sp, #0x10]                          
01a8cbbc  mov       x2, xzr                                        
01a8cbc0  ldp       x30, x23, [sp], #0x30                          
01a8cbc4  b         #0x19c56a0                                     // StatusCtrl$$UpdateDisplay