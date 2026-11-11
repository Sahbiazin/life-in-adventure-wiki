int32_t EventCtrl__CheckJewel (EventCtrl_o* __this, System_String_o* _require, const MethodInfo* method);
// RVA 0x1a944dc to 0x1a945b0
01a944dc  stp       x30, x21, [sp, #-0x20]!                        
01a944e0  stp       x20, x19, [sp, #0x10]                          
01a944e4  adrp      x20, #0x3d14000                                
01a944e8  adrp      x21, #0x3a7b000                                
01a944ec  mov       x19, x1                                        
01a944f0  ldrb      w8, [x20, #0xcdd]                              
01a944f4  ldr       x21, [x21, #0xaf0]                             
01a944f8  tbnz      w8, #0, #0x1a94510                             
01a944fc  adrp      x0, #0x3a7b000                                 
01a94500  ldr       x0, [x0, #0xaf0]                               
01a94504  bl        #0x183db90                                     
01a94508  mov       w8, #1                                         
01a9450c  strb      w8, [x20, #0xcdd]                              
01a94510  ldr       x1, [x21]                                      
01a94514  mov       x0, x19                                        
01a94518  mov       x2, xzr                                        
01a9451c  bl        #0x2c6c03c                                     // System.String$$op_Equality
01a94520  tbnz      w0, #0, #0x1a94594                             
01a94524  mov       x1, x19                                        
01a94528  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a9452c  cbz       x0, #0x1a945a8                                 
01a94530  ldr       w9, [x0, #0x18]                                
01a94534  cmp       w9, #1                                         
01a94538  b.lt      #0x1a94594                                     
01a9453c  bic       w11, w9, w9, asr #31                           
01a94540  mov       w10, wzr                                       
01a94544  mov       w8, wzr                                        
01a94548  mov       w12, #0x7f800000                               
01a9454c  mov       w13, #-0xffffffff80000000                      
01a94550  cmp       w9, w10                                        
01a94554  b.eq      #0x1a945ac                                     
01a94558  add       x14, x0, w10, sxtw #3                          
01a9455c  ldr       x14, [x14, #0x20]                              
01a94560  cbz       x14, #0x1a945a8                                
01a94564  ldr       w15, [x14, #0x10]                              
01a94568  cmp       w15, #0x11                                     
01a9456c  b.ne      #0x1a94584                                     
01a94570  ldr       s0, [x14, #0x20]                               
01a94574  fmov      s1, w12                                        
01a94578  fcvtzs    w8, s0                                         
01a9457c  fcmp      s0, s1                                         
01a94580  csel      w8, w13, w8, eq                                
01a94584  add       w10, w10, #1                                   
01a94588  cmp       w11, w10                                       
01a9458c  b.ne      #0x1a94550                                     
01a94590  b         #0x1a94598                                     
01a94594  mov       w8, wzr                                        
01a94598  ldp       x20, x19, [sp, #0x10]                          
01a9459c  mov       w0, w8                                         
01a945a0  ldp       x30, x21, [sp], #0x20                          
01a945a4  ret                                                      
01a945a8  bl        #0x183dddc                                     
01a945ac  bl        #0x183dde4                                     