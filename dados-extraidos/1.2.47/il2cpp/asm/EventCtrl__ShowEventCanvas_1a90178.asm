void EventCtrl__ShowEventCanvas (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a90178 to 0x1a90694
01a90178  sub       sp, sp, #0x110                                 
01a9017c  str       d8, [sp, #0xd0]                                
01a90180  str       x29, [sp, #0xd8]                               
01a90184  stp       x30, x23, [sp, #0xe0]                          
01a90188  stp       x22, x21, [sp, #0xf0]                          
01a9018c  stp       x20, x19, [sp, #0x100]                         
01a90190  adrp      x20, #0x3d14000                                
01a90194  adrp      x21, #0x3a7c000                                
01a90198  mov       x19, x0                                        
01a9019c  ldrb      w8, [x20, #0xcce]                              
01a901a0  ldr       x21, [x21, #0xc60]                             
01a901a4  tbnz      w8, #0, #0x1a90228                             
01a901a8  adrp      x0, #0x3a7c000                                 
01a901ac  ldr       x0, [x0, #0xc60]                               
01a901b0  bl        #0x183db90                                     
01a901b4  adrp      x0, #0x3a7c000                                 
01a901b8  ldr       x0, [x0, #0xf20]                               
01a901bc  bl        #0x183db90                                     
01a901c0  adrp      x0, #0x3a7d000                                 
01a901c4  ldr       x0, [x0, #0x360]                               
01a901c8  bl        #0x183db90                                     
01a901cc  adrp      x0, #0x3a7c000                                 
01a901d0  ldr       x0, [x0, #0xc08]                               
01a901d4  bl        #0x183db90                                     
01a901d8  adrp      x0, #0x3a7d000                                 
01a901dc  ldr       x0, [x0, #0x428]                               
01a901e0  bl        #0x183db90                                     
01a901e4  adrp      x0, #0x3a7e000                                 
01a901e8  ldr       x0, [x0, #0xf20]                               
01a901ec  bl        #0x183db90                                     
01a901f0  adrp      x0, #0x3a7d000                                 
01a901f4  ldr       x0, [x0, #0x768]                               
01a901f8  bl        #0x183db90                                     
01a901fc  adrp      x0, #0x3a7d000                                 
01a90200  ldr       x0, [x0, #0x738]                               
01a90204  bl        #0x183db90                                     
01a90208  adrp      x0, #0x3a7d000                                 
01a9020c  ldr       x0, [x0, #0x770]                               
01a90210  bl        #0x183db90                                     
01a90214  adrp      x0, #0x3a7d000                                 
01a90218  ldr       x0, [x0, #0x7a0]                               
01a9021c  bl        #0x183db90                                     
01a90220  mov       w8, #1                                         
01a90224  strb      w8, [x20, #0xcce]                              
01a90228  ldr       x1, [x21]                                      
01a9022c  mov       x0, x19                                        
01a90230  str       wzr, [sp, #0xcc]                               
01a90234  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90238  cbz       x0, #0x1a90690                                 
01a9023c  adrp      x22, #0x3a7c000                                
01a90240  mov       w1, #1                                         
01a90244  mov       x2, xzr                                        
01a90248  ldr       x22, [x22, #0xc08]                             
01a9024c  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a90250  ldr       x8, [x22]                                      
01a90254  ldr       x8, [x8, #0xb8]                                
01a90258  ldr       x0, [x8]                                       
01a9025c  cbz       x0, #0x1a90690                                 
01a90260  adrp      x23, #0x3a7d000                                
01a90264  mov       w1, #0xf                                       
01a90268  mov       x2, xzr                                        
01a9026c  ldr       x23, [x23, #0x770]                             
01a90270  ldr       x20, [x19, #0x198]                             
01a90274  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a90278  ldr       x1, [x23]                                      
01a9027c  add       x0, sp, #0xcc                                  
01a90280  mov       x2, xzr                                        
01a90284  str       s0, [sp, #0xcc]                                
01a90288  bl        #0x2de259c                                     // System.Single$$ToString
01a9028c  cbz       x20, #0x1a90690                                
01a90290  ldr       x8, [x20]                                      
01a90294  mov       x1, x0                                         
01a90298  mov       x0, x20                                        
01a9029c  ldr       x9, [x8, #0x5e8]                               
01a902a0  ldr       x2, [x8, #0x5f0]                               
01a902a4  blr       x9                                             
01a902a8  ldr       x0, [x19, #0x28]                               
01a902ac  cbz       x0, #0x1a90690                                 
01a902b0  adrp      x23, #0x3a7c000                                
01a902b4  adrp      x20, #0x3a7d000                                
01a902b8  ldr       x23, [x23, #0xf20]                             
01a902bc  ldr       x20, [x20, #0x428]                             
01a902c0  ldr       x1, [x23]                                      
01a902c4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a902c8  ldr       x8, [x20]                                      
01a902cc  mov       x20, x0                                        
01a902d0  ldr       w9, [x8, #0xe4]                                
01a902d4  cbnz      w9, #0x1a902e0                                 
01a902d8  mov       x0, x8                                         
01a902dc  bl        #0x183dcb0                                     
01a902e0  mov       x0, x20                                        
01a902e4  mov       x1, xzr                                        
01a902e8  bl        #0x38572c0                                     // UnityEngine.UI.LayoutRebuilder$$ForceRebuildLayoutImmediate
01a902ec  ldr       x0, [x19, #0x38]                               
01a902f0  cbz       x0, #0x1a90690                                 
01a902f4  ldr       w8, [x0, #0x18]                                
01a902f8  cbz       w8, #0x1a9033c                                 
01a902fc  ldr       w1, [x19, #0x1a4]                              
01a90300  adrp      x9, #0x3a7d000                                 
01a90304  ldr       x9, [x9, #0x738]                               
01a90308  cmp       w1, w8                                         
01a9030c  b.lt      #0x1a90318                                     
01a90310  sub       w1, w8, #1                                     
01a90314  str       w1, [x19, #0x1a4]                              
01a90318  ldr       x2, [x9]                                       
01a9031c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a90320  cbz       x0, #0x1a90690                                 
01a90324  ldr       x1, [x23]                                      
01a90328  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9032c  cbz       x0, #0x1a90690                                 
01a90330  mov       x1, xzr                                        
01a90334  bl        #0x35d3c14                                     // UnityEngine.Transform$$get_localPosition
01a90338  str       s1, [x19, #0x1a0]                              
01a9033c  ldr       x0, [x19, #0x28]                               
01a90340  cbz       x0, #0x1a90690                                 
01a90344  mov       x1, xzr                                        
01a90348  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a9034c  cbz       x0, #0x1a90690                                 
01a90350  ldr       x1, [x23]                                      
01a90354  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90358  cbz       x0, #0x1a90690                                 
01a9035c  mov       x1, xzr                                        
01a90360  bl        #0x35d337c                                     // UnityEngine.RectTransform$$get_rect
01a90364  ldr       x0, [x19, #0x28]                               
01a90368  cbz       x0, #0x1a90690                                 
01a9036c  ldr       x1, [x23]                                      
01a90370  fmov      s8, s3                                         
01a90374  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90378  cbz       x0, #0x1a90690                                 
01a9037c  adrp      x20, #0x3a7d000                                
01a90380  mov       x1, xzr                                        
01a90384  ldr       x20, [x20, #0x360]                             
01a90388  bl        #0x35d337c                                     // UnityEngine.RectTransform$$get_rect
01a9038c  ldr       s0, [x19, #0x1a0]                              
01a90390  ldr       x0, [x19, #0x28]                               
01a90394  fadd      s0, s3, s0                                     
01a90398  fcmp      s8, s0                                         
01a9039c  b.pl      #0x1a903cc                                     
01a903a0  cbz       x0, #0x1a90690                                 
01a903a4  ldr       x1, [x23]                                      
01a903a8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a903ac  cbz       x0, #0x1a90690                                 
01a903b0  ldr       s0, [x19, #0x1a0]                              
01a903b4  movi      d2, #0000000000000000                          
01a903b8  mov       x1, xzr                                        
01a903bc  fneg      s1, s0                                         
01a903c0  movi      d0, #0000000000000000                          
01a903c4  bl        #0x35d3cd4                                     // UnityEngine.Transform$$set_localPosition
01a903c8  b         #0x1a90400                                     
01a903cc  cbz       x0, #0x1a90690                                 
01a903d0  mov       x1, xzr                                        
01a903d4  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a903d8  cbz       x0, #0x1a90690                                 
01a903dc  mov       x1, xzr                                        
01a903e0  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a903e4  cbz       x0, #0x1a90690                                 
01a903e8  ldr       x1, [x20]                                      
01a903ec  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a903f0  cbz       x0, #0x1a90690                                 
01a903f4  movi      d0, #0000000000000000                          
01a903f8  mov       x1, xzr                                        
01a903fc  bl        #0x38608f4                                     // UnityEngine.UI.ScrollRect$$set_verticalNormalizedPosition
01a90400  ldr       x0, [x19, #0x28]                               
01a90404  cbz       x0, #0x1a90690                                 
01a90408  mov       x1, xzr                                        
01a9040c  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a90410  cbz       x0, #0x1a90690                                 
01a90414  mov       x1, xzr                                        
01a90418  bl        #0x35d45d0                                     // UnityEngine.Transform$$get_parent
01a9041c  cbz       x0, #0x1a90690                                 
01a90420  ldr       x1, [x20]                                      
01a90424  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a90428  cbz       x0, #0x1a90690                                 
01a9042c  mov       w1, #1                                         
01a90430  mov       x2, xzr                                        
01a90434  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a90438  ldr       x0, [x19, #0x1b0]                              
01a9043c  cbz       x0, #0x1a90690                                 
01a90440  mov       w1, wzr                                        
01a90444  mov       x2, xzr                                        
01a90448  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a9044c  ldr       x8, [x22]                                      
01a90450  ldr       x8, [x8, #0xb8]                                
01a90454  ldr       x8, [x8]                                       
01a90458  cbz       x8, #0x1a90690                                 
01a9045c  ldur      q0, [x8, #0x48]                                
01a90460  ldr       w8, [x8, #0x58]                                
01a90464  add       x0, sp, #0xb0                                  
01a90468  mov       x1, xzr                                        
01a9046c  str       q0, [sp, #0xb0]                                
01a90470  str       w8, [sp, #0xc0]                                
01a90474  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a90478  mov       w8, #0x4e21                                    
01a9047c  cmp       w0, w8                                         
01a90480  b.ge      #0x1a9058c                                     
01a90484  ldr       x8, [x22]                                      
01a90488  ldr       x8, [x8, #0xb8]                                
01a9048c  ldr       x8, [x8]                                       
01a90490  cbz       x8, #0x1a90690                                 
01a90494  ldr       x0, [x8, #0x20]                                
01a90498  cbz       x0, #0x1a90690                                 
01a9049c  adrp      x23, #0x3a7d000                                
01a904a0  add       x8, sp, #0x98                                  
01a904a4  mov       w1, #5                                         
01a904a8  ldr       x23, [x23, #0x768]                             
01a904ac  add       x20, sp, #0x98                                 
01a904b0  ldr       x2, [x23]                                      
01a904b4  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01a904b8  ldr       q0, [x20]                                      
01a904bc  ldr       x8, [sp, #0xa8]                                
01a904c0  add       x0, sp, #0x80                                  
01a904c4  mov       x1, xzr                                        
01a904c8  str       q0, [sp, #0x80]                                
01a904cc  str       x8, [sp, #0x90]                                
01a904d0  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01a904d4  mov       w8, #0x42c80000                                
01a904d8  fmov      s1, w8                                         
01a904dc  fcmp      s0, s1                                         
01a904e0  b.gt      #0x1a9058c                                     
01a904e4  ldr       x8, [x22]                                      
01a904e8  ldr       x8, [x8, #0xb8]                                
01a904ec  ldr       x8, [x8]                                       
01a904f0  cbz       x8, #0x1a90690                                 
01a904f4  ldr       x0, [x8, #0x20]                                
01a904f8  cbz       x0, #0x1a90690                                 
01a904fc  ldr       x2, [x23]                                      
01a90500  add       x8, sp, #0x98                                  
01a90504  mov       w1, #6                                         
01a90508  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01a9050c  ldr       q0, [x20]                                      
01a90510  ldr       x8, [sp, #0xa8]                                
01a90514  add       x0, sp, #0x60                                  
01a90518  mov       x1, xzr                                        
01a9051c  str       q0, [sp, #0x60]                                
01a90520  str       x8, [sp, #0x70]                                
01a90524  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01a90528  mov       w8, #0x42c80000                                
01a9052c  fmov      s1, w8                                         
01a90530  fcmp      s0, s1                                         
01a90534  b.gt      #0x1a9058c                                     
01a90538  ldr       x8, [x22]                                      
01a9053c  ldr       x8, [x8, #0xb8]                                
01a90540  ldr       x8, [x8]                                       
01a90544  cbz       x8, #0x1a90690                                 
01a90548  ldr       x0, [x8, #0x20]                                
01a9054c  cbz       x0, #0x1a90690                                 
01a90550  ldr       x2, [x23]                                      
01a90554  add       x8, sp, #0x98                                  
01a90558  mov       w1, #7                                         
01a9055c  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01a90560  ldr       q0, [x20]                                      
01a90564  ldr       x8, [sp, #0xa8]                                
01a90568  add       x0, sp, #0x40                                  
01a9056c  mov       x1, xzr                                        
01a90570  str       q0, [sp, #0x40]                                
01a90574  str       x8, [sp, #0x50]                                
01a90578  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01a9057c  mov       w8, #0x42c80000                                
01a90580  fmov      s1, w8                                         
01a90584  fcmp      s0, s1                                         
01a90588  b.le      #0x1a90624                                     
01a9058c  adrp      x20, #0x3d14000                                
01a90590  ldrb      w8, [x20, #0x677]                              
01a90594  cbnz      w8, #0x1a905ac                                 
01a90598  adrp      x0, #0x3a7c000                                 
01a9059c  ldr       x0, [x0, #0xc98]                               
01a905a0  bl        #0x183db90                                     
01a905a4  mov       w8, #1                                         
01a905a8  strb      w8, [x20, #0x677]                              
01a905ac  adrp      x8, #0x3a7c000                                 
01a905b0  ldr       x8, [x8, #0xc98]                               
01a905b4  ldr       x8, [x8]                                       
01a905b8  ldr       x8, [x8, #0xb8]                                
01a905bc  ldr       x8, [x8]                                       
01a905c0  cbz       x8, #0x1a90690                                 
01a905c4  ldr       x0, [x8, #0x50]                                
01a905c8  cbz       x0, #0x1a90690                                 
01a905cc  adrp      x8, #0x3a7d000                                 
01a905d0  fmov      s0, #2.00000000                                
01a905d4  fmov      s1, #-1.00000000                               
01a905d8  ldr       x8, [x8, #0x7a0]                               
01a905dc  mov       x2, xzr                                        
01a905e0  mov       x3, xzr                                        
01a905e4  ldr       x1, [x8]                                       
01a905e8  bl        #0x1970090                                     // DefaultPopup$$Show
01a905ec  ldr       x1, [x21]                                      
01a905f0  mov       x0, x19                                        
01a905f4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a905f8  cbz       x0, #0x1a90690                                 
01a905fc  mov       w1, wzr                                        
01a90600  mov       x2, xzr                                        
01a90604  bl        #0x35c5a54                                     // UnityEngine.Behaviour$$set_enabled
01a90608  ldp       x20, x19, [sp, #0x100]                         
01a9060c  ldr       x29, [sp, #0xd8]                               
01a90610  ldp       x22, x21, [sp, #0xf0]                          
01a90614  ldr       d8, [sp, #0xd0]                                
01a90618  ldp       x30, x23, [sp, #0xe0]                          
01a9061c  add       sp, sp, #0x110                                 
01a90620  ret                                                      
01a90624  ldr       x8, [x22]                                      
01a90628  ldr       x8, [x8, #0xb8]                                
01a9062c  ldr       x8, [x8]                                       
01a90630  cbz       x8, #0x1a90690                                 
01a90634  ldur      q0, [x8, #0x48]                                
01a90638  ldr       w8, [x8, #0x58]                                
01a9063c  add       x0, sp, #0x20                                  
01a90640  mov       x1, xzr                                        
01a90644  str       q0, [sp, #0x20]                                
01a90648  str       w8, [sp, #0x30]                                
01a9064c  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a90650  cmp       w0, #0x3c4                                     
01a90654  b.lt      #0x1a90608                                     
01a90658  ldr       x8, [x22]                                      
01a9065c  ldr       x8, [x8, #0xb8]                                
01a90660  ldr       x8, [x8]                                       
01a90664  cbz       x8, #0x1a90690                                 
01a90668  ldur      q0, [x8, #0xf8]                                
01a9066c  ldr       w8, [x8, #0x108]                               
01a90670  mov       x0, sp                                         
01a90674  mov       x1, xzr                                        
01a90678  str       q0, [sp]                                       
01a9067c  str       w8, [sp, #0x10]                                
01a90680  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a90684  cmp       w0, #2                                         
01a90688  b.le      #0x1a9058c                                     
01a9068c  b         #0x1a90608                                     
01a90690  bl        #0x183dddc                                     