void EventCtrl__SetButton (EventCtrl_o* __this, UnityEngine_UI_Button_o* btn, bool enabled, UnityEngine_Events_UnityAction_o* btnAction, System_String_o* text, System_Collections_Generic_List_EventResult__o* resultList, int32_t jewel, System_String_o* abilityStr, const MethodInfo* method);
// RVA 0x1a9313c to 0x1a94138
01a9313c  sub       sp, sp, #0xa0                                  
01a93140  str       d8, [sp, #0x30]                                
01a93144  stp       x29, x30, [sp, #0x40]                          
01a93148  stp       x28, x27, [sp, #0x50]                          
01a9314c  stp       x26, x25, [sp, #0x60]                          
01a93150  stp       x24, x23, [sp, #0x70]                          
01a93154  stp       x22, x21, [sp, #0x80]                          
01a93158  stp       x20, x19, [sp, #0x90]                          
01a9315c  str       x4, [sp, #8]                                   
01a93160  adrp      x23, #0x3d14000                                
01a93164  adrp      x22, #0x3a8c000                                
01a93168  ldrb      w8, [x23, #0xcd8]                              
01a9316c  ldr       x22, [x22, #0x798]                             
01a93170  mov       x26, x7                                        
01a93174  mov       w24, w6                                        
01a93178  mov       x25, x5                                        
01a9317c  mov       x27, x3                                        
01a93180  mov       w28, w2                                        
01a93184  mov       x20, x1                                        
01a93188  mov       x19, x0                                        
01a9318c  tbnz      w8, #0, #0x1a93300                             
01a93190  adrp      x0, #0x3a7c000                                 
01a93194  ldr       x0, [x0, #0xf18]                               
01a93198  bl        #0x183db90                                     
01a9319c  adrp      x0, #0x3a7c000                                 
01a931a0  ldr       x0, [x0, #0xf20]                               
01a931a4  bl        #0x183db90                                     
01a931a8  adrp      x0, #0x3a7c000                                 
01a931ac  ldr       x0, [x0, #0xc80]                               
01a931b0  bl        #0x183db90                                     
01a931b4  adrp      x0, #0x3a7c000                                 
01a931b8  ldr       x0, [x0, #0xc08]                               
01a931bc  bl        #0x183db90                                     
01a931c0  adrp      x0, #0x3a7d000                                 
01a931c4  ldr       x0, [x0, #0x428]                               
01a931c8  bl        #0x183db90                                     
01a931cc  adrp      x0, #0x3a7c000                                 
01a931d0  ldr       x0, [x0, #0xc20]                               
01a931d4  bl        #0x183db90                                     
01a931d8  adrp      x0, #0x3a7c000                                 
01a931dc  ldr       x0, [x0, #0xc30]                               
01a931e0  bl        #0x183db90                                     
01a931e4  adrp      x0, #0x3a7c000                                 
01a931e8  ldr       x0, [x0, #0x280]                               
01a931ec  bl        #0x183db90                                     
01a931f0  adrp      x0, #0x3a7c000                                 
01a931f4  ldr       x0, [x0, #0xde8]                               
01a931f8  bl        #0x183db90                                     
01a931fc  adrp      x0, #0x3a7b000                                 
01a93200  ldr       x0, [x0, #0x7c8]                               
01a93204  bl        #0x183db90                                     
01a93208  adrp      x0, #0x3a8c000                                 
01a9320c  ldr       x0, [x0, #0x7a0]                               
01a93210  bl        #0x183db90                                     
01a93214  adrp      x0, #0x3a8c000                                 
01a93218  ldr       x0, [x0, #0x7a8]                               
01a9321c  bl        #0x183db90                                     
01a93220  adrp      x0, #0x3a8c000                                 
01a93224  ldr       x0, [x0, #0x798]                               
01a93228  bl        #0x183db90                                     
01a9322c  adrp      x0, #0x3a7c000                                 
01a93230  ldr       x0, [x0, #0xc78]                               
01a93234  bl        #0x183db90                                     
01a93238  adrp      x0, #0x3a8c000                                 
01a9323c  ldr       x0, [x0, #0x7b0]                               
01a93240  bl        #0x183db90                                     
01a93244  adrp      x0, #0x3a7c000                                 
01a93248  ldr       x0, [x0, #0x4e0]                               
01a9324c  bl        #0x183db90                                     
01a93250  adrp      x0, #0x3a8c000                                 
01a93254  ldr       x0, [x0, #0x628]                               
01a93258  bl        #0x183db90                                     
01a9325c  adrp      x0, #0x3a7d000                                 
01a93260  ldr       x0, [x0, #0x368]                               
01a93264  bl        #0x183db90                                     
01a93268  adrp      x0, #0x3a8c000                                 
01a9326c  ldr       x0, [x0, #0x7b8]                               
01a93270  bl        #0x183db90                                     
01a93274  adrp      x0, #0x3a8c000                                 
01a93278  ldr       x0, [x0, #0x7c0]                               
01a9327c  bl        #0x183db90                                     
01a93280  adrp      x0, #0x3a7e000                                 
01a93284  ldr       x0, [x0, #8]                                   
01a93288  bl        #0x183db90                                     
01a9328c  adrp      x0, #0x3a8c000                                 
01a93290  ldr       x0, [x0, #0x7c8]                               
01a93294  bl        #0x183db90                                     
01a93298  adrp      x0, #0x3a8c000                                 
01a9329c  ldr       x0, [x0, #0x618]                               
01a932a0  bl        #0x183db90                                     
01a932a4  adrp      x0, #0x3a7d000                                 
01a932a8  ldr       x0, [x0, #0x130]                               
01a932ac  bl        #0x183db90                                     
01a932b0  adrp      x0, #0x3a8c000                                 
01a932b4  ldr       x0, [x0, #0x7d0]                               
01a932b8  bl        #0x183db90                                     
01a932bc  adrp      x0, #0x3a7b000                                 
01a932c0  ldr       x0, [x0, #0x8d0]                               
01a932c4  bl        #0x183db90                                     
01a932c8  adrp      x0, #0x3a7d000                                 
01a932cc  ldr       x0, [x0, #0x38]                                
01a932d0  bl        #0x183db90                                     
01a932d4  adrp      x0, #0x3a7b000                                 
01a932d8  ldr       x0, [x0, #0xaf0]                               
01a932dc  bl        #0x183db90                                     
01a932e0  adrp      x0, #0x3a8c000                                 
01a932e4  ldr       x0, [x0, #0x630]                               
01a932e8  bl        #0x183db90                                     
01a932ec  adrp      x0, #0x3a7d000                                 
01a932f0  ldr       x0, [x0, #0x888]                               
01a932f4  bl        #0x183db90                                     
01a932f8  mov       w8, #1                                         
01a932fc  strb      w8, [x23, #0xcd8]                              
01a93300  ldr       x0, [x22]                                      
01a93304  str       xzr, [sp, #0x38]                               
01a93308  str       wzr, [sp, #0x2c]                               
01a9330c  bl        #0x183ddcc                                     
01a93310  mov       x1, xzr                                        
01a93314  mov       x23, x0                                        
01a93318  bl        #0x1ab0ed4                                     // EventCtrl.<>c__DisplayClass102_0$$.ctor
01a9331c  cbz       x23, #0x1a94130                                
01a93320  mov       x1, x25                                        
01a93324  str       x19, [x23, #0x10]                              
01a93328  str       w24, [x23, #0x18]                              
01a9332c  str       x27, [x23, #0x20]                              
01a93330  bl        #0x1a945b0                                     // EventCtrl$$GetResultStatList
01a93334  cbz       x20, #0x1a94130                                
01a93338  mov       x24, x0                                        
01a9333c  mov       x0, x20                                        
01a93340  mov       x1, xzr                                        
01a93344  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93348  cbz       x0, #0x1a94130                                 
01a9334c  adrp      x22, #0x3a8c000                                
01a93350  mov       x2, xzr                                        
01a93354  ldr       x22, [x22, #0x630]                             
01a93358  ldr       x1, [x22]                                      
01a9335c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93360  cbz       x0, #0x1a94130                                 
01a93364  mov       x1, xzr                                        
01a93368  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a9336c  cbz       x0, #0x1a94130                                 
01a93370  adrp      x21, #0x3a7b000                                
01a93374  adrp      x27, #0x3a7c000                                
01a93378  mov       w1, wzr                                        
01a9337c  ldr       x21, [x21, #0xaf0]                             
01a93380  ldr       x27, [x27, #0xc80]                             
01a93384  mov       x2, xzr                                        
01a93388  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a9338c  ldr       x1, [x21]                                      
01a93390  mov       x0, x26                                        
01a93394  mov       x2, xzr                                        
01a93398  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a9339c  tbz       w0, #0, #0x1a93510                             
01a933a0  mov       x0, x20                                        
01a933a4  mov       x1, xzr                                        
01a933a8  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a933ac  cbz       x0, #0x1a94130                                 
01a933b0  ldr       x1, [x22]                                      
01a933b4  mov       x2, xzr                                        
01a933b8  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a933bc  cbz       x0, #0x1a94130                                 
01a933c0  mov       w1, wzr                                        
01a933c4  mov       x2, xzr                                        
01a933c8  bl        #0x35d6218                                     // UnityEngine.Transform$$GetChild
01a933cc  cbz       x0, #0x1a94130                                 
01a933d0  ldr       x1, [x27]                                      
01a933d4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a933d8  mov       x27, x0                                        
01a933dc  mov       x0, x26                                        
01a933e0  mov       x1, xzr                                        
01a933e4  bl        #0x1ab07b8                                     // TextUtil$$Fix
01a933e8  cbz       x27, #0x1a94130                                
01a933ec  ldr       x8, [x27]                                      
01a933f0  mov       x1, x0                                         
01a933f4  mov       x0, x27                                        
01a933f8  ldr       x9, [x8, #0x5e8]                               
01a933fc  ldr       x2, [x8, #0x5f0]                               
01a93400  blr       x9                                             
01a93404  mov       x0, x20                                        
01a93408  mov       x1, xzr                                        
01a9340c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93410  cbz       x0, #0x1a94130                                 
01a93414  ldr       x1, [x22]                                      
01a93418  mov       x2, xzr                                        
01a9341c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93420  adrp      x27, #0x3a7c000                                
01a93424  ldr       x27, [x27, #0xc80]                             
01a93428  cbz       x0, #0x1a94130                                 
01a9342c  mov       w1, wzr                                        
01a93430  mov       x2, xzr                                        
01a93434  bl        #0x35d6218                                     // UnityEngine.Transform$$GetChild
01a93438  cbz       x0, #0x1a94130                                 
01a9343c  ldr       x1, [x27]                                      
01a93440  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a93444  adrp      x8, #0x3a7c000                                 
01a93448  ldr       x8, [x8, #0xc08]                               
01a9344c  ldr       x8, [x8]                                       
01a93450  ldr       x8, [x8, #0xb8]                                
01a93454  ldr       x8, [x8]                                       
01a93458  cbz       x8, #0x1a94130                                 
01a9345c  add       x9, x8, #0x484                                 
01a93460  mov       x26, x0                                        
01a93464  ldr       w1, [x8, #0x48c]                               
01a93468  ldr       x0, [x9]                                       
01a9346c  mov       x2, xzr                                        
01a93470  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a93474  tbz       w0, #0, #0x1a93484                             
01a93478  ldp       s0, s1, [x19, #0x90]                           
01a9347c  ldp       s2, s3, [x19, #0x98]                           
01a93480  b         #0x1a934c0                                     
01a93484  ldr       w8, [x19, #0x160]                              
01a93488  and       w9, w8, #0xff                                  
01a9348c  ucvtf     s0, w9                                         
01a93490  mov       w9, #0x437f0000                                
01a93494  fmov      s3, w9                                         
01a93498  ubfx      w9, w8, #8, #8                                 
01a9349c  ucvtf     s1, w9                                         
01a934a0  ubfx      w9, w8, #0x10, #8                              
01a934a4  lsr       w8, w8, #0x18                                  
01a934a8  fdiv      s0, s0, s3                                     
01a934ac  ucvtf     s2, w9                                         
01a934b0  ucvtf     s4, w8                                         
01a934b4  fdiv      s1, s1, s3                                     
01a934b8  fdiv      s2, s2, s3                                     
01a934bc  fdiv      s3, s4, s3                                     
01a934c0  cbz       x26, #0x1a94130                                
01a934c4  ldr       x8, [x26]                                      
01a934c8  mov       x0, x26                                        
01a934cc  ldr       x9, [x8, #0x2a8]                               
01a934d0  ldr       x1, [x8, #0x2b0]                               
01a934d4  blr       x9                                             
01a934d8  mov       x0, x20                                        
01a934dc  mov       x1, xzr                                        
01a934e0  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a934e4  cbz       x0, #0x1a94130                                 
01a934e8  ldr       x1, [x22]                                      
01a934ec  mov       x2, xzr                                        
01a934f0  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a934f4  cbz       x0, #0x1a94130                                 
01a934f8  mov       x1, xzr                                        
01a934fc  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93500  cbz       x0, #0x1a94130                                 
01a93504  mov       w1, #1                                         
01a93508  mov       x2, xzr                                        
01a9350c  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a93510  adrp      x22, #0x3a7e000                                
01a93514  adrp      x29, #0x3a8c000                                
01a93518  ldr       x22, [x22, #8]                                 
01a9351c  ldr       x29, [x29, #0x7d0]                             
01a93520  str       wzr, [sp, #0x38]                               
01a93524  mov       x0, x20                                        
01a93528  mov       x1, xzr                                        
01a9352c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93530  cbz       x0, #0x1a94130                                 
01a93534  ldr       x1, [x22]                                      
01a93538  mov       x2, xzr                                        
01a9353c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93540  mov       x26, x0                                        
01a93544  add       x0, sp, #0x38                                  
01a93548  mov       x1, xzr                                        
01a9354c  bl        #0x2dcd834                                     // System.Int32$$ToString
01a93550  ldr       x8, [x29]                                      
01a93554  mov       x1, x0                                         
01a93558  mov       x2, xzr                                        
01a9355c  mov       x0, x8                                         
01a93560  bl        #0x2c63780                                     // System.String$$Concat
01a93564  cbz       x26, #0x1a94130                                
01a93568  mov       x1, x0                                         
01a9356c  mov       x0, x26                                        
01a93570  mov       x2, xzr                                        
01a93574  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93578  cbz       x0, #0x1a94130                                 
01a9357c  mov       x1, xzr                                        
01a93580  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93584  cbz       x0, #0x1a94130                                 
01a93588  mov       w1, wzr                                        
01a9358c  mov       x2, xzr                                        
01a93590  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a93594  ldr       w8, [sp, #0x38]                                
01a93598  add       w8, w8, #1                                     
01a9359c  cmp       w8, #3                                         
01a935a0  str       w8, [sp, #0x38]                                
01a935a4  b.lt      #0x1a93524                                     
01a935a8  ldr       w21, [x23, #0x18]                              
01a935ac  mov       x0, x20                                        
01a935b0  mov       x1, xzr                                        
01a935b4  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a935b8  cmn       w21, #1                                        
01a935bc  b.eq      #0x1a935fc                                     
01a935c0  cbnz      w21, #0x1a93748                                
01a935c4  cbz       x0, #0x1a94130                                 
01a935c8  adrp      x8, #0x3a8c000                                 
01a935cc  mov       x2, xzr                                        
01a935d0  ldr       x8, [x8, #0x628]                               
01a935d4  ldr       x1, [x8]                                       
01a935d8  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a935dc  cbz       x0, #0x1a94130                                 
01a935e0  mov       x1, xzr                                        
01a935e4  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a935e8  cbz       x0, #0x1a94130                                 
01a935ec  mov       w1, wzr                                        
01a935f0  mov       x2, xzr                                        
01a935f4  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a935f8  b         #0x1a93910                                     
01a935fc  cbz       x0, #0x1a94130                                 
01a93600  adrp      x21, #0x3a8c000                                
01a93604  mov       x2, xzr                                        
01a93608  ldr       x21, [x21, #0x628]                             
01a9360c  ldr       x1, [x21]                                      
01a93610  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93614  cbz       x0, #0x1a94130                                 
01a93618  mov       x1, xzr                                        
01a9361c  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93620  cbz       x0, #0x1a94130                                 
01a93624  mov       w1, #1                                         
01a93628  mov       x2, xzr                                        
01a9362c  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a93630  mov       x0, x20                                        
01a93634  mov       x1, xzr                                        
01a93638  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a9363c  cbz       x0, #0x1a94130                                 
01a93640  ldr       x1, [x21]                                      
01a93644  mov       x2, xzr                                        
01a93648  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a9364c  cbz       x0, #0x1a94130                                 
01a93650  adrp      x8, #0x3a8c000                                 
01a93654  mov       x2, xzr                                        
01a93658  ldr       x8, [x8, #0x7b0]                               
01a9365c  ldr       x1, [x8]                                       
01a93660  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93664  cbz       x0, #0x1a94130                                 
01a93668  mov       x1, xzr                                        
01a9366c  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93670  cbz       x0, #0x1a94130                                 
01a93674  mov       w1, wzr                                        
01a93678  mov       x2, xzr                                        
01a9367c  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a93680  mov       x0, x20                                        
01a93684  mov       x1, xzr                                        
01a93688  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a9368c  cbz       x0, #0x1a94130                                 
01a93690  ldr       x1, [x21]                                      
01a93694  mov       x2, xzr                                        
01a93698  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a9369c  cbz       x0, #0x1a94130                                 
01a936a0  adrp      x8, #0x3a7d000                                 
01a936a4  mov       x2, xzr                                        
01a936a8  ldr       x8, [x8, #0x368]                               
01a936ac  ldr       x1, [x8]                                       
01a936b0  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a936b4  cbz       x0, #0x1a94130                                 
01a936b8  ldr       x1, [x27]                                      
01a936bc  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a936c0  adrp      x21, #0x3a7c000                                
01a936c4  mov       x26, x0                                        
01a936c8  ldr       x21, [x21, #0xde8]                             
01a936cc  ldr       x8, [x21]                                      
01a936d0  ldr       w9, [x8, #0xe4]                                
01a936d4  cbnz      w9, #0x1a936e4                                 
01a936d8  mov       x0, x8                                         
01a936dc  bl        #0x183dcb0                                     
01a936e0  ldr       x8, [x21]                                      
01a936e4  adrp      x9, #0x3a7c000                                 
01a936e8  ldr       x9, [x9, #0xc08]                               
01a936ec  ldr       x9, [x9]                                       
01a936f0  ldr       x9, [x9, #0xb8]                                
01a936f4  ldr       x9, [x9]                                       
01a936f8  cbz       x9, #0x1a94130                                 
01a936fc  ldr       x8, [x8, #0xb8]                                
01a93700  ldr       x8, [x8, #0x4a0]                               
01a93704  cbz       x8, #0x1a94130                                 
01a93708  ldrsw     x9, [x9, #0x5cc]                               
01a9370c  ldr       w10, [x8, #0x18]                               
01a93710  cmp       w9, w10                                        
01a93714  b.hs      #0x1a94134                                     
01a93718  add       x8, x8, x9, lsl #3                             
01a9371c  mov       x1, xzr                                        
01a93720  ldr       x0, [x8, #0x20]                                
01a93724  bl        #0x1ab07b8                                     // TextUtil$$Fix
01a93728  cbz       x26, #0x1a94130                                
01a9372c  ldr       x8, [x26]                                      
01a93730  mov       x1, x0                                         
01a93734  mov       x0, x26                                        
01a93738  ldr       x9, [x8, #0x5e8]                               
01a9373c  ldr       x2, [x8, #0x5f0]                               
01a93740  blr       x9                                             
01a93744  b         #0x1a93910                                     
01a93748  cbz       x0, #0x1a94130                                 
01a9374c  adrp      x21, #0x3a8c000                                
01a93750  mov       x2, xzr                                        
01a93754  ldr       x21, [x21, #0x628]                             
01a93758  ldr       x1, [x21]                                      
01a9375c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93760  cbz       x0, #0x1a94130                                 
01a93764  mov       x1, xzr                                        
01a93768  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a9376c  cbz       x0, #0x1a94130                                 
01a93770  mov       w1, #1                                         
01a93774  mov       x2, xzr                                        
01a93778  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a9377c  mov       x0, x20                                        
01a93780  mov       x1, xzr                                        
01a93784  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93788  cbz       x0, #0x1a94130                                 
01a9378c  ldr       x1, [x21]                                      
01a93790  mov       x2, xzr                                        
01a93794  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93798  cbz       x0, #0x1a94130                                 
01a9379c  adrp      x8, #0x3a8c000                                 
01a937a0  mov       x2, xzr                                        
01a937a4  ldr       x8, [x8, #0x7b0]                               
01a937a8  ldr       x1, [x8]                                       
01a937ac  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a937b0  cbz       x0, #0x1a94130                                 
01a937b4  mov       x1, xzr                                        
01a937b8  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a937bc  cbz       x0, #0x1a94130                                 
01a937c0  mov       w1, #1                                         
01a937c4  mov       x2, xzr                                        
01a937c8  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a937cc  mov       x0, x20                                        
01a937d0  mov       x1, xzr                                        
01a937d4  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a937d8  cbz       x0, #0x1a94130                                 
01a937dc  ldr       x1, [x21]                                      
01a937e0  mov       x2, xzr                                        
01a937e4  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a937e8  cbz       x0, #0x1a94130                                 
01a937ec  adrp      x8, #0x3a7d000                                 
01a937f0  mov       x2, xzr                                        
01a937f4  ldr       x8, [x8, #0x368]                               
01a937f8  ldr       x1, [x8]                                       
01a937fc  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93800  cbz       x0, #0x1a94130                                 
01a93804  ldr       x1, [x27]                                      
01a93808  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9380c  adrp      x21, #0x3a7c000                                
01a93810  mov       x26, x0                                        
01a93814  ldr       x21, [x21, #0xde8]                             
01a93818  ldr       x8, [x21]                                      
01a9381c  ldr       w9, [x8, #0xe4]                                
01a93820  cbnz      w9, #0x1a93830                                 
01a93824  mov       x0, x8                                         
01a93828  bl        #0x183dcb0                                     
01a9382c  ldr       x8, [x21]                                      
01a93830  adrp      x21, #0x3a7c000                                
01a93834  ldr       x21, [x21, #0xc08]                             
01a93838  ldr       x9, [x21]                                      
01a9383c  ldr       x9, [x9, #0xb8]                                
01a93840  ldr       x9, [x9]                                       
01a93844  cbz       x9, #0x1a94130                                 
01a93848  ldr       x8, [x8, #0xb8]                                
01a9384c  str       x25, [sp]                                      
01a93850  ldr       x8, [x8, #0x130]                               
01a93854  cbz       x8, #0x1a94130                                 
01a93858  ldrsw     x9, [x9, #0x5cc]                               
01a9385c  ldr       w10, [x8, #0x18]                               
01a93860  cmp       w9, w10                                        
01a93864  b.hs      #0x1a94134                                     
01a93868  add       x8, x8, x9, lsl #3                             
01a9386c  adrp      x9, #0x3a7b000                                 
01a93870  add       x1, sp, #0x28                                  
01a93874  ldr       x9, [x9, #0x768]                               
01a93878  ldr       w10, [x23, #0x18]                              
01a9387c  mov       w25, w28                                       
01a93880  ldr       x27, [x8, #0x20]                               
01a93884  ldr       x0, [x9, #0x48]                                
01a93888  str       w10, [sp, #0x28]                               
01a9388c  bl        #0x183dcb8                                     
01a93890  ldr       x8, [x21]                                      
01a93894  ldr       x8, [x8, #0xb8]                                
01a93898  ldr       x8, [x8]                                       
01a9389c  cbz       x8, #0x1a94130                                 
01a938a0  adrp      x9, #0x3a7c000                                 
01a938a4  ldur      q0, [x8, #0x48]                                
01a938a8  mov       x28, x0                                        
01a938ac  ldr       x9, [x9, #0x280]                               
01a938b0  ldr       w8, [x8, #0x58]                                
01a938b4  add       x1, sp, #0x10                                  
01a938b8  str       q0, [sp, #0x10]                                
01a938bc  ldr       x0, [x9]                                       
01a938c0  str       w8, [sp, #0x20]                                
01a938c4  bl        #0x183dcb8                                     
01a938c8  mov       x2, x0                                         
01a938cc  mov       x0, x27                                        
01a938d0  mov       x1, x28                                        
01a938d4  mov       x3, xzr                                        
01a938d8  bl        #0x2c6e654                                     // System.String$$Format
01a938dc  mov       x1, xzr                                        
01a938e0  bl        #0x1ab07b8                                     // TextUtil$$Fix
01a938e4  cbz       x26, #0x1a94130                                
01a938e8  ldr       x8, [x26]                                      
01a938ec  mov       x1, x0                                         
01a938f0  mov       x0, x26                                        
01a938f4  ldr       x9, [x8, #0x5e8]                               
01a938f8  ldr       x2, [x8, #0x5f0]                               
01a938fc  blr       x9                                             
01a93900  adrp      x27, #0x3a7c000                                
01a93904  mov       w28, w25                                       
01a93908  ldr       x27, [x27, #0xc80]                             
01a9390c  ldr       x25, [sp]                                      
01a93910  mov       x0, x19                                        
01a93914  mov       x1, x25                                        
01a93918  bl        #0x1a94910                                     // EventCtrl$$GetResultSuccessRate
01a9391c  mov       x0, x20                                        
01a93920  mov       x1, xzr                                        
01a93924  fmov      s8, s0                                         
01a93928  str       s0, [sp, #0x3c]                                
01a9392c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93930  fcmp      s8, #0.0                                       
01a93934  b.ne      #0x1a93970                                     
01a93938  cbz       x0, #0x1a94130                                 
01a9393c  ldr       x1, [x22]                                      
01a93940  mov       x2, xzr                                        
01a93944  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93948  cbz       x0, #0x1a94130                                 
01a9394c  mov       x1, xzr                                        
01a93950  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93954  adrp      x21, #0x3a8c000                                
01a93958  ldr       x21, [x21, #0x618]                             
01a9395c  cbz       x0, #0x1a94130                                 
01a93960  mov       w1, wzr                                        
01a93964  mov       x2, xzr                                        
01a93968  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a9396c  b         #0x1a93d64                                     
01a93970  cbz       x0, #0x1a94130                                 
01a93974  ldr       x1, [x22]                                      
01a93978  mov       x2, xzr                                        
01a9397c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93980  cbz       x0, #0x1a94130                                 
01a93984  mov       x1, xzr                                        
01a93988  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a9398c  cbz       x0, #0x1a94130                                 
01a93990  mov       w1, #1                                         
01a93994  mov       x2, xzr                                        
01a93998  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a9399c  cbz       x24, #0x1a93ae8                                
01a939a0  ldr       w8, [x24, #0x18]                               
01a939a4  str       wzr, [sp, #0x2c]                               
01a939a8  cmp       w8, #1                                         
01a939ac  b.lt      #0x1a93ae8                                     
01a939b0  adrp      x26, #0x3a7c000                                
01a939b4  adrp      x27, #0x3a7c000                                
01a939b8  ldr       x26, [x26, #0xf18]                             
01a939bc  ldr       x27, [x27, #0xc30]                             
01a939c0  mov       x0, x20                                        
01a939c4  mov       x1, xzr                                        
01a939c8  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a939cc  cbz       x0, #0x1a94130                                 
01a939d0  ldr       x1, [x22]                                      
01a939d4  mov       x2, xzr                                        
01a939d8  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a939dc  mov       x25, x0                                        
01a939e0  add       x0, sp, #0x2c                                  
01a939e4  mov       x1, xzr                                        
01a939e8  bl        #0x2dcd834                                     // System.Int32$$ToString
01a939ec  ldr       x8, [x29]                                      
01a939f0  mov       x1, x0                                         
01a939f4  mov       x2, xzr                                        
01a939f8  mov       x0, x8                                         
01a939fc  bl        #0x2c63780                                     // System.String$$Concat
01a93a00  cbz       x25, #0x1a94130                                
01a93a04  mov       x1, x0                                         
01a93a08  mov       x0, x25                                        
01a93a0c  mov       x2, xzr                                        
01a93a10  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93a14  cbz       x0, #0x1a94130                                 
01a93a18  ldr       x1, [x26]                                      
01a93a1c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a93a20  ldr       w1, [sp, #0x2c]                                
01a93a24  ldr       x2, [x27]                                      
01a93a28  mov       x25, x0                                        
01a93a2c  ldr       x21, [x19, #0x100]                             
01a93a30  mov       x0, x24                                        
01a93a34  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a93a38  cbz       x21, #0x1a94130                                
01a93a3c  ldr       w8, [x21, #0x18]                               
01a93a40  cmp       w0, w8                                         
01a93a44  b.hs      #0x1a94134                                     
01a93a48  cbz       x25, #0x1a94130                                
01a93a4c  add       x8, x21, w0, sxtw #3                           
01a93a50  mov       x0, x25                                        
01a93a54  mov       x2, xzr                                        
01a93a58  ldr       x1, [x8, #0x20]                                
01a93a5c  bl        #0x36830a4                                     // UnityEngine.UI.Image$$set_sprite
01a93a60  mov       x0, x20                                        
01a93a64  mov       x1, xzr                                        
01a93a68  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93a6c  cbz       x0, #0x1a94130                                 
01a93a70  ldr       x1, [x22]                                      
01a93a74  mov       x2, xzr                                        
01a93a78  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93a7c  mov       x25, x0                                        
01a93a80  add       x0, sp, #0x2c                                  
01a93a84  mov       x1, xzr                                        
01a93a88  bl        #0x2dcd834                                     // System.Int32$$ToString
01a93a8c  ldr       x8, [x29]                                      
01a93a90  mov       x1, x0                                         
01a93a94  mov       x2, xzr                                        
01a93a98  mov       x0, x8                                         
01a93a9c  bl        #0x2c63780                                     // System.String$$Concat
01a93aa0  cbz       x25, #0x1a94130                                
01a93aa4  mov       x1, x0                                         
01a93aa8  mov       x0, x25                                        
01a93aac  mov       x2, xzr                                        
01a93ab0  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93ab4  cbz       x0, #0x1a94130                                 
01a93ab8  mov       x1, xzr                                        
01a93abc  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93ac0  cbz       x0, #0x1a94130                                 
01a93ac4  mov       w1, #1                                         
01a93ac8  mov       x2, xzr                                        
01a93acc  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a93ad0  ldr       w8, [sp, #0x2c]                                
01a93ad4  ldr       w9, [x24, #0x18]                               
01a93ad8  add       w8, w8, #1                                     
01a93adc  cmp       w8, w9                                         
01a93ae0  str       w8, [sp, #0x2c]                                
01a93ae4  b.lt      #0x1a939c0                                     
01a93ae8  mov       x0, x20                                        
01a93aec  mov       x1, xzr                                        
01a93af0  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93af4  cbz       x0, #0x1a94130                                 
01a93af8  ldr       x1, [x22]                                      
01a93afc  mov       x2, xzr                                        
01a93b00  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93b04  adrp      x21, #0x3a7c000                                
01a93b08  ldr       x21, [x21, #0xc80]                             
01a93b0c  cbz       x0, #0x1a94130                                 
01a93b10  adrp      x8, #0x3a7d000                                 
01a93b14  mov       x2, xzr                                        
01a93b18  ldr       x8, [x8, #0x368]                               
01a93b1c  ldr       x1, [x8]                                       
01a93b20  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93b24  cbz       x0, #0x1a94130                                 
01a93b28  ldr       x1, [x21]                                      
01a93b2c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a93b30  adrp      x29, #0x3a7c000                                
01a93b34  mov       x24, x0                                        
01a93b38  ldr       x29, [x29, #0xde8]                             
01a93b3c  ldr       x8, [x29]                                      
01a93b40  ldr       w9, [x8, #0xe4]                                
01a93b44  cbnz      w9, #0x1a93b54                                 
01a93b48  mov       x0, x8                                         
01a93b4c  bl        #0x183dcb0                                     
01a93b50  ldr       x8, [x29]                                      
01a93b54  adrp      x21, #0x3a7c000                                
01a93b58  ldr       x21, [x21, #0xc08]                             
01a93b5c  ldr       x9, [x21]                                      
01a93b60  ldr       x9, [x9, #0xb8]                                
01a93b64  ldr       x9, [x9]                                       
01a93b68  cbz       x9, #0x1a94130                                 
01a93b6c  ldr       x8, [x8, #0xb8]                                
01a93b70  ldr       x8, [x8, #0xe0]                                
01a93b74  cbz       x8, #0x1a94130                                 
01a93b78  ldrsw     x9, [x9, #0x5cc]                               
01a93b7c  ldr       w10, [x8, #0x18]                               
01a93b80  cmp       w9, w10                                        
01a93b84  b.hs      #0x1a94134                                     
01a93b88  adrp      x22, #0x3a7d000                                
01a93b8c  add       x8, x8, x9, lsl #3                             
01a93b90  add       x0, sp, #0x3c                                  
01a93b94  ldr       x22, [x22, #0x130]                             
01a93b98  mov       x2, xzr                                        
01a93b9c  ldr       x25, [x8, #0x20]                               
01a93ba0  ldr       x1, [x22]                                      
01a93ba4  bl        #0x2de259c                                     // System.Single$$ToString
01a93ba8  adrp      x9, #0x3a7c000                                 
01a93bac  ldr       w8, [x19, #0x148]                              
01a93bb0  mov       x27, x0                                        
01a93bb4  ldr       x9, [x9, #0x4e0]                               
01a93bb8  cmp       w8, #0                                         
01a93bbc  ldr       x26, [x9]                                      
01a93bc0  b.le      #0x1a93d10                                     
01a93bc4  str       w28, [sp]                                      
01a93bc8  adrp      x8, #0x3a7b000                                 
01a93bcc  mov       w1, #5                                         
01a93bd0  ldr       x8, [x8, #0x7c8]                               
01a93bd4  ldr       x0, [x8]                                       
01a93bd8  bl        #0x183dc20                                     
01a93bdc  cbz       x0, #0x1a94130                                 
01a93be0  ldr       w8, [x0, #0x18]                                
01a93be4  mov       x28, x0                                        
01a93be8  cbz       w8, #0x1a94134                                 
01a93bec  adrp      x8, #0x3a8c000                                 
01a93bf0  ldr       x8, [x8, #0x7c0]                               
01a93bf4  ldr       x8, [x8]                                       
01a93bf8  str       x8, [x28, #0x20]                               
01a93bfc  ldr       x8, [x21]                                      
01a93c00  ldr       x8, [x8, #0xb8]                                
01a93c04  ldr       x8, [x8]                                       
01a93c08  cbz       x8, #0x1a94130                                 
01a93c0c  add       x9, x8, #0x484                                 
01a93c10  ldr       w1, [x8, #0x48c]                               
01a93c14  mov       x2, xzr                                        
01a93c18  ldr       x0, [x9]                                       
01a93c1c  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a93c20  ldr       w8, [x28, #0x18]                               
01a93c24  cmp       w8, #1                                         
01a93c28  b.ls      #0x1a94134                                     
01a93c2c  adrp      x9, #0x3a8c000                                 
01a93c30  adrp      x10, #0x3a8c000                                
01a93c34  tst       w0, #1                                         
01a93c38  ldr       x9, [x9, #0x7b8]                               
01a93c3c  ldr       x10, [x10, #0x7c8]                             
01a93c40  csel      x9, x9, x10, ne                                
01a93c44  cmp       w8, #2                                         
01a93c48  ldr       x9, [x9]                                       
01a93c4c  str       x9, [x28, #0x28]                               
01a93c50  b.eq      #0x1a94134                                     
01a93c54  adrp      x8, #0x3a7d000                                 
01a93c58  ldr       x8, [x8, #0x888]                               
01a93c5c  ldr       x8, [x8]                                       
01a93c60  str       x8, [x28, #0x30]                               
01a93c64  ldr       x0, [x29]                                      
01a93c68  ldr       w8, [x0, #0xe4]                                
01a93c6c  cbnz      w8, #0x1a93c78                                 
01a93c70  bl        #0x183dcb0                                     
01a93c74  ldr       x0, [x29]                                      
01a93c78  ldr       x8, [x21]                                      
01a93c7c  ldr       x8, [x8, #0xb8]                                
01a93c80  ldr       x9, [x8]                                       
01a93c84  cbz       x9, #0x1a94130                                 
01a93c88  ldr       x8, [x0, #0xb8]                                
01a93c8c  ldr       x8, [x8, #0x70]                                
01a93c90  cbz       x8, #0x1a94130                                 
01a93c94  ldrsw     x9, [x9, #0x5cc]                               
01a93c98  ldr       w10, [x8, #0x18]                               
01a93c9c  cmp       w9, w10                                        
01a93ca0  b.hs      #0x1a94134                                     
01a93ca4  ldr       w10, [x28, #0x18]                              
01a93ca8  cmp       w10, #3                                        
01a93cac  b.ls      #0x1a94134                                     
01a93cb0  add       x8, x8, x9, lsl #3                             
01a93cb4  cmp       w10, #4                                        
01a93cb8  ldr       x8, [x8, #0x20]                                
01a93cbc  str       x8, [x28, #0x38]                               
01a93cc0  b.eq      #0x1a94134                                     
01a93cc4  adrp      x8, #0x3a7b000                                 
01a93cc8  mov       x0, x28                                        
01a93ccc  mov       x1, xzr                                        
01a93cd0  ldr       x8, [x8, #0x8d0]                               
01a93cd4  ldr       x8, [x8]                                       
01a93cd8  str       x8, [x28, #0x40]                               
01a93cdc  bl        #0x2c6e35c                                     // System.String$$Concat
01a93ce0  ldr       x1, [x22]                                      
01a93ce4  mov       x28, x0                                        
01a93ce8  add       x0, x19, #0x14c                                
01a93cec  mov       x2, xzr                                        
01a93cf0  bl        #0x2de259c                                     // System.Single$$ToString
01a93cf4  mov       x1, x0                                         
01a93cf8  mov       x0, x28                                        
01a93cfc  mov       x2, xzr                                        
01a93d00  bl        #0x2c6434c                                     // System.String$$Format
01a93d04  ldr       w28, [sp]                                      
01a93d08  mov       x3, x0                                         
01a93d0c  b         #0x1a93d1c                                     
01a93d10  adrp      x8, #0x3a7b000                                 
01a93d14  ldr       x8, [x8, #0xaf0]                               
01a93d18  ldr       x3, [x8]                                       
01a93d1c  mov       x0, x25                                        
01a93d20  mov       x1, x26                                        
01a93d24  mov       x2, x27                                        
01a93d28  mov       x4, xzr                                        
01a93d2c  bl        #0x2c6e254                                     // System.String$$Concat
01a93d30  mov       x1, xzr                                        
01a93d34  bl        #0x1ab07b8                                     // TextUtil$$Fix
01a93d38  adrp      x21, #0x3a8c000                                
01a93d3c  ldr       x21, [x21, #0x618]                             
01a93d40  cbz       x24, #0x1a94130                                
01a93d44  ldr       x8, [x24]                                      
01a93d48  mov       x1, x0                                         
01a93d4c  mov       x0, x24                                        
01a93d50  ldr       x9, [x8, #0x5e8]                               
01a93d54  ldr       x2, [x8, #0x5f0]                               
01a93d58  blr       x9                                             
01a93d5c  adrp      x27, #0x3a7c000                                
01a93d60  ldr       x27, [x27, #0xc80]                             
01a93d64  mov       x0, x20                                        
01a93d68  mov       x1, xzr                                        
01a93d6c  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93d70  tbz       w28, #0, #0x1a93de8                            
01a93d74  cbz       x0, #0x1a94130                                 
01a93d78  ldr       x1, [x21]                                      
01a93d7c  mov       x2, xzr                                        
01a93d80  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93d84  cbz       x0, #0x1a94130                                 
01a93d88  adrp      x8, #0x3a7d000                                 
01a93d8c  mov       x2, xzr                                        
01a93d90  ldr       x8, [x8, #0x368]                               
01a93d94  ldr       x1, [x8]                                       
01a93d98  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93d9c  cbz       x0, #0x1a94130                                 
01a93da0  ldr       x1, [x27]                                      
01a93da4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a93da8  adrp      x8, #0x3a7c000                                 
01a93dac  ldr       x8, [x8, #0xc08]                               
01a93db0  ldr       x8, [x8]                                       
01a93db4  ldr       x8, [x8, #0xb8]                                
01a93db8  ldr       x8, [x8]                                       
01a93dbc  cbz       x8, #0x1a94130                                 
01a93dc0  add       x9, x8, #0x484                                 
01a93dc4  mov       x24, x0                                        
01a93dc8  ldr       w1, [x8, #0x48c]                               
01a93dcc  ldr       x0, [x9]                                       
01a93dd0  mov       x2, xzr                                        
01a93dd4  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a93dd8  tbz       w0, #0, #0x1a93eb8                             
01a93ddc  ldp       s0, s1, [x19, #0x90]                           
01a93de0  ldp       s2, s3, [x19, #0x98]                           
01a93de4  b         #0x1a93ef4                                     
01a93de8  cbz       x0, #0x1a94130                                 
01a93dec  ldr       x1, [x21]                                      
01a93df0  mov       x2, xzr                                        
01a93df4  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93df8  cbz       x0, #0x1a94130                                 
01a93dfc  adrp      x8, #0x3a7d000                                 
01a93e00  mov       x2, xzr                                        
01a93e04  ldr       x8, [x8, #0x368]                               
01a93e08  ldr       x1, [x8]                                       
01a93e0c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93e10  cbz       x0, #0x1a94130                                 
01a93e14  ldr       x1, [x27]                                      
01a93e18  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a93e1c  cbz       x0, #0x1a94130                                 
01a93e20  ldr       w8, [x19, #0x15c]                              
01a93e24  lsr       w9, w8, #0x18                                  
01a93e28  ucvtf     s0, w9                                         
01a93e2c  mov       w9, #0x437f0000                                
01a93e30  fmov      s4, w9                                         
01a93e34  ubfx      w9, w8, #0x10, #8                              
01a93e38  fdiv      s3, s0, s4                                     
01a93e3c  ucvtf     s0, w9                                         
01a93e40  ubfx      w9, w8, #8, #8                                 
01a93e44  and       w8, w8, #0xff                                  
01a93e48  fdiv      s2, s0, s4                                     
01a93e4c  ucvtf     s0, w9                                         
01a93e50  fdiv      s1, s0, s4                                     
01a93e54  ucvtf     s0, w8                                         
01a93e58  ldr       x8, [x0]                                       
01a93e5c  ldr       x9, [x8, #0x2a8]                               
01a93e60  ldr       x1, [x8, #0x2b0]                               
01a93e64  fdiv      s0, s0, s4                                     
01a93e68  blr       x9                                             
01a93e6c  mov       x0, x20                                        
01a93e70  mov       x1, xzr                                        
01a93e74  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93e78  cbz       x0, #0x1a94130                                 
01a93e7c  ldr       x1, [x21]                                      
01a93e80  mov       x2, xzr                                        
01a93e84  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93e88  cbz       x0, #0x1a94130                                 
01a93e8c  adrp      x8, #0x3a7d000                                 
01a93e90  mov       x2, xzr                                        
01a93e94  ldr       x8, [x8, #0x38]                                
01a93e98  ldr       x1, [x8]                                       
01a93e9c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93ea0  cbz       x0, #0x1a94130                                 
01a93ea4  mov       x1, xzr                                        
01a93ea8  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93eac  cbz       x0, #0x1a94130                                 
01a93eb0  mov       w1, wzr                                        
01a93eb4  b         #0x1a93f54                                     
01a93eb8  ldr       w8, [x19, #0x160]                              
01a93ebc  and       w9, w8, #0xff                                  
01a93ec0  ucvtf     s0, w9                                         
01a93ec4  mov       w9, #0x437f0000                                
01a93ec8  fmov      s3, w9                                         
01a93ecc  ubfx      w9, w8, #8, #8                                 
01a93ed0  ucvtf     s1, w9                                         
01a93ed4  ubfx      w9, w8, #0x10, #8                              
01a93ed8  lsr       w8, w8, #0x18                                  
01a93edc  fdiv      s0, s0, s3                                     
01a93ee0  ucvtf     s2, w9                                         
01a93ee4  ucvtf     s4, w8                                         
01a93ee8  fdiv      s1, s1, s3                                     
01a93eec  fdiv      s2, s2, s3                                     
01a93ef0  fdiv      s3, s4, s3                                     
01a93ef4  cbz       x24, #0x1a94130                                
01a93ef8  ldr       x8, [x24]                                      
01a93efc  mov       x0, x24                                        
01a93f00  ldr       x9, [x8, #0x2a8]                               
01a93f04  ldr       x1, [x8, #0x2b0]                               
01a93f08  blr       x9                                             
01a93f0c  mov       x0, x20                                        
01a93f10  mov       x1, xzr                                        
01a93f14  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93f18  cbz       x0, #0x1a94130                                 
01a93f1c  ldr       x1, [x21]                                      
01a93f20  mov       x2, xzr                                        
01a93f24  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93f28  cbz       x0, #0x1a94130                                 
01a93f2c  adrp      x8, #0x3a7d000                                 
01a93f30  mov       x2, xzr                                        
01a93f34  ldr       x8, [x8, #0x38]                                
01a93f38  ldr       x1, [x8]                                       
01a93f3c  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a93f40  cbz       x0, #0x1a94130                                 
01a93f44  mov       x1, xzr                                        
01a93f48  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a93f4c  cbz       x0, #0x1a94130                                 
01a93f50  mov       w1, #1                                         
01a93f54  mov       x2, xzr                                        
01a93f58  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a93f5c  and       w1, w28, #1                                    
01a93f60  mov       x0, x20                                        
01a93f64  mov       x2, xzr                                        
01a93f68  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a93f6c  ldr       x0, [x20, #0x100]                              
01a93f70  cbz       x0, #0x1a94130                                 
01a93f74  mov       x1, xzr                                        
01a93f78  bl        #0x35d871c                                     // UnityEngine.Events.UnityEventBase$$RemoveAllListeners
01a93f7c  ldr       w8, [x23, #0x18]                               
01a93f80  cmp       w8, #1                                         
01a93f84  b.lt      #0x1a93fc8                                     
01a93f88  adrp      x8, #0x3a7c000                                 
01a93f8c  ldr       x24, [x20, #0x100]                             
01a93f90  ldr       x8, [x8, #0xc78]                               
01a93f94  ldr       x0, [x8]                                       
01a93f98  bl        #0x183ddcc                                     
01a93f9c  adrp      x8, #0x3a8c000                                 
01a93fa0  ldr       x8, [x8, #0x7a0]                               
01a93fa4  ldr       x2, [x8]                                       
01a93fa8  mov       x1, x23                                        
01a93fac  mov       x3, xzr                                        
01a93fb0  mov       x25, x0                                        
01a93fb4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a93fb8  cbz       x24, #0x1a94130                                
01a93fbc  mov       x0, x24                                        
01a93fc0  mov       x1, x25                                        
01a93fc4  b         #0x1a93fe0                                     
01a93fc8  ldr       x24, [x20, #0x100]                             
01a93fcc  cmn       w8, #1                                         
01a93fd0  b.eq      #0x1a94114                                     
01a93fd4  cbz       x24, #0x1a94130                                
01a93fd8  ldr       x1, [x23, #0x20]                               
01a93fdc  mov       x0, x24                                        
01a93fe0  mov       x2, xzr                                        
01a93fe4  bl        #0x35d8878                                     // UnityEngine.Events.UnityEvent$$AddListener
01a93fe8  mov       x0, x20                                        
01a93fec  mov       x1, xzr                                        
01a93ff0  bl        #0x35c61f0                                     // UnityEngine.Component$$get_transform
01a93ff4  cbz       x0, #0x1a94130                                 
01a93ff8  ldr       x1, [x21]                                      
01a93ffc  mov       x2, xzr                                        
01a94000  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a94004  cbz       x0, #0x1a94130                                 
01a94008  adrp      x8, #0x3a7d000                                 
01a9400c  mov       x2, xzr                                        
01a94010  ldr       x8, [x8, #0x368]                               
01a94014  ldr       x1, [x8]                                       
01a94018  bl        #0x35d5eb8                                     // UnityEngine.Transform$$Find
01a9401c  cbz       x0, #0x1a94130                                 
01a94020  ldr       x1, [x27]                                      
01a94024  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a94028  mov       x24, x0                                        
01a9402c  ldr       x0, [sp, #8]                                   
01a94030  mov       x1, xzr                                        
01a94034  bl        #0x1ab07b8                                     // TextUtil$$Fix
01a94038  cbz       x24, #0x1a94130                                
01a9403c  ldr       x8, [x24]                                      
01a94040  mov       x1, x0                                         
01a94044  mov       x0, x24                                        
01a94048  ldr       x9, [x8, #0x5e8]                               
01a9404c  ldr       x2, [x8, #0x5f0]                               
01a94050  blr       x9                                             
01a94054  ldrb      w21, [x19, #0x116]                             
01a94058  mov       x0, x20                                        
01a9405c  mov       x1, xzr                                        
01a94060  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a94064  cbz       w21, #0x1a94078                                
01a94068  adrp      x21, #0x3a7d000                                
01a9406c  ldr       x21, [x21, #0x428]                             
01a94070  cbnz      x0, #0x1a940a8                                 
01a94074  b         #0x1a94130                                     
01a94078  cbz       x0, #0x1a94130                                 
01a9407c  and       w1, w28, #1                                    
01a94080  mov       x2, xzr                                        
01a94084  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a94088  adrp      x21, #0x3a7d000                                
01a9408c  ldr       x8, [x23, #0x20]                               
01a94090  ldr       x21, [x21, #0x428]                             
01a94094  cbz       x8, #0x1a940b4                                 
01a94098  mov       x0, x20                                        
01a9409c  mov       x1, xzr                                        
01a940a0  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a940a4  cbz       x0, #0x1a94130                                 
01a940a8  mov       w1, #1                                         
01a940ac  mov       x2, xzr                                        
01a940b0  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a940b4  ldr       x0, [x19, #0x28]                               
01a940b8  cbz       x0, #0x1a94130                                 
01a940bc  adrp      x8, #0x3a7c000                                 
01a940c0  ldr       x8, [x8, #0xf20]                               
01a940c4  ldr       x1, [x8]                                       
01a940c8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a940cc  ldr       x8, [x21]                                      
01a940d0  mov       x19, x0                                        
01a940d4  ldr       w9, [x8, #0xe4]                                
01a940d8  cbnz      w9, #0x1a940e4                                 
01a940dc  mov       x0, x8                                         
01a940e0  bl        #0x183dcb0                                     
01a940e4  mov       x0, x19                                        
01a940e8  mov       x1, xzr                                        
01a940ec  bl        #0x38572c0                                     // UnityEngine.UI.LayoutRebuilder$$ForceRebuildLayoutImmediate
01a940f0  ldp       x20, x19, [sp, #0x90]                          
01a940f4  ldr       d8, [sp, #0x30]                                
01a940f8  ldp       x22, x21, [sp, #0x80]                          
01a940fc  ldp       x24, x23, [sp, #0x70]                          
01a94100  ldp       x26, x25, [sp, #0x60]                          
01a94104  ldp       x28, x27, [sp, #0x50]                          
01a94108  ldp       x29, x30, [sp, #0x40]                          
01a9410c  add       sp, sp, #0xa0                                  
01a94110  ret                                                      
01a94114  adrp      x8, #0x3a7c000                                 
01a94118  ldr       x8, [x8, #0xc78]                               
01a9411c  ldr       x0, [x8]                                       
01a94120  bl        #0x183ddcc                                     
01a94124  adrp      x8, #0x3a8c000                                 
01a94128  ldr       x8, [x8, #0x7a8]                               
01a9412c  b         #0x1a93fa4                                     
01a94130  bl        #0x183dddc                                     
01a94134  bl        #0x183dde4                                     