void EventCtrl__ShowShopTradeUI (EventCtrl_o* __this, int32_t index, const MethodInfo* method);
// RVA 0x1aa0cb4 to 0x1aa0d84
01aa0cb4  sub       sp, sp, #0x40                                  
01aa0cb8  stp       x30, x21, [sp, #0x20]                          
01aa0cbc  stp       x20, x19, [sp, #0x30]                          
01aa0cc0  adrp      x21, #0x3d14000                                
01aa0cc4  mov       w20, w1                                        
01aa0cc8  mov       x19, x0                                        
01aa0ccc  ldrb      w8, [x21, #0xcf2]                              
01aa0cd0  tbnz      w8, #0, #0x1aa0ce8                             
01aa0cd4  adrp      x0, #0x3a7c000                                 
01aa0cd8  ldr       x0, [x0, #0xc08]                               
01aa0cdc  bl        #0x183db90                                     
01aa0ce0  mov       w8, #1                                         
01aa0ce4  strb      w8, [x21, #0xcf2]                              
01aa0ce8  mov       x0, x19                                        
01aa0cec  mov       w1, #1                                         
01aa0cf0  mov       w2, wzr                                        
01aa0cf4  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01aa0cf8  mov       x0, x19                                        
01aa0cfc  bl        #0x1a8c3e8                                     // EventCtrl$$Hide
01aa0d00  mov       x0, x19                                        
01aa0d04  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa0d08  ldr       x0, [x19, #0x150]                              
01aa0d0c  cbz       x0, #0x1aa0d80                                 
01aa0d10  adrp      x21, #0x3a7c000                                
01aa0d14  mov       w1, w20                                        
01aa0d18  mov       x2, xzr                                        
01aa0d1c  ldr       x21, [x21, #0xc08]                             
01aa0d20  bl        #0x19c0ee0                                     // Shop$$Show
01aa0d24  mov       x0, x19                                        
01aa0d28  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa0d2c  ldr       x8, [x21]                                      
01aa0d30  ldr       x8, [x8, #0xb8]                                
01aa0d34  ldr       x0, [x8]                                       
01aa0d38  cbz       x0, #0x1aa0d80                                 
01aa0d3c  mov       w8, #-1                                        
01aa0d40  mov       w2, wzr                                        
01aa0d44  mov       w3, wzr                                        
01aa0d48  mov       w4, wzr                                        
01aa0d4c  mov       w5, wzr                                        
01aa0d50  mov       w6, wzr                                        
01aa0d54  str       w8, [sp, #8]                                   
01aa0d58  mov       w8, #1                                         
01aa0d5c  mov       w1, #6                                         
01aa0d60  mov       w7, #-1                                        
01aa0d64  str       xzr, [sp, #0x10]                               
01aa0d68  strb      w8, [sp]                                       
01aa0d6c  bl        #0x1af5d18                                     // DataMgr$$SaveDataWithEvent
01aa0d70  ldp       x20, x19, [sp, #0x30]                          
01aa0d74  ldp       x30, x21, [sp, #0x20]                          
01aa0d78  add       sp, sp, #0x40                                  
01aa0d7c  ret                                                      
01aa0d80  bl        #0x183dddc                                     