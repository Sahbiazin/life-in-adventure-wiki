bool EventCtrl__IsArabicLanguage (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1a8bb4c to 0x1a8bba8
01a8bb4c  str       x30, [sp, #-0x20]!                             
01a8bb50  stp       x20, x19, [sp, #0x10]                          
01a8bb54  adrp      x19, #0x3d14000                                
01a8bb58  adrp      x20, #0x3a7c000                                
01a8bb5c  ldrb      w8, [x19, #0xcff]                              
01a8bb60  ldr       x20, [x20, #0xc08]                             
01a8bb64  tbnz      w8, #0, #0x1a8bb7c                             
01a8bb68  adrp      x0, #0x3a7c000                                 
01a8bb6c  ldr       x0, [x0, #0xc08]                               
01a8bb70  bl        #0x183db90                                     
01a8bb74  mov       w8, #1                                         
01a8bb78  strb      w8, [x19, #0xcff]                              
01a8bb7c  ldr       x8, [x20]                                      
01a8bb80  ldr       x8, [x8, #0xb8]                                
01a8bb84  ldr       x8, [x8]                                       
01a8bb88  cbz       x8, #0x1a8bba4                                 
01a8bb8c  ldr       w8, [x8, #0x5cc]                               
01a8bb90  ldp       x20, x19, [sp, #0x10]                          
01a8bb94  cmp       w8, #9                                         
01a8bb98  cset      w0, eq                                         
01a8bb9c  ldr       x30, [sp], #0x20                               
01a8bba0  ret                                                      
01a8bba4  bl        #0x183dddc                                     