void FormatData___ctor (FormatData_o* __this, System_String_o* _str, const MethodInfo* method);
// RVA 0x1aae79c to 0x1aae8c0
01aae79c  stp       x30, x21, [sp, #-0x20]!                        
01aae7a0  stp       x20, x19, [sp, #0x10]                          
01aae7a4  adrp      x21, #0x3d14000                                
01aae7a8  mov       x20, x1                                        
01aae7ac  mov       x19, x0                                        
01aae7b0  ldrb      w8, [x21, #0xd46]                              
01aae7b4  tbnz      w8, #0, #0x1aae7d8                             
01aae7b8  adrp      x0, #0x3a7b000                                 
01aae7bc  ldr       x0, [x0, #0xf88]                               
01aae7c0  bl        #0x183db90                                     
01aae7c4  adrp      x0, #0x3a7b000                                 
01aae7c8  ldr       x0, [x0, #0xf38]                               
01aae7cc  bl        #0x183db90                                     
01aae7d0  mov       w8, #1                                         
01aae7d4  strb      w8, [x21, #0xd46]                              
01aae7d8  mov       x0, x19                                        
01aae7dc  mov       x1, xzr                                        
01aae7e0  bl        #0x2e10b7c                                     // System.Object$$.ctor
01aae7e4  cbz       x20, #0x1aae8b8                                
01aae7e8  mov       x0, x20                                        
01aae7ec  mov       w1, #0x5f                                      
01aae7f0  mov       w2, wzr                                        
01aae7f4  mov       x3, xzr                                        
01aae7f8  bl        #0x2c7022c                                     // System.String$$Split
01aae7fc  cbz       x0, #0x1aae8b8                                 
01aae800  ldr       w8, [x0, #0x18]                                
01aae804  mov       x20, x0                                        
01aae808  cmp       w8, #3                                         
01aae80c  str       w8, [x19, #0x24]                               
01aae810  b.eq      #0x1aae82c                                     
01aae814  cmp       w8, #1                                         
01aae818  b.ne      #0x1aae8ac                                     
01aae81c  adrp      x8, #0x3a7b000                                 
01aae820  ldr       x8, [x8, #0xf38]                               
01aae824  ldr       x20, [x20, #0x20]                              
01aae828  b         #0x1aae880                                     
01aae82c  adrp      x8, #0x3a7b000                                 
01aae830  ldr       x8, [x8, #0xf88]                               
01aae834  ldr       x21, [x20, #0x20]                              
01aae838  ldr       x0, [x8]                                       
01aae83c  ldr       w8, [x0, #0xe4]                                
01aae840  cbnz      w8, #0x1aae848                                 
01aae844  bl        #0x183dcb0                                     
01aae848  mov       x0, x21                                        
01aae84c  mov       x1, xzr                                        
01aae850  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aae854  ldr       w8, [x20, #0x18]                               
01aae858  str       w0, [x19, #0x10]                               
01aae85c  cmp       w8, #1                                         
01aae860  b.ls      #0x1aae8bc                                     
01aae864  ldr       x9, [x20, #0x28]                               
01aae868  cmp       w8, #2                                         
01aae86c  str       x9, [x19, #0x18]                               
01aae870  b.eq      #0x1aae8bc                                     
01aae874  adrp      x8, #0x3a7b000                                 
01aae878  ldr       x8, [x8, #0xf38]                               
01aae87c  ldr       x20, [x20, #0x30]                              
01aae880  ldr       x0, [x8]                                       
01aae884  ldr       w8, [x0, #0xe4]                                
01aae888  cbnz      w8, #0x1aae890                                 
01aae88c  bl        #0x183dcb0                                     
01aae890  mov       x0, xzr                                        
01aae894  bl        #0x2d66c00                                     // System.Globalization.CultureInfo$$get_InvariantCulture
01aae898  mov       x1, x0                                         
01aae89c  mov       x0, x20                                        
01aae8a0  mov       x2, xzr                                        
01aae8a4  bl        #0x2de2774                                     // System.Single$$Parse
01aae8a8  str       s0, [x19, #0x20]                               
01aae8ac  ldp       x20, x19, [sp, #0x10]                          
01aae8b0  ldp       x30, x21, [sp], #0x20                          
01aae8b4  ret                                                      
01aae8b8  bl        #0x183dddc                                     
01aae8bc  bl        #0x183dde4                                     