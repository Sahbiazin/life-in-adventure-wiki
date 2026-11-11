void EventCtrl__RefreshChocieBtnForItems (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a9e924 to 0x1a9f440
01a9e924  str       d10, [sp, #-0x80]!                             
01a9e928  stp       d9, d8, [sp, #0x10]                            
01a9e92c  stp       x29, x30, [sp, #0x20]                          
01a9e930  stp       x28, x27, [sp, #0x30]                          
01a9e934  stp       x26, x25, [sp, #0x40]                          
01a9e938  stp       x24, x23, [sp, #0x50]                          
01a9e93c  stp       x22, x21, [sp, #0x60]                          
01a9e940  stp       x20, x19, [sp, #0x70]                          
01a9e944  sub       sp, sp, #0x1b0                                 
01a9e948  adrp      x20, #0x3d14000                                
01a9e94c  adrp      x25, #0x3a7c000                                
01a9e950  mov       x19, x0                                        
01a9e954  ldrb      w8, [x20, #0xcea]                              
01a9e958  ldr       x25, [x25, #0xc08]                             
01a9e95c  tbnz      w8, #0, #0x1a9ea58                             
01a9e960  adrp      x0, #0x3a7c000                                 
01a9e964  ldr       x0, [x0, #0xf20]                               
01a9e968  bl        #0x183db90                                     
01a9e96c  adrp      x0, #0x3a7c000                                 
01a9e970  ldr       x0, [x0, #0xc08]                               
01a9e974  bl        #0x183db90                                     
01a9e978  adrp      x0, #0x3a8c000                                 
01a9e97c  ldr       x0, [x0, #0xad0]                               
01a9e980  bl        #0x183db90                                     
01a9e984  adrp      x0, #0x3a8c000                                 
01a9e988  ldr       x0, [x0, #0x698]                               
01a9e98c  bl        #0x183db90                                     
01a9e990  adrp      x0, #0x3a8c000                                 
01a9e994  ldr       x0, [x0, #0x610]                               
01a9e998  bl        #0x183db90                                     
01a9e99c  adrp      x0, #0x3a8c000                                 
01a9e9a0  ldr       x0, [x0, #0x6a0]                               
01a9e9a4  bl        #0x183db90                                     
01a9e9a8  adrp      x0, #0x3a8c000                                 
01a9e9ac  ldr       x0, [x0, #0x6a8]                               
01a9e9b0  bl        #0x183db90                                     
01a9e9b4  adrp      x0, #0x3a7c000                                 
01a9e9b8  ldr       x0, [x0, #0xde8]                               
01a9e9bc  bl        #0x183db90                                     
01a9e9c0  adrp      x0, #0x3a7b000                                 
01a9e9c4  ldr       x0, [x0, #0x7c8]                               
01a9e9c8  bl        #0x183db90                                     
01a9e9cc  adrp      x0, #0x3a8c000                                 
01a9e9d0  ldr       x0, [x0, #0xad8]                               
01a9e9d4  bl        #0x183db90                                     
01a9e9d8  adrp      x0, #0x3a8c000                                 
01a9e9dc  ldr       x0, [x0, #0xae0]                               
01a9e9e0  bl        #0x183db90                                     
01a9e9e4  adrp      x0, #0x3a8c000                                 
01a9e9e8  ldr       x0, [x0, #0xae8]                               
01a9e9ec  bl        #0x183db90                                     
01a9e9f0  adrp      x0, #0x3a7c000                                 
01a9e9f4  ldr       x0, [x0, #0xc78]                               
01a9e9f8  bl        #0x183db90                                     
01a9e9fc  adrp      x0, #0x3a7c000                                 
01a9ea00  ldr       x0, [x0, #0x4e0]                               
01a9ea04  bl        #0x183db90                                     
01a9ea08  adrp      x0, #0x3a8c000                                 
01a9ea0c  ldr       x0, [x0, #0x708]                               
01a9ea10  bl        #0x183db90                                     
01a9ea14  adrp      x0, #0x3a8c000                                 
01a9ea18  ldr       x0, [x0, #0x710]                               
01a9ea1c  bl        #0x183db90                                     
01a9ea20  adrp      x0, #0x3a8c000                                 
01a9ea24  ldr       x0, [x0, #0x718]                               
01a9ea28  bl        #0x183db90                                     
01a9ea2c  adrp      x0, #0x3a7d000                                 
01a9ea30  ldr       x0, [x0, #0x130]                               
01a9ea34  bl        #0x183db90                                     
01a9ea38  adrp      x0, #0x3a7e000                                 
01a9ea3c  ldr       x0, [x0, #0x470]                               
01a9ea40  bl        #0x183db90                                     
01a9ea44  adrp      x0, #0x3a7b000                                 
01a9ea48  ldr       x0, [x0, #0xaf0]                               
01a9ea4c  bl        #0x183db90                                     
01a9ea50  mov       w8, #1                                         
01a9ea54  strb      w8, [x20, #0xcea]                              
01a9ea58  ldr       x8, [x25]                                      
01a9ea5c  ldr       x8, [x8, #0xb8]                                
01a9ea60  ldr       x8, [x8]                                       
01a9ea64  cbz       x8, #0x1a9f438                                 
01a9ea68  add       x9, x8, #0x214                                 
01a9ea6c  ldr       w8, [x8, #0x224]                               
01a9ea70  add       x0, sp, #0x190                                 
01a9ea74  ldr       q0, [x9]                                       
01a9ea78  mov       x1, xzr                                        
01a9ea7c  str       w8, [sp, #0x1a0]                               
01a9ea80  str       q0, [sp, #0x190]                               
01a9ea84  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ea88  cmp       w0, #3                                         
01a9ea8c  b.eq      #0x1a9eb28                                     
01a9ea90  cmp       w0, #2                                         
01a9ea94  b.ne      #0x1a9f410                                     
01a9ea98  mov       x0, x19                                        
01a9ea9c  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a9eaa0  mov       x0, x19                                        
01a9eaa4  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01a9eaa8  ldr       x0, [x19, #0x30]                               
01a9eaac  cbz       x0, #0x1a9f438                                 
01a9eab0  fmov      s0, #1.00000000                                
01a9eab4  mov       x1, xzr                                        
01a9eab8  bl        #0x3843b74                                     // UnityEngine.CanvasGroup$$set_alpha
01a9eabc  ldr       x0, [x19, #0x28]                               
01a9eac0  mov       w8, #1                                         
01a9eac4  strb      w8, [x19, #0x1a8]                              
01a9eac8  cbz       x0, #0x1a9f438                                 
01a9eacc  adrp      x20, #0x3a7c000                                
01a9ead0  ldr       x20, [x20, #0xf20]                             
01a9ead4  ldr       x1, [x20]                                      
01a9ead8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9eadc  cbz       x0, #0x1a9f438                                 
01a9eae0  mov       x1, xzr                                        
01a9eae4  bl        #0x35d3c14                                     // UnityEngine.Transform$$get_localPosition
01a9eae8  mov       x0, x19                                        
01a9eaec  fmov      s8, s0                                         
01a9eaf0  fmov      s9, s1                                         
01a9eaf4  fmov      s10, s2                                        
01a9eaf8  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a9eafc  ldr       x0, [x19, #0x28]                               
01a9eb00  cbz       x0, #0x1a9f438                                 
01a9eb04  ldr       x1, [x20]                                      
01a9eb08  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9eb0c  cbz       x0, #0x1a9f438                                 
01a9eb10  fmov      s0, s8                                         
01a9eb14  fmov      s1, s9                                         
01a9eb18  mov       x1, xzr                                        
01a9eb1c  fmov      s2, s10                                        
01a9eb20  bl        #0x35d3cd4                                     // UnityEngine.Transform$$set_localPosition
01a9eb24  b         #0x1a9f410                                     
01a9eb28  ldr       x8, [x25]                                      
01a9eb2c  ldr       x8, [x8, #0xb8]                                
01a9eb30  ldr       x8, [x8]                                       
01a9eb34  cbz       x8, #0x1a9f438                                 
01a9eb38  add       x9, x8, #0x228                                 
01a9eb3c  ldr       w8, [x8, #0x238]                               
01a9eb40  ldr       x20, [x19, #0x118]                             
01a9eb44  ldr       q0, [x9]                                       
01a9eb48  add       x0, sp, #0x170                                 
01a9eb4c  mov       x1, xzr                                        
01a9eb50  str       w8, [sp, #0x180]                               
01a9eb54  str       q0, [sp, #0x170]                               
01a9eb58  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9eb5c  cbz       x20, #0x1a9f438                                
01a9eb60  ldr       w8, [x20, #0x18]                               
01a9eb64  cmp       w0, w8                                         
01a9eb68  b.hs      #0x1a9f43c                                     
01a9eb6c  ldr       x8, [x25]                                      
01a9eb70  ldr       x8, [x8, #0xb8]                                
01a9eb74  ldr       x8, [x8]                                       
01a9eb78  cbz       x8, #0x1a9f438                                 
01a9eb7c  add       x9, x20, w0, sxtw #3                           
01a9eb80  add       x10, x8, #0x23c                                
01a9eb84  ldr       w8, [x8, #0x24c]                               
01a9eb88  ldr       q0, [x10]                                      
01a9eb8c  add       x0, sp, #0x150                                 
01a9eb90  mov       x1, xzr                                        
01a9eb94  ldr       x20, [x9, #0x20]                               
01a9eb98  str       w8, [sp, #0x160]                               
01a9eb9c  str       q0, [sp, #0x150]                               
01a9eba0  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9eba4  cbz       x20, #0x1a9f438                                
01a9eba8  adrp      x22, #0x3a8c000                                
01a9ebac  mov       w1, w0                                         
01a9ebb0  mov       x0, x20                                        
01a9ebb4  ldr       x22, [x22, #0x6a8]                             
01a9ebb8  ldr       x2, [x22]                                      
01a9ebbc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ebc0  cbz       x0, #0x1a9f438                                 
01a9ebc4  ldr       x8, [x25]                                      
01a9ebc8  ldr       x8, [x8, #0xb8]                                
01a9ebcc  ldr       x8, [x8]                                       
01a9ebd0  cbz       x8, #0x1a9f438                                 
01a9ebd4  ldr       q0, [x8, #0x250]                               
01a9ebd8  ldr       w8, [x8, #0x260]                               
01a9ebdc  mov       x1, xzr                                        
01a9ebe0  ldr       x20, [x0, #0x38]                               
01a9ebe4  add       x0, sp, #0x130                                 
01a9ebe8  str       q0, [sp, #0x130]                               
01a9ebec  str       w8, [sp, #0x140]                               
01a9ebf0  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ebf4  cbz       x20, #0x1a9f438                                
01a9ebf8  adrp      x23, #0x3a8c000                                
01a9ebfc  mov       w1, w0                                         
01a9ec00  mov       x0, x20                                        
01a9ec04  ldr       x23, [x23, #0x698]                             
01a9ec08  ldr       x2, [x23]                                      
01a9ec0c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ec10  cbz       x0, #0x1a9f438                                 
01a9ec14  ldr       x0, [x0, #0x20]                                
01a9ec18  cbz       x0, #0x1a9f438                                 
01a9ec1c  adrp      x24, #0x3a8c000                                
01a9ec20  ldr       x24, [x24, #0x6a0]                             
01a9ec24  ldr       w1, [x19, #0xe4]                               
01a9ec28  ldr       x2, [x24]                                      
01a9ec2c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ec30  cbz       x0, #0x1a9f438                                 
01a9ec34  ldr       w8, [x0, #0x18]                                
01a9ec38  cmn       w8, #1                                         
01a9ec3c  b.eq      #0x1a9f410                                     
01a9ec40  ldr       x8, [x25]                                      
01a9ec44  ldr       x8, [x8, #0xb8]                                
01a9ec48  ldr       x8, [x8]                                       
01a9ec4c  cbz       x8, #0x1a9f438                                 
01a9ec50  add       x9, x8, #0x228                                 
01a9ec54  ldr       w8, [x8, #0x238]                               
01a9ec58  ldr       x20, [x19, #0x118]                             
01a9ec5c  ldr       q0, [x9]                                       
01a9ec60  add       x0, sp, #0x110                                 
01a9ec64  mov       x1, xzr                                        
01a9ec68  str       w8, [sp, #0x120]                               
01a9ec6c  str       q0, [sp, #0x110]                               
01a9ec70  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ec74  cbz       x20, #0x1a9f438                                
01a9ec78  ldr       w8, [x20, #0x18]                               
01a9ec7c  cmp       w0, w8                                         
01a9ec80  b.hs      #0x1a9f43c                                     
01a9ec84  ldr       x8, [x25]                                      
01a9ec88  ldr       x8, [x8, #0xb8]                                
01a9ec8c  ldr       x8, [x8]                                       
01a9ec90  cbz       x8, #0x1a9f438                                 
01a9ec94  add       x9, x20, w0, sxtw #3                           
01a9ec98  add       x10, x8, #0x23c                                
01a9ec9c  ldr       w8, [x8, #0x24c]                               
01a9eca0  ldr       q0, [x10]                                      
01a9eca4  add       x0, sp, #0xf0                                  
01a9eca8  mov       x1, xzr                                        
01a9ecac  ldr       x20, [x9, #0x20]                               
01a9ecb0  str       w8, [sp, #0x100]                               
01a9ecb4  str       q0, [sp, #0xf0]                                
01a9ecb8  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ecbc  cbz       x20, #0x1a9f438                                
01a9ecc0  ldr       x2, [x22]                                      
01a9ecc4  mov       w1, w0                                         
01a9ecc8  mov       x0, x20                                        
01a9eccc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ecd0  cbz       x0, #0x1a9f438                                 
01a9ecd4  ldr       x8, [x25]                                      
01a9ecd8  ldr       x8, [x8, #0xb8]                                
01a9ecdc  ldr       x8, [x8]                                       
01a9ece0  cbz       x8, #0x1a9f438                                 
01a9ece4  ldr       q0, [x8, #0x250]                               
01a9ece8  ldr       w8, [x8, #0x260]                               
01a9ecec  mov       x1, xzr                                        
01a9ecf0  ldr       x20, [x0, #0x38]                               
01a9ecf4  add       x0, sp, #0xd0                                  
01a9ecf8  str       q0, [sp, #0xd0]                                
01a9ecfc  str       w8, [sp, #0xe0]                                
01a9ed00  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ed04  cbz       x20, #0x1a9f438                                
01a9ed08  ldr       x2, [x23]                                      
01a9ed0c  mov       w1, w0                                         
01a9ed10  mov       x0, x20                                        
01a9ed14  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ed18  cbz       x0, #0x1a9f438                                 
01a9ed1c  ldr       x0, [x0, #0x20]                                
01a9ed20  cbz       x0, #0x1a9f438                                 
01a9ed24  ldr       w1, [x19, #0xe4]                               
01a9ed28  ldr       x2, [x24]                                      
01a9ed2c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ed30  cbz       x0, #0x1a9f438                                 
01a9ed34  ldr       w8, [x0, #0x18]                                
01a9ed38  cmn       w8, #3                                         
01a9ed3c  b.eq      #0x1a9f410                                     
01a9ed40  ldr       x8, [x25]                                      
01a9ed44  ldr       x8, [x8, #0xb8]                                
01a9ed48  ldr       x0, [x8]                                       
01a9ed4c  cbz       x0, #0x1a9f438                                 
01a9ed50  mov       w1, wzr                                        
01a9ed54  mov       x2, xzr                                        
01a9ed58  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9ed5c  fcmp      s0, #0.0                                       
01a9ed60  b.ls      #0x1a9f410                                     
01a9ed64  ldr       x8, [x25]                                      
01a9ed68  ldr       x8, [x8, #0xb8]                                
01a9ed6c  ldr       x0, [x8]                                       
01a9ed70  cbz       x0, #0x1a9f438                                 
01a9ed74  mov       w1, #1                                         
01a9ed78  mov       x2, xzr                                        
01a9ed7c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9ed80  fcmp      s0, #0.0                                       
01a9ed84  b.ls      #0x1a9f410                                     
01a9ed88  ldr       x8, [x25]                                      
01a9ed8c  ldr       x8, [x8, #0xb8]                                
01a9ed90  ldr       x8, [x8]                                       
01a9ed94  cbz       x8, #0x1a9f438                                 
01a9ed98  add       x9, x8, #0x228                                 
01a9ed9c  ldr       w8, [x8, #0x238]                               
01a9eda0  ldr       x20, [x19, #0x118]                             
01a9eda4  ldr       q0, [x9]                                       
01a9eda8  add       x0, sp, #0xb0                                  
01a9edac  mov       x1, xzr                                        
01a9edb0  str       w8, [sp, #0xc0]                                
01a9edb4  str       q0, [sp, #0xb0]                                
01a9edb8  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9edbc  cbz       x20, #0x1a9f438                                
01a9edc0  ldr       w8, [x20, #0x18]                               
01a9edc4  cmp       w0, w8                                         
01a9edc8  b.hs      #0x1a9f43c                                     
01a9edcc  ldr       x8, [x25]                                      
01a9edd0  ldr       x8, [x8, #0xb8]                                
01a9edd4  ldr       x8, [x8]                                       
01a9edd8  cbz       x8, #0x1a9f438                                 
01a9eddc  add       x9, x20, w0, sxtw #3                           
01a9ede0  add       x10, x8, #0x23c                                
01a9ede4  ldr       w8, [x8, #0x24c]                               
01a9ede8  ldr       q0, [x10]                                      
01a9edec  add       x0, sp, #0x90                                  
01a9edf0  mov       x1, xzr                                        
01a9edf4  ldr       x20, [x9, #0x20]                               
01a9edf8  str       w8, [sp, #0xa0]                                
01a9edfc  str       q0, [sp, #0x90]                                
01a9ee00  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ee04  cbz       x20, #0x1a9f438                                
01a9ee08  ldr       x2, [x22]                                      
01a9ee0c  mov       w1, w0                                         
01a9ee10  mov       x0, x20                                        
01a9ee14  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ee18  cbz       x0, #0x1a9f438                                 
01a9ee1c  ldr       x8, [x25]                                      
01a9ee20  ldr       x8, [x8, #0xb8]                                
01a9ee24  ldr       x8, [x8]                                       
01a9ee28  cbz       x8, #0x1a9f438                                 
01a9ee2c  ldr       q0, [x8, #0x250]                               
01a9ee30  ldr       w8, [x8, #0x260]                               
01a9ee34  mov       x1, xzr                                        
01a9ee38  ldr       x20, [x0, #0x38]                               
01a9ee3c  add       x0, sp, #0x70                                  
01a9ee40  str       q0, [sp, #0x70]                                
01a9ee44  str       w8, [sp, #0x80]                                
01a9ee48  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ee4c  cbz       x20, #0x1a9f438                                
01a9ee50  ldr       x2, [x23]                                      
01a9ee54  mov       w1, w0                                         
01a9ee58  mov       x0, x20                                        
01a9ee5c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ee60  cbz       x0, #0x1a9f438                                 
01a9ee64  ldr       x0, [x0, #0x20]                                
01a9ee68  cbz       x0, #0x1a9f438                                 
01a9ee6c  ldr       w1, [x19, #0xe4]                               
01a9ee70  ldr       x2, [x24]                                      
01a9ee74  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ee78  cbz       x0, #0x1a9f438                                 
01a9ee7c  ldr       w8, [x0, #0x18]                                
01a9ee80  cmn       w8, #2                                         
01a9ee84  b.eq      #0x1a9f410                                     
01a9ee88  ldrb      w8, [x19, #0x1e0]                              
01a9ee8c  cbz       w8, #0x1a9ea98                                 
01a9ee90  adrp      x8, #0x3a8c000                                 
01a9ee94  ldr       x8, [x8, #0xae8]                               
01a9ee98  ldr       x0, [x8]                                       
01a9ee9c  bl        #0x183ddcc                                     
01a9eea0  mov       x1, xzr                                        
01a9eea4  mov       x20, x0                                        
01a9eea8  bl        #0x1ab1ef4                                     // EventCtrl.<>c__DisplayClass121_0$$.ctor
01a9eeac  cbz       x20, #0x1a9f438                                
01a9eeb0  ldr       x8, [x25]                                      
01a9eeb4  str       x19, [x20, #0x18]                              
01a9eeb8  ldr       x8, [x8, #0xb8]                                
01a9eebc  ldr       x8, [x8]                                       
01a9eec0  cbz       x8, #0x1a9f438                                 
01a9eec4  add       x9, x8, #0x228                                 
01a9eec8  ldr       w8, [x8, #0x238]                               
01a9eecc  ldr       x21, [x19, #0x118]                             
01a9eed0  ldr       q0, [x9]                                       
01a9eed4  add       x0, sp, #0x50                                  
01a9eed8  mov       x1, xzr                                        
01a9eedc  str       w8, [sp, #0x60]                                
01a9eee0  str       q0, [sp, #0x50]                                
01a9eee4  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9eee8  cbz       x21, #0x1a9f438                                
01a9eeec  ldr       w8, [x21, #0x18]                               
01a9eef0  cmp       w0, w8                                         
01a9eef4  b.hs      #0x1a9f43c                                     
01a9eef8  ldr       x8, [x25]                                      
01a9eefc  ldr       x8, [x8, #0xb8]                                
01a9ef00  ldr       x8, [x8]                                       
01a9ef04  cbz       x8, #0x1a9f438                                 
01a9ef08  add       x9, x21, w0, sxtw #3                           
01a9ef0c  add       x10, x8, #0x23c                                
01a9ef10  ldr       w8, [x8, #0x24c]                               
01a9ef14  ldr       q0, [x10]                                      
01a9ef18  add       x0, sp, #0x30                                  
01a9ef1c  mov       x1, xzr                                        
01a9ef20  ldr       x21, [x9, #0x20]                               
01a9ef24  str       w8, [sp, #0x40]                                
01a9ef28  str       q0, [sp, #0x30]                                
01a9ef2c  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ef30  cbz       x21, #0x1a9f438                                
01a9ef34  ldr       x2, [x22]                                      
01a9ef38  mov       w1, w0                                         
01a9ef3c  mov       x0, x21                                        
01a9ef40  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ef44  cbz       x0, #0x1a9f438                                 
01a9ef48  ldr       x8, [x25]                                      
01a9ef4c  ldr       x8, [x8, #0xb8]                                
01a9ef50  ldr       x8, [x8]                                       
01a9ef54  cbz       x8, #0x1a9f438                                 
01a9ef58  ldr       q0, [x8, #0x250]                               
01a9ef5c  ldr       w8, [x8, #0x260]                               
01a9ef60  mov       x1, xzr                                        
01a9ef64  ldr       x21, [x0, #0x38]                               
01a9ef68  add       x0, sp, #0x10                                  
01a9ef6c  str       q0, [sp, #0x10]                                
01a9ef70  str       w8, [sp, #0x20]                                
01a9ef74  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9ef78  cbz       x21, #0x1a9f438                                
01a9ef7c  ldr       x2, [x23]                                      
01a9ef80  mov       w1, w0                                         
01a9ef84  mov       x0, x21                                        
01a9ef88  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ef8c  cbz       x0, #0x1a9f438                                 
01a9ef90  ldr       x0, [x0, #0x20]                                
01a9ef94  cbz       x0, #0x1a9f438                                 
01a9ef98  ldr       w1, [x19, #0xe4]                               
01a9ef9c  ldr       x2, [x24]                                      
01a9efa0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9efa4  cbz       x0, #0x1a9f438                                 
01a9efa8  ldr       w1, [x0, #0x38]                                
01a9efac  mov       x0, x19                                        
01a9efb0  bl        #0x1a9e368                                     // EventCtrl$$GetWinRateStrByPercent
01a9efb4  adrp      x8, #0x3a7d000                                 
01a9efb8  mov       x21, x20                                       
01a9efbc  mov       x2, xzr                                        
01a9efc0  ldr       x8, [x8, #0x130]                               
01a9efc4  str       s0, [x21, #0x10]!                              
01a9efc8  mov       x0, x21                                        
01a9efcc  ldr       x1, [x8]                                       
01a9efd0  bl        #0x2de259c                                     // System.Single$$ToString
01a9efd4  adrp      x8, #0xa13000                                  
01a9efd8  ldr       s0, [x21]                                      
01a9efdc  ldr       s1, [x8, #0xc8]                                
01a9efe0  fcmp      s0, s1                                         
01a9efe4  b.pl      #0x1a9eff4                                     
01a9efe8  adrp      x8, #0x3a8c000                                 
01a9efec  ldr       x8, [x8, #0x710]                               
01a9eff0  b         #0x1a9f010                                     
01a9eff4  adrp      x8, #0xa13000                                  
01a9eff8  mov       x21, x0                                        
01a9effc  ldr       s1, [x8, #0x1c4]                               
01a9f000  fcmp      s0, s1                                         
01a9f004  b.le      #0x1a9f014                                     
01a9f008  adrp      x8, #0x3a8c000                                 
01a9f00c  ldr       x8, [x8, #0x708]                               
01a9f010  ldr       x21, [x8]                                      
01a9f014  ldr       x0, [x19, #0xb8]                               
01a9f018  cbz       x0, #0x1a9f438                                 
01a9f01c  adrp      x28, #0x3a8c000                                
01a9f020  mov       w1, wzr                                        
01a9f024  ldr       x28, [x28, #0x610]                             
01a9f028  ldr       x2, [x28]                                      
01a9f02c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9f030  adrp      x27, #0x3a7c000                                
01a9f034  mov       x22, x0                                        
01a9f038  ldr       x27, [x27, #0xc78]                             
01a9f03c  ldr       x8, [x27]                                      
01a9f040  mov       x0, x8                                         
01a9f044  bl        #0x183ddcc                                     
01a9f048  adrp      x8, #0x3a8c000                                 
01a9f04c  mov       x1, x20                                        
01a9f050  mov       x3, xzr                                        
01a9f054  ldr       x8, [x8, #0xad8]                               
01a9f058  mov       x23, x0                                        
01a9f05c  ldr       x2, [x8]                                       
01a9f060  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9f064  adrp      x29, #0x3a7b000                                
01a9f068  mov       w1, #6                                         
01a9f06c  ldr       x29, [x29, #0x7c8]                             
01a9f070  ldr       x0, [x29]                                      
01a9f074  bl        #0x183dc20                                     
01a9f078  adrp      x26, #0x3a7c000                                
01a9f07c  mov       x24, x0                                        
01a9f080  ldr       x26, [x26, #0xde8]                             
01a9f084  ldr       x8, [x26]                                      
01a9f088  ldr       w9, [x8, #0xe4]                                
01a9f08c  cbnz      w9, #0x1a9f09c                                 
01a9f090  mov       x0, x8                                         
01a9f094  bl        #0x183dcb0                                     
01a9f098  ldr       x8, [x26]                                      
01a9f09c  ldr       x9, [x25]                                      
01a9f0a0  ldr       x9, [x9, #0xb8]                                
01a9f0a4  ldr       x10, [x9]                                      
01a9f0a8  cbz       x10, #0x1a9f438                                
01a9f0ac  ldr       x8, [x8, #0xb8]                                
01a9f0b0  ldr       x9, [x8, #0x90]                                
01a9f0b4  cbz       x9, #0x1a9f438                                 
01a9f0b8  ldrsw     x10, [x10, #0x5cc]                             
01a9f0bc  ldr       w8, [x9, #0x18]                                
01a9f0c0  cmp       w10, w8                                        
01a9f0c4  b.hs      #0x1a9f43c                                     
01a9f0c8  cbz       x24, #0x1a9f438                                
01a9f0cc  ldr       w8, [x24, #0x18]                               
01a9f0d0  cbz       w8, #0x1a9f43c                                 
01a9f0d4  add       x9, x9, x10, lsl #3                            
01a9f0d8  cmp       w8, #1                                         
01a9f0dc  ldr       x9, [x9, #0x20]                                
01a9f0e0  str       x9, [x24, #0x20]                               
01a9f0e4  b.eq      #0x1a9f43c                                     
01a9f0e8  adrp      x9, #0x3a8c000                                 
01a9f0ec  ldr       x9, [x9, #0x718]                               
01a9f0f0  ldr       x9, [x9]                                       
01a9f0f4  str       x9, [x24, #0x28]                               
01a9f0f8  ldr       x9, [x25]                                      
01a9f0fc  ldr       x9, [x9, #0xb8]                                
01a9f100  ldr       x10, [x9]                                      
01a9f104  cbz       x10, #0x1a9f438                                
01a9f108  ldr       x9, [x26]                                      
01a9f10c  ldr       x9, [x9, #0xb8]                                
01a9f110  ldr       x9, [x9, #0xe8]                                
01a9f114  cbz       x9, #0x1a9f438                                 
01a9f118  ldrsw     x10, [x10, #0x5cc]                             
01a9f11c  ldr       w11, [x9, #0x18]                               
01a9f120  cmp       w10, w11                                       
01a9f124  b.hs      #0x1a9f43c                                     
01a9f128  cmp       w8, #2                                         
01a9f12c  b.ls      #0x1a9f43c                                     
01a9f130  add       x9, x9, x10, lsl #3                            
01a9f134  cmp       w8, #3                                         
01a9f138  ldr       x9, [x9, #0x20]                                
01a9f13c  str       x9, [x24, #0x30]                               
01a9f140  b.eq      #0x1a9f43c                                     
01a9f144  adrp      x9, #0x3a7c000                                 
01a9f148  cmp       w8, #4                                         
01a9f14c  ldr       x9, [x9, #0x4e0]                               
01a9f150  ldr       x9, [x9]                                       
01a9f154  str       x9, [x24, #0x38]                               
01a9f158  b.ls      #0x1a9f43c                                     
01a9f15c  cmp       w8, #5                                         
01a9f160  str       x21, [x24, #0x40]                              
01a9f164  b.eq      #0x1a9f43c                                     
01a9f168  adrp      x8, #0x3a7e000                                 
01a9f16c  mov       x0, x24                                        
01a9f170  mov       x1, xzr                                        
01a9f174  ldr       x8, [x8, #0x470]                               
01a9f178  ldr       x8, [x8]                                       
01a9f17c  str       x8, [x24, #0x48]                               
01a9f180  bl        #0x2c6e35c                                     // System.String$$Concat
01a9f184  adrp      x24, #0x3a7b000                                
01a9f188  mov       x4, x0                                         
01a9f18c  mov       x0, x19                                        
01a9f190  ldr       x24, [x24, #0xaf0]                             
01a9f194  mov       x1, x22                                        
01a9f198  mov       w2, #1                                         
01a9f19c  mov       x3, x23                                        
01a9f1a0  mov       x5, xzr                                        
01a9f1a4  mov       w6, wzr                                        
01a9f1a8  ldr       x7, [x24]                                      
01a9f1ac  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9f1b0  ldr       x8, [x25]                                      
01a9f1b4  ldr       x8, [x8, #0xb8]                                
01a9f1b8  ldr       x8, [x8]                                       
01a9f1bc  cbz       x8, #0x1a9f438                                 
01a9f1c0  ldr       x0, [x8, #0x2b8]                               
01a9f1c4  ldr       w1, [x8, #0x2c0]                               
01a9f1c8  mov       x2, xzr                                        
01a9f1cc  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a9f1d0  mov       w8, w0                                         
01a9f1d4  ldr       x0, [x19, #0xb8]                               
01a9f1d8  tbz       w8, #0, #0x1a9f344                             
01a9f1dc  cbz       x0, #0x1a9f438                                 
01a9f1e0  ldr       x2, [x28]                                      
01a9f1e4  mov       w1, #1                                         
01a9f1e8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9f1ec  ldr       x8, [x27]                                      
01a9f1f0  mov       x22, x0                                        
01a9f1f4  mov       x0, x8                                         
01a9f1f8  bl        #0x183ddcc                                     
01a9f1fc  adrp      x8, #0x3a8c000                                 
01a9f200  mov       x1, x20                                        
01a9f204  mov       x3, xzr                                        
01a9f208  ldr       x8, [x8, #0xae0]                               
01a9f20c  mov       x23, x0                                        
01a9f210  ldr       x2, [x8]                                       
01a9f214  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9f218  ldr       x0, [x29]                                      
01a9f21c  mov       w1, #6                                         
01a9f220  bl        #0x183dc20                                     
01a9f224  ldr       x8, [x26]                                      
01a9f228  mov       x20, x0                                        
01a9f22c  ldr       w9, [x8, #0xe4]                                
01a9f230  cbnz      w9, #0x1a9f240                                 
01a9f234  mov       x0, x8                                         
01a9f238  bl        #0x183dcb0                                     
01a9f23c  ldr       x8, [x26]                                      
01a9f240  ldr       x9, [x25]                                      
01a9f244  adrp      x11, #0x3a8c000                                
01a9f248  ldr       x9, [x9, #0xb8]                                
01a9f24c  ldr       x10, [x9]                                      
01a9f250  ldr       x11, [x11, #0x718]                             
01a9f254  cbz       x10, #0x1a9f438                                
01a9f258  ldr       x8, [x8, #0xb8]                                
01a9f25c  ldr       x9, [x8, #0x98]                                
01a9f260  cbz       x9, #0x1a9f438                                 
01a9f264  ldrsw     x10, [x10, #0x5cc]                             
01a9f268  ldr       w8, [x9, #0x18]                                
01a9f26c  cmp       w10, w8                                        
01a9f270  b.hs      #0x1a9f43c                                     
01a9f274  cbz       x20, #0x1a9f438                                
01a9f278  ldr       w8, [x20, #0x18]                               
01a9f27c  cbz       w8, #0x1a9f43c                                 
01a9f280  add       x9, x9, x10, lsl #3                            
01a9f284  cmp       w8, #1                                         
01a9f288  ldr       x9, [x9, #0x20]                                
01a9f28c  str       x9, [x20, #0x20]                               
01a9f290  b.eq      #0x1a9f43c                                     
01a9f294  ldr       x9, [x11]                                      
01a9f298  str       x9, [x20, #0x28]                               
01a9f29c  ldr       x9, [x25]                                      
01a9f2a0  ldr       x9, [x9, #0xb8]                                
01a9f2a4  ldr       x10, [x9]                                      
01a9f2a8  cbz       x10, #0x1a9f438                                
01a9f2ac  ldr       x9, [x26]                                      
01a9f2b0  ldr       x9, [x9, #0xb8]                                
01a9f2b4  ldr       x9, [x9, #0xe8]                                
01a9f2b8  cbz       x9, #0x1a9f438                                 
01a9f2bc  ldrsw     x10, [x10, #0x5cc]                             
01a9f2c0  ldr       w11, [x9, #0x18]                               
01a9f2c4  cmp       w10, w11                                       
01a9f2c8  b.hs      #0x1a9f43c                                     
01a9f2cc  cmp       w8, #2                                         
01a9f2d0  b.ls      #0x1a9f43c                                     
01a9f2d4  add       x9, x9, x10, lsl #3                            
01a9f2d8  cmp       w8, #3                                         
01a9f2dc  ldr       x9, [x9, #0x20]                                
01a9f2e0  str       x9, [x20, #0x30]                               
01a9f2e4  b.eq      #0x1a9f43c                                     
01a9f2e8  adrp      x9, #0x3a7c000                                 
01a9f2ec  cmp       w8, #4                                         
01a9f2f0  ldr       x9, [x9, #0x4e0]                               
01a9f2f4  ldr       x9, [x9]                                       
01a9f2f8  str       x9, [x20, #0x38]                               
01a9f2fc  b.ls      #0x1a9f43c                                     
01a9f300  cmp       w8, #5                                         
01a9f304  str       x21, [x20, #0x40]                              
01a9f308  b.eq      #0x1a9f43c                                     
01a9f30c  adrp      x8, #0x3a7e000                                 
01a9f310  mov       x0, x20                                        
01a9f314  mov       x1, xzr                                        
01a9f318  ldr       x8, [x8, #0x470]                               
01a9f31c  ldr       x8, [x8]                                       
01a9f320  str       x8, [x20, #0x48]                               
01a9f324  bl        #0x2c6e35c                                     // System.String$$Concat
01a9f328  ldr       x7, [x24]                                      
01a9f32c  mov       x4, x0                                         
01a9f330  mov       x0, x19                                        
01a9f334  mov       x1, x22                                        
01a9f338  mov       w2, #1                                         
01a9f33c  mov       x3, x23                                        
01a9f340  b         #0x1a9f404                                     
01a9f344  cbz       x0, #0x1a9f438                                 
01a9f348  ldr       x2, [x28]                                      
01a9f34c  mov       w1, #1                                         
01a9f350  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9f354  ldr       x8, [x27]                                      
01a9f358  mov       x20, x0                                        
01a9f35c  mov       x0, x8                                         
01a9f360  bl        #0x183ddcc                                     
01a9f364  adrp      x8, #0x3a8c000                                 
01a9f368  mov       x1, x19                                        
01a9f36c  mov       x3, xzr                                        
01a9f370  ldr       x8, [x8, #0xad0]                               
01a9f374  mov       x21, x0                                        
01a9f378  ldr       x2, [x8]                                       
01a9f37c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9f380  ldr       x0, [x26]                                      
01a9f384  ldr       w8, [x0, #0xe4]                                
01a9f388  cbnz      w8, #0x1a9f394                                 
01a9f38c  bl        #0x183dcb0                                     
01a9f390  ldr       x0, [x26]                                      
01a9f394  ldr       x8, [x25]                                      
01a9f398  ldr       x8, [x8, #0xb8]                                
01a9f39c  ldr       x9, [x8]                                       
01a9f3a0  cbz       x9, #0x1a9f438                                 
01a9f3a4  ldr       x10, [x0, #0xb8]                               
01a9f3a8  ldr       x8, [x10, #0x98]                               
01a9f3ac  cbz       x8, #0x1a9f438                                 
01a9f3b0  ldrsw     x9, [x9, #0x5cc]                               
01a9f3b4  ldr       w11, [x8, #0x18]                               
01a9f3b8  cmp       w9, w11                                        
01a9f3bc  b.hs      #0x1a9f43c                                     
01a9f3c0  ldr       x10, [x10, #0xa0]                              
01a9f3c4  cbz       x10, #0x1a9f438                                
01a9f3c8  ldr       w11, [x10, #0x18]                              
01a9f3cc  cmp       w9, w11                                        
01a9f3d0  b.hs      #0x1a9f43c                                     
01a9f3d4  add       x8, x8, x9, lsl #3                             
01a9f3d8  add       x9, x10, x9, lsl #3                            
01a9f3dc  mov       x2, xzr                                        
01a9f3e0  ldr       x0, [x8, #0x20]                                
01a9f3e4  ldr       x1, [x9, #0x20]                                
01a9f3e8  bl        #0x2c63780                                     // System.String$$Concat
01a9f3ec  ldr       x7, [x24]                                      
01a9f3f0  mov       x4, x0                                         
01a9f3f4  mov       x0, x19                                        
01a9f3f8  mov       x1, x20                                        
01a9f3fc  mov       w2, wzr                                        
01a9f400  mov       x3, x21                                        
01a9f404  mov       x5, xzr                                        
01a9f408  mov       w6, wzr                                        
01a9f40c  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9f410  add       sp, sp, #0x1b0                                 
01a9f414  ldp       x20, x19, [sp, #0x70]                          
01a9f418  ldp       x22, x21, [sp, #0x60]                          
01a9f41c  ldp       x24, x23, [sp, #0x50]                          
01a9f420  ldp       x26, x25, [sp, #0x40]                          
01a9f424  ldp       x28, x27, [sp, #0x30]                          
01a9f428  ldp       x29, x30, [sp, #0x20]                          
01a9f42c  ldp       d9, d8, [sp, #0x10]                            
01a9f430  ldr       d10, [sp], #0x80                               
01a9f434  ret                                                      
01a9f438  bl        #0x183dddc                                     
01a9f43c  bl        #0x183dde4                                     