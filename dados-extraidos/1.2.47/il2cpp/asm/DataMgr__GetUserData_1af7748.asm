float DataMgr__GetUserData (DataMgr_o* __this, int32_t _index, const MethodInfo* method);
// RVA 0x1af7748 to 0x1af7a54
01af7748  sub       sp, sp, #0x160                                 
01af774c  str       d8, [sp, #0x110]                               
01af7750  stp       x29, x30, [sp, #0x120]                         
01af7754  stp       x24, x23, [sp, #0x130]                         
01af7758  stp       x22, x21, [sp, #0x140]                         
01af775c  stp       x20, x19, [sp, #0x150]                         
01af7760  adrp      x21, #0x3d14000                                
01af7764  mov       w19, w1                                        
01af7768  mov       x20, x0                                        
01af776c  ldrb      w8, [x21, #0xe97]                              
01af7770  tbnz      w8, #0, #0x1af7788                             
01af7774  adrp      x0, #0x3a7d000                                 
01af7778  ldr       x0, [x0, #0x768]                               
01af777c  bl        #0x183db90                                     
01af7780  mov       w8, #1                                         
01af7784  strb      w8, [x21, #0xe97]                              
01af7788  adrp      x22, #0x3a7d000                                
01af778c  cmp       w19, #0xe                                      
01af7790  add       x21, sp, #0xf8                                 
01af7794  ldr       x22, [x22, #0x768]                             
01af7798  b.hi      #0x1af7a00                                     
01af779c  mov       w8, #1                                         
01af77a0  mov       w9, #0x70e0                                    
01af77a4  lsl       w8, w8, w19                                    
01af77a8  tst       w8, w9                                         
01af77ac  b.eq      #0x1af7990                                     
01af77b0  adrp      x23, #0x3d14000                                
01af77b4  ldrb      w8, [x23, #0x678]                              
01af77b8  cbnz      w8, #0x1af77d0                                 
01af77bc  adrp      x0, #0x3a7c000                                 
01af77c0  ldr       x0, [x0, #0xd38]                               
01af77c4  bl        #0x183db90                                     
01af77c8  mov       w8, #1                                         
01af77cc  strb      w8, [x23, #0x678]                              
01af77d0  adrp      x24, #0x3a7c000                                
01af77d4  ldr       x24, [x24, #0xd38]                             
01af77d8  ldr       x8, [x24]                                      
01af77dc  ldr       x8, [x8, #0xb8]                                
01af77e0  ldr       x0, [x8]                                       
01af77e4  cbz       x0, #0x1af7a50                                 
01af77e8  ldr       x2, [x0, #0x48]                                
01af77ec  mov       w1, #0x51                                      
01af77f0  mov       x3, xzr                                        
01af77f4  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01af77f8  movi      d8, #0000000000000000                          
01af77fc  cmp       w0, #1                                         
01af7800  b.lt      #0x1af7888                                     
01af7804  ldr       x0, [x20, #0x20]                               
01af7808  cbz       x0, #0x1af7a50                                 
01af780c  ldr       x2, [x22]                                      
01af7810  add       x8, sp, #0xf8                                  
01af7814  mov       w1, wzr                                        
01af7818  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af781c  ldr       q0, [x21]                                      
01af7820  ldr       x8, [sp, #0x108]                               
01af7824  add       x0, sp, #0xe0                                  
01af7828  mov       x1, xzr                                        
01af782c  str       q0, [sp, #0xe0]                                
01af7830  str       x8, [sp, #0xf0]                                
01af7834  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7838  fmov      s1, #2.00000000                                
01af783c  fcmp      s0, s1                                         
01af7840  b.ls      #0x1af7884                                     
01af7844  ldr       x0, [x20, #0x20]                               
01af7848  cbz       x0, #0x1af7a50                                 
01af784c  ldr       x2, [x22]                                      
01af7850  add       x8, sp, #0xf8                                  
01af7854  mov       w1, #1                                         
01af7858  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af785c  ldr       q0, [x21]                                      
01af7860  ldr       x8, [sp, #0x108]                               
01af7864  add       x0, sp, #0xc0                                  
01af7868  mov       x1, xzr                                        
01af786c  str       q0, [sp, #0xc0]                                
01af7870  str       x8, [sp, #0xd0]                                
01af7874  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7878  fmov      s1, #2.00000000                                
01af787c  fcmp      s0, s1                                         
01af7880  b.hi      #0x1af7888                                     
01af7884  fmov      s8, #2.00000000                                
01af7888  ldrb      w8, [x23, #0x678]                              
01af788c  cbnz      w8, #0x1af78a4                                 
01af7890  adrp      x0, #0x3a7c000                                 
01af7894  ldr       x0, [x0, #0xd38]                               
01af7898  bl        #0x183db90                                     
01af789c  mov       w8, #1                                         
01af78a0  strb      w8, [x23, #0x678]                              
01af78a4  ldr       x8, [x24]                                      
01af78a8  ldr       x8, [x8, #0xb8]                                
01af78ac  ldr       x0, [x8]                                       
01af78b0  cbz       x0, #0x1af7a50                                 
01af78b4  ldr       x2, [x0, #0x48]                                
01af78b8  mov       w1, #0x70                                      
01af78bc  mov       x3, xzr                                        
01af78c0  bl        #0x1a25ec4                                     // Equipment$$GetAbilityValue
01af78c4  cmp       w0, #1                                         
01af78c8  b.lt      #0x1af7954                                     
01af78cc  ldr       x0, [x20, #0x20]                               
01af78d0  cbz       x0, #0x1af7a50                                 
01af78d4  ldr       x2, [x22]                                      
01af78d8  add       x8, sp, #0xf8                                  
01af78dc  mov       w1, wzr                                        
01af78e0  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af78e4  ldr       q0, [x21]                                      
01af78e8  ldr       x8, [sp, #0x108]                               
01af78ec  add       x0, sp, #0xa0                                  
01af78f0  mov       x1, xzr                                        
01af78f4  str       q0, [sp, #0xa0]                                
01af78f8  str       x8, [sp, #0xb0]                                
01af78fc  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7900  fmov      s1, #1.00000000                                
01af7904  fcmp      s0, s1                                         
01af7908  b.ls      #0x1af794c                                     
01af790c  ldr       x0, [x20, #0x20]                               
01af7910  cbz       x0, #0x1af7a50                                 
01af7914  ldr       x2, [x22]                                      
01af7918  add       x8, sp, #0xf8                                  
01af791c  mov       w1, #1                                         
01af7920  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7924  ldr       q0, [x21]                                      
01af7928  ldr       x8, [sp, #0x108]                               
01af792c  add       x0, sp, #0x80                                  
01af7930  mov       x1, xzr                                        
01af7934  str       q0, [sp, #0x80]                                
01af7938  str       x8, [sp, #0x90]                                
01af793c  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7940  fmov      s1, #1.00000000                                
01af7944  fcmp      s0, s1                                         
01af7948  b.hi      #0x1af7954                                     
01af794c  fmov      s0, #-1.00000000                               
01af7950  fadd      s8, s8, s0                                     
01af7954  ldr       x0, [x20, #0x20]                               
01af7958  cbz       x0, #0x1af7a50                                 
01af795c  ldr       x2, [x22]                                      
01af7960  add       x8, sp, #0xf8                                  
01af7964  mov       w1, w19                                        
01af7968  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af796c  ldr       q0, [x21]                                      
01af7970  ldr       x8, [sp, #0x108]                               
01af7974  add       x0, sp, #0x60                                  
01af7978  mov       x1, xzr                                        
01af797c  str       q0, [sp, #0x60]                                
01af7980  str       x8, [sp, #0x70]                                
01af7984  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7988  fadd      s0, s8, s0                                     
01af798c  b         #0x1af7a34                                     
01af7990  cmp       w19, #8                                        
01af7994  b.eq      #0x1af79d0                                     
01af7998  cmp       w19, #9                                        
01af799c  b.ne      #0x1af7a00                                     
01af79a0  ldr       x0, [x20, #0x20]                               
01af79a4  cbz       x0, #0x1af7a50                                 
01af79a8  ldr       x2, [x22]                                      
01af79ac  add       x8, sp, #0xf8                                  
01af79b0  mov       w1, #9                                         
01af79b4  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af79b8  ldr       q0, [x21]                                      
01af79bc  ldr       x8, [sp, #0x108]                               
01af79c0  add       x0, sp, #0x20                                  
01af79c4  str       q0, [sp, #0x20]                                
01af79c8  str       x8, [sp, #0x30]                                
01af79cc  b         #0x1af7a2c                                     
01af79d0  ldr       x0, [x20, #0x20]                               
01af79d4  cbz       x0, #0x1af7a50                                 
01af79d8  ldr       x2, [x22]                                      
01af79dc  add       x8, sp, #0xf8                                  
01af79e0  mov       w1, #8                                         
01af79e4  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af79e8  ldr       q0, [x21]                                      
01af79ec  ldr       x8, [sp, #0x108]                               
01af79f0  add       x0, sp, #0x40                                  
01af79f4  str       q0, [sp, #0x40]                                
01af79f8  str       x8, [sp, #0x50]                                
01af79fc  b         #0x1af7a2c                                     
01af7a00  ldr       x0, [x20, #0x20]                               
01af7a04  cbz       x0, #0x1af7a50                                 
01af7a08  ldr       x2, [x22]                                      
01af7a0c  add       x8, sp, #0xf8                                  
01af7a10  mov       w1, w19                                        
01af7a14  bl        #0x27998e8                                     // System.Collections.Generic.List<ObscuredFloat>$$get_Item
01af7a18  ldr       q0, [x21]                                      
01af7a1c  ldr       x8, [sp, #0x108]                               
01af7a20  mov       x0, sp                                         
01af7a24  str       q0, [sp]                                       
01af7a28  str       x8, [sp, #0x10]                                
01af7a2c  mov       x1, xzr                                        
01af7a30  bl        #0x1943f54                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredFloat$$op_Implicit
01af7a34  ldp       x20, x19, [sp, #0x150]                         
01af7a38  ldr       d8, [sp, #0x110]                               
01af7a3c  ldp       x22, x21, [sp, #0x140]                         
01af7a40  ldp       x24, x23, [sp, #0x130]                         
01af7a44  ldp       x29, x30, [sp, #0x120]                         
01af7a48  add       sp, sp, #0x160                                 
01af7a4c  ret                                                      
01af7a50  bl        #0x183dddc                                     