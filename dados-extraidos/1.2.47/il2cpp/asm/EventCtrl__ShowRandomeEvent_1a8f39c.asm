void EventCtrl__ShowRandomeEvent (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8f39c to 0x1a8ff7c
01a8f39c  sub       sp, sp, #0x180                                 
01a8f3a0  str       d8, [sp, #0x120]                               
01a8f3a4  stp       x29, x30, [sp, #0x130]                         
01a8f3a8  stp       x26, x25, [sp, #0x140]                         
01a8f3ac  stp       x24, x23, [sp, #0x150]                         
01a8f3b0  stp       x22, x21, [sp, #0x160]                         
01a8f3b4  stp       x20, x19, [sp, #0x170]                         
01a8f3b8  adrp      x20, #0x3d14000                                
01a8f3bc  mov       x19, x0                                        
01a8f3c0  ldrb      w8, [x20, #0xce7]                              
01a8f3c4  tbnz      w8, #0, #0x1a8f478                             
01a8f3c8  adrp      x0, #0x3a7c000                                 
01a8f3cc  ldr       x0, [x0, #0xd40]                               
01a8f3d0  bl        #0x183db90                                     
01a8f3d4  adrp      x0, #0x3a7c000                                 
01a8f3d8  ldr       x0, [x0, #0xc08]                               
01a8f3dc  bl        #0x183db90                                     
01a8f3e0  adrp      x0, #0x3a7c000                                 
01a8f3e4  ldr       x0, [x0, #0xc10]                               
01a8f3e8  bl        #0x183db90                                     
01a8f3ec  adrp      x0, #0x3a8c000                                 
01a8f3f0  ldr       x0, [x0, #0x640]                               
01a8f3f4  bl        #0x183db90                                     
01a8f3f8  adrp      x0, #0x3a8c000                                 
01a8f3fc  ldr       x0, [x0, #0x728]                               
01a8f400  bl        #0x183db90                                     
01a8f404  adrp      x0, #0x3a7c000                                 
01a8f408  ldr       x0, [x0, #0xc20]                               
01a8f40c  bl        #0x183db90                                     
01a8f410  adrp      x0, #0x3a8c000                                 
01a8f414  ldr       x0, [x0, #0x6a8]                               
01a8f418  bl        #0x183db90                                     
01a8f41c  adrp      x0, #0x3a8c000                                 
01a8f420  ldr       x0, [x0, #0x658]                               
01a8f424  bl        #0x183db90                                     
01a8f428  adrp      x0, #0x3a7c000                                 
01a8f42c  ldr       x0, [x0, #0xde8]                               
01a8f430  bl        #0x183db90                                     
01a8f434  adrp      x0, #0x3a8c000                                 
01a8f438  ldr       x0, [x0, #0x730]                               
01a8f43c  bl        #0x183db90                                     
01a8f440  adrp      x0, #0x3a8c000                                 
01a8f444  ldr       x0, [x0, #0x668]                               
01a8f448  bl        #0x183db90                                     
01a8f44c  adrp      x0, #0x3a8c000                                 
01a8f450  ldr       x0, [x0, #0x738]                               
01a8f454  bl        #0x183db90                                     
01a8f458  adrp      x0, #0x3a7b000                                 
01a8f45c  ldr       x0, [x0, #0xaf0]                               
01a8f460  bl        #0x183db90                                     
01a8f464  adrp      x0, #0x3a8c000                                 
01a8f468  ldr       x0, [x0, #0x740]                               
01a8f46c  bl        #0x183db90                                     
01a8f470  mov       w8, #1                                         
01a8f474  strb      w8, [x20, #0xce7]                              
01a8f478  ldr       x0, [x19, #0x1d0]                              
01a8f47c  cbz       x0, #0x1a8ff74                                 
01a8f480  adrp      x24, #0x3a7c000                                
01a8f484  mov       x1, xzr                                        
01a8f488  ldr       x24, [x24, #0xc08]                             
01a8f48c  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a8f490  ldr       x8, [x24]                                      
01a8f494  ldr       x8, [x8, #0xb8]                                
01a8f498  ldr       x8, [x8]                                       
01a8f49c  cbz       x8, #0x1a8ff74                                 
01a8f4a0  adrp      x25, #0x3a8c000                                
01a8f4a4  mov       x20, x0                                        
01a8f4a8  ldr       x25, [x25, #0x668]                             
01a8f4ac  ldr       x21, [x8, #0x138]                              
01a8f4b0  ldr       x0, [x25]                                      
01a8f4b4  ldr       w9, [x0, #0xe4]                                
01a8f4b8  cbnz      w9, #0x1a8f4c4                                 
01a8f4bc  bl        #0x183dcb0                                     
01a8f4c0  ldr       x0, [x25]                                      
01a8f4c4  ldr       x8, [x0, #0xb8]                                
01a8f4c8  ldr       x22, [x8, #0xb8]                               
01a8f4cc  cbnz      x22, #0x1a8f520                                
01a8f4d0  ldr       w9, [x0, #0xe4]                                
01a8f4d4  cbnz      w9, #0x1a8f4e4                                 
01a8f4d8  bl        #0x183dcb0                                     
01a8f4dc  ldr       x8, [x25]                                      
01a8f4e0  ldr       x8, [x8, #0xb8]                                
01a8f4e4  adrp      x9, #0x3a8c000                                 
01a8f4e8  ldr       x9, [x9, #0x658]                               
01a8f4ec  ldr       x23, [x8]                                      
01a8f4f0  ldr       x0, [x9]                                       
01a8f4f4  bl        #0x183ddcc                                     
01a8f4f8  adrp      x8, #0x3a8c000                                 
01a8f4fc  mov       x1, x23                                        
01a8f500  mov       x3, xzr                                        
01a8f504  ldr       x8, [x8, #0x730]                               
01a8f508  mov       x22, x0                                        
01a8f50c  ldr       x2, [x8]                                       
01a8f510  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a8f514  ldr       x8, [x25]                                      
01a8f518  ldr       x8, [x8, #0xb8]                                
01a8f51c  str       x22, [x8, #0xb8]                               
01a8f520  cbz       x21, #0x1a8ff74                                
01a8f524  adrp      x8, #0x3a8c000                                 
01a8f528  mov       x0, x21                                        
01a8f52c  mov       x1, x22                                        
01a8f530  ldr       x8, [x8, #0x640]                               
01a8f534  ldr       x2, [x8]                                       
01a8f538  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a8f53c  cbz       x20, #0x1a8ff74                                
01a8f540  adrp      x25, #0x3a7b000                                
01a8f544  mov       w8, #1                                         
01a8f548  mov       x2, xzr                                        
01a8f54c  ldr       x25, [x25, #0xaf0]                             
01a8f550  bic       w1, w8, w0                                     
01a8f554  mov       x0, x20                                        
01a8f558  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a8f55c  mov       x0, xzr                                        
01a8f560  bl        #0x35c1ecc                                     // UnityEngine.Random$$get_value
01a8f564  ldr       x20, [x25]                                     
01a8f568  mov       x0, x19                                        
01a8f56c  fmov      s8, s0                                         
01a8f570  bl        #0x1a9a914                                     // EventCtrl$$CheckMainEvent
01a8f574  ldr       x8, [x24]                                      
01a8f578  ldr       x8, [x8, #0xb8]                                
01a8f57c  ldr       x8, [x8]                                       
01a8f580  cbz       x8, #0x1a8ff74                                 
01a8f584  mov       w21, w0                                        
01a8f588  mov       x0, x8                                         
01a8f58c  mov       x1, xzr                                        
01a8f590  bl        #0x1af8bb4                                     // DataMgr$$GetCurrentSubEventIndex
01a8f594  ldr       x8, [x24]                                      
01a8f598  ldr       x8, [x8, #0xb8]                                
01a8f59c  ldr       x8, [x8]                                       
01a8f5a0  cbz       x8, #0x1a8ff74                                 
01a8f5a4  mov       w22, w0                                        
01a8f5a8  mov       x0, x8                                         
01a8f5ac  mov       w1, #0xf                                       
01a8f5b0  mov       x2, xzr                                        
01a8f5b4  add       x23, sp, #0xec                                 
01a8f5b8  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8f5bc  mov       w8, #0x42c80000                                
01a8f5c0  fmov      s1, w8                                         
01a8f5c4  bl        #0x3887050                                     
01a8f5c8  fcmp      s0, #0.0                                       
01a8f5cc  b.ne      #0x1a8f698                                     
01a8f5d0  ldr       x8, [x24]                                      
01a8f5d4  ldr       x8, [x8, #0xb8]                                
01a8f5d8  ldr       x0, [x8]                                       
01a8f5dc  cbz       x0, #0x1a8ff74                                 
01a8f5e0  mov       w1, #2                                         
01a8f5e4  mov       x2, xzr                                        
01a8f5e8  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8f5ec  mov       w8, #0x42b40000                                
01a8f5f0  fmov      s1, w8                                         
01a8f5f4  fcmp      s0, s1                                         
01a8f5f8  b.lt      #0x1a8f618                                     
01a8f5fc  cmn       w22, #1                                        
01a8f600  b.eq      #0x1a8f618                                     
01a8f604  mov       x0, x19                                        
01a8f608  mov       w1, w22                                        
01a8f60c  bl        #0x1a99f28                                     // EventCtrl$$ExistSubEvent
01a8f610  tst       w0, #1                                         
01a8f614  csinv     w21, w21, wzr, eq                              
01a8f618  ldr       x8, [x24]                                      
01a8f61c  ldr       x8, [x8, #0xb8]                                
01a8f620  ldr       x8, [x8]                                       
01a8f624  cbz       x8, #0x1a8ff74                                 
01a8f628  ldr       q0, [x8, #0xd0]                                
01a8f62c  ldr       w8, [x8, #0xe0]                                
01a8f630  add       x0, sp, #0x100                                 
01a8f634  mov       x1, xzr                                        
01a8f638  str       q0, [sp, #0x100]                               
01a8f63c  str       w8, [sp, #0x110]                               
01a8f640  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8f644  cmp       w0, #0                                         
01a8f648  b.le      #0x1a8f6cc                                     
01a8f64c  ldr       x8, [x24]                                      
01a8f650  ldr       x8, [x8, #0xb8]                                
01a8f654  ldr       x8, [x8]                                       
01a8f658  cbz       x8, #0x1a8ff74                                 
01a8f65c  ldur      q0, [x8, #0xe4]                                
01a8f660  ldr       w8, [x8, #0xf4]                                
01a8f664  add       x0, sp, #0xd0                                  
01a8f668  mov       x1, xzr                                        
01a8f66c  str       q0, [sp, #0xd0]                                
01a8f670  str       w8, [sp, #0xe0]                                
01a8f674  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8f678  cmp       w0, #0                                         
01a8f67c  b.le      #0x1a8f710                                     
01a8f680  adrp      x8, #0xa13000                                  
01a8f684  ldr       s0, [x8, #0xac]                                
01a8f688  fcmp      s8, s0                                         
01a8f68c  b.pl      #0x1a8f758                                     
01a8f690  mov       w8, #1                                         
01a8f694  b         #0x1a8f780                                     
01a8f698  ldr       s1, [x19, #0x1dc]                              
01a8f69c  scvtf     s1, s1                                         
01a8f6a0  bl        #0x3887050                                     
01a8f6a4  fcmp      s0, #0.0                                       
01a8f6a8  b.ne      #0x1a8f5d0                                     
01a8f6ac  mov       x0, x19                                        
01a8f6b0  bl        #0x1a9aafc                                     // EventCtrl$$CheckHardmodeDeathEvent
01a8f6b4  cmn       w0, #1                                         
01a8f6b8  b.eq      #0x1a8f5d0                                     
01a8f6bc  mov       w8, #2                                         
01a8f6c0  str       w0, [x19, #0xe0]                               
01a8f6c4  str       w8, [x19, #0x13c]                              
01a8f6c8  b         #0x1a8fcf8                                     
01a8f6cc  ldr       x8, [x24]                                      
01a8f6d0  str       wzr, [x19, #0x13c]                             
01a8f6d4  mov       x2, xzr                                        
01a8f6d8  ldr       w0, [x19, #0x12c]                              
01a8f6dc  ldr       w1, [x19, #0x130]                              
01a8f6e0  ldr       x8, [x8, #0xb8]                                
01a8f6e4  ldr       x22, [x8]                                      
01a8f6e8  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a8f6ec  add       x8, sp, #0xec                                  
01a8f6f0  mov       x1, xzr                                        
01a8f6f4  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8f6f8  cbz       x22, #0x1a8ff74                                
01a8f6fc  ldr       q0, [x23]                                      
01a8f700  ldr       w8, [sp, #0xfc]                                
01a8f704  str       q0, [x22, #0xd0]                               
01a8f708  str       w8, [x22, #0xe0]                               
01a8f70c  b         #0x1a8f784                                     
01a8f710  mov       w8, #5                                         
01a8f714  ldr       x9, [x24]                                      
01a8f718  ldr       w0, [x19, #0x134]                              
01a8f71c  str       w8, [x19, #0x13c]                              
01a8f720  ldr       w1, [x19, #0x138]                              
01a8f724  mov       x2, xzr                                        
01a8f728  ldr       x8, [x9, #0xb8]                                
01a8f72c  ldr       x22, [x8]                                      
01a8f730  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a8f734  add       x8, sp, #0xec                                  
01a8f738  mov       x1, xzr                                        
01a8f73c  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8f740  cbz       x22, #0x1a8ff74                                
01a8f744  ldr       q0, [x23]                                      
01a8f748  ldr       w8, [sp, #0xfc]                                
01a8f74c  stur      q0, [x22, #0xe4]                               
01a8f750  str       w8, [x22, #0xf4]                               
01a8f754  b         #0x1a8f784                                     
01a8f758  adrp      x8, #0xa13000                                  
01a8f75c  ldr       s0, [x8, #0x14]                                
01a8f760  fcmp      s8, s0                                         
01a8f764  b.pl      #0x1a8f770                                     
01a8f768  mov       w8, #2                                         
01a8f76c  b         #0x1a8f780                                     
01a8f770  fmov      s0, #1.00000000                                
01a8f774  fcmp      s8, s0                                         
01a8f778  b.hi      #0x1a8f784                                     
01a8f77c  mov       w8, #3                                         
01a8f780  str       w8, [x19, #0x13c]                              
01a8f784  ldr       x8, [x24]                                      
01a8f788  ldr       x8, [x8, #0xb8]                                
01a8f78c  ldr       x0, [x8]                                       
01a8f790  cbz       x0, #0x1a8ff74                                 
01a8f794  mov       w1, #2                                         
01a8f798  mov       x2, xzr                                        
01a8f79c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8f7a0  mov       w8, #0x42040000                                
01a8f7a4  fmov      s1, w8                                         
01a8f7a8  fcmp      s0, s1                                         
01a8f7ac  b.lt      #0x1a8f7e4                                     
01a8f7b0  ldr       x8, [x24]                                      
01a8f7b4  ldr       x8, [x8, #0xb8]                                
01a8f7b8  ldr       x8, [x8]                                       
01a8f7bc  cbz       x8, #0x1a8ff74                                 
01a8f7c0  add       x9, x8, #0x518                                 
01a8f7c4  ldr       w8, [x8, #0x528]                               
01a8f7c8  add       x0, sp, #0xb0                                  
01a8f7cc  ldr       q0, [x9]                                       
01a8f7d0  mov       x1, xzr                                        
01a8f7d4  str       w8, [sp, #0xc0]                                
01a8f7d8  str       q0, [sp, #0xb0]                                
01a8f7dc  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8f7e0  cbz       w0, #0x1a8f848                                 
01a8f7e4  ldr       x8, [x24]                                      
01a8f7e8  ldr       x8, [x8, #0xb8]                                
01a8f7ec  ldr       x0, [x8]                                       
01a8f7f0  cbz       x0, #0x1a8ff74                                 
01a8f7f4  mov       w1, #2                                         
01a8f7f8  mov       x2, xzr                                        
01a8f7fc  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a8f800  mov       w8, #0x42840000                                
01a8f804  fmov      s1, w8                                         
01a8f808  fcmp      s0, s1                                         
01a8f80c  b.lt      #0x1a8f898                                     
01a8f810  ldr       x8, [x24]                                      
01a8f814  ldr       x8, [x8, #0xb8]                                
01a8f818  ldr       x8, [x8]                                       
01a8f81c  cbz       x8, #0x1a8ff74                                 
01a8f820  add       x9, x8, #0x518                                 
01a8f824  ldr       w8, [x8, #0x528]                               
01a8f828  add       x0, sp, #0x90                                  
01a8f82c  ldr       q0, [x9]                                       
01a8f830  mov       x1, xzr                                        
01a8f834  str       w8, [sp, #0xa0]                                
01a8f838  str       q0, [sp, #0x90]                                
01a8f83c  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a8f840  cmp       w0, #1                                         
01a8f844  b.ne      #0x1a8f898                                     
01a8f848  ldr       x8, [x24]                                      
01a8f84c  ldr       x8, [x8, #0xb8]                                
01a8f850  ldr       x20, [x8]                                      
01a8f854  cbz       x20, #0x1a8ff74                                
01a8f858  add       x21, x20, #0x518                               
01a8f85c  ldr       w8, [x20, #0x528]                              
01a8f860  add       x0, sp, #0x70                                  
01a8f864  ldr       q0, [x21]                                      
01a8f868  mov       x1, xzr                                        
01a8f86c  str       w8, [sp, #0x80]                                
01a8f870  add       x8, sp, #0xec                                  
01a8f874  str       q0, [sp, #0x70]                                
01a8f878  bl        #0x1945f68                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Increment
01a8f87c  ldr       q0, [x23]                                      
01a8f880  ldr       w8, [sp, #0xfc]                                
01a8f884  mov       x0, x19                                        
01a8f888  mov       w1, #9                                         
01a8f88c  str       q0, [x21]                                      
01a8f890  str       w8, [x20, #0x528]                              
01a8f894  b         #0x1a8faa0                                     
01a8f898  cmn       w21, #1                                        
01a8f89c  b.eq      #0x1a8fa8c                                     
01a8f8a0  mov       x22, x19                                       
01a8f8a4  mov       w8, #4                                         
01a8f8a8  str       w21, [x22, #0xe0]!                             
01a8f8ac  str       w8, [x22, #0x5c]                               
01a8f8b0  ldr       x8, [x19, #0x120]                              
01a8f8b4  cbz       x8, #0x1a8ff74                                 
01a8f8b8  ldrsw     x9, [x19, #0x13c]                              
01a8f8bc  ldr       w10, [x8, #0x18]                               
01a8f8c0  cmp       w9, w10                                        
01a8f8c4  b.hs      #0x1a8ff78                                     
01a8f8c8  add       x9, x8, x9, lsl #3                             
01a8f8cc  ldr       x0, [x9, #0x20]                                
01a8f8d0  cbz       x0, #0x1a8ff74                                 
01a8f8d4  ldr       w9, [x0, #0x18]                                
01a8f8d8  cmp       w9, #2                                         
01a8f8dc  b.lt      #0x1a8f8fc                                     
01a8f8e0  adrp      x8, #0x3a8c000                                 
01a8f8e4  mov       w1, wzr                                        
01a8f8e8  ldr       x8, [x8, #0x728]                               
01a8f8ec  ldr       x2, [x8]                                       
01a8f8f0  bl        #0x276c96c                                     // System.Collections.Generic.List<int>$$RemoveAt
01a8f8f4  ldr       x8, [x19, #0x120]                              
01a8f8f8  cbz       x8, #0x1a8ff74                                 
01a8f8fc  ldrsw     x9, [x19, #0x13c]                              
01a8f900  ldr       w10, [x8, #0x18]                               
01a8f904  cmp       w9, w10                                        
01a8f908  b.hs      #0x1a8ff78                                     
01a8f90c  add       x8, x8, x9, lsl #3                             
01a8f910  ldr       x0, [x8, #0x20]                                
01a8f914  cbz       x0, #0x1a8ff74                                 
01a8f918  adrp      x9, #0x3a7c000                                 
01a8f91c  ldr       x9, [x9, #0xc10]                               
01a8f920  ldr       w10, [x0, #0x1c]                               
01a8f924  ldr       x8, [x0, #0x10]                                
01a8f928  ldr       w1, [x22]                                      
01a8f92c  ldr       x9, [x9]                                       
01a8f930  add       w10, w10, #1                                   
01a8f934  str       w10, [x0, #0x1c]                               
01a8f938  cbz       x8, #0x1a8ff74                                 
01a8f93c  ldrsw     x10, [x0, #0x18]                               
01a8f940  ldr       w11, [x8, #0x18]                               
01a8f944  cmp       w10, w11                                       
01a8f948  b.hs      #0x1a8f960                                     
01a8f94c  add       x8, x8, x10, lsl #2                            
01a8f950  add       w9, w10, #1                                    
01a8f954  str       w9, [x0, #0x18]                                
01a8f958  str       w1, [x8, #0x20]                                
01a8f95c  b         #0x1a8f970                                     
01a8f960  ldr       x8, [x9, #0x20]                                
01a8f964  ldr       x8, [x8, #0xc0]                                
01a8f968  ldr       x2, [x8, #0x70]                                
01a8f96c  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a8f970  ldr       w8, [x19, #0x13c]                              
01a8f974  cmp       w8, #1                                         
01a8f978  b.ne      #0x1a8f9f4                                     
01a8f97c  ldr       x8, [x19, #0x118]                              
01a8f980  cbz       x8, #0x1a8ff74                                 
01a8f984  ldr       w9, [x8, #0x18]                                
01a8f988  tst       w9, #0xfffffffe                                
01a8f98c  b.eq      #0x1a8ff78                                     
01a8f990  ldr       x0, [x8, #0x28]                                
01a8f994  cbz       x0, #0x1a8ff74                                 
01a8f998  adrp      x26, #0x3a8c000                                
01a8f99c  ldr       x26, [x26, #0x6a8]                             
01a8f9a0  ldr       w1, [x22]                                      
01a8f9a4  ldr       x2, [x26]                                      
01a8f9a8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8f9ac  cbz       x0, #0x1a8ff74                                 
01a8f9b0  ldr       x0, [x0, #0x18]                                
01a8f9b4  mov       x1, xzr                                        
01a8f9b8  bl        #0x2c6d184                                     // System.String$$IsNullOrWhiteSpace
01a8f9bc  ldr       x9, [x24]                                      
01a8f9c0  mov       w8, w0                                         
01a8f9c4  ldr       x9, [x9, #0xb8]                                
01a8f9c8  ldr       x0, [x9]                                       
01a8f9cc  tbz       w8, #0, #0x1a8faa8                             
01a8f9d0  cbz       x0, #0x1a8ff74                                 
01a8f9d4  adrp      x8, #0x3a7c000                                 
01a8f9d8  ldr       x8, [x8, #0xd40]                               
01a8f9dc  ldr       x1, [x8]                                       
01a8f9e0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8f9e4  cbz       x0, #0x1a8ff74                                 
01a8f9e8  mov       x1, xzr                                        
01a8f9ec  bl        #0x1ab04ac                                     // MonsterDataBase$$GetRandomMonsterData
01a8f9f0  b         #0x1a8fb14                                     
01a8f9f4  str       xzr, [x19, #0x140]                             
01a8f9f8  cbz       w8, #0x1a8fb64                                 
01a8f9fc  cmp       w8, #4                                         
01a8fa00  b.ne      #0x1a8fcf8                                     
01a8fa04  ldr       x8, [x24]                                      
01a8fa08  ldr       x8, [x8, #0xb8]                                
01a8fa0c  ldr       x0, [x8]                                       
01a8fa10  cbz       x0, #0x1a8ff74                                 
01a8fa14  mov       x1, xzr                                        
01a8fa18  bl        #0x1afc498                                     // DataMgr$$GetMainEventIndex
01a8fa1c  adrp      x22, #0x3a7c000                                
01a8fa20  mov       w21, w0                                        
01a8fa24  ldr       x22, [x22, #0xde8]                             
01a8fa28  ldr       x0, [x22]                                      
01a8fa2c  ldr       w8, [x0, #0xe4]                                
01a8fa30  cbz       w21, #0x1a8fc38                                
01a8fa34  cbnz      w8, #0x1a8fa40                                 
01a8fa38  bl        #0x183dcb0                                     
01a8fa3c  ldr       x0, [x22]                                      
01a8fa40  ldr       x8, [x24]                                      
01a8fa44  ldr       x8, [x8, #0xb8]                                
01a8fa48  ldr       x9, [x8]                                       
01a8fa4c  cbz       x9, #0x1a8ff74                                 
01a8fa50  ldr       x8, [x0, #0xb8]                                
01a8fa54  ldr       x8, [x8, #0x220]                               
01a8fa58  cbz       x8, #0x1a8ff74                                 
01a8fa5c  ldr       x11, [x8, #0x10]                               
01a8fa60  sub       w10, w21, #1                                   
01a8fa64  ldr       w12, [x11]                                     
01a8fa68  cmp       w10, w12                                       
01a8fa6c  b.hs      #0x1a8ff78                                     
01a8fa70  ldrsw     x9, [x9, #0x5cc]                               
01a8fa74  ldr       x11, [x11, #0x10]                              
01a8fa78  cmp       w9, w11                                        
01a8fa7c  b.hs      #0x1a8ff78                                     
01a8fa80  sxtw      x10, w10                                       
01a8fa84  madd      x9, x11, x10, x9                               
01a8fa88  b         #0x1a8fc70                                     
01a8fa8c  ldr       w8, [x19, #0x13c]                              
01a8fa90  cmp       w8, #5                                         
01a8fa94  b.ne      #0x1a8fc08                                     
01a8fa98  mov       x0, x19                                        
01a8fa9c  mov       w1, #-1                                        
01a8faa0  bl        #0x1a9d1e0                                     // EventCtrl$$ShowShopEvent
01a8faa4  b         #0x1a8ff54                                     
01a8faa8  cbz       x0, #0x1a8ff74                                 
01a8faac  adrp      x8, #0x3a7c000                                 
01a8fab0  ldr       x8, [x8, #0xd40]                               
01a8fab4  ldr       x1, [x8]                                       
01a8fab8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8fabc  ldr       x8, [x19, #0x118]                              
01a8fac0  cbz       x8, #0x1a8ff74                                 
01a8fac4  ldrsw     x9, [x19, #0x13c]                              
01a8fac8  ldr       w10, [x8, #0x18]                               
01a8facc  cmp       w9, w10                                        
01a8fad0  b.hs      #0x1a8ff78                                     
01a8fad4  add       x8, x8, x9, lsl #3                             
01a8fad8  mov       x21, x0                                        
01a8fadc  ldr       x0, [x8, #0x20]                                
01a8fae0  cbz       x0, #0x1a8ff74                                 
01a8fae4  ldr       w1, [x22]                                      
01a8fae8  ldr       x2, [x26]                                      
01a8faec  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8faf0  cbz       x0, #0x1a8ff74                                 
01a8faf4  ldr       x1, [x0, #0x18]                                
01a8faf8  mov       x0, x19                                        
01a8fafc  bl        #0x1a9e5d4                                     // EventCtrl$$GetMonsterIndex
01a8fb00  cbz       x21, #0x1a8ff74                                
01a8fb04  mov       w1, w0                                         
01a8fb08  mov       x0, x21                                        
01a8fb0c  mov       x2, xzr                                        
01a8fb10  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a8fb14  ldr       x8, [x24]                                      
01a8fb18  str       x0, [x19, #0x140]                              
01a8fb1c  mov       x21, x0                                        
01a8fb20  ldr       x8, [x8, #0xb8]                                
01a8fb24  ldr       x0, [x8]                                       
01a8fb28  cbz       x0, #0x1a8ff74                                 
01a8fb2c  adrp      x8, #0x3a7c000                                 
01a8fb30  ldr       x8, [x8, #0xd40]                               
01a8fb34  ldr       x1, [x8]                                       
01a8fb38  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a8fb3c  ldr       x8, [x19, #0x140]                              
01a8fb40  cbz       x8, #0x1a8ff74                                 
01a8fb44  cbz       x0, #0x1a8ff74                                 
01a8fb48  ldr       x1, [x8, #0xb0]                                
01a8fb4c  mov       x2, xzr                                        
01a8fb50  bl        #0x1ab0690                                     // MonsterDataBase$$GetChoiceAbIndex
01a8fb54  cbz       x21, #0x1a8ff74                                
01a8fb58  str       w0, [x21, #0xb8]                               
01a8fb5c  ldr       w8, [x19, #0x13c]                              
01a8fb60  cbnz      w8, #0x1a8f9fc                                 
01a8fb64  ldr       x8, [x19, #0x118]                              
01a8fb68  cbz       x8, #0x1a8ff74                                 
01a8fb6c  ldr       w9, [x8, #0x18]                                
01a8fb70  cbz       w9, #0x1a8ff78                                 
01a8fb74  ldr       x0, [x8, #0x20]                                
01a8fb78  cbz       x0, #0x1a8ff74                                 
01a8fb7c  adrp      x8, #0x3a8c000                                 
01a8fb80  ldr       x8, [x8, #0x6a8]                               
01a8fb84  ldr       w1, [x22]                                      
01a8fb88  ldr       x2, [x8]                                       
01a8fb8c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8fb90  cbz       x0, #0x1a8ff74                                 
01a8fb94  ldr       x1, [x0, #0x28]                                
01a8fb98  bl        #0x1a9db28                                     // EventCtrl$$GetSubIndex
01a8fb9c  cmn       w0, #1                                         
01a8fba0  b.eq      #0x1a8fcf8                                     
01a8fba4  ldr       x8, [x24]                                      
01a8fba8  ldr       x8, [x8, #0xb8]                                
01a8fbac  ldr       x8, [x8]                                       
01a8fbb0  cbz       x8, #0x1a8ff74                                 
01a8fbb4  adrp      x22, #0x3a7c000                                
01a8fbb8  mov       w21, w0                                        
01a8fbbc  ldr       x22, [x22, #0xde8]                             
01a8fbc0  ldr       w10, [x8, #0x150]                              
01a8fbc4  ldr       x0, [x22]                                      
01a8fbc8  cmp       w21, w10                                       
01a8fbcc  ldr       w9, [x0, #0xe4]                                
01a8fbd0  b.ge      #0x1a8fc90                                     
01a8fbd4  cbnz      w9, #0x1a8fbf0                                 
01a8fbd8  bl        #0x183dcb0                                     
01a8fbdc  ldr       x8, [x24]                                      
01a8fbe0  ldr       x8, [x8, #0xb8]                                
01a8fbe4  ldr       x8, [x8]                                       
01a8fbe8  cbz       x8, #0x1a8ff74                                 
01a8fbec  ldr       x0, [x22]                                      
01a8fbf0  ldr       x9, [x0, #0xb8]                                
01a8fbf4  ldr       x0, [x9, #0x690]                               
01a8fbf8  cbz       x0, #0x1a8ff74                                 
01a8fbfc  ldrsw     x2, [x8, #0x5cc]                               
01a8fc00  sxtw      x1, w21                                        
01a8fc04  b         #0x1a8fcc8                                     
01a8fc08  mov       x0, x19                                        
01a8fc0c  bl        #0x1a9a280                                     // EventCtrl$$GetRandomEventIndex
01a8fc10  mov       x22, x19                                       
01a8fc14  cmn       w0, #1                                         
01a8fc18  str       w0, [x22, #0xe0]!                              
01a8fc1c  b.ne      #0x1a8f8b0                                     
01a8fc20  mov       w8, #2                                         
01a8fc24  mov       x0, x19                                        
01a8fc28  str       w8, [x19, #0x13c]                              
01a8fc2c  bl        #0x1a9a280                                     // EventCtrl$$GetRandomEventIndex
01a8fc30  str       w0, [x19, #0xe0]                               
01a8fc34  b         #0x1a8f8b0                                     
01a8fc38  cbnz      w8, #0x1a8fc44                                 
01a8fc3c  bl        #0x183dcb0                                     
01a8fc40  ldr       x0, [x22]                                      
01a8fc44  ldr       x8, [x24]                                      
01a8fc48  ldr       x8, [x8, #0xb8]                                
01a8fc4c  ldr       x9, [x8]                                       
01a8fc50  cbz       x9, #0x1a8ff74                                 
01a8fc54  ldr       x8, [x0, #0xb8]                                
01a8fc58  ldr       x8, [x8, #0x400]                               
01a8fc5c  cbz       x8, #0x1a8ff74                                 
01a8fc60  ldrsw     x9, [x9, #0x5cc]                               
01a8fc64  ldr       w10, [x8, #0x18]                               
01a8fc68  cmp       w9, w10                                        
01a8fc6c  b.hs      #0x1a8ff78                                     
01a8fc70  adrp      x10, #0x3a8c000                                
01a8fc74  add       x8, x8, x9, lsl #3                             
01a8fc78  adrp      x9, #0x3a8c000                                 
01a8fc7c  ldr       x10, [x10, #0x738]                             
01a8fc80  ldr       x9, [x9, #0x740]                               
01a8fc84  ldr       x2, [x8, #0x20]                                
01a8fc88  ldr       x1, [x10]                                      
01a8fc8c  b         #0x1a8fce4                                     
01a8fc90  cbnz      w9, #0x1a8fcac                                 
01a8fc94  bl        #0x183dcb0                                     
01a8fc98  ldr       x8, [x24]                                      
01a8fc9c  ldr       x8, [x8, #0xb8]                                
01a8fca0  ldr       x8, [x8]                                       
01a8fca4  cbz       x8, #0x1a8ff74                                 
01a8fca8  ldr       x0, [x22]                                      
01a8fcac  ldr       x9, [x0, #0xb8]                                
01a8fcb0  ldr       x0, [x9, #0x238]                               
01a8fcb4  cbz       x0, #0x1a8ff74                                 
01a8fcb8  ldr       w9, [x8, #0x150]                               
01a8fcbc  ldrsw     x2, [x8, #0x5cc]                               
01a8fcc0  sub       w9, w21, w9                                    
01a8fcc4  sxtw      x1, w9                                         
01a8fcc8  bl        #0x1661844                                     
01a8fccc  adrp      x8, #0x3a8c000                                 
01a8fcd0  adrp      x9, #0x3a8c000                                 
01a8fcd4  mov       x2, x0                                         
01a8fcd8  ldr       x8, [x8, #0x738]                               
01a8fcdc  ldr       x9, [x9, #0x740]                               
01a8fce0  ldr       x1, [x8]                                       
01a8fce4  ldr       x3, [x9]                                       
01a8fce8  mov       x0, x20                                        
01a8fcec  mov       x4, xzr                                        
01a8fcf0  bl        #0x2c6e254                                     // System.String$$Concat
01a8fcf4  mov       x20, x0                                        
01a8fcf8  ldr       x9, [x19, #0x140]                              
01a8fcfc  ldr       x8, [x19, #0x118]                              
01a8fd00  cbz       x9, #0x1a8fde4                                 
01a8fd04  cbz       x8, #0x1a8ff74                                 
01a8fd08  ldrsw     x9, [x19, #0x13c]                              
01a8fd0c  ldr       w10, [x8, #0x18]                               
01a8fd10  cmp       w9, w10                                        
01a8fd14  b.hs      #0x1a8ff78                                     
01a8fd18  add       x8, x8, x9, lsl #3                             
01a8fd1c  ldr       x0, [x8, #0x20]                                
01a8fd20  cbz       x0, #0x1a8ff74                                 
01a8fd24  adrp      x8, #0x3a8c000                                 
01a8fd28  ldr       x8, [x8, #0x6a8]                               
01a8fd2c  ldr       w1, [x19, #0xe0]                               
01a8fd30  ldr       x2, [x8]                                       
01a8fd34  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8fd38  cbz       x0, #0x1a8ff74                                 
01a8fd3c  ldr       x9, [x19, #0x140]                              
01a8fd40  cbz       x9, #0x1a8ff74                                 
01a8fd44  ldr       x8, [x24]                                      
01a8fd48  ldr       x8, [x8, #0xb8]                                
01a8fd4c  ldr       x8, [x8]                                       
01a8fd50  cbz       x8, #0x1a8ff74                                 
01a8fd54  ldr       x9, [x9, #0x20]                                
01a8fd58  cbz       x9, #0x1a8ff74                                 
01a8fd5c  ldrsw     x10, [x8, #0x5cc]                              
01a8fd60  ldr       w11, [x9, #0x18]                               
01a8fd64  cmp       w10, w11                                       
01a8fd68  b.hs      #0x1a8ff78                                     
01a8fd6c  add       x9, x9, x10, lsl #3                            
01a8fd70  ldr       x0, [x0, #0x30]                                
01a8fd74  ldr       x2, [x8, #0x40]                                
01a8fd78  mov       x3, xzr                                        
01a8fd7c  ldr       x1, [x9, #0x20]                                
01a8fd80  bl        #0x2c6e654                                     // System.String$$Format
01a8fd84  mov       x1, x0                                         
01a8fd88  mov       x0, x20                                        
01a8fd8c  mov       x2, xzr                                        
01a8fd90  bl        #0x2c63780                                     // System.String$$Concat
01a8fd94  ldr       x8, [x19, #0x140]                              
01a8fd98  cbz       x8, #0x1a8ff74                                 
01a8fd9c  ldr       x9, [x24]                                      
01a8fda0  mov       x20, x0                                        
01a8fda4  ldr       x9, [x9, #0xb8]                                
01a8fda8  ldr       x0, [x9]                                       
01a8fdac  cbz       x0, #0x1a8ff74                                 
01a8fdb0  ldr       w2, [x19, #0x13c]                              
01a8fdb4  ldr       w3, [x19, #0xe0]                               
01a8fdb8  mov       w4, wzr                                        
01a8fdbc  ldr       w9, [x8, #0xb8]                                
01a8fdc0  ldr       w7, [x8, #0x10]                                
01a8fdc4  mov       w5, wzr                                        
01a8fdc8  mov       w6, wzr                                        
01a8fdcc  mov       w8, #1                                         
01a8fdd0  mov       w1, #2                                         
01a8fdd4  str       xzr, [sp, #0x10]                               
01a8fdd8  str       w9, [sp, #8]                                   
01a8fddc  strb      w8, [sp]                                       
01a8fde0  b         #0x1a8fe98                                     
01a8fde4  cbz       x8, #0x1a8ff74                                 
01a8fde8  ldrsw     x9, [x19, #0x13c]                              
01a8fdec  ldr       w10, [x8, #0x18]                               
01a8fdf0  cmp       w9, w10                                        
01a8fdf4  b.hs      #0x1a8ff78                                     
01a8fdf8  add       x8, x8, x9, lsl #3                             
01a8fdfc  ldr       x0, [x8, #0x20]                                
01a8fe00  cbz       x0, #0x1a8ff74                                 
01a8fe04  adrp      x8, #0x3a8c000                                 
01a8fe08  ldr       x8, [x8, #0x6a8]                               
01a8fe0c  ldr       w1, [x19, #0xe0]                               
01a8fe10  ldr       x2, [x8]                                       
01a8fe14  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a8fe18  cbz       x0, #0x1a8ff74                                 
01a8fe1c  ldr       x8, [x24]                                      
01a8fe20  ldr       x8, [x8, #0xb8]                                
01a8fe24  ldr       x8, [x8]                                       
01a8fe28  cbz       x8, #0x1a8ff74                                 
01a8fe2c  ldr       x0, [x0, #0x30]                                
01a8fe30  ldr       x2, [x8, #0x40]                                
01a8fe34  mov       x3, xzr                                        
01a8fe38  ldr       x1, [x25]                                      
01a8fe3c  bl        #0x2c6e654                                     // System.String$$Format
01a8fe40  mov       x1, x0                                         
01a8fe44  mov       x0, x20                                        
01a8fe48  mov       x2, xzr                                        
01a8fe4c  bl        #0x2c63780                                     // System.String$$Concat
01a8fe50  ldr       x8, [x24]                                      
01a8fe54  ldr       x8, [x8, #0xb8]                                
01a8fe58  ldr       x8, [x8]                                       
01a8fe5c  cbz       x8, #0x1a8ff74                                 
01a8fe60  mov       w9, #-1                                        
01a8fe64  ldr       w3, [x19, #0xe0]                               
01a8fe68  ldr       w2, [x19, #0x13c]                              
01a8fe6c  str       w9, [sp, #8]                                   
01a8fe70  mov       w9, #1                                         
01a8fe74  mov       x20, x0                                        
01a8fe78  mov       w4, wzr                                        
01a8fe7c  mov       w5, wzr                                        
01a8fe80  mov       w6, wzr                                        
01a8fe84  str       xzr, [sp, #0x10]                               
01a8fe88  mov       x0, x8                                         
01a8fe8c  mov       w1, #2                                         
01a8fe90  mov       w7, #-1                                        
01a8fe94  strb      w9, [sp]                                       
01a8fe98  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a8fe9c  mov       x0, x19                                        
01a8fea0  mov       x1, x20                                        
01a8fea4  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a8fea8  mov       x1, x0                                         
01a8feac  mov       x0, x19                                        
01a8feb0  mov       x2, xzr                                        
01a8feb4  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a8feb8  ldr       x8, [x24]                                      
01a8febc  str       x0, [x19, #0x188]                              
01a8fec0  ldr       x8, [x8, #0xb8]                                
01a8fec4  ldr       x20, [x8]                                      
01a8fec8  cbz       x20, #0x1a8ff74                                
01a8fecc  ldr       w8, [x20, #0xe0]                               
01a8fed0  ldr       q0, [x20, #0xd0]                               
01a8fed4  add       x0, sp, #0x50                                  
01a8fed8  mov       x1, xzr                                        
01a8fedc  str       w8, [sp, #0x60]                                
01a8fee0  add       x8, sp, #0xec                                  
01a8fee4  str       q0, [sp, #0x50]                                
01a8fee8  bl        #0x1946014                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Decrement
01a8feec  ldr       w8, [sp, #0xfc]                                
01a8fef0  ldr       q0, [x23]                                      
01a8fef4  ldr       x9, [x24]                                      
01a8fef8  str       w8, [x20, #0xe0]                               
01a8fefc  str       q0, [x20, #0xd0]                               
01a8ff00  ldr       x8, [x9, #0xb8]                                
01a8ff04  ldr       x20, [x8]                                      
01a8ff08  cbz       x20, #0x1a8ff74                                
01a8ff0c  ldr       w8, [x20, #0xf4]                               
01a8ff10  ldur      q0, [x20, #0xe4]                               
01a8ff14  add       x0, sp, #0x20                                  
01a8ff18  mov       x1, xzr                                        
01a8ff1c  str       w8, [sp, #0x30]                                
01a8ff20  add       x8, sp, #0x3c                                  
01a8ff24  str       q0, [sp, #0x20]                                
01a8ff28  bl        #0x1946014                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Decrement
01a8ff2c  ldur      q0, [sp, #0x3c]                                
01a8ff30  ldr       w8, [sp, #0x4c]                                
01a8ff34  mov       x0, x19                                        
01a8ff38  stur      q0, [x20, #0xe4]                               
01a8ff3c  str       w8, [x20, #0xf4]                               
01a8ff40  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a8ff44  mov       x0, x19                                        
01a8ff48  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01a8ff4c  mov       x0, x19                                        
01a8ff50  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a8ff54  ldp       x20, x19, [sp, #0x170]                         
01a8ff58  ldr       d8, [sp, #0x120]                               
01a8ff5c  ldp       x22, x21, [sp, #0x160]                         
01a8ff60  ldp       x24, x23, [sp, #0x150]                         
01a8ff64  ldp       x26, x25, [sp, #0x140]                         
01a8ff68  ldp       x29, x30, [sp, #0x130]                         
01a8ff6c  add       sp, sp, #0x180                                 
01a8ff70  ret                                                      
01a8ff74  bl        #0x183dddc                                     
01a8ff78  bl        #0x183dde4                                     