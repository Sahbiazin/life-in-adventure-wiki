void EventCtrl__CheckAchievement (EventCtrl_o* __this, int32_t eventType, int32_t eventIndex, int32_t choiceIndex, int32_t resultIndex, const MethodInfo* method);
// RVA 0x1a9f440 to 0x1aa04e4
01a9f440  stp       x30, x23, [sp, #-0x30]!                        
01a9f444  stp       x22, x21, [sp, #0x10]                          
01a9f448  stp       x20, x19, [sp, #0x20]                          
01a9f44c  adrp      x23, #0x3d14000                                
01a9f450  mov       w20, w4                                        
01a9f454  mov       w19, w3                                        
01a9f458  ldrb      w8, [x23, #0xcfd]                              
01a9f45c  mov       w21, w2                                        
01a9f460  mov       w22, w1                                        
01a9f464  tbnz      w8, #0, #0x1a9f488                             
01a9f468  adrp      x0, #0x3a7c000                                 
01a9f46c  ldr       x0, [x0, #0xc08]                               
01a9f470  bl        #0x183db90                                     
01a9f474  adrp      x0, #0x3a7c000                                 
01a9f478  ldr       x0, [x0, #0xfa8]                               
01a9f47c  bl        #0x183db90                                     
01a9f480  mov       w8, #1                                         
01a9f484  strb      w8, [x23, #0xcfd]                              
01a9f488  cmp       w22, #2                                        
01a9f48c  b.gt      #0x1a9f4cc                                     
01a9f490  cbz       w22, #0x1a9f51c                                
01a9f494  cmp       w22, #2                                        
01a9f498  b.ne      #0x1aa0260                                     
01a9f49c  cmp       w21, #0xf                                      
01a9f4a0  orr       w8, w20, w19                                   
01a9f4a4  b.ne      #0x1a9f580                                     
01a9f4a8  cbnz      w8, #0x1a9f580                                 
01a9f4ac  adrp      x8, #0x3a7c000                                 
01a9f4b0  ldr       x8, [x8, #0xc08]                               
01a9f4b4  ldr       x8, [x8]                                       
01a9f4b8  ldr       x8, [x8, #0xb8]                                
01a9f4bc  ldr       x0, [x8]                                       
01a9f4c0  cbz       x0, #0x1aa04d4                                 
01a9f4c4  mov       w1, #0xa                                       
01a9f4c8  b         #0x1aa030c                                     
01a9f4cc  cmp       w22, #3                                        
01a9f4d0  b.eq      #0x1a9f554                                     
01a9f4d4  cmp       w22, #4                                        
01a9f4d8  b.ne      #0x1aa0260                                     
01a9f4dc  cmp       w21, #6                                        
01a9f4e0  b.ne      #0x1a9f4ec                                     
01a9f4e4  cmp       w19, #1                                        
01a9f4e8  b.eq      #0x1a9f4fc                                     
01a9f4ec  cmp       w21, #0x15                                     
01a9f4f0  b.ne      #0x1a9f5f4                                     
01a9f4f4  cmp       w19, #1                                        
01a9f4f8  b.ne      #0x1a9f5f4                                     
01a9f4fc  adrp      x8, #0x3a7c000                                 
01a9f500  ldr       x8, [x8, #0xc08]                               
01a9f504  ldr       x8, [x8]                                       
01a9f508  ldr       x8, [x8, #0xb8]                                
01a9f50c  ldr       x0, [x8]                                       
01a9f510  cbz       x0, #0x1aa04d4                                 
01a9f514  mov       w1, #0xc                                       
01a9f518  b         #0x1aa030c                                     
01a9f51c  cmp       w21, #0x13                                     
01a9f520  b.ne      #0x1a9f528                                     
01a9f524  cbz       w19, #0x1a9f534                                
01a9f528  cmp       w21, #0x14                                     
01a9f52c  b.ne      #0x1a9f6d8                                     
01a9f530  cbnz      w19, #0x1a9f6d8                                
01a9f534  adrp      x8, #0x3a7c000                                 
01a9f538  ldr       x8, [x8, #0xc08]                               
01a9f53c  ldr       x8, [x8]                                       
01a9f540  ldr       x8, [x8, #0xb8]                                
01a9f544  ldr       x0, [x8]                                       
01a9f548  cbz       x0, #0x1aa04d4                                 
01a9f54c  mov       w1, #0xb                                       
01a9f550  b         #0x1aa030c                                     
01a9f554  cmp       w21, #0x1f                                     
01a9f558  b.ne      #0x1a9f5ac                                     
01a9f55c  cbnz      w19, #0x1a9f5ac                                
01a9f560  adrp      x8, #0x3a7c000                                 
01a9f564  ldr       x8, [x8, #0xc08]                               
01a9f568  ldr       x8, [x8]                                       
01a9f56c  ldr       x8, [x8, #0xb8]                                
01a9f570  ldr       x0, [x8]                                       
01a9f574  cbz       x0, #0x1aa04d4                                 
01a9f578  mov       w1, #9                                         
01a9f57c  b         #0x1aa030c                                     
01a9f580  cmp       w21, #0x36                                     
01a9f584  b.ne      #0x1a9f6ac                                     
01a9f588  cbnz      w19, #0x1a9f6ac                                
01a9f58c  adrp      x8, #0x3a7c000                                 
01a9f590  ldr       x8, [x8, #0xc08]                               
01a9f594  ldr       x8, [x8]                                       
01a9f598  ldr       x8, [x8, #0xb8]                                
01a9f59c  ldr       x0, [x8]                                       
01a9f5a0  cbz       x0, #0x1aa04d4                                 
01a9f5a4  mov       w1, #0xd                                       
01a9f5a8  b         #0x1aa030c                                     
01a9f5ac  cbnz      w19, #0x1a9f5c0                                
01a9f5b0  cmp       w21, #0x4b                                     
01a9f5b4  b.ne      #0x1a9f5c0                                     
01a9f5b8  cmp       w20, #1                                        
01a9f5bc  b.eq      #0x1a9f5d4                                     
01a9f5c0  cbnz      w19, #0x1a9f758                                
01a9f5c4  cmp       w21, #0x4f                                     
01a9f5c8  b.ne      #0x1a9f758                                     
01a9f5cc  cmp       w20, #2                                        
01a9f5d0  b.ne      #0x1a9f758                                     
01a9f5d4  adrp      x8, #0x3a7c000                                 
01a9f5d8  ldr       x8, [x8, #0xc08]                               
01a9f5dc  ldr       x8, [x8]                                       
01a9f5e0  ldr       x8, [x8, #0xb8]                                
01a9f5e4  ldr       x0, [x8]                                       
01a9f5e8  cbz       x0, #0x1aa04d4                                 
01a9f5ec  mov       w1, #0x10                                      
01a9f5f0  b         #0x1aa030c                                     
01a9f5f4  cmp       w21, #0x170                                    
01a9f5f8  b.ne      #0x1a9f608                                     
01a9f5fc  cbnz      w19, #0x1a9f608                                
01a9f600  cmp       w20, #1                                        
01a9f604  b.eq      #0x1a9f68c                                     
01a9f608  cmp       w21, #0x170                                    
01a9f60c  b.ne      #0x1a9f620                                     
01a9f610  cmp       w19, #1                                        
01a9f614  b.ne      #0x1a9f620                                     
01a9f618  cmp       w20, #1                                        
01a9f61c  b.eq      #0x1a9f68c                                     
01a9f620  cmp       w21, #0x17a                                    
01a9f624  orr       w8, w20, w19                                   
01a9f628  b.ne      #0x1a9f630                                     
01a9f62c  cbz       w8, #0x1a9f68c                                 
01a9f630  cmp       w21, #0x188                                    
01a9f634  b.ne      #0x1a9f63c                                     
01a9f638  cbz       w8, #0x1a9f68c                                 
01a9f63c  cmp       w21, #0x18c                                    
01a9f640  b.ne      #0x1a9f650                                     
01a9f644  cmp       w19, #1                                        
01a9f648  b.ne      #0x1a9f650                                     
01a9f64c  cbz       w20, #0x1a9f68c                                
01a9f650  cmp       w21, #0x198                                    
01a9f654  b.ne      #0x1a9f65c                                     
01a9f658  cbz       w19, #0x1a9f68c                                
01a9f65c  cmp       w21, #0x1c3                                    
01a9f660  b.ne      #0x1a9f674                                     
01a9f664  cmp       w19, #1                                        
01a9f668  b.ne      #0x1a9f674                                     
01a9f66c  cmp       w20, #1                                        
01a9f670  b.eq      #0x1a9f68c                                     
01a9f674  cmp       w21, #0x1c4                                    
01a9f678  b.ne      #0x1a9f680                                     
01a9f67c  cbz       w19, #0x1a9f68c                                
01a9f680  cmp       w21, #0x1cd                                    
01a9f684  b.ne      #0x1a9fb70                                     
01a9f688  cbnz      w8, #0x1a9fb70                                 
01a9f68c  adrp      x8, #0x3a7c000                                 
01a9f690  ldr       x8, [x8, #0xc08]                               
01a9f694  ldr       x8, [x8]                                       
01a9f698  ldr       x8, [x8, #0xb8]                                
01a9f69c  ldr       x0, [x8]                                       
01a9f6a0  cbz       x0, #0x1aa04d4                                 
01a9f6a4  mov       w1, #0x18                                      
01a9f6a8  b         #0x1aa030c                                     
01a9f6ac  cmp       w21, #0x56                                     
01a9f6b0  b.ne      #0x1a9f710                                     
01a9f6b4  cbnz      w19, #0x1a9f710                                
01a9f6b8  adrp      x8, #0x3a7c000                                 
01a9f6bc  ldr       x8, [x8, #0xc08]                               
01a9f6c0  ldr       x8, [x8]                                       
01a9f6c4  ldr       x8, [x8, #0xb8]                                
01a9f6c8  ldr       x0, [x8]                                       
01a9f6cc  cbz       x0, #0x1aa04d4                                 
01a9f6d0  mov       w1, #0xe                                       
01a9f6d4  b         #0x1aa030c                                     
01a9f6d8  cmp       w21, #0x3c                                     
01a9f6dc  b.ne      #0x1a9f6e4                                     
01a9f6e0  cbz       w19, #0x1a9f6f0                                
01a9f6e4  cmp       w21, #0x3d                                     
01a9f6e8  b.ne      #0x1a9f798                                     
01a9f6ec  cbnz      w19, #0x1a9f798                                
01a9f6f0  adrp      x8, #0x3a7c000                                 
01a9f6f4  ldr       x8, [x8, #0xc08]                               
01a9f6f8  ldr       x8, [x8]                                       
01a9f6fc  ldr       x8, [x8, #0xb8]                                
01a9f700  ldr       x0, [x8]                                       
01a9f704  cbz       x0, #0x1aa04d4                                 
01a9f708  mov       w1, #0xf                                       
01a9f70c  b         #0x1aa030c                                     
01a9f710  cmp       w21, #0x94                                     
01a9f714  b.ne      #0x1a9f71c                                     
01a9f718  cbz       w19, #0x1a9f560                                
01a9f71c  cmp       w21, #0xbb                                     
01a9f720  b.ne      #0x1a9f728                                     
01a9f724  cbz       w19, #0x1a9f738                                
01a9f728  cmp       w21, #0xbc                                     
01a9f72c  b.ne      #0x1a9f840                                     
01a9f730  cmp       w19, #2                                        
01a9f734  b.ne      #0x1a9f840                                     
01a9f738  adrp      x8, #0x3a7c000                                 
01a9f73c  ldr       x8, [x8, #0xc08]                               
01a9f740  ldr       x8, [x8]                                       
01a9f744  ldr       x8, [x8, #0xb8]                                
01a9f748  ldr       x0, [x8]                                       
01a9f74c  cbz       x0, #0x1aa04d4                                 
01a9f750  mov       w1, #0x19                                      
01a9f754  b         #0x1aa030c                                     
01a9f758  cmp       w21, #0x72                                     
01a9f75c  b.ne      #0x1a9f764                                     
01a9f760  cbz       w19, #0x1a9f778                                
01a9f764  cmp       w21, #0x149                                    
01a9f768  b.ne      #0x1a9f81c                                     
01a9f76c  cbnz      w19, #0x1a9f81c                                
01a9f770  cmp       w20, #1                                        
01a9f774  b.hi      #0x1a9f81c                                     
01a9f778  adrp      x8, #0x3a7c000                                 
01a9f77c  ldr       x8, [x8, #0xc08]                               
01a9f780  ldr       x8, [x8]                                       
01a9f784  ldr       x8, [x8, #0xb8]                                
01a9f788  ldr       x0, [x8]                                       
01a9f78c  cbz       x0, #0x1aa04d4                                 
01a9f790  mov       w1, #0x1c                                      
01a9f794  b         #0x1aa030c                                     
01a9f798  cmp       w21, #0x54                                     
01a9f79c  b.ne      #0x1a9f7a4                                     
01a9f7a0  cbz       w19, #0x1a9f560                                
01a9f7a4  cmp       w21, #0x51                                     
01a9f7a8  b.ne      #0x1a9f7b0                                     
01a9f7ac  cbz       w19, #0x1a9f7fc                                
01a9f7b0  cmp       w21, #0x57                                     
01a9f7b4  b.ne      #0x1a9f7bc                                     
01a9f7b8  cbz       w19, #0x1a9f7fc                                
01a9f7bc  cmp       w21, #0x130                                    
01a9f7c0  orr       w9, w20, w19                                   
01a9f7c4  b.ne      #0x1a9f7cc                                     
01a9f7c8  cbz       w9, #0x1a9f7fc                                 
01a9f7cc  cmp       w21, #0x13b                                    
01a9f7d0  b.ne      #0x1a9f7d8                                     
01a9f7d4  cbz       w19, #0x1a9f7fc                                
01a9f7d8  cmp       w21, #0x147                                    
01a9f7dc  b.ne      #0x1a9f7e8                                     
01a9f7e0  cmp       w19, #1                                        
01a9f7e4  b.ls      #0x1a9f7fc                                     
01a9f7e8  cmp       w21, #0x149                                    
01a9f7ec  ccmp      w19, #0, #0, eq                                
01a9f7f0  cset      w11, eq                                        
01a9f7f4  b.ne      #0x1a9fb30                                     
01a9f7f8  cbnz      w20, #0x1a9fb30                                
01a9f7fc  adrp      x8, #0x3a7c000                                 
01a9f800  ldr       x8, [x8, #0xc08]                               
01a9f804  ldr       x8, [x8]                                       
01a9f808  ldr       x8, [x8, #0xb8]                                
01a9f80c  ldr       x0, [x8]                                       
01a9f810  cbz       x0, #0x1aa04d4                                 
01a9f814  mov       w1, #0x1b                                      
01a9f818  b         #0x1aa030c                                     
01a9f81c  cmp       w21, #0x6a                                     
01a9f820  b.le      #0x1a9f874                                     
01a9f824  cmp       w21, #0xe6                                     
01a9f828  b.gt      #0x1a9f89c                                     
01a9f82c  cmp       w21, #0x6b                                     
01a9f830  b.eq      #0x1a9f8ec                                     
01a9f834  cmp       w21, #0x9b                                     
01a9f838  b.eq      #0x1aa025c                                     
01a9f83c  b         #0x1aa0260                                     
01a9f840  cmp       w21, #0xa8                                     
01a9f844  b.le      #0x1a9f8b8                                     
01a9f848  cmp       w21, #0x133                                    
01a9f84c  b.le      #0x1a9f91c                                     
01a9f850  cmp       w21, #0x1d0                                    
01a9f854  b.gt      #0x1a9f970                                     
01a9f858  cmp       w21, #0x134                                    
01a9f85c  b.eq      #0x1a9fa78                                     
01a9f860  cmp       w21, #0x136                                    
01a9f864  b.eq      #0x1a9fa3c                                     
01a9f868  cmp       w21, #0x15f                                    
01a9f86c  b.eq      #0x1a9fa04                                     
01a9f870  b         #0x1aa0260                                     
01a9f874  cmp       w21, #0x15                                     
01a9f878  b.eq      #0x1aa025c                                     
01a9f87c  cmp       w21, #0x1d                                     
01a9f880  b.eq      #0x1aa025c                                     
01a9f884  cmp       w21, #0x52                                     
01a9f888  b.ne      #0x1aa0260                                     
01a9f88c  and       w8, w19, #0xfffffffe                           
01a9f890  cmp       w8, #2                                         
01a9f894  b.ne      #0x1aa0260                                     
01a9f898  b         #0x1a9f8fc                                     
01a9f89c  cmp       w21, #0xe7                                     
01a9f8a0  b.eq      #0x1aa025c                                     
01a9f8a4  cmp       w21, #0x17d                                    
01a9f8a8  b.ne      #0x1aa0260                                     
01a9f8ac  cmp       w19, #1                                        
01a9f8b0  b.ne      #0x1aa0260                                     
01a9f8b4  b         #0x1aa02f0                                     
01a9f8b8  cmp       w21, #0x5e                                     
01a9f8bc  b.gt      #0x1a9f94c                                     
01a9f8c0  cmp       w21, #0x33                                     
01a9f8c4  b.le      #0x1a9f9b4                                     
01a9f8c8  cmp       w21, #0x34                                     
01a9f8cc  b.eq      #0x1a9f8e0                                     
01a9f8d0  cmp       w21, #0x44                                     
01a9f8d4  b.eq      #0x1a9fadc                                     
01a9f8d8  cmp       w21, #0x4b                                     
01a9f8dc  b.ne      #0x1aa0260                                     
01a9f8e0  cmp       w19, #3                                        
01a9f8e4  b.eq      #0x1a9fa30                                     
01a9f8e8  b         #0x1aa0260                                     
01a9f8ec  cmp       w19, #1                                        
01a9f8f0  b.ne      #0x1aa0260                                     
01a9f8f4  cmp       w20, #1                                        
01a9f8f8  b.hi      #0x1aa0260                                     
01a9f8fc  adrp      x8, #0x3a7c000                                 
01a9f900  ldr       x8, [x8, #0xc08]                               
01a9f904  ldr       x8, [x8]                                       
01a9f908  ldr       x8, [x8, #0xb8]                                
01a9f90c  ldr       x0, [x8]                                       
01a9f910  cbz       x0, #0x1aa04d4                                 
01a9f914  mov       w1, #0x1e                                      
01a9f918  b         #0x1aa030c                                     
01a9f91c  cmp       w21, #0xf9                                     
01a9f920  b.le      #0x1a9f98c                                     
01a9f924  cmp       w21, #0xfa                                     
01a9f928  b.eq      #0x1a9fa04                                     
01a9f92c  cmp       w21, #0x108                                    
01a9f930  b.eq      #0x1a9fa48                                     
01a9f934  cmp       w21, #0x12d                                    
01a9f938  b.ne      #0x1aa0260                                     
01a9f93c  cmp       w19, #1                                        
01a9f940  b.ne      #0x1aa0260                                     
01a9f944  cbz       w20, #0x1a9fa08                                
01a9f948  b         #0x1aa0260                                     
01a9f94c  cmp       w21, #0x82                                     
01a9f950  b.le      #0x1a9f9e8                                     
01a9f954  cmp       w21, #0x83                                     
01a9f958  b.eq      #0x1a9fa50                                     
01a9f95c  cmp       w21, #0x86                                     
01a9f960  b.eq      #0x1a9faf4                                     
01a9f964  cmp       w21, #0xa8                                     
01a9f968  b.eq      #0x1a9fa28                                     
01a9f96c  b         #0x1aa0260                                     
01a9f970  cmp       w21, #0x1d1                                    
01a9f974  b.eq      #0x1a9faa4                                     
01a9f978  cmp       w21, #0x1d3                                    
01a9f97c  b.eq      #0x1a9fa3c                                     
01a9f980  cmp       w21, #0x248                                    
01a9f984  b.eq      #0x1a9f9c4                                     
01a9f988  b         #0x1aa0260                                     
01a9f98c  cmp       w21, #0xa9                                     
01a9f990  b.eq      #0x1a9fa28                                     
01a9f994  cmp       w21, #0xb1                                     
01a9f998  b.ne      #0x1aa0260                                     
01a9f99c  cmp       w19, #3                                        
01a9f9a0  b.eq      #0x1a9f8fc                                     
01a9f9a4  cmp       w19, #4                                        
01a9f9a8  b.ne      #0x1aa0260                                     
01a9f9ac  cbnz      w20, #0x1aa0260                                
01a9f9b0  b         #0x1a9f8fc                                     
01a9f9b4  cmp       w21, #6                                        
01a9f9b8  b.eq      #0x1a9fb00                                     
01a9f9bc  cmp       w21, #0x1e                                     
01a9f9c0  b.ne      #0x1aa0260                                     
01a9f9c4  cbnz      w19, #0x1aa0260                                
01a9f9c8  adrp      x8, #0x3a7c000                                 
01a9f9cc  ldr       x8, [x8, #0xc08]                               
01a9f9d0  ldr       x8, [x8]                                       
01a9f9d4  ldr       x8, [x8, #0xb8]                                
01a9f9d8  ldr       x0, [x8]                                       
01a9f9dc  cbz       x0, #0x1aa04d4                                 
01a9f9e0  mov       w1, #0x26                                      
01a9f9e4  b         #0x1aa030c                                     
01a9f9e8  cmp       w21, #0x5f                                     
01a9f9ec  b.eq      #0x1a9fb08                                     
01a9f9f0  cmp       w21, #0x60                                     
01a9f9f4  b.ne      #0x1aa0260                                     
01a9f9f8  cmp       w19, #1                                        
01a9f9fc  b.ne      #0x1aa0260                                     
01a9fa00  b         #0x1a9fb10                                     
01a9fa04  cbnz      w8, #0x1aa0260                                 
01a9fa08  adrp      x8, #0x3a7c000                                 
01a9fa0c  ldr       x8, [x8, #0xc08]                               
01a9fa10  ldr       x8, [x8]                                       
01a9fa14  ldr       x8, [x8, #0xb8]                                
01a9fa18  ldr       x0, [x8]                                       
01a9fa1c  cbz       x0, #0x1aa04d4                                 
01a9fa20  mov       w1, #0x30                                      
01a9fa24  b         #0x1aa030c                                     
01a9fa28  cmp       w19, #1                                        
01a9fa2c  b.ne      #0x1aa0260                                     
01a9fa30  cmp       w20, #1                                        
01a9fa34  b.eq      #0x1a9fa84                                     
01a9fa38  b         #0x1aa0260                                     
01a9fa3c  cmp       w19, #2                                        
01a9fa40  b.eq      #0x1a9fa80                                     
01a9fa44  b         #0x1aa0260                                     
01a9fa48  cbnz      w19, #0x1aa0260                                
01a9fa4c  b         #0x1a9fa58                                     
01a9fa50  cmp       w19, #1                                        
01a9fa54  b.hi      #0x1aa0260                                     
01a9fa58  adrp      x8, #0x3a7c000                                 
01a9fa5c  ldr       x8, [x8, #0xc08]                               
01a9fa60  ldr       x8, [x8]                                       
01a9fa64  ldr       x8, [x8, #0xb8]                                
01a9fa68  ldr       x0, [x8]                                       
01a9fa6c  cbz       x0, #0x1aa04d4                                 
01a9fa70  mov       w1, #0x17                                      
01a9fa74  b         #0x1aa030c                                     
01a9fa78  cmp       w19, #1                                        
01a9fa7c  b.ne      #0x1aa0260                                     
01a9fa80  cbnz      w20, #0x1aa0260                                
01a9fa84  adrp      x8, #0x3a7c000                                 
01a9fa88  ldr       x8, [x8, #0xc08]                               
01a9fa8c  ldr       x8, [x8]                                       
01a9fa90  ldr       x8, [x8, #0xb8]                                
01a9fa94  ldr       x0, [x8]                                       
01a9fa98  cbz       x0, #0x1aa04d4                                 
01a9fa9c  mov       w1, #0x24                                      
01a9faa0  b         #0x1aa030c                                     
01a9faa4  cbnz      w8, #0x1aa0260                                 
01a9faa8  adrp      x8, #0x3a7c000                                 
01a9faac  ldr       x8, [x8, #0xfa8]                               
01a9fab0  ldr       x8, [x8]                                       
01a9fab4  ldr       x8, [x8, #0xb8]                                
01a9fab8  ldr       x0, [x8]                                       
01a9fabc  cbz       x0, #0x1aa04d4                                 
01a9fac0  mov       w1, #1                                         
01a9fac4  mov       w2, #6                                         
01a9fac8  ldp       x20, x19, [sp, #0x20]                          
01a9facc  mov       x3, xzr                                        
01a9fad0  ldp       x22, x21, [sp, #0x10]                          
01a9fad4  ldp       x30, x23, [sp], #0x30                          
01a9fad8  b         #0x199f324                                     // PathMgr$$CompleteMission
01a9fadc  and       w8, w19, #0xfffffffd                           
01a9fae0  cmp       w8, #1                                         
01a9fae4  b.ne      #0x1aa0260                                     
01a9fae8  cmp       w20, #2                                        
01a9faec  b.eq      #0x1a9f8fc                                     
01a9faf0  b         #0x1aa0260                                     
01a9faf4  cmp       w19, #2                                        
01a9faf8  b.ne      #0x1aa0260                                     
01a9fafc  b         #0x1a9fb10                                     
01a9fb00  cbnz      w19, #0x1aa0260                                
01a9fb04  b         #0x1a9fb10                                     
01a9fb08  cmp       w19, #2                                        
01a9fb0c  b.hi      #0x1aa0260                                     
01a9fb10  adrp      x8, #0x3a7c000                                 
01a9fb14  ldr       x8, [x8, #0xc08]                               
01a9fb18  ldr       x8, [x8]                                       
01a9fb1c  ldr       x8, [x8, #0xb8]                                
01a9fb20  ldr       x0, [x8]                                       
01a9fb24  cbz       x0, #0x1aa04d4                                 
01a9fb28  mov       w1, #0x20                                      
01a9fb2c  b         #0x1aa030c                                     
01a9fb30  cmp       w21, #0x5f                                     
01a9fb34  b.ne      #0x1a9fb48                                     
01a9fb38  cmp       w19, #2                                        
01a9fb3c  b.ne      #0x1a9fb48                                     
01a9fb40  cmp       w20, #1                                        
01a9fb44  b.ls      #0x1a9f8fc                                     
01a9fb48  cmp       w21, #0xf1                                     
01a9fb4c  b.ne      #0x1a9fc1c                                     
01a9fb50  cmp       w19, #1                                        
01a9fb54  cset      w10, eq                                        
01a9fb58  cmp       w20, #0                                        
01a9fb5c  csel      w8, wzr, w10, ne                               
01a9fb60  cmp       w19, #2                                        
01a9fb64  b.eq      #0x1a9f8fc                                     
01a9fb68  cbz       w8, #0x1a9fc44                                 
01a9fb6c  b         #0x1a9f8fc                                     
01a9fb70  cmp       w21, #0x230                                    
01a9fb74  b.ne      #0x1a9fba4                                     
01a9fb78  cmp       w19, #1                                        
01a9fb7c  b.ne      #0x1a9fba4                                     
01a9fb80  cbnz      w20, #0x1a9fba4                                
01a9fb84  adrp      x8, #0x3a7c000                                 
01a9fb88  ldr       x8, [x8, #0xc08]                               
01a9fb8c  ldr       x8, [x8]                                       
01a9fb90  ldr       x8, [x8, #0xb8]                                
01a9fb94  ldr       x0, [x8]                                       
01a9fb98  cbz       x0, #0x1aa04d4                                 
01a9fb9c  mov       w1, #0x1a                                      
01a9fba0  b         #0x1aa030c                                     
01a9fba4  cmp       w21, #0x17                                     
01a9fba8  ccmp      w19, #3, #0, eq                                
01a9fbac  cset      w9, eq                                         
01a9fbb0  b.ne      #0x1a9fbbc                                     
01a9fbb4  cmp       w20, #1                                        
01a9fbb8  b.eq      #0x1a9f7fc                                     
01a9fbbc  cmp       w21, #0xfb                                     
01a9fbc0  b.ne      #0x1a9fbc8                                     
01a9fbc4  cbz       w19, #0x1a9f7fc                                
01a9fbc8  cmp       w21, #0x10d                                    
01a9fbcc  b.ne      #0x1a9fbd4                                     
01a9fbd0  cbz       w19, #0x1a9f7fc                                
01a9fbd4  cmp       w21, #0x12c                                    
01a9fbd8  b.ne      #0x1a9fbe0                                     
01a9fbdc  cbz       w19, #0x1a9f7fc                                
01a9fbe0  cmp       w21, #0x4fc                                    
01a9fbe4  b.ne      #0x1a9fbf0                                     
01a9fbe8  cmp       w19, #1                                        
01a9fbec  b.eq      #0x1a9f7fc                                     
01a9fbf0  cmp       w21, #0x28e                                    
01a9fbf4  b.ne      #0x1a9fdf8                                     
01a9fbf8  cbnz      w8, #0x1a9fdf8                                 
01a9fbfc  adrp      x8, #0x3a7c000                                 
01a9fc00  ldr       x8, [x8, #0xc08]                               
01a9fc04  ldr       x8, [x8]                                       
01a9fc08  ldr       x8, [x8, #0xb8]                                
01a9fc0c  ldr       x0, [x8]                                       
01a9fc10  cbz       x0, #0x1aa04d4                                 
01a9fc14  mov       w1, #0x1d                                      
01a9fc18  b         #0x1aa030c                                     
01a9fc1c  cmp       w19, #1                                        
01a9fc20  cset      w10, eq                                        
01a9fc24  cmp       w21, #0x198                                    
01a9fc28  b.ne      #0x1a9fd78                                     
01a9fc2c  cmp       w19, #1                                        
01a9fc30  b.ne      #0x1a9fd78                                     
01a9fc34  orr       w8, w20, #2                                    
01a9fc38  cmp       w8, #2                                         
01a9fc3c  b.eq      #0x1a9f8fc                                     
01a9fc40  mov       w10, #1                                        
01a9fc44  cmp       w20, #2                                        
01a9fc48  cset      w8, eq                                         
01a9fc4c  cbnz      w19, #0x1a9fc60                                
01a9fc50  cmp       w21, #0x146                                    
01a9fc54  b.ne      #0x1a9fc60                                     
01a9fc58  cmp       w20, #3                                        
01a9fc5c  b.eq      #0x1a9fdd8                                     
01a9fc60  cmp       w20, #1                                        
01a9fc64  eor       w11, w11, #1                                   
01a9fc68  csinc     w11, w11, wzr, eq                              
01a9fc6c  tbz       w11, #0, #0x1a9fdd8                            
01a9fc70  cmp       w21, #0x210                                    
01a9fc74  b.ne      #0x1a9fc7c                                     
01a9fc78  cbz       w19, #0x1a9f7fc                                
01a9fc7c  cmp       w21, #0x217                                    
01a9fc80  b.ne      #0x1a9fc88                                     
01a9fc84  cbz       w19, #0x1a9f7fc                                
01a9fc88  cmp       w21, #0x218                                    
01a9fc8c  b.ne      #0x1a9fc94                                     
01a9fc90  cbz       w19, #0x1a9f7fc                                
01a9fc94  cmp       w21, #0x21b                                    
01a9fc98  b.ne      #0x1a9fca0                                     
01a9fc9c  cbz       w19, #0x1a9f7fc                                
01a9fca0  cmp       w21, #0x200                                    
01a9fca4  b.ne      #0x1a9fcac                                     
01a9fca8  cbz       w19, #0x1a9f7fc                                
01a9fcac  cmp       w21, #0x239                                    
01a9fcb0  b.ne      #0x1a9fcb8                                     
01a9fcb4  cbz       w19, #0x1a9f7fc                                
01a9fcb8  cmp       w21, #0x35a                                    
01a9fcbc  b.ne      #0x1a9fcd0                                     
01a9fcc0  cmp       w19, #2                                        
01a9fcc4  b.ne      #0x1a9fcd0                                     
01a9fcc8  cmp       w20, #1                                        
01a9fccc  b.ls      #0x1a9f8fc                                     
01a9fcd0  cmp       w21, #0x3ed                                    
01a9fcd4  b.ne      #0x1a9fcdc                                     
01a9fcd8  cbz       w19, #0x1a9f8fc                                
01a9fcdc  cmp       w21, #0x15a                                    
01a9fce0  b.ne      #0x1a9fcf0                                     
01a9fce4  cmp       w19, #2                                        
01a9fce8  b.ne      #0x1a9fcf0                                     
01a9fcec  cbz       w20, #0x1a9fa84                                
01a9fcf0  cmp       w21, #0x1d0                                    
01a9fcf4  b.ne      #0x1a9fd04                                     
01a9fcf8  cmp       w19, #2                                        
01a9fcfc  b.ne      #0x1a9fd04                                     
01a9fd00  cbz       w20, #0x1a9fa84                                
01a9fd04  cmp       w21, #0x224                                    
01a9fd08  csel      w11, wzr, w10, ne                              
01a9fd0c  cbnz      w20, #0x1a9fd14                                
01a9fd10  cbnz      w11, #0x1a9fa84                                
01a9fd14  cmp       w21, #0x22e                                    
01a9fd18  b.ne      #0x1a9fd20                                     
01a9fd1c  cbz       w9, #0x1a9fa84                                 
01a9fd20  cmp       w21, #0x247                                    
01a9fd24  b.ne      #0x1a9fd2c                                     
01a9fd28  cbz       w9, #0x1a9fa84                                 
01a9fd2c  cmp       w21, #0x25a                                    
01a9fd30  csel      w9, wzr, w10, ne                               
01a9fd34  cbnz      w20, #0x1a9fd3c                                
01a9fd38  cbnz      w9, #0x1a9fa84                                 
01a9fd3c  cmp       w21, #0x269                                    
01a9fd40  eor       w9, w10, #1                                    
01a9fd44  csinc     w11, w9, wzr, eq                               
01a9fd48  tbz       w11, #0, #0x1a9fd58                            
01a9fd4c  cmp       w21, #0x2af                                    
01a9fd50  csinc     w9, w9, wzr, eq                                
01a9fd54  tbnz      w9, #0, #0x1aa001c                             
01a9fd58  adrp      x8, #0x3a7c000                                 
01a9fd5c  ldr       x8, [x8, #0xc08]                               
01a9fd60  ldr       x8, [x8]                                       
01a9fd64  ldr       x8, [x8, #0xb8]                                
01a9fd68  ldr       x0, [x8]                                       
01a9fd6c  cbz       x0, #0x1aa04d4                                 
01a9fd70  mov       w1, #0x25                                      
01a9fd74  b         #0x1aa030c                                     
01a9fd78  cmp       w20, #2                                        
01a9fd7c  cset      w8, eq                                         
01a9fd80  cmp       w21, #0x19a                                    
01a9fd84  b.ne      #0x1a9fd98                                     
01a9fd88  cmp       w19, #2                                        
01a9fd8c  b.ne      #0x1a9fd98                                     
01a9fd90  cmp       w20, #2                                        
01a9fd94  b.eq      #0x1a9f8fc                                     
01a9fd98  cmp       w21, #0x1c2                                    
01a9fd9c  b.ne      #0x1a9fdb0                                     
01a9fda0  cmp       w19, #1                                        
01a9fda4  b.ne      #0x1a9fdb0                                     
01a9fda8  cmp       w20, #1                                        
01a9fdac  b.ls      #0x1a9f8fc                                     
01a9fdb0  cmp       w21, #0x4f                                     
01a9fdb4  b.ne      #0x1a9fdc4                                     
01a9fdb8  cbnz      w19, #0x1a9fdc4                                
01a9fdbc  cmp       w20, #1                                        
01a9fdc0  b.ls      #0x1a9fdd8                                     
01a9fdc4  cmp       w21, #0x56                                     
01a9fdc8  b.ne      #0x1a9fc4c                                     
01a9fdcc  cbnz      w19, #0x1a9fc4c                                
01a9fdd0  cmp       w20, #1                                        
01a9fdd4  b.hi      #0x1a9fc4c                                     
01a9fdd8  adrp      x8, #0x3a7c000                                 
01a9fddc  ldr       x8, [x8, #0xc08]                               
01a9fde0  ldr       x8, [x8]                                       
01a9fde4  ldr       x8, [x8, #0xb8]                                
01a9fde8  ldr       x0, [x8]                                       
01a9fdec  cbz       x0, #0x1aa04d4                                 
01a9fdf0  mov       w1, #0x1f                                      
01a9fdf4  b         #0x1aa030c                                     
01a9fdf8  cmp       w21, #0x96                                     
01a9fdfc  b.ne      #0x1a9fe10                                     
01a9fe00  cmp       w19, #2                                        
01a9fe04  b.ne      #0x1a9fe10                                     
01a9fe08  cmp       w20, #1                                        
01a9fe0c  b.ls      #0x1a9f8fc                                     
01a9fe10  cmp       w21, #0x319                                    
01a9fe14  b.gt      #0x1a9fe44                                     
01a9fe18  cmp       w21, #0x1e1                                    
01a9fe1c  b.le      #0x1a9fe68                                     
01a9fe20  cmp       w21, #0x1e2                                    
01a9fe24  b.eq      #0x1a9fe98                                     
01a9fe28  cmp       w21, #0x205                                    
01a9fe2c  b.eq      #0x1a9fe38                                     
01a9fe30  cmp       w21, #0x206                                    
01a9fe34  b.ne      #0x1a9fed4                                     
01a9fe38  cbnz      w19, #0x1a9fed4                                
01a9fe3c  sub       w10, w20, #1                                   
01a9fe40  b         #0x1a9febc                                     
01a9fe44  cmp       w21, #0x49c                                    
01a9fe48  b.le      #0x1a9fe80                                     
01a9fe4c  cmp       w21, #0x49d                                    
01a9fe50  b.eq      #0x1a9feac                                     
01a9fe54  cmp       w21, #0x4e4                                    
01a9fe58  b.eq      #0x1a9fe90                                     
01a9fe5c  cmp       w21, #0x4e9                                    
01a9fe60  b.eq      #0x1a9fe90                                     
01a9fe64  b         #0x1a9fed4                                     
01a9fe68  cmp       w21, #0x10a                                    
01a9fe6c  b.eq      #0x1a9feb8                                     
01a9fe70  cmp       w21, #0x197                                    
01a9fe74  b.ne      #0x1a9fed4                                     
01a9fe78  cbnz      w8, #0x1a9fed4                                 
01a9fe7c  b         #0x1a9f8fc                                     
01a9fe80  cmp       w21, #0x31a                                    
01a9fe84  b.eq      #0x1a9fec8                                     
01a9fe88  cmp       w21, #0x491                                    
01a9fe8c  b.ne      #0x1a9fed4                                     
01a9fe90  cbnz      w19, #0x1a9fed4                                
01a9fe94  b         #0x1a9f8fc                                     
01a9fe98  cmp       w19, #3                                        
01a9fe9c  b.ne      #0x1a9fed4                                     
01a9fea0  cmp       w20, #2                                        
01a9fea4  b.eq      #0x1a9f8fc                                     
01a9fea8  b         #0x1a9fed4                                     
01a9feac  cmp       w19, #2                                        
01a9feb0  b.eq      #0x1a9f8fc                                     
01a9feb4  b         #0x1a9fed4                                     
01a9feb8  sub       w10, w19, #1                                   
01a9febc  cmp       w10, #1                                        
01a9fec0  b.ls      #0x1a9f8fc                                     
01a9fec4  b         #0x1a9fed4                                     
01a9fec8  and       w10, w19, #0xfffffffe                          
01a9fecc  cmp       w10, #2                                        
01a9fed0  b.eq      #0x1a9f8fc                                     
01a9fed4  cbz       w9, #0x1a9feec                                 
01a9fed8  cmp       w20, #3                                        
01a9fedc  b.hi      #0x1aa0260                                     
01a9fee0  cmp       w20, #1                                        
01a9fee4  b.ne      #0x1a9fdd8                                     
01a9fee8  b         #0x1aa0260                                     
01a9feec  cmp       w21, #0x30a                                    
01a9fef0  b.ne      #0x1a9fef8                                     
01a9fef4  cbz       w19, #0x1a9ff28                                
01a9fef8  cmp       w21, #0x30c                                    
01a9fefc  b.ne      #0x1a9ff04                                     
01a9ff00  cbz       w19, #0x1a9ff28                                
01a9ff04  cmp       w21, #0x312                                    
01a9ff08  b.ne      #0x1a9ff10                                     
01a9ff0c  cbz       w19, #0x1a9ff28                                
01a9ff10  cmp       w21, #0x321                                    
01a9ff14  b.ne      #0x1a9ff48                                     
01a9ff18  cbnz      w19, #0x1a9ff48                                
01a9ff1c  orr       w8, w20, #2                                    
01a9ff20  cmp       w8, #2                                         
01a9ff24  b.ne      #0x1aa0260                                     
01a9ff28  adrp      x8, #0x3a7c000                                 
01a9ff2c  ldr       x8, [x8, #0xc08]                               
01a9ff30  ldr       x8, [x8]                                       
01a9ff34  ldr       x8, [x8, #0xb8]                                
01a9ff38  ldr       x0, [x8]                                       
01a9ff3c  cbz       x0, #0x1aa04d4                                 
01a9ff40  mov       w1, #0x21                                      
01a9ff44  b         #0x1aa030c                                     
01a9ff48  cmp       w21, #0x318                                    
01a9ff4c  b.ne      #0x1a9ff74                                     
01a9ff50  cbnz      w19, #0x1a9ff74                                
01a9ff54  adrp      x8, #0x3a7c000                                 
01a9ff58  ldr       x8, [x8, #0xc08]                               
01a9ff5c  ldr       x8, [x8]                                       
01a9ff60  ldr       x8, [x8, #0xb8]                                
01a9ff64  ldr       x0, [x8]                                       
01a9ff68  cbz       x0, #0x1aa04d4                                 
01a9ff6c  mov       w1, #0x22                                      
01a9ff70  b         #0x1aa030c                                     
01a9ff74  cmp       w21, #0x142                                    
01a9ff78  b.ne      #0x1a9ff88                                     
01a9ff7c  cmp       w19, #1                                        
01a9ff80  b.ne      #0x1a9ff88                                     
01a9ff84  cbz       w20, #0x1a9fa84                                
01a9ff88  cmp       w21, #0x213                                    
01a9ff8c  b.ne      #0x1a9ff9c                                     
01a9ff90  cmp       w19, #1                                        
01a9ff94  b.ne      #0x1a9ff9c                                     
01a9ff98  cbz       w20, #0x1a9fa84                                
01a9ff9c  cmp       w21, #0x346                                    
01a9ffa0  b.ne      #0x1a9ffb0                                     
01a9ffa4  cmp       w19, #2                                        
01a9ffa8  b.ne      #0x1a9ffb0                                     
01a9ffac  cbz       w20, #0x1a9fa84                                
01a9ffb0  cmp       w21, #0x347                                    
01a9ffb4  b.ne      #0x1a9ffbc                                     
01a9ffb8  cbz       w8, #0x1a9fa84                                 
01a9ffbc  cmp       w21, #0x356                                    
01a9ffc0  b.ne      #0x1a9ffc8                                     
01a9ffc4  cbz       w8, #0x1a9fa84                                 
01a9ffc8  cmp       w21, #0x35b                                    
01a9ffcc  b.ne      #0x1a9ffdc                                     
01a9ffd0  cmp       w19, #1                                        
01a9ffd4  b.ne      #0x1a9ffdc                                     
01a9ffd8  cbz       w20, #0x1a9fa84                                
01a9ffdc  cmp       w21, #0x96                                     
01a9ffe0  b.ne      #0x1a9ffe8                                     
01a9ffe4  cbz       w19, #0x1aa02f0                                
01a9ffe8  cmp       w21, #0x23f                                    
01a9ffec  b.gt      #0x1aa00c0                                     
01a9fff0  cmp       w21, #0x1f3                                    
01a9fff4  b.le      #0x1aa00ec                                     
01a9fff8  cmp       w21, #0x21b                                    
01a9fffc  b.le      #0x1aa0144                                     
01aa0000  cmp       w21, #0x22c                                    
01aa0004  b.gt      #0x1aa01e4                                     
01aa0008  cmp       w21, #0x21c                                    
01aa000c  b.eq      #0x1aa01bc                                     
01aa0010  cmp       w21, #0x22c                                    
01aa0014  b.eq      #0x1aa01f4                                     
01aa0018  b         #0x1aa0354                                     
01aa001c  cmp       w21, #0xb8                                     
01aa0020  b.ne      #0x1aa002c                                     
01aa0024  cmp       w19, #3                                        
01aa0028  b.ls      #0x1aa02f0                                     
01aa002c  cmp       w21, #0xf1                                     
01aa0030  b.ne      #0x1aa0038                                     
01aa0034  cbz       w19, #0x1aa02f0                                
01aa0038  cmp       w21, #0x304                                    
01aa003c  b.ne      #0x1aa0044                                     
01aa0040  cbz       w19, #0x1a9f7fc                                
01aa0044  cmp       w21, #0x370                                    
01aa0048  csel      w9, wzr, w10, ne                               
01aa004c  cmp       w20, #1                                        
01aa0050  b.hi      #0x1aa0058                                     
01aa0054  cbnz      w9, #0x1a9f7fc                                 
01aa0058  and       w9, w9, w8                                     
01aa005c  cmp       w9, #1                                         
01aa0060  b.eq      #0x1a9fdd8                                     
01aa0064  cmp       w21, #0x300                                    
01aa0068  b.ne      #0x1aa0070                                     
01aa006c  cbz       w19, #0x1aa00a0                                
01aa0070  cmp       w21, #0x308                                    
01aa0074  b.ne      #0x1aa007c                                     
01aa0078  cbz       w19, #0x1aa00a0                                
01aa007c  cmp       w21, #0x313                                    
01aa0080  b.ne      #0x1aa0088                                     
01aa0084  cbz       w19, #0x1aa00a0                                
01aa0088  cmp       w21, #0x33d                                    
01aa008c  b.ne      #0x1aa0094                                     
01aa0090  cbz       w19, #0x1aa00a0                                
01aa0094  cmp       w21, #0x36e                                    
01aa0098  b.ne      #0x1aa044c                                     
01aa009c  cbnz      w19, #0x1aa044c                                
01aa00a0  adrp      x8, #0x3a7c000                                 
01aa00a4  ldr       x8, [x8, #0xc08]                               
01aa00a8  ldr       x8, [x8]                                       
01aa00ac  ldr       x8, [x8, #0xb8]                                
01aa00b0  ldr       x0, [x8]                                       
01aa00b4  cbz       x0, #0x1aa04d4                                 
01aa00b8  mov       w1, #0x29                                      
01aa00bc  b         #0x1aa030c                                     
01aa00c0  cmp       w21, #0x2e0                                    
01aa00c4  b.le      #0x1aa0120                                     
01aa00c8  cmp       w21, #0x32d                                    
01aa00cc  b.le      #0x1aa0160                                     
01aa00d0  cmp       w21, #0x35b                                    
01aa00d4  b.gt      #0x1aa021c                                     
01aa00d8  cmp       w21, #0x32e                                    
01aa00dc  b.eq      #0x1aa01f4                                     
01aa00e0  cmp       w21, #0x32f                                    
01aa00e4  b.eq      #0x1aa01bc                                     
01aa00e8  b         #0x1aa0354                                     
01aa00ec  cmp       w21, #0xbc                                     
01aa00f0  b.gt      #0x1aa017c                                     
01aa00f4  cmp       w21, #0x60                                     
01aa00f8  b.eq      #0x1aa0270                                     
01aa00fc  cmp       w21, #0x68                                     
01aa0100  b.eq      #0x1aa02b4                                     
01aa0104  cmp       w21, #0xb8                                     
01aa0108  b.ne      #0x1aa0354                                     
01aa010c  cbz       w19, #0x1aa0328                                
01aa0110  cmp       w19, #1                                        
01aa0114  b.ne      #0x1aa0260                                     
01aa0118  cbnz      w20, #0x1aa0260                                
01aa011c  b         #0x1aa0328                                     
01aa0120  cmp       w21, #0x298                                    
01aa0124  b.gt      #0x1aa01a0                                     
01aa0128  cmp       w21, #0x240                                    
01aa012c  b.eq      #0x1aa01bc                                     
01aa0130  cmp       w21, #0x241                                    
01aa0134  b.eq      #0x1aa01f4                                     
01aa0138  cmp       w21, #0x295                                    
01aa013c  b.eq      #0x1aa01f4                                     
01aa0140  b         #0x1aa0354                                     
01aa0144  cmp       w21, #0x1f4                                    
01aa0148  b.eq      #0x1aa01f4                                     
01aa014c  cmp       w21, #0x214                                    
01aa0150  b.eq      #0x1aa01bc                                     
01aa0154  cmp       w21, #0x21a                                    
01aa0158  b.eq      #0x1aa01f4                                     
01aa015c  b         #0x1aa0354                                     
01aa0160  cmp       w21, #0x2e1                                    
01aa0164  b.eq      #0x1aa02e8                                     
01aa0168  cmp       w21, #0x2f5                                    
01aa016c  b.eq      #0x1aa01bc                                     
01aa0170  cmp       w21, #0x324                                    
01aa0174  b.eq      #0x1aa01bc                                     
01aa0178  b         #0x1aa0354                                     
01aa017c  cmp       w21, #0xbd                                     
01aa0180  b.eq      #0x1aa0324                                     
01aa0184  cmp       w21, #0xc5                                     
01aa0188  b.eq      #0x1aa034c                                     
01aa018c  cmp       w21, #0xe1                                     
01aa0190  b.ne      #0x1aa0354                                     
01aa0194  cmp       w19, #1                                        
01aa0198  b.hi      #0x1aa0260                                     
01aa019c  b         #0x1aa02f0                                     
01aa01a0  cmp       w21, #0x299                                    
01aa01a4  b.eq      #0x1aa01bc                                     
01aa01a8  cmp       w21, #0x2a5                                    
01aa01ac  b.eq      #0x1aa01bc                                     
01aa01b0  cmp       w21, #0x2e0                                    
01aa01b4  b.eq      #0x1a9f8ac                                     
01aa01b8  b         #0x1aa0354                                     
01aa01bc  cbnz      w19, #0x1aa0260                                
01aa01c0  adrp      x8, #0x3a7c000                                 
01aa01c4  ldr       x8, [x8, #0xfa8]                               
01aa01c8  ldr       x8, [x8]                                       
01aa01cc  ldr       x8, [x8, #0xb8]                                
01aa01d0  ldr       x0, [x8]                                       
01aa01d4  cbz       x0, #0x1aa04d4                                 
01aa01d8  mov       w1, #2                                         
01aa01dc  mov       w2, #9                                         
01aa01e0  b         #0x1a9fac8                                     
01aa01e4  cmp       w21, #0x22d                                    
01aa01e8  b.eq      #0x1aa01f4                                     
01aa01ec  cmp       w21, #0x231                                    
01aa01f0  b.ne      #0x1aa0354                                     
01aa01f4  cbnz      w19, #0x1aa0260                                
01aa01f8  adrp      x8, #0x3a7c000                                 
01aa01fc  ldr       x8, [x8, #0xfa8]                               
01aa0200  ldr       x8, [x8]                                       
01aa0204  ldr       x8, [x8, #0xb8]                                
01aa0208  ldr       x0, [x8]                                       
01aa020c  cbz       x0, #0x1aa04d4                                 
01aa0210  mov       w1, #2                                         
01aa0214  mov       w2, #8                                         
01aa0218  b         #0x1a9fac8                                     
01aa021c  cmp       w21, #0x35c                                    
01aa0220  b.eq      #0x1aa025c                                     
01aa0224  cmp       w21, #0x3b5                                    
01aa0228  b.ne      #0x1aa0354                                     
01aa022c  cmp       w19, #1                                        
01aa0230  b.ne      #0x1aa0260                                     
01aa0234  cmp       w20, #1                                        
01aa0238  b.ne      #0x1aa0260                                     
01aa023c  adrp      x8, #0x3a7c000                                 
01aa0240  ldr       x8, [x8, #0xc08]                               
01aa0244  ldr       x8, [x8]                                       
01aa0248  ldr       x8, [x8, #0xb8]                                
01aa024c  ldr       x0, [x8]                                       
01aa0250  cbz       x0, #0x1aa04d4                                 
01aa0254  mov       w1, #0x28                                      
01aa0258  b         #0x1aa030c                                     
01aa025c  cbz       w19, #0x1aa02f0                                
01aa0260  ldp       x20, x19, [sp, #0x20]                          
01aa0264  ldp       x22, x21, [sp, #0x10]                          
01aa0268  ldp       x30, x23, [sp], #0x30                          
01aa026c  ret                                                      
01aa0270  sub       w8, w19, #2                                    
01aa0274  cmp       w8, #2                                         
01aa0278  b.lo      #0x1aa0290                                     
01aa027c  cbz       w19, #0x1aa0290                                
01aa0280  cmp       w19, #1                                        
01aa0284  b.ne      #0x1aa0260                                     
01aa0288  cmp       w20, #1                                        
01aa028c  b.ne      #0x1aa0260                                     
01aa0290  adrp      x8, #0x3a7c000                                 
01aa0294  ldr       x8, [x8, #0xfa8]                               
01aa0298  ldr       x8, [x8]                                       
01aa029c  ldr       x8, [x8, #0xb8]                                
01aa02a0  ldr       x0, [x8]                                       
01aa02a4  cbz       x0, #0x1aa04d4                                 
01aa02a8  mov       w1, #3                                         
01aa02ac  mov       w2, #0xb                                       
01aa02b0  b         #0x1a9fac8                                     
01aa02b4  cmp       w19, #2                                        
01aa02b8  b.eq      #0x1aa02c8                                     
01aa02bc  cmp       w19, #3                                        
01aa02c0  b.ne      #0x1aa0260                                     
01aa02c4  cbnz      w20, #0x1aa0260                                
01aa02c8  adrp      x8, #0x3a7c000                                 
01aa02cc  ldr       x8, [x8, #0xfa8]                               
01aa02d0  ldr       x8, [x8]                                       
01aa02d4  ldr       x8, [x8, #0xb8]                                
01aa02d8  ldr       x0, [x8]                                       
01aa02dc  cbz       x0, #0x1aa04d4                                 
01aa02e0  mov       w1, #3                                         
01aa02e4  b         #0x1aa01dc                                     
01aa02e8  cmp       w19, #2                                        
01aa02ec  b.ne      #0x1aa0260                                     
01aa02f0  adrp      x8, #0x3a7c000                                 
01aa02f4  ldr       x8, [x8, #0xc08]                               
01aa02f8  ldr       x8, [x8]                                       
01aa02fc  ldr       x8, [x8, #0xb8]                                
01aa0300  ldr       x0, [x8]                                       
01aa0304  cbz       x0, #0x1aa04d4                                 
01aa0308  mov       w1, #0x27                                      
01aa030c  ldp       x20, x19, [sp, #0x20]                          
01aa0310  mov       w2, #1                                         
01aa0314  ldp       x22, x21, [sp, #0x10]                          
01aa0318  mov       x3, xzr                                        
01aa031c  ldp       x30, x23, [sp], #0x30                          
01aa0320  b         #0x1af3728                                     // DataMgr$$AddAndReportAchievement
01aa0324  cbnz      w19, #0x1aa0260                                
01aa0328  adrp      x8, #0x3a7c000                                 
01aa032c  ldr       x8, [x8, #0xfa8]                               
01aa0330  ldr       x8, [x8]                                       
01aa0334  ldr       x8, [x8, #0xb8]                                
01aa0338  ldr       x0, [x8]                                       
01aa033c  cbz       x0, #0x1aa04d4                                 
01aa0340  mov       w1, #3                                         
01aa0344  mov       w2, #0xa                                       
01aa0348  b         #0x1a9fac8                                     
01aa034c  cbz       w19, #0x1aa0368                                
01aa0350  b         #0x1aa0260                                     
01aa0354  cmp       w21, #0x8f                                     
01aa0358  b.ne      #0x1aa0374                                     
01aa035c  cbnz      w19, #0x1aa0374                                
01aa0360  cmp       w20, #4                                        
01aa0364  b.eq      #0x1aa03a0                                     
01aa0368  cmp       w20, #1                                        
01aa036c  b.eq      #0x1aa03a0                                     
01aa0370  b         #0x1aa0260                                     
01aa0374  cmp       w19, #1                                        
01aa0378  b.ne      #0x1aa03c4                                     
01aa037c  cmp       w21, #0x8f                                     
01aa0380  b.ne      #0x1aa03c4                                     
01aa0384  cmp       w20, #4                                        
01aa0388  b.hi      #0x1aa03f0                                     
01aa038c  mov       w8, #1                                         
01aa0390  mov       w9, #0x16                                      
01aa0394  lsl       w8, w8, w20                                    
01aa0398  tst       w8, w9                                         
01aa039c  b.eq      #0x1aa03f0                                     
01aa03a0  adrp      x8, #0x3a7c000                                 
01aa03a4  ldr       x8, [x8, #0xfa8]                               
01aa03a8  ldr       x8, [x8]                                       
01aa03ac  ldr       x8, [x8, #0xb8]                                
01aa03b0  ldr       x0, [x8]                                       
01aa03b4  cbz       x0, #0x1aa04d4                                 
01aa03b8  mov       w1, #3                                         
01aa03bc  mov       w2, #0xd                                       
01aa03c0  b         #0x1a9fac8                                     
01aa03c4  cmp       w21, #0x4e2                                    
01aa03c8  b.ne      #0x1aa03f0                                     
01aa03cc  cbnz      w8, #0x1aa03f0                                 
01aa03d0  adrp      x8, #0x3a7c000                                 
01aa03d4  ldr       x8, [x8, #0xc08]                               
01aa03d8  ldr       x8, [x8]                                       
01aa03dc  ldr       x8, [x8, #0xb8]                                
01aa03e0  ldr       x0, [x8]                                       
01aa03e4  cbz       x0, #0x1aa04d4                                 
01aa03e8  mov       w1, #0x2d                                      
01aa03ec  b         #0x1aa030c                                     
01aa03f0  cmp       w21, #0x4f0                                    
01aa03f4  b.ne      #0x1aa0420                                     
01aa03f8  cmp       w19, #1                                        
01aa03fc  b.ne      #0x1aa0420                                     
01aa0400  adrp      x8, #0x3a7c000                                 
01aa0404  ldr       x8, [x8, #0xc08]                               
01aa0408  ldr       x8, [x8]                                       
01aa040c  ldr       x8, [x8, #0xb8]                                
01aa0410  ldr       x0, [x8]                                       
01aa0414  cbz       x0, #0x1aa04d4                                 
01aa0418  mov       w1, #0x2e                                      
01aa041c  b         #0x1aa030c                                     
01aa0420  cmp       w21, #0x4a9                                    
01aa0424  b.ne      #0x1aa0480                                     
01aa0428  cbnz      w19, #0x1aa0480                                
01aa042c  adrp      x8, #0x3a7c000                                 
01aa0430  ldr       x8, [x8, #0xc08]                               
01aa0434  ldr       x8, [x8]                                       
01aa0438  ldr       x8, [x8, #0xb8]                                
01aa043c  ldr       x0, [x8]                                       
01aa0440  cbz       x0, #0x1aa04d4                                 
01aa0444  mov       w1, #0x2f                                      
01aa0448  b         #0x1aa030c                                     
01aa044c  cmp       w21, #0x365                                    
01aa0450  ccmp      w19, #0, #0, eq                                
01aa0454  csel      w8, wzr, w8, ne                                
01aa0458  cmp       w8, #1                                         
01aa045c  b.ne      #0x1aa0494                                     
01aa0460  adrp      x8, #0x3a7c000                                 
01aa0464  ldr       x8, [x8, #0xc08]                               
01aa0468  ldr       x8, [x8]                                       
01aa046c  ldr       x8, [x8, #0xb8]                                
01aa0470  ldr       x0, [x8]                                       
01aa0474  cbz       x0, #0x1aa04d4                                 
01aa0478  mov       w1, #0x2b                                      
01aa047c  b         #0x1aa030c                                     
01aa0480  cmp       w21, #0x52a                                    
01aa0484  b.ne      #0x1aa0260                                     
01aa0488  cmp       w19, #2                                        
01aa048c  b.eq      #0x1a9f944                                     
01aa0490  b         #0x1aa0260                                     
01aa0494  cmp       w21, #0x421                                    
01aa0498  b.ne      #0x1aa04a8                                     
01aa049c  cbnz      w19, #0x1aa04a8                                
01aa04a0  cmp       w20, #1                                        
01aa04a4  b.eq      #0x1aa04b4                                     
01aa04a8  cmp       w21, #0x446                                    
01aa04ac  b.ne      #0x1aa04d8                                     
01aa04b0  cbnz      w19, #0x1aa04d8                                
01aa04b4  adrp      x8, #0x3a7c000                                 
01aa04b8  ldr       x8, [x8, #0xc08]                               
01aa04bc  ldr       x8, [x8]                                       
01aa04c0  ldr       x8, [x8, #0xb8]                                
01aa04c4  ldr       x0, [x8]                                       
01aa04c8  cbz       x0, #0x1aa04d4                                 
01aa04cc  mov       w1, #0x2c                                      
01aa04d0  b         #0x1aa030c                                     
01aa04d4  bl        #0x183dddc                                     
01aa04d8  cmp       w21, #0xb6                                     
01aa04dc  b.eq      #0x1aa0488                                     
01aa04e0  b         #0x1aa0260                                     