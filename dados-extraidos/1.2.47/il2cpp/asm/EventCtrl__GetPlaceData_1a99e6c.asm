System_Int32_array* EventCtrl__GetPlaceData (EventCtrl_o* __this, System_String_o* _str, const MethodInfo* method);
// RVA 0x1a99e6c to 0x1a99f28
01a99e6c  str       x30, [sp, #-0x30]!                             
01a99e70  stp       x22, x21, [sp, #0x10]                          
01a99e74  stp       x20, x19, [sp, #0x20]                          
01a99e78  adrp      x20, #0x3d14000                                
01a99e7c  mov       x19, x1                                        
01a99e80  ldrb      w8, [x20, #0xce1]                              
01a99e84  tbnz      w8, #0, #0x1a99eb4                             
01a99e88  adrp      x0, #0x3a8c000                                 
01a99e8c  ldr       x0, [x0, #0x930]                               
01a99e90  bl        #0x183db90                                     
01a99e94  adrp      x0, #0x3a8c000                                 
01a99e98  ldr       x0, [x0, #0x938]                               
01a99e9c  bl        #0x183db90                                     
01a99ea0  adrp      x0, #0x3a8c000                                 
01a99ea4  ldr       x0, [x0, #0x940]                               
01a99ea8  bl        #0x183db90                                     
01a99eac  mov       w8, #1                                         
01a99eb0  strb      w8, [x20, #0xce1]                              
01a99eb4  cbz       x19, #0x1a99f24                                
01a99eb8  adrp      x20, #0x3a8c000                                
01a99ebc  adrp      x21, #0x3a8c000                                
01a99ec0  adrp      x22, #0x3a8c000                                
01a99ec4  ldr       x20, [x20, #0x938]                             
01a99ec8  ldr       x21, [x21, #0x940]                             
01a99ecc  ldr       x22, [x22, #0x930]                             
01a99ed0  mov       x0, x19                                        
01a99ed4  mov       w1, #0x2c                                      
01a99ed8  mov       w2, wzr                                        
01a99edc  mov       x3, xzr                                        
01a99ee0  bl        #0x2c7022c                                     // System.String$$Split
01a99ee4  ldr       x8, [x20]                                      
01a99ee8  mov       x19, x0                                        
01a99eec  mov       x0, x8                                         
01a99ef0  bl        #0x183ddcc                                     
01a99ef4  ldr       x2, [x21]                                      
01a99ef8  mov       x1, xzr                                        
01a99efc  mov       x3, xzr                                        
01a99f00  mov       x20, x0                                        
01a99f04  bl        #0x22cc25c                                     // System.Converter<object, int>$$.ctor
01a99f08  ldr       x2, [x22]                                      
01a99f0c  mov       x0, x19                                        
01a99f10  mov       x1, x20                                        
01a99f14  ldp       x20, x19, [sp, #0x20]                          
01a99f18  ldp       x22, x21, [sp, #0x10]                          
01a99f1c  ldr       x30, [sp], #0x30                               
01a99f20  b         #0x1f59774                                     // System.Array$$ConvertAll<object, int>
01a99f24  bl        #0x183dddc                                     