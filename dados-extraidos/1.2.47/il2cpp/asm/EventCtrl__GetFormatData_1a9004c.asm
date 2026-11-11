FormatData_array* EventCtrl__GetFormatData (EventCtrl_o* __this, System_String_o* _str, const MethodInfo* method);
// RVA 0x1a9004c to 0x1a90178
01a9004c  stp       x30, x25, [sp, #-0x40]!                        
01a90050  stp       x24, x23, [sp, #0x10]                          
01a90054  stp       x22, x21, [sp, #0x20]                          
01a90058  stp       x20, x19, [sp, #0x30]                          
01a9005c  adrp      x20, #0x3d14000                                
01a90060  mov       x19, x1                                        
01a90064  ldrb      w8, [x20, #0xccd]                              
01a90068  tbnz      w8, #0, #0x1a9008c                             
01a9006c  adrp      x0, #0x3a7c000                                 
01a90070  ldr       x0, [x0, #0xc38]                               
01a90074  bl        #0x183db90                                     
01a90078  adrp      x0, #0x3a7c000                                 
01a9007c  ldr       x0, [x0, #0xc40]                               
01a90080  bl        #0x183db90                                     
01a90084  mov       w8, #1                                         
01a90088  strb      w8, [x20, #0xccd]                              
01a9008c  cbz       x19, #0x1a90168                                
01a90090  mov       x0, x19                                        
01a90094  mov       w1, #0x7c                                      
01a90098  mov       w2, wzr                                        
01a9009c  mov       x3, xzr                                        
01a900a0  bl        #0x2c7022c                                     // System.String$$Split
01a900a4  cbz       x0, #0x1a90168                                 
01a900a8  adrp      x8, #0x3a7c000                                 
01a900ac  mov       x19, x0                                        
01a900b0  ldr       x8, [x8, #0xc38]                               
01a900b4  ldr       w1, [x19, #0x18]                               
01a900b8  ldr       x0, [x8]                                       
01a900bc  bl        #0x183dc20                                     
01a900c0  ldr       x8, [x19, #0x18]                               
01a900c4  mov       x20, x0                                        
01a900c8  cmp       w8, #1                                         
01a900cc  b.lt      #0x1a9014c                                     
01a900d0  adrp      x23, #0x3a7c000                                
01a900d4  and       x8, x8, #0xffffffff                            
01a900d8  mov       w24, #4                                        
01a900dc  ldr       x23, [x23, #0xc40]                             
01a900e0  sub       x25, x24, #4                                   
01a900e4  cmp       x25, w8, uxtw                                  
01a900e8  b.hs      #0x1a90164                                     
01a900ec  ldr       x0, [x23]                                      
01a900f0  ldr       x22, [x19, x24, lsl #3]                        
01a900f4  bl        #0x183ddcc                                     
01a900f8  mov       x1, x22                                        
01a900fc  mov       x2, xzr                                        
01a90100  mov       x21, x0                                        
01a90104  bl        #0x1aae79c                                     // FormatData$$.ctor
01a90108  cbz       x20, #0x1a90168                                
01a9010c  cbz       x21, #0x1a90124                                
01a90110  ldr       x8, [x20]                                      
01a90114  mov       x0, x21                                        
01a90118  ldr       x1, [x8, #0x40]                                
01a9011c  bl        #0x183dcb4                                     
01a90120  cbz       x0, #0x1a9016c                                 
01a90124  ldr       w8, [x20, #0x18]                               
01a90128  cmp       x25, x8                                        
01a9012c  b.hs      #0x1a90164                                     
01a90130  ldr       w8, [x19, #0x18]                               
01a90134  sub       x9, x24, #3                                    
01a90138  add       x10, x24, #1                                   
01a9013c  str       x21, [x20, x24, lsl #3]                        
01a90140  mov       x24, x10                                       
01a90144  cmp       x9, w8, sxtw                                   
01a90148  b.lt      #0x1a900e0                                     
01a9014c  mov       x0, x20                                        
01a90150  ldp       x20, x19, [sp, #0x30]                          
01a90154  ldp       x22, x21, [sp, #0x20]                          
01a90158  ldp       x24, x23, [sp, #0x10]                          
01a9015c  ldp       x30, x25, [sp], #0x40                          
01a90160  ret                                                      
01a90164  bl        #0x183dde4                                     
01a90168  bl        #0x183dddc                                     
01a9016c  bl        #0x183de00                                     
01a90170  mov       x1, xzr                                        
01a90174  bl        #0x183dca0                                     