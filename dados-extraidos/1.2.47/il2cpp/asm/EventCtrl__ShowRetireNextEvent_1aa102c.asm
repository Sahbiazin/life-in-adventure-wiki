void EventCtrl__ShowRetireNextEvent (EventCtrl_o* __this, int32_t eventIndex, const MethodInfo* method);
// RVA 0x1aa102c to 0x1aa12e8
01aa102c  sub       sp, sp, #0x50                                  
01aa1030  stp       x30, x23, [sp, #0x20]                          
01aa1034  stp       x22, x21, [sp, #0x30]                          
01aa1038  stp       x20, x19, [sp, #0x40]                          
01aa103c  adrp      x21, #0x3d14000                                
01aa1040  adrp      x22, #0x3a7c000                                
01aa1044  mov       w20, w1                                        
01aa1048  ldrb      w8, [x21, #0xcf5]                              
01aa104c  ldr       x22, [x22, #0xc08]                             
01aa1050  mov       x19, x0                                        
01aa1054  tbnz      w8, #0, #0x1aa10b4                             
01aa1058  adrp      x0, #0x3a7c000                                 
01aa105c  ldr       x0, [x0, #0xc08]                               
01aa1060  bl        #0x183db90                                     
01aa1064  adrp      x0, #0x3a8c000                                 
01aa1068  ldr       x0, [x0, #0xb20]                               
01aa106c  bl        #0x183db90                                     
01aa1070  adrp      x0, #0x3a8c000                                 
01aa1074  ldr       x0, [x0, #0xb28]                               
01aa1078  bl        #0x183db90                                     
01aa107c  adrp      x0, #0x3a8c000                                 
01aa1080  ldr       x0, [x0, #0x610]                               
01aa1084  bl        #0x183db90                                     
01aa1088  adrp      x0, #0x3a7c000                                 
01aa108c  ldr       x0, [x0, #0xde8]                               
01aa1090  bl        #0x183db90                                     
01aa1094  adrp      x0, #0x3a7c000                                 
01aa1098  ldr       x0, [x0, #0xc78]                               
01aa109c  bl        #0x183db90                                     
01aa10a0  adrp      x0, #0x3a7b000                                 
01aa10a4  ldr       x0, [x0, #0xaf0]                               
01aa10a8  bl        #0x183db90                                     
01aa10ac  mov       w8, #1                                         
01aa10b0  strb      w8, [x21, #0xcf5]                              
01aa10b4  ldr       x8, [x22]                                      
01aa10b8  ldr       x8, [x8, #0xb8]                                
01aa10bc  ldr       x9, [x8]                                       
01aa10c0  cbz       x9, #0x1aa12e0                                 
01aa10c4  ldr       x8, [x19, #0x238]                              
01aa10c8  cbz       x8, #0x1aa12e0                                 
01aa10cc  ldr       x10, [x8, #0x10]                               
01aa10d0  ldr       w11, [x10]                                     
01aa10d4  cmp       w11, w20                                       
01aa10d8  b.ls      #0x1aa12e4                                     
01aa10dc  ldrsw     x9, [x9, #0x5cc]                               
01aa10e0  ldr       x10, [x10, #0x10]                              
01aa10e4  cmp       w9, w10                                        
01aa10e8  b.hs      #0x1aa12e4                                     
01aa10ec  sxtw      x11, w20                                       
01aa10f0  mov       x0, x19                                        
01aa10f4  madd      x9, x10, x11, x9                               
01aa10f8  add       x8, x8, x9, lsl #3                             
01aa10fc  ldr       x1, [x8, #0x20]                                
01aa1100  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01aa1104  mov       x1, x0                                         
01aa1108  mov       x0, x19                                        
01aa110c  mov       x2, xzr                                        
01aa1110  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01aa1114  ldr       x8, [x22]                                      
01aa1118  str       x0, [x19, #0x188]                              
01aa111c  ldr       x8, [x8, #0xb8]                                
01aa1120  ldr       x8, [x8]                                       
01aa1124  cbz       x8, #0x1aa12e0                                 
01aa1128  mov       w9, #-1                                        
01aa112c  mov       w2, wzr                                        
01aa1130  mov       w3, wzr                                        
01aa1134  mov       w4, wzr                                        
01aa1138  mov       w5, wzr                                        
01aa113c  mov       w6, wzr                                        
01aa1140  str       w9, [sp, #8]                                   
01aa1144  mov       w9, #1                                         
01aa1148  mov       x0, x8                                         
01aa114c  mov       w1, #6                                         
01aa1150  mov       w7, #-1                                        
01aa1154  str       xzr, [sp, #0x10]                               
01aa1158  strb      w9, [sp]                                       
01aa115c  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01aa1160  mov       x0, x19                                        
01aa1164  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa1168  cmp       w20, #1                                        
01aa116c  b.eq      #0x1aa1200                                     
01aa1170  cbnz      w20, #0x1aa12c8                                
01aa1174  ldr       x0, [x19, #0xb8]                               
01aa1178  cbz       x0, #0x1aa12e0                                 
01aa117c  adrp      x8, #0x3a8c000                                 
01aa1180  mov       w1, wzr                                        
01aa1184  ldr       x8, [x8, #0x610]                               
01aa1188  ldr       x2, [x8]                                       
01aa118c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1190  adrp      x8, #0x3a7c000                                 
01aa1194  mov       x20, x0                                        
01aa1198  ldr       x8, [x8, #0xc78]                               
01aa119c  ldr       x8, [x8]                                       
01aa11a0  mov       x0, x8                                         
01aa11a4  bl        #0x183ddcc                                     
01aa11a8  adrp      x8, #0x3a8c000                                 
01aa11ac  mov       x1, x19                                        
01aa11b0  mov       x3, xzr                                        
01aa11b4  ldr       x8, [x8, #0xb20]                               
01aa11b8  mov       x21, x0                                        
01aa11bc  ldr       x2, [x8]                                       
01aa11c0  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa11c4  adrp      x23, #0x3a7c000                                
01aa11c8  ldr       x23, [x23, #0xde8]                             
01aa11cc  ldr       x0, [x23]                                      
01aa11d0  ldr       w8, [x0, #0xe4]                                
01aa11d4  cbnz      w8, #0x1aa11e0                                 
01aa11d8  bl        #0x183dcb0                                     
01aa11dc  ldr       x0, [x23]                                      
01aa11e0  ldr       x8, [x22]                                      
01aa11e4  ldr       x8, [x8, #0xb8]                                
01aa11e8  ldr       x9, [x8]                                       
01aa11ec  cbz       x9, #0x1aa12e0                                 
01aa11f0  ldr       x8, [x0, #0xb8]                                
01aa11f4  ldr       x8, [x8, #0xa8]                                
01aa11f8  cbnz      x8, #0x1aa1288                                 
01aa11fc  b         #0x1aa12e0                                     
01aa1200  ldr       x0, [x19, #0xb8]                               
01aa1204  cbz       x0, #0x1aa12e0                                 
01aa1208  adrp      x8, #0x3a8c000                                 
01aa120c  mov       w1, wzr                                        
01aa1210  ldr       x8, [x8, #0x610]                               
01aa1214  ldr       x2, [x8]                                       
01aa1218  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa121c  adrp      x8, #0x3a7c000                                 
01aa1220  mov       x20, x0                                        
01aa1224  ldr       x8, [x8, #0xc78]                               
01aa1228  ldr       x8, [x8]                                       
01aa122c  mov       x0, x8                                         
01aa1230  bl        #0x183ddcc                                     
01aa1234  adrp      x8, #0x3a8c000                                 
01aa1238  mov       x1, x19                                        
01aa123c  mov       x3, xzr                                        
01aa1240  ldr       x8, [x8, #0xb28]                               
01aa1244  mov       x21, x0                                        
01aa1248  ldr       x2, [x8]                                       
01aa124c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa1250  adrp      x23, #0x3a7c000                                
01aa1254  ldr       x23, [x23, #0xde8]                             
01aa1258  ldr       x0, [x23]                                      
01aa125c  ldr       w8, [x0, #0xe4]                                
01aa1260  cbnz      w8, #0x1aa126c                                 
01aa1264  bl        #0x183dcb0                                     
01aa1268  ldr       x0, [x23]                                      
01aa126c  ldr       x8, [x22]                                      
01aa1270  ldr       x8, [x8, #0xb8]                                
01aa1274  ldr       x9, [x8]                                       
01aa1278  cbz       x9, #0x1aa12e0                                 
01aa127c  ldr       x8, [x0, #0xb8]                                
01aa1280  ldr       x8, [x8, #0xb8]                                
01aa1284  cbz       x8, #0x1aa12e0                                 
01aa1288  ldrsw     x9, [x9, #0x5cc]                               
01aa128c  ldr       w10, [x8, #0x18]                               
01aa1290  cmp       w9, w10                                        
01aa1294  b.hs      #0x1aa12e4                                     
01aa1298  add       x8, x8, x9, lsl #3                             
01aa129c  adrp      x9, #0x3a7b000                                 
01aa12a0  mov       x0, x19                                        
01aa12a4  ldr       x9, [x9, #0xaf0]                               
01aa12a8  mov       x1, x20                                        
01aa12ac  mov       w2, #1                                         
01aa12b0  ldr       x4, [x8, #0x20]                                
01aa12b4  mov       x3, x21                                        
01aa12b8  mov       x5, xzr                                        
01aa12bc  ldr       x7, [x9]                                       
01aa12c0  mov       w6, wzr                                        
01aa12c4  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa12c8  mov       x0, x19                                        
01aa12cc  ldp       x20, x19, [sp, #0x40]                          
01aa12d0  ldp       x22, x21, [sp, #0x30]                          
01aa12d4  ldp       x30, x23, [sp, #0x20]                          
01aa12d8  add       sp, sp, #0x50                                  
01aa12dc  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa12e0  bl        #0x183dddc                                     
01aa12e4  bl        #0x183dde4                                     