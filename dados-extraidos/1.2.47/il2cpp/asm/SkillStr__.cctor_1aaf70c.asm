void SkillStr___cctor (const MethodInfo* method);
// RVA 0x1aaf70c to 0x1aaf874
01aaf70c  str       x30, [sp, #-0x20]!                             
01aaf710  stp       x20, x19, [sp, #0x10]                          
01aaf714  adrp      x20, #0x3d14000                                
01aaf718  adrp      x19, #0x3a7b000                                
01aaf71c  ldrb      w8, [x20, #0xd31]                              
01aaf720  ldr       x19, [x19, #0x7c8]                             
01aaf724  tbnz      w8, #0, #0x1aaf790                             
01aaf728  adrp      x0, #0x3a7d000                                 
01aaf72c  ldr       x0, [x0, #0xbc8]                               // SkillStr_TypeInfo
01aaf730  bl        #0x183db90                                     
01aaf734  adrp      x0, #0x3a7b000                                 
01aaf738  ldr       x0, [x0, #0x7c8]                               
01aaf73c  bl        #0x183db90                                     
01aaf740  adrp      x0, #0x3a8d000                                 
01aaf744  ldr       x0, [x0, #0x738]                               // '주문'
01aaf748  bl        #0x183db90                                     
01aaf74c  adrp      x0, #0x3a8d000                                 
01aaf750  ldr       x0, [x0, #0x740]                               // '공격'
01aaf754  bl        #0x183db90                                     
01aaf758  adrp      x0, #0x3a8d000                                 
01aaf75c  ldr       x0, [x0, #0x748]                               // '회복'
01aaf760  bl        #0x183db90                                     
01aaf764  adrp      x0, #0x3a8d000                                 
01aaf768  ldr       x0, [x0, #0x750]                               // '버프'
01aaf76c  bl        #0x183db90                                     
01aaf770  adrp      x0, #0x3a8d000                                 
01aaf774  ldr       x0, [x0, #0x758]                               // '디버프'
01aaf778  bl        #0x183db90                                     
01aaf77c  adrp      x0, #0x3a8d000                                 
01aaf780  ldr       x0, [x0, #0x760]                               // '기술'
01aaf784  bl        #0x183db90                                     
01aaf788  mov       w8, #1                                         
01aaf78c  strb      w8, [x20, #0xd31]                              
01aaf790  ldr       x0, [x19]                                      
01aaf794  mov       w1, #4                                         
01aaf798  bl        #0x183dc20                                     
01aaf79c  cbz       x0, #0x1aaf870                                 
01aaf7a0  ldr       w8, [x0, #0x18]                                
01aaf7a4  cbz       w8, #0x1aaf86c                                 
01aaf7a8  adrp      x9, #0x3a8d000                                 
01aaf7ac  cmp       w8, #1                                         
01aaf7b0  ldr       x9, [x9, #0x740]                               // '공격'
01aaf7b4  ldr       x9, [x9]                                       
01aaf7b8  str       x9, [x0, #0x20]                                
01aaf7bc  b.eq      #0x1aaf86c                                     
01aaf7c0  adrp      x9, #0x3a8d000                                 
01aaf7c4  cmp       w8, #2                                         
01aaf7c8  ldr       x9, [x9, #0x750]                               // '버프'
01aaf7cc  ldr       x9, [x9]                                       
01aaf7d0  str       x9, [x0, #0x28]                                
01aaf7d4  b.ls      #0x1aaf86c                                     
01aaf7d8  adrp      x9, #0x3a8d000                                 
01aaf7dc  cmp       w8, #3                                         
01aaf7e0  ldr       x9, [x9, #0x758]                               // '디버프'
01aaf7e4  ldr       x9, [x9]                                       
01aaf7e8  str       x9, [x0, #0x30]                                
01aaf7ec  b.eq      #0x1aaf86c                                     
01aaf7f0  adrp      x8, #0x3a8d000                                 
01aaf7f4  adrp      x20, #0x3a7d000                                
01aaf7f8  mov       w1, #2                                         
01aaf7fc  ldr       x8, [x8, #0x748]                               // '회복'
01aaf800  ldr       x8, [x8]                                       
01aaf804  ldr       x20, [x20, #0xbc8]                             // SkillStr_TypeInfo
01aaf808  str       x8, [x0, #0x38]                                
01aaf80c  ldr       x8, [x20]                                      
01aaf810  ldr       x8, [x8, #0xb8]                                
01aaf814  str       x0, [x8]                                       
01aaf818  ldr       x0, [x19]                                      
01aaf81c  bl        #0x183dc20                                     
01aaf820  cbz       x0, #0x1aaf870                                 
01aaf824  ldr       w8, [x0, #0x18]                                
01aaf828  cbz       w8, #0x1aaf86c                                 
01aaf82c  adrp      x9, #0x3a8d000                                 
01aaf830  cmp       w8, #1                                         
01aaf834  ldr       x9, [x9, #0x738]                               // '주문'
01aaf838  ldr       x9, [x9]                                       
01aaf83c  str       x9, [x0, #0x20]                                
01aaf840  b.eq      #0x1aaf86c                                     
01aaf844  adrp      x8, #0x3a8d000                                 
01aaf848  ldr       x8, [x8, #0x760]                               // '기술'
01aaf84c  ldr       x8, [x8]                                       
01aaf850  str       x8, [x0, #0x28]                                
01aaf854  ldr       x8, [x20]                                      
01aaf858  ldp       x20, x19, [sp, #0x10]                          
01aaf85c  ldr       x8, [x8, #0xb8]                                
01aaf860  str       x0, [x8, #8]                                   
01aaf864  ldr       x30, [sp], #0x20                               
01aaf868  ret                                                      
01aaf86c  bl        #0x183dde4                                     
01aaf870  bl        #0x183dddc                                     