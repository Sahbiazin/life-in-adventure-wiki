void EventCtrl__ShowStartEvent (EventCtrl_o* __this, System_String_o* charName, int32_t sex, int32_t portraitNum, int32_t goal, int32_t itemSet, bool isLoad, const MethodInfo* method);
// RVA 0x1a90fe8 to 0x1a91980
01a90fe8  sub       sp, sp, #0x1a0                                 
01a90fec  stp       x29, x30, [sp, #0x140]                         
01a90ff0  stp       x28, x27, [sp, #0x150]                         
01a90ff4  stp       x26, x25, [sp, #0x160]                         
01a90ff8  stp       x24, x23, [sp, #0x170]                         
01a90ffc  stp       x22, x21, [sp, #0x180]                         
01a91000  stp       x20, x19, [sp, #0x190]                         
01a91004  adrp      x26, #0x3d14000                                
01a91008  adrp      x28, #0x3a7c000                                
01a9100c  mov       w20, w6                                        
01a91010  ldrb      w8, [x26, #0xcd6]                              
01a91014  ldr       x28, [x28, #0xc08]                             
01a91018  mov       w21, w5                                        
01a9101c  mov       w22, w4                                        
01a91020  mov       w27, w3                                        
01a91024  mov       w24, w2                                        
01a91028  mov       x25, x1                                        
01a9102c  mov       x19, x0                                        
01a91030  tbnz      w8, #0, #0x1a91120                             
01a91034  adrp      x0, #0x3a7c000                                 
01a91038  ldr       x0, [x0, #0xec8]                               
01a9103c  bl        #0x183db90                                     
01a91040  adrp      x0, #0x3a7b000                                 
01a91044  ldr       x0, [x0, #0xe58]                               
01a91048  bl        #0x183db90                                     
01a9104c  adrp      x0, #0x3a7e000                                 
01a91050  ldr       x0, [x0, #0xd98]                               
01a91054  bl        #0x183db90                                     
01a91058  adrp      x0, #0x3a7c000                                 
01a9105c  ldr       x0, [x0, #0xc08]                               
01a91060  bl        #0x183db90                                     
01a91064  adrp      x0, #0x3a8c000                                 
01a91068  ldr       x0, [x0, #0x768]                               
01a9106c  bl        #0x183db90                                     
01a91070  adrp      x0, #0x3a8c000                                 
01a91074  ldr       x0, [x0, #0x770]                               
01a91078  bl        #0x183db90                                     
01a9107c  adrp      x0, #0x3a8c000                                 
01a91080  ldr       x0, [x0, #0x638]                               
01a91084  bl        #0x183db90                                     
01a91088  adrp      x0, #0x3a7c000                                 
01a9108c  ldr       x0, [x0, #0xca8]                               
01a91090  bl        #0x183db90                                     
01a91094  adrp      x0, #0x3a8c000                                 
01a91098  ldr       x0, [x0, #0x698]                               
01a9109c  bl        #0x183db90                                     
01a910a0  adrp      x0, #0x3a8c000                                 
01a910a4  ldr       x0, [x0, #0x610]                               
01a910a8  bl        #0x183db90                                     
01a910ac  adrp      x0, #0x3a8c000                                 
01a910b0  ldr       x0, [x0, #0x6a0]                               
01a910b4  bl        #0x183db90                                     
01a910b8  adrp      x0, #0x3a7c000                                 
01a910bc  ldr       x0, [x0, #0xe30]                               
01a910c0  bl        #0x183db90                                     
01a910c4  adrp      x0, #0x3a8c000                                 
01a910c8  ldr       x0, [x0, #0x648]                               
01a910cc  bl        #0x183db90                                     
01a910d0  adrp      x0, #0x3a8c000                                 
01a910d4  ldr       x0, [x0, #0x650]                               
01a910d8  bl        #0x183db90                                     
01a910dc  adrp      x0, #0x3a7c000                                 
01a910e0  ldr       x0, [x0, #0xde8]                               
01a910e4  bl        #0x183db90                                     
01a910e8  adrp      x0, #0x3a7c000                                 
01a910ec  ldr       x0, [x0, #0xc78]                               
01a910f0  bl        #0x183db90                                     
01a910f4  adrp      x0, #0x3a7b000                                 
01a910f8  ldr       x0, [x0, #0xaf0]                               
01a910fc  bl        #0x183db90                                     
01a91100  adrp      x0, #0x3a8c000                                 
01a91104  ldr       x0, [x0, #0x678]                               
01a91108  bl        #0x183db90                                     
01a9110c  adrp      x0, #0x3a8c000                                 
01a91110  ldr       x0, [x0, #0x778]                               
01a91114  bl        #0x183db90                                     
01a91118  mov       w8, #1                                         
01a9111c  strb      w8, [x26, #0xcd6]                              
01a91120  mov       x0, x19                                        
01a91124  mov       w1, wzr                                        
01a91128  mov       w2, wzr                                        
01a9112c  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a91130  ldr       x8, [x28]                                      
01a91134  ldr       x8, [x8, #0xb8]                                
01a91138  ldr       x8, [x8]                                       
01a9113c  cbz       x8, #0x1a9196c                                 
01a91140  ldur      q0, [x8, #0xf8]                                
01a91144  ldr       w8, [x8, #0x108]                               
01a91148  add       x0, sp, #0x120                                 
01a9114c  mov       x1, xzr                                        
01a91150  str       q0, [sp, #0x120]                               
01a91154  str       w8, [sp, #0x130]                               
01a91158  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9115c  cmp       w0, #1                                         
01a91160  b.ne      #0x1a9116c                                     
01a91164  mov       w8, #1                                         
01a91168  strb      w8, [x19, #0x1e1]                              
01a9116c  adrp      x23, #0x3a7c000                                
01a91170  adrp      x29, #0x3a7d000                                
01a91174  adrp      x26, #0x3d14000                                
01a91178  ldr       x23, [x23, #0xca8]                             
01a9117c  ldr       x29, [x29, #0x438]                             
01a91180  tbnz      w20, #0, #0x1a9157c                            
01a91184  ldr       x8, [x28]                                      
01a91188  ldr       w0, [x19, #0x12c]                              
01a9118c  mov       x2, xzr                                        
01a91190  ldr       w1, [x19, #0x130]                              
01a91194  ldr       x8, [x8, #0xb8]                                
01a91198  ldr       x23, [x8]                                      
01a9119c  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a911a0  add       x8, sp, #0x10c                                 
01a911a4  mov       x1, xzr                                        
01a911a8  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a911ac  cbz       x23, #0x1a9196c                                
01a911b0  add       x26, sp, #0xb8                                 
01a911b4  ldr       w8, [sp, #0x11c]                               
01a911b8  ldr       x9, [x28]                                      
01a911bc  ldur      q0, [x26, #0x54]                               
01a911c0  mov       x2, xzr                                        
01a911c4  str       w8, [x23, #0xe0]                               
01a911c8  str       q0, [x23, #0xd0]                               
01a911cc  ldr       x8, [x9, #0xb8]                                
01a911d0  ldr       w0, [x19, #0x134]                              
01a911d4  ldr       w1, [x19, #0x138]                              
01a911d8  ldr       x23, [x8]                                      
01a911dc  bl        #0x35c1e44                                     // UnityEngine.Random$$Range
01a911e0  add       x8, sp, #0xf8                                  
01a911e4  mov       x1, xzr                                        
01a911e8  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a911ec  cbz       x23, #0x1a9196c                                
01a911f0  ldr       q0, [x26, #0x40]                               
01a911f4  ldr       w8, [sp, #0x108]                               
01a911f8  ldr       x9, [x28]                                      
01a911fc  stur      q0, [x23, #0xe4]                               
01a91200  str       w8, [x23, #0xf4]                               
01a91204  ldr       x8, [x9, #0xb8]                                
01a91208  ldr       x8, [x8]                                       
01a9120c  cbz       x8, #0x1a9196c                                 
01a91210  adrp      x9, #0x3d14000                                 
01a91214  str       x25, [x8, #0x40]                               
01a91218  ldrb      w9, [x9, #0x70e]                               
01a9121c  cbnz      w9, #0x1a91248                                 
01a91220  adrp      x0, #0x3a7d000                                 
01a91224  ldr       x0, [x0, #0x438]                               
01a91228  bl        #0x183db90                                     
01a9122c  ldr       x8, [x28]                                      
01a91230  mov       w9, #1                                         
01a91234  adrp      x10, #0x3d14000                                
01a91238  strb      w9, [x10, #0x70e]                              
01a9123c  ldr       x8, [x8, #0xb8]                                
01a91240  ldr       x8, [x8]                                       
01a91244  cbz       x8, #0x1a9196c                                 
01a91248  ldr       x9, [x29]                                      
01a9124c  ldr       x9, [x9, #0xb8]                                
01a91250  ldr       x0, [x9]                                       
01a91254  cbz       x0, #0x1a9196c                                 
01a91258  ldr       x1, [x8, #0x40]                                
01a9125c  mov       x2, xzr                                        
01a91260  bl        #0x19c4fb4                                     // StatusCtrl$$EditCharName
01a91264  ldr       x8, [x28]                                      
01a91268  ldr       x8, [x8, #0xb8]                                
01a9126c  ldr       x0, [x8]                                       
01a91270  cbz       x0, #0x1a9196c                                 
01a91274  mov       x1, xzr                                        
01a91278  str       w24, [x0, #0x60]                               
01a9127c  bl        #0x1afb1c4                                     // DataMgr$$GiveTraitReward
01a91280  ldr       x8, [x28]                                      
01a91284  ldr       x8, [x8, #0xb8]                                
01a91288  ldr       x23, [x8]                                      
01a9128c  cbz       x23, #0x1a9196c                                
01a91290  ldur      q0, [x23, #0xf8]                               
01a91294  ldr       w8, [x23, #0x108]                              
01a91298  add       x0, sp, #0xe0                                  
01a9129c  mov       x1, xzr                                        
01a912a0  str       q0, [sp, #0xe0]                                
01a912a4  str       w8, [sp, #0xf0]                                
01a912a8  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a912ac  add       x8, sp, #0xcc                                  
01a912b0  add       w0, w0, #1                                     
01a912b4  mov       x1, xzr                                        
01a912b8  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a912bc  ldur      q0, [x26, #0x14]                               
01a912c0  ldr       w8, [sp, #0xdc]                                
01a912c4  mov       w0, wzr                                        
01a912c8  ldr       x9, [x28]                                      
01a912cc  mov       x1, xzr                                        
01a912d0  stur      q0, [x23, #0xf8]                               
01a912d4  str       w8, [x23, #0x108]                              
01a912d8  ldr       x8, [x9, #0xb8]                                
01a912dc  ldr       x23, [x8]                                      
01a912e0  add       x8, sp, #0xb8                                  
01a912e4  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a912e8  cbz       x23, #0x1a9196c                                
01a912ec  ldr       w8, [sp, #0xc8]                                
01a912f0  ldr       q0, [x26]                                      
01a912f4  add       x9, x23, #0x518                                
01a912f8  ldr       x10, [x28]                                     
01a912fc  mov       w0, wzr                                        
01a91300  mov       x1, xzr                                        
01a91304  str       w8, [x23, #0x528]                              
01a91308  str       q0, [x9]                                       
01a9130c  ldr       x8, [x10, #0xb8]                               
01a91310  ldr       x23, [x8]                                      
01a91314  add       x8, sp, #0xa4                                  
01a91318  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a9131c  cbz       x23, #0x1a9196c                                
01a91320  ldr       w8, [sp, #0xb4]                                
01a91324  ldur      q0, [sp, #0xa4]                                
01a91328  add       x9, x23, #0x52c                                
01a9132c  ldr       x10, [x28]                                     
01a91330  mov       w0, wzr                                        
01a91334  mov       x1, xzr                                        
01a91338  str       w8, [x23, #0x53c]                              
01a9133c  str       q0, [x9]                                       
01a91340  ldr       x8, [x10, #0xb8]                               
01a91344  ldr       x23, [x8]                                      
01a91348  add       x8, sp, #0x90                                  
01a9134c  bl        #0x1945dd8                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a91350  cbz       x23, #0x1a9196c                                
01a91354  adrp      x24, #0x3d14000                                
01a91358  ldr       q0, [sp, #0x90]                                
01a9135c  ldr       w8, [sp, #0xa0]                                
01a91360  ldrb      w9, [x24, #0x679]                              
01a91364  str       q0, [x23, #0x540]                              
01a91368  str       w8, [x23, #0x550]                              
01a9136c  cbnz      w9, #0x1a91384                                 
01a91370  adrp      x0, #0x3a7c000                                 
01a91374  ldr       x0, [x0, #0xe18]                               
01a91378  bl        #0x183db90                                     
01a9137c  mov       w8, #1                                         
01a91380  strb      w8, [x24, #0x679]                              
01a91384  adrp      x8, #0x3a7c000                                 
01a91388  adrp      x23, #0x3a7c000                                
01a9138c  ldr       x8, [x8, #0xe18]                               
01a91390  ldr       x8, [x8]                                       
01a91394  ldr       x8, [x8, #0xb8]                                
01a91398  ldr       x0, [x8]                                       
01a9139c  ldr       x23, [x23, #0xca8]                             
01a913a0  cbz       x0, #0x1a9196c                                 
01a913a4  mov       x1, xzr                                        
01a913a8  str       w21, [sp, #0x2c]                               
01a913ac  bl        #0x1a3b3c0                                     // Inventory$$ResetInven
01a913b0  ldr       x8, [x23]                                      
01a913b4  ldr       x8, [x8, #0xb8]                                
01a913b8  ldr       x0, [x8]                                       
01a913bc  cbz       x0, #0x1a9196c                                 
01a913c0  mov       w1, wzr                                        
01a913c4  mov       x2, xzr                                        
01a913c8  mov       w21, w20                                       
01a913cc  bl        #0x195cd70                                     // HardModeMgr$$HardModeScoreInit
01a913d0  ldr       x8, [x23]                                      
01a913d4  ldr       x8, [x8, #0xb8]                                
01a913d8  ldr       x0, [x8]                                       
01a913dc  cbz       x0, #0x1a9196c                                 
01a913e0  mov       x1, xzr                                        
01a913e4  mov       w20, w22                                       
01a913e8  bl        #0x1961724                                     // HardModeMgr$$AddUserAbilityByHardMode
01a913ec  adrp      x23, #0x3a8c000                                
01a913f0  ldr       x23, [x23, #0x638]                             
01a913f4  ldr       x0, [x23]                                      
01a913f8  ldr       w8, [x0, #0xe4]                                
01a913fc  cbz       w8, #0x1a91408                                 
01a91400  mov       x22, x29                                       
01a91404  b         #0x1a91414                                     
01a91408  mov       x22, x29                                       
01a9140c  bl        #0x183dcb0                                     
01a91410  ldr       x0, [x23]                                      
01a91414  adrp      x9, #0x3a8c000                                 
01a91418  ldr       x8, [x0, #0xb8]                                
01a9141c  mov       w1, #2                                         
01a91420  ldr       x9, [x9, #0x648]                               
01a91424  mov       w29, w27                                       
01a91428  ldr       x24, [x8, #0x68]                               
01a9142c  ldr       x0, [x9]                                       
01a91430  bl        #0x183dc20                                     
01a91434  ldr       x8, [x28]                                      
01a91438  ldr       x8, [x8, #0xb8]                                
01a9143c  ldr       x8, [x8]                                       
01a91440  cbz       x8, #0x1a9196c                                 
01a91444  ldr       x9, [x23]                                      
01a91448  ldur      q0, [x8, #0xf8]                                
01a9144c  mov       x25, x0                                        
01a91450  ldr       w8, [x8, #0x108]                               
01a91454  add       x0, sp, #0x70                                  
01a91458  mov       x1, xzr                                        
01a9145c  ldr       x9, [x9, #0xb8]                                
01a91460  str       q0, [sp, #0x70]                                
01a91464  str       w8, [sp, #0x80]                                
01a91468  ldr       x27, [x9, #0x258]                              
01a9146c  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a91470  adrp      x23, #0x3a8c000                                
01a91474  mov       w26, w0                                        
01a91478  ldr       x23, [x23, #0x650]                             
01a9147c  ldr       x8, [x23]                                      
01a91480  mov       x0, x8                                         
01a91484  bl        #0x183ddcc                                     
01a91488  sub       w8, w26, #1                                    
01a9148c  mov       x1, x27                                        
01a91490  mov       x3, xzr                                        
01a91494  sxtw      x2, w8                                         
01a91498  mov       x26, x0                                        
01a9149c  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a914a0  cbz       x25, #0x1a9196c                                
01a914a4  mov       w27, w29                                       
01a914a8  cbz       x26, #0x1a914c0                                
01a914ac  ldr       x8, [x25]                                      
01a914b0  mov       x0, x26                                        
01a914b4  ldr       x1, [x8, #0x40]                                
01a914b8  bl        #0x183dcb4                                     
01a914bc  cbz       x0, #0x1a91974                                 
01a914c0  ldr       w8, [x25, #0x18]                               
01a914c4  cbz       w8, #0x1a91970                                 
01a914c8  str       x26, [x25, #0x20]                              
01a914cc  ldr       x8, [x28]                                      
01a914d0  ldr       x8, [x8, #0xb8]                                
01a914d4  ldr       x8, [x8]                                       
01a914d8  cbz       x8, #0x1a9196c                                 
01a914dc  ldur      q0, [x8, #0xf8]                                
01a914e0  ldr       w8, [x8, #0x108]                               
01a914e4  add       x0, sp, #0x50                                  
01a914e8  mov       x1, xzr                                        
01a914ec  mov       x29, x22                                       
01a914f0  mov       w22, w20                                       
01a914f4  str       q0, [sp, #0x50]                                
01a914f8  str       w8, [sp, #0x60]                                
01a914fc  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a91500  ldr       x8, [x23]                                      
01a91504  mov       w26, w0                                        
01a91508  mov       x0, x8                                         
01a9150c  bl        #0x183ddcc                                     
01a91510  adrp      x8, #0x3a8c000                                 
01a91514  sub       w9, w26, #1                                    
01a91518  mov       x3, xzr                                        
01a9151c  ldr       x8, [x8, #0x678]                               
01a91520  sxtw      x2, w9                                         
01a91524  mov       x26, x0                                        
01a91528  ldr       x1, [x8]                                       
01a9152c  bl        #0x1b34d90                                     // Firebase.Analytics.Parameter$$.ctor
01a91530  mov       w20, w21                                       
01a91534  cbz       x26, #0x1a9154c                                
01a91538  ldr       x8, [x25]                                      
01a9153c  mov       x0, x26                                        
01a91540  ldr       x1, [x8, #0x40]                                
01a91544  bl        #0x183dcb4                                     
01a91548  cbz       x0, #0x1a91974                                 
01a9154c  ldr       w8, [x25, #0x18]                               
01a91550  adrp      x23, #0x3a7c000                                
01a91554  ldr       w21, [sp, #0x2c]                               
01a91558  ldr       x23, [x23, #0xca8]                             
01a9155c  tst       w8, #0xfffffffe                                
01a91560  b.eq      #0x1a91970                                     
01a91564  mov       x0, x24                                        
01a91568  mov       x1, x25                                        
01a9156c  mov       x2, xzr                                        
01a91570  str       x26, [x25, #0x28]                              
01a91574  bl        #0x1b32abc                                     // Firebase.Analytics.FirebaseAnalytics$$LogEvent
01a91578  adrp      x26, #0x3d14000                                
01a9157c  ldr       x8, [x23]                                      
01a91580  ldr       x8, [x8, #0xb8]                                
01a91584  ldr       x8, [x8]                                       
01a91588  cbz       x8, #0x1a9196c                                 
01a9158c  ldrb      w9, [x8, #0x20]                                
01a91590  ldr       x8, [x28]                                      
01a91594  cbz       w9, #0x1a915f4                                 
01a91598  ldr       x9, [x8, #0xb8]                                
01a9159c  ldr       x9, [x9]                                       
01a915a0  cbz       x9, #0x1a9196c                                 
01a915a4  ldr       w10, [x9, #0x640]                              
01a915a8  cmp       w10, #1                                        
01a915ac  b.lt      #0x1a915f4                                     
01a915b0  adrp      x23, #0x3a7c000                                
01a915b4  mov       w24, wzr                                       
01a915b8  ldr       x23, [x23, #0xe30]                             
01a915bc  ldr       x0, [x9, #0x158]                               
01a915c0  cbz       x0, #0x1a9196c                                 
01a915c4  ldr       x3, [x23]                                      
01a915c8  add       w1, w24, #0x349                                
01a915cc  mov       w2, #1                                         
01a915d0  bl        #0x276af84                                     // System.Collections.Generic.List<int>$$set_Item
01a915d4  ldr       x8, [x28]                                      
01a915d8  ldr       x9, [x8, #0xb8]                                
01a915dc  ldr       x9, [x9]                                       
01a915e0  cbz       x9, #0x1a9196c                                 
01a915e4  ldr       w10, [x9, #0x640]                              
01a915e8  add       w24, w24, #1                                   
01a915ec  cmp       w24, w10                                       
01a915f0  b.lt      #0x1a915bc                                     
01a915f4  ldr       x8, [x8, #0xb8]                                
01a915f8  ldr       x8, [x8]                                       
01a915fc  cbz       x8, #0x1a9196c                                 
01a91600  ldrb      w9, [x26, #0x70e]                              
01a91604  str       w27, [x8, #0x5c]                               
01a91608  cbnz      w9, #0x1a91620                                 
01a9160c  adrp      x0, #0x3a7d000                                 
01a91610  ldr       x0, [x0, #0x438]                               
01a91614  bl        #0x183db90                                     
01a91618  mov       w8, #1                                         
01a9161c  strb      w8, [x26, #0x70e]                              
01a91620  ldr       x8, [x29]                                      
01a91624  ldr       x8, [x8, #0xb8]                                
01a91628  ldr       x0, [x8]                                       
01a9162c  cbz       x0, #0x1a9196c                                 
01a91630  mov       x1, xzr                                        
01a91634  bl        #0x19c492c                                     // StatusCtrl$$SetPortait
01a91638  ldr       x8, [x28]                                      
01a9163c  ldr       x8, [x8, #0xb8]                                
01a91640  ldr       x0, [x8]                                       
01a91644  cbz       x0, #0x1a9196c                                 
01a91648  mov       x1, xzr                                        
01a9164c  bl        #0x1afbf08                                     // DataMgr$$GetTraitText
01a91650  ldr       x8, [x28]                                      
01a91654  ldr       x8, [x8, #0xb8]                                
01a91658  ldr       x8, [x8]                                       
01a9165c  cbz       x8, #0x1a9196c                                 
01a91660  adrp      x9, #0x3a7e000                                 
01a91664  mov       x23, x0                                        
01a91668  mov       x0, x8                                         
01a9166c  ldr       x9, [x9, #0xd98]                               
01a91670  ldr       x1, [x9]                                       
01a91674  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a91678  cbz       x0, #0x1a9196c                                 
01a9167c  mov       w1, w22                                        
01a91680  mov       x2, xzr                                        
01a91684  bl        #0x1ab535c                                     // EventDataBase$$GetMaintStartEvent
01a91688  cbz       x0, #0x1a9196c                                 
01a9168c  mov       x24, x0                                        
01a91690  ldr       x0, [x0, #0x38]                                
01a91694  cbz       x0, #0x1a9196c                                 
01a91698  adrp      x8, #0x3a8c000                                 
01a9169c  mov       w1, wzr                                        
01a916a0  ldr       x8, [x8, #0x698]                               
01a916a4  ldr       x2, [x8]                                       
01a916a8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a916ac  cbz       x0, #0x1a9196c                                 
01a916b0  ldr       x0, [x0, #0x20]                                
01a916b4  cbz       x0, #0x1a9196c                                 
01a916b8  adrp      x8, #0x3a8c000                                 
01a916bc  mov       w1, wzr                                        
01a916c0  ldr       x8, [x8, #0x6a0]                               
01a916c4  ldr       x2, [x8]                                       
01a916c8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a916cc  cbz       x0, #0x1a9196c                                 
01a916d0  ldr       x8, [x19, #0xf8]                               
01a916d4  cbz       x8, #0x1a9196c                                 
01a916d8  ldr       w9, [x8, #0x18]                                
01a916dc  cmp       w9, w21                                        
01a916e0  b.ls      #0x1a91970                                     
01a916e4  add       x8, x8, w21, sxtw #3                           
01a916e8  ldr       x0, [x0, #0x30]                                
01a916ec  mov       x2, xzr                                        
01a916f0  ldr       x1, [x8, #0x20]                                
01a916f4  bl        #0x2c63780                                     // System.String$$Concat
01a916f8  mov       x1, x0                                         
01a916fc  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a91700  mov       x1, x0                                         
01a91704  and       w2, w20, #1                                    
01a91708  mov       x0, x19                                        
01a9170c  bl        #0x1a91980                                     // EventCtrl$$GiveRewardAndSetRewardText
01a91710  ldr       x8, [x28]                                      
01a91714  ldr       x8, [x8, #0xb8]                                
01a91718  ldr       x8, [x8]                                       
01a9171c  cbz       x8, #0x1a9196c                                 
01a91720  adrp      x25, #0x3a7b000                                
01a91724  adrp      x26, #0x3a8c000                                
01a91728  mov       x3, xzr                                        
01a9172c  ldr       x25, [x25, #0xaf0]                             
01a91730  ldr       x26, [x26, #0x778]                             
01a91734  ldr       x0, [x24, #0x30]                               
01a91738  ldr       x2, [x8, #0x40]                                
01a9173c  ldr       x1, [x25]                                      
01a91740  bl        #0x2c6e654                                     // System.String$$Format
01a91744  ldr       x2, [x19, #0xf0]                               
01a91748  ldr       x1, [x26]                                      
01a9174c  mov       x3, x23                                        
01a91750  mov       x4, xzr                                        
01a91754  bl        #0x2c6e254                                     // System.String$$Concat
01a91758  ldr       x8, [x28]                                      
01a9175c  ldr       x8, [x8, #0xb8]                                
01a91760  ldr       x8, [x8]                                       
01a91764  cbz       x8, #0x1a9196c                                 
01a91768  mov       x23, x0                                        
01a9176c  ldur      x0, [x8, #0x74]                                
01a91770  ldr       w1, [x8, #0x7c]                                
01a91774  mov       x2, xzr                                        
01a91778  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a9177c  ldr       x8, [x28]                                      
01a91780  ldr       x8, [x8, #0xb8]                                
01a91784  ldr       x8, [x8]                                       
01a91788  cbz       x8, #0x1a9196c                                 
01a9178c  mov       w9, #-1                                        
01a91790  mov       w24, w0                                        
01a91794  mov       w2, wzr                                        
01a91798  mov       w4, wzr                                        
01a9179c  mov       w6, wzr                                        
01a917a0  str       w9, [sp, #8]                                   
01a917a4  mov       w9, #1                                         
01a917a8  mov       x0, x8                                         
01a917ac  mov       w1, #1                                         
01a917b0  mov       w3, w22                                        
01a917b4  mov       w5, w21                                        
01a917b8  mov       w7, #-1                                        
01a917bc  str       xzr, [sp, #0x10]                               
01a917c0  strb      w9, [sp]                                       
01a917c4  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01a917c8  tbnz      w20, #0, #0x1a9185c                            
01a917cc  eor       w8, w24, #1                                    
01a917d0  tbnz      w8, #0, #0x1a9185c                             
01a917d4  ldr       x8, [x28]                                      
01a917d8  ldr       x8, [x8, #0xb8]                                
01a917dc  ldr       x8, [x8]                                       
01a917e0  cbz       x8, #0x1a9196c                                 
01a917e4  ldur      q0, [x8, #0xf8]                                
01a917e8  ldr       w8, [x8, #0x108]                               
01a917ec  add       x0, sp, #0x30                                  
01a917f0  mov       x1, xzr                                        
01a917f4  str       q0, [sp, #0x30]                                
01a917f8  str       w8, [sp, #0x40]                                
01a917fc  bl        #0x1945e28                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredInt$$op_Implicit
01a91800  cmp       w0, #2                                         
01a91804  b.lt      #0x1a9185c                                     
01a91808  adrp      x8, #0x3a7c000                                 
01a9180c  adrp      x9, #0x3a7b000                                 
01a91810  ldr       x8, [x8, #0xec8]                               
01a91814  ldr       x8, [x8]                                       
01a91818  ldr       x8, [x8, #0xb8]                                
01a9181c  ldr       x9, [x9, #0xe58]                               
01a91820  ldr       x0, [x9]                                       
01a91824  ldr       x20, [x8]                                      
01a91828  bl        #0x183ddcc                                     
01a9182c  adrp      x8, #0x3a8c000                                 
01a91830  mov       x1, x19                                        
01a91834  mov       x3, xzr                                        
01a91838  ldr       x8, [x8, #0x768]                               
01a9183c  mov       x21, x0                                        
01a91840  ldr       x2, [x8]                                       
01a91844  bl        #0x2d4f6d8                                     // System.Action$$.ctor
01a91848  cbz       x20, #0x1a9196c                                
01a9184c  mov       x0, x20                                        
01a91850  mov       x1, x21                                        
01a91854  mov       x2, xzr                                        
01a91858  bl        #0x1abb398                                     // AccountMgr$$SaveUserData
01a9185c  mov       x0, x19                                        
01a91860  mov       x1, x23                                        
01a91864  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a91868  mov       x1, x0                                         
01a9186c  mov       x0, x19                                        
01a91870  mov       x2, xzr                                        
01a91874  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a91878  str       x0, [x19, #0x188]                              
01a9187c  mov       x0, x19                                        
01a91880  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a91884  ldr       x0, [x19, #0xb8]                               
01a91888  cbz       x0, #0x1a9196c                                 
01a9188c  adrp      x8, #0x3a8c000                                 
01a91890  adrp      x20, #0x3a7c000                                
01a91894  adrp      x21, #0x3a8c000                                
01a91898  ldr       x8, [x8, #0x610]                               
01a9189c  adrp      x22, #0x3a7c000                                
01a918a0  ldr       x20, [x20, #0xc78]                             
01a918a4  ldr       x21, [x21, #0x770]                             
01a918a8  ldr       x22, [x22, #0xde8]                             
01a918ac  mov       w1, wzr                                        
01a918b0  ldr       x2, [x8]                                       
01a918b4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a918b8  ldr       x8, [x20]                                      
01a918bc  mov       x20, x0                                        
01a918c0  mov       x0, x8                                         
01a918c4  bl        #0x183ddcc                                     
01a918c8  ldr       x2, [x21]                                      
01a918cc  mov       x1, x19                                        
01a918d0  mov       x3, xzr                                        
01a918d4  mov       x21, x0                                        
01a918d8  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a918dc  ldr       x0, [x22]                                      
01a918e0  ldr       w8, [x0, #0xe4]                                
01a918e4  cbnz      w8, #0x1a918f0                                 
01a918e8  bl        #0x183dcb0                                     
01a918ec  ldr       x0, [x22]                                      
01a918f0  ldr       x8, [x28]                                      
01a918f4  ldr       x8, [x8, #0xb8]                                
01a918f8  ldr       x9, [x8]                                       
01a918fc  cbz       x9, #0x1a9196c                                 
01a91900  ldr       x8, [x0, #0xb8]                                
01a91904  ldr       x8, [x8, #0x78]                                
01a91908  cbz       x8, #0x1a9196c                                 
01a9190c  ldrsw     x9, [x9, #0x5cc]                               
01a91910  ldr       w10, [x8, #0x18]                               
01a91914  cmp       w9, w10                                        
01a91918  b.hs      #0x1a91970                                     
01a9191c  add       x8, x8, x9, lsl #3                             
01a91920  ldr       x7, [x25]                                      
01a91924  mov       x0, x19                                        
01a91928  mov       x1, x20                                        
01a9192c  mov       w2, #1                                         
01a91930  mov       x3, x21                                        
01a91934  ldr       x4, [x8, #0x20]                                
01a91938  mov       x5, xzr                                        
01a9193c  mov       w6, wzr                                        
01a91940  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a91944  mov       x0, x19                                        
01a91948  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a9194c  ldp       x20, x19, [sp, #0x190]                         
01a91950  ldp       x22, x21, [sp, #0x180]                         
01a91954  ldp       x24, x23, [sp, #0x170]                         
01a91958  ldp       x26, x25, [sp, #0x160]                         
01a9195c  ldp       x28, x27, [sp, #0x150]                         
01a91960  ldp       x29, x30, [sp, #0x140]                         
01a91964  add       sp, sp, #0x1a0                                 
01a91968  ret                                                      
01a9196c  bl        #0x183dddc                                     
01a91970  bl        #0x183dde4                                     
01a91974  bl        #0x183de00                                     
01a91978  mov       x1, xzr                                        
01a9197c  bl        #0x183dca0                                     