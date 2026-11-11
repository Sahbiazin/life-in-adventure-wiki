int32_t EventCtrl__GetSubIndex (EventCtrl_o* __this, System_String_o* _require, const MethodInfo* method);
// RVA 0x1a9db28 to 0x1a9dc34
01a9db28  str       x30, [sp, #-0x30]!                             
01a9db2c  stp       x22, x21, [sp, #0x10]                          
01a9db30  stp       x20, x19, [sp, #0x20]                          
01a9db34  adrp      x20, #0x3d14000                                
01a9db38  adrp      x21, #0x3a7b000                                
01a9db3c  mov       x19, x1                                        
01a9db40  ldrb      w8, [x20, #0xcfe]                              
01a9db44  ldr       x21, [x21, #0xaf0]                             
01a9db48  tbnz      w8, #0, #0x1a9db6c                             
01a9db4c  adrp      x0, #0x3a7b000                                 
01a9db50  ldr       x0, [x0, #0xf88]                               
01a9db54  bl        #0x183db90                                     
01a9db58  adrp      x0, #0x3a7b000                                 
01a9db5c  ldr       x0, [x0, #0xaf0]                               
01a9db60  bl        #0x183db90                                     
01a9db64  mov       w8, #1                                         
01a9db68  strb      w8, [x20, #0xcfe]                              
01a9db6c  ldr       x1, [x21]                                      
01a9db70  mov       x0, x19                                        
01a9db74  mov       x2, xzr                                        
01a9db78  bl        #0x2c6c03c                                     // System.String$$op_Equality
01a9db7c  tbnz      w0, #0, #0x1a9dc18                             
01a9db80  cbz       x19, #0x1a9dc2c                                
01a9db84  mov       x0, x19                                        
01a9db88  mov       w1, #0x7c                                      
01a9db8c  mov       w2, wzr                                        
01a9db90  mov       x3, xzr                                        
01a9db94  bl        #0x2c7022c                                     // System.String$$Split
01a9db98  mov       x1, x19                                        
01a9db9c  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a9dba0  cbz       x0, #0x1a9dc2c                                 
01a9dba4  ldr       w8, [x0, #0x18]                                
01a9dba8  mov       x19, x0                                        
01a9dbac  cmp       w8, #1                                         
01a9dbb0  b.lt      #0x1a9dc18                                     
01a9dbb4  adrp      x22, #0x3a7b000                                
01a9dbb8  mov       w21, wzr                                       
01a9dbbc  mov       w0, #-1                                        
01a9dbc0  ldr       x22, [x22, #0xf88]                             
01a9dbc4  cmp       w21, w8                                        
01a9dbc8  b.hs      #0x1a9dc30                                     
01a9dbcc  add       x8, x19, w21, sxtw #3                          
01a9dbd0  ldr       x8, [x8, #0x20]                                
01a9dbd4  cbz       x8, #0x1a9dc2c                                 
01a9dbd8  ldr       w9, [x8, #0x10]                                
01a9dbdc  cmp       w9, #0xc                                       
01a9dbe0  b.ne      #0x1a9dc04                                     
01a9dbe4  ldr       x0, [x22]                                      
01a9dbe8  ldr       x20, [x8, #0x18]                               
01a9dbec  ldr       w9, [x0, #0xe4]                                
01a9dbf0  cbnz      w9, #0x1a9dbf8                                 
01a9dbf4  bl        #0x183dcb0                                     
01a9dbf8  mov       x0, x20                                        
01a9dbfc  mov       x1, xzr                                        
01a9dc00  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9dc04  ldr       w8, [x19, #0x18]                               
01a9dc08  add       w21, w21, #1                                   
01a9dc0c  cmp       w21, w8                                        
01a9dc10  b.lt      #0x1a9dbc4                                     
01a9dc14  b         #0x1a9dc1c                                     
01a9dc18  mov       w0, #-1                                        
01a9dc1c  ldp       x20, x19, [sp, #0x20]                          
01a9dc20  ldp       x22, x21, [sp, #0x10]                          
01a9dc24  ldr       x30, [sp], #0x30                               
01a9dc28  ret                                                      
01a9dc2c  bl        #0x183dddc                                     
01a9dc30  bl        #0x183dde4                                     