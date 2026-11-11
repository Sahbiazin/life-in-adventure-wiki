void EventCtrl__ShowLoadEvent (EventCtrl_o* __this, int32_t savedState, int32_t eventType, int32_t eventIndex, int32_t choiceIndex, int32_t resultIndex, bool isLevelUp, int32_t monsterId, bool isOnlyTextReward, int32_t monsterChoiceAb, const MethodInfo* method);
// RVA 0x1a9ace4 to 0x1a9d1e0
01a9ace4  sub       sp, sp, #0x90                                  
01a9ace8  str       d8, [sp, #0x20]                                
01a9acec  stp       x29, x30, [sp, #0x30]                          
01a9acf0  stp       x28, x27, [sp, #0x40]                          
01a9acf4  stp       x26, x25, [sp, #0x50]                          
01a9acf8  stp       x24, x23, [sp, #0x60]                          
01a9acfc  stp       x22, x21, [sp, #0x70]                          
01a9ad00  stp       x20, x19, [sp, #0x80]                          
01a9ad04  ldr       w8, [sp, #0x98]                                
01a9ad08  str       w7, [sp, #0x28]                                
01a9ad0c  adrp      x20, #0x3d14000                                
01a9ad10  adrp      x21, #0x3a8c000                                
01a9ad14  ldrb      w23, [sp, #0x90]                               
01a9ad18  mov       w29, w6                                        
01a9ad1c  str       w8, [sp, #0x18]                                
01a9ad20  ldrb      w8, [x20, #0xce6]                              
01a9ad24  mov       w22, w5                                        
01a9ad28  ldr       x21, [x21, #0x9d8]                             
01a9ad2c  mov       w27, w4                                        
01a9ad30  mov       w24, w3                                        
01a9ad34  mov       w25, w2                                        
01a9ad38  mov       w26, w1                                        
01a9ad3c  mov       x19, x0                                        
01a9ad40  tbnz      w8, #0, #0x1a9afbc                             
01a9ad44  adrp      x0, #0x3a7c000                                 
01a9ad48  ldr       x0, [x0, #0xd40]                               
01a9ad4c  bl        #0x183db90                                     
01a9ad50  adrp      x0, #0x3a7b000                                 
01a9ad54  ldr       x0, [x0, #0xf88]                               
01a9ad58  bl        #0x183db90                                     
01a9ad5c  adrp      x0, #0x3a7c000                                 
01a9ad60  ldr       x0, [x0, #0xc08]                               
01a9ad64  bl        #0x183db90                                     
01a9ad68  adrp      x0, #0x3a7c000                                 
01a9ad6c  ldr       x0, [x0, #0xca8]                               
01a9ad70  bl        #0x183db90                                     
01a9ad74  adrp      x0, #0x3a7c000                                 
01a9ad78  ldr       x0, [x0, #0x80]                                
01a9ad7c  bl        #0x183db90                                     
01a9ad80  adrp      x0, #0x3a7e000                                 
01a9ad84  ldr       x0, [x0, #0x158]                               
01a9ad88  bl        #0x183db90                                     
01a9ad8c  adrp      x0, #0x3a7c000                                 
01a9ad90  ldr       x0, [x0, #0xc10]                               
01a9ad94  bl        #0x183db90                                     
01a9ad98  adrp      x0, #0x3a8c000                                 
01a9ad9c  ldr       x0, [x0, #0x640]                               
01a9ada0  bl        #0x183db90                                     
01a9ada4  adrp      x0, #0x3a8c000                                 
01a9ada8  ldr       x0, [x0, #0x728]                               
01a9adac  bl        #0x183db90                                     
01a9adb0  adrp      x0, #0x3a8c000                                 
01a9adb4  ldr       x0, [x0, #0x968]                               
01a9adb8  bl        #0x183db90                                     
01a9adbc  adrp      x0, #0x3a8c000                                 
01a9adc0  ldr       x0, [x0, #0x9e0]                               
01a9adc4  bl        #0x183db90                                     
01a9adc8  adrp      x0, #0x3a8c000                                 
01a9adcc  ldr       x0, [x0, #0x7d8]                               
01a9add0  bl        #0x183db90                                     
01a9add4  adrp      x0, #0x3a7c000                                 
01a9add8  ldr       x0, [x0, #0xc20]                               
01a9addc  bl        #0x183db90                                     
01a9ade0  adrp      x0, #0x3a8c000                                 
01a9ade4  ldr       x0, [x0, #0x698]                               
01a9ade8  bl        #0x183db90                                     
01a9adec  adrp      x0, #0x3a8c000                                 
01a9adf0  ldr       x0, [x0, #0x610]                               
01a9adf4  bl        #0x183db90                                     
01a9adf8  adrp      x0, #0x3a8c000                                 
01a9adfc  ldr       x0, [x0, #0x6a0]                               
01a9ae00  bl        #0x183db90                                     
01a9ae04  adrp      x0, #0x3a7c000                                 
01a9ae08  ldr       x0, [x0, #0xc30]                               
01a9ae0c  bl        #0x183db90                                     
01a9ae10  adrp      x0, #0x3a8c000                                 
01a9ae14  ldr       x0, [x0, #0x6a8]                               
01a9ae18  bl        #0x183db90                                     
01a9ae1c  adrp      x0, #0x3a8c000                                 
01a9ae20  ldr       x0, [x0, #0x658]                               
01a9ae24  bl        #0x183db90                                     
01a9ae28  adrp      x0, #0x3a7c000                                 
01a9ae2c  ldr       x0, [x0, #0xde8]                               
01a9ae30  bl        #0x183db90                                     
01a9ae34  adrp      x0, #0x3a7b000                                 
01a9ae38  ldr       x0, [x0, #0x7c8]                               
01a9ae3c  bl        #0x183db90                                     
01a9ae40  adrp      x0, #0x3a8c000                                 
01a9ae44  ldr       x0, [x0, #0x9e8]                               
01a9ae48  bl        #0x183db90                                     
01a9ae4c  adrp      x0, #0x3a8c000                                 
01a9ae50  ldr       x0, [x0, #0x9f0]                               
01a9ae54  bl        #0x183db90                                     
01a9ae58  adrp      x0, #0x3a8c000                                 
01a9ae5c  ldr       x0, [x0, #0x9f8]                               
01a9ae60  bl        #0x183db90                                     
01a9ae64  adrp      x0, #0x3a8c000                                 
01a9ae68  ldr       x0, [x0, #0xa00]                               
01a9ae6c  bl        #0x183db90                                     
01a9ae70  adrp      x0, #0x3a8c000                                 
01a9ae74  ldr       x0, [x0, #0xa08]                               
01a9ae78  bl        #0x183db90                                     
01a9ae7c  adrp      x0, #0x3a8c000                                 
01a9ae80  ldr       x0, [x0, #0xa10]                               
01a9ae84  bl        #0x183db90                                     
01a9ae88  adrp      x0, #0x3a8c000                                 
01a9ae8c  ldr       x0, [x0, #0xa18]                               
01a9ae90  bl        #0x183db90                                     
01a9ae94  adrp      x0, #0x3a8c000                                 
01a9ae98  ldr       x0, [x0, #0xa20]                               
01a9ae9c  bl        #0x183db90                                     
01a9aea0  adrp      x0, #0x3a8c000                                 
01a9aea4  ldr       x0, [x0, #0xa28]                               
01a9aea8  bl        #0x183db90                                     
01a9aeac  adrp      x0, #0x3a8c000                                 
01a9aeb0  ldr       x0, [x0, #0x9d8]                               
01a9aeb4  bl        #0x183db90                                     
01a9aeb8  adrp      x0, #0x3a8c000                                 
01a9aebc  ldr       x0, [x0, #0xa30]                               
01a9aec0  bl        #0x183db90                                     
01a9aec4  adrp      x0, #0x3a8c000                                 
01a9aec8  ldr       x0, [x0, #0xa38]                               
01a9aecc  bl        #0x183db90                                     
01a9aed0  adrp      x0, #0x3a8c000                                 
01a9aed4  ldr       x0, [x0, #0xa40]                               
01a9aed8  bl        #0x183db90                                     
01a9aedc  adrp      x0, #0x3a8c000                                 
01a9aee0  ldr       x0, [x0, #0x668]                               
01a9aee4  bl        #0x183db90                                     
01a9aee8  adrp      x0, #0x3a7c000                                 
01a9aeec  ldr       x0, [x0, #0xc78]                               
01a9aef0  bl        #0x183db90                                     
01a9aef4  adrp      x0, #0x3a7b000                                 
01a9aef8  ldr       x0, [x0, #0x7d0]                               
01a9aefc  bl        #0x183db90                                     
01a9af00  adrp      x0, #0x3a7c000                                 
01a9af04  ldr       x0, [x0, #0x4e0]                               
01a9af08  bl        #0x183db90                                     
01a9af0c  adrp      x0, #0x3a7c000                                 
01a9af10  ldr       x0, [x0, #0xee8]                               
01a9af14  bl        #0x183db90                                     
01a9af18  adrp      x0, #0x3a8c000                                 
01a9af1c  ldr       x0, [x0, #0x738]                               
01a9af20  bl        #0x183db90                                     
01a9af24  adrp      x0, #0x3a8c000                                 
01a9af28  ldr       x0, [x0, #0x708]                               
01a9af2c  bl        #0x183db90                                     
01a9af30  adrp      x0, #0x3a8c000                                 
01a9af34  ldr       x0, [x0, #0x710]                               
01a9af38  bl        #0x183db90                                     
01a9af3c  adrp      x0, #0x3a8c000                                 
01a9af40  ldr       x0, [x0, #0x718]                               
01a9af44  bl        #0x183db90                                     
01a9af48  adrp      x0, #0x3a7d000                                 
01a9af4c  ldr       x0, [x0, #0x98]                                
01a9af50  bl        #0x183db90                                     
01a9af54  adrp      x0, #0x3a7c000                                 
01a9af58  ldr       x0, [x0, #0x5e0]                               
01a9af5c  bl        #0x183db90                                     
01a9af60  adrp      x0, #0x3a7d000                                 
01a9af64  ldr       x0, [x0, #0x130]                               
01a9af68  bl        #0x183db90                                     
01a9af6c  adrp      x0, #0x3a7e000                                 
01a9af70  ldr       x0, [x0, #0x470]                               
01a9af74  bl        #0x183db90                                     
01a9af78  adrp      x0, #0x3a7b000                                 
01a9af7c  ldr       x0, [x0, #0xbc8]                               
01a9af80  bl        #0x183db90                                     
01a9af84  adrp      x0, #0x3a8c000                                 
01a9af88  ldr       x0, [x0, #0x720]                               
01a9af8c  bl        #0x183db90                                     
01a9af90  adrp      x0, #0x3a7b000                                 
01a9af94  ldr       x0, [x0, #0xaf0]                               
01a9af98  bl        #0x183db90                                     
01a9af9c  adrp      x0, #0x3a81000                                 
01a9afa0  ldr       x0, [x0, #0xc08]                               
01a9afa4  bl        #0x183db90                                     
01a9afa8  adrp      x0, #0x3a8c000                                 
01a9afac  ldr       x0, [x0, #0x740]                               
01a9afb0  bl        #0x183db90                                     
01a9afb4  mov       w8, #1                                         
01a9afb8  strb      w8, [x20, #0xce6]                              
01a9afbc  ldr       x0, [x21]                                      
01a9afc0  str       wzr, [sp, #0x2c]                               
01a9afc4  bl        #0x183ddcc                                     
01a9afc8  mov       x1, xzr                                        
01a9afcc  mov       x20, x0                                        
01a9afd0  bl        #0x1ab1b10                                     // EventCtrl.<>c__DisplayClass116_0$$.ctor
01a9afd4  cbz       x20, #0x1a9d1d8                                
01a9afd8  ldr       x0, [x19, #0x1d0]                              
01a9afdc  mov       w8, #1                                         
01a9afe0  str       x19, [x20, #0x10]                              
01a9afe4  str       w27, [x20, #0x18]                              
01a9afe8  strb      w8, [x19, #0x115]                              
01a9afec  cbz       x0, #0x1a9d1d8                                 
01a9aff0  str       w23, [sp, #0x14]                               
01a9aff4  adrp      x21, #0x3a7c000                                
01a9aff8  mov       x1, xzr                                        
01a9affc  ldr       x21, [x21, #0xc08]                             
01a9b000  bl        #0x35c62b8                                     // UnityEngine.Component$$get_gameObject
01a9b004  ldr       x8, [x21]                                      
01a9b008  ldr       x8, [x8, #0xb8]                                
01a9b00c  ldr       x8, [x8]                                       
01a9b010  cbz       x8, #0x1a9d1d8                                 
01a9b014  adrp      x23, #0x3a8c000                                
01a9b018  mov       x27, x0                                        
01a9b01c  ldr       x23, [x23, #0x668]                             
01a9b020  ldr       x28, [x8, #0x138]                              
01a9b024  str       w29, [sp, #0x1c]                               
01a9b028  ldr       x0, [x23]                                      
01a9b02c  ldr       w9, [x0, #0xe4]                                
01a9b030  cbnz      w9, #0x1a9b03c                                 
01a9b034  bl        #0x183dcb0                                     
01a9b038  ldr       x0, [x23]                                      
01a9b03c  ldr       x8, [x0, #0xb8]                                
01a9b040  ldr       x29, [x8, #0xb0]                               
01a9b044  cbnz      x29, #0x1a9b098                                
01a9b048  ldr       w9, [x0, #0xe4]                                
01a9b04c  cbnz      w9, #0x1a9b05c                                 
01a9b050  bl        #0x183dcb0                                     
01a9b054  ldr       x8, [x23]                                      
01a9b058  ldr       x8, [x8, #0xb8]                                
01a9b05c  adrp      x9, #0x3a8c000                                 
01a9b060  ldr       x9, [x9, #0x658]                               
01a9b064  ldr       x21, [x8]                                      
01a9b068  ldr       x0, [x9]                                       
01a9b06c  bl        #0x183ddcc                                     
01a9b070  adrp      x8, #0x3a8c000                                 
01a9b074  mov       x1, x21                                        
01a9b078  mov       x3, xzr                                        
01a9b07c  ldr       x8, [x8, #0x9e8]                               
01a9b080  mov       x29, x0                                        
01a9b084  ldr       x2, [x8]                                       
01a9b088  bl        #0x29625c8                                     // System.Predicate<int>$$.ctor
01a9b08c  ldr       x8, [x23]                                      
01a9b090  ldr       x8, [x8, #0xb8]                                
01a9b094  str       x29, [x8, #0xb0]                               
01a9b098  cbz       x28, #0x1a9d1d8                                
01a9b09c  adrp      x8, #0x3a8c000                                 
01a9b0a0  mov       x0, x28                                        
01a9b0a4  mov       x1, x29                                        
01a9b0a8  ldr       x8, [x8, #0x640]                               
01a9b0ac  ldr       x2, [x8]                                       
01a9b0b0  bl        #0x276b83c                                     // System.Collections.Generic.List<int>$$Exists
01a9b0b4  cbz       x27, #0x1a9d1d8                                
01a9b0b8  mov       w8, #1                                         
01a9b0bc  mov       x2, xzr                                        
01a9b0c0  bic       w1, w8, w0                                     
01a9b0c4  mov       x0, x27                                        
01a9b0c8  bl        #0x35c8e30                                     // UnityEngine.GameObject$$SetActive
01a9b0cc  cmp       w26, #3                                        
01a9b0d0  b.gt      #0x1a9b320                                     
01a9b0d4  cmp       w26, #1                                        
01a9b0d8  b.eq      #0x1a9b33c                                     
01a9b0dc  cmp       w26, #2                                        
01a9b0e0  b.eq      #0x1a9b3b8                                     
01a9b0e4  cmp       w26, #3                                        
01a9b0e8  b.ne      #0x1a9cb14                                     
01a9b0ec  ldr       x8, [x19, #0x118]                              
01a9b0f0  cbz       x8, #0x1a9d1d8                                 
01a9b0f4  ldr       w9, [x8, #0x18]                                
01a9b0f8  cmp       w9, w25                                        
01a9b0fc  b.ls      #0x1a9d1dc                                     
01a9b100  mov       w9, w25                                        
01a9b104  sxtw      x21, w9                                        
01a9b108  add       x8, x8, x21, lsl #3                            
01a9b10c  ldr       x0, [x8, #0x20]                                
01a9b110  cbz       x0, #0x1a9d1d8                                 
01a9b114  ldr       w8, [x0, #0x18]                                
01a9b118  cmp       w8, w24                                        
01a9b11c  b.le      #0x1a9b420                                     
01a9b120  adrp      x27, #0x3a8c000                                
01a9b124  mov       w1, w24                                        
01a9b128  ldr       x27, [x27, #0x6a8]                             
01a9b12c  ldr       w23, [x20, #0x18]                              
01a9b130  ldr       x2, [x27]                                      
01a9b134  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b138  cbz       x0, #0x1a9d1d8                                 
01a9b13c  ldr       x8, [x0, #0x38]                                
01a9b140  cbz       x8, #0x1a9d1d8                                 
01a9b144  ldr       w8, [x8, #0x18]                                
01a9b148  cmp       w23, w8                                        
01a9b14c  b.lt      #0x1a9b154                                     
01a9b150  str       wzr, [x20, #0x18]                              
01a9b154  ldr       x8, [x19, #0x118]                              
01a9b158  cbz       x8, #0x1a9d1d8                                 
01a9b15c  ldr       w9, [x8, #0x18]                                
01a9b160  cmp       w9, w25                                        
01a9b164  b.ls      #0x1a9d1dc                                     
01a9b168  add       x8, x8, x21, lsl #3                            
01a9b16c  ldr       x0, [x8, #0x20]                                
01a9b170  cbz       x0, #0x1a9d1d8                                 
01a9b174  ldr       x2, [x27]                                      
01a9b178  mov       w1, w24                                        
01a9b17c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b180  cbz       x0, #0x1a9d1d8                                 
01a9b184  ldr       x0, [x0, #0x38]                                
01a9b188  cbz       x0, #0x1a9d1d8                                 
01a9b18c  adrp      x28, #0x3a8c000                                
01a9b190  ldr       x28, [x28, #0x698]                             
01a9b194  ldr       w1, [x20, #0x18]                               
01a9b198  ldr       x2, [x28]                                      
01a9b19c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b1a0  cbz       x0, #0x1a9d1d8                                 
01a9b1a4  ldr       x8, [x0, #0x20]                                
01a9b1a8  cbz       x8, #0x1a9d1d8                                 
01a9b1ac  ldr       w8, [x8, #0x18]                                
01a9b1b0  mov       x0, x19                                        
01a9b1b4  mov       w1, wzr                                        
01a9b1b8  mov       w2, wzr                                        
01a9b1bc  cmp       w8, w22                                        
01a9b1c0  csel      w22, w22, wzr, gt                              
01a9b1c4  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01a9b1c8  str       w25, [x19, #0x13c]                             
01a9b1cc  adrp      x23, #0x3a7b000                                
01a9b1d0  ldr       x23, [x23, #0xaf0]                             
01a9b1d4  stp       w24, w22, [x19, #0xe0]                         
01a9b1d8  ldr       x8, [x19, #0x118]                              
01a9b1dc  strb      wzr, [x19, #0x1e0]                             
01a9b1e0  ldr       x22, [x23]                                     
01a9b1e4  str       x22, [x19, #0xf0]                              
01a9b1e8  cbz       x8, #0x1a9d1d8                                 
01a9b1ec  ldr       w9, [x8, #0x18]                                
01a9b1f0  cmp       w9, w25                                        
01a9b1f4  b.ls      #0x1a9d1dc                                     
01a9b1f8  add       x8, x8, x21, lsl #3                            
01a9b1fc  ldr       x0, [x8, #0x20]                                
01a9b200  cbz       x0, #0x1a9d1d8                                 
01a9b204  ldr       x2, [x27]                                      
01a9b208  mov       w1, w24                                        
01a9b20c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b210  cbz       x0, #0x1a9d1d8                                 
01a9b214  adrp      x24, #0x3a7c000                                
01a9b218  ldr       x0, [x0, #0x38]                                
01a9b21c  ldr       x24, [x24, #0xc08]                             
01a9b220  cbz       x0, #0x1a9d1d8                                 
01a9b224  ldr       w1, [x20, #0x18]                               
01a9b228  ldr       x2, [x28]                                      
01a9b22c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b230  cbz       x0, #0x1a9d1d8                                 
01a9b234  ldr       x0, [x0, #0x20]                                
01a9b238  cbz       x0, #0x1a9d1d8                                 
01a9b23c  adrp      x25, #0x3a8c000                                
01a9b240  ldr       x25, [x25, #0x6a0]                             
01a9b244  ldr       w1, [x19, #0xe4]                               
01a9b248  ldr       x2, [x25]                                      
01a9b24c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b250  cbz       x0, #0x1a9d1d8                                 
01a9b254  ldr       w8, [x0, #0x1c]                                
01a9b258  cbz       w8, #0x1a9b55c                                 
01a9b25c  ldr       x8, [x19, #0x118]                              
01a9b260  cbz       x8, #0x1a9d1d8                                 
01a9b264  ldrsw     x9, [x19, #0x13c]                              
01a9b268  ldr       w10, [x8, #0x18]                               
01a9b26c  cmp       w9, w10                                        
01a9b270  b.hs      #0x1a9d1dc                                     
01a9b274  add       x8, x8, x9, lsl #3                             
01a9b278  ldr       x0, [x8, #0x20]                                
01a9b27c  cbz       x0, #0x1a9d1d8                                 
01a9b280  ldr       w1, [x19, #0xe0]                               
01a9b284  ldr       x2, [x27]                                      
01a9b288  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b28c  cbz       x0, #0x1a9d1d8                                 
01a9b290  ldr       x0, [x0, #0x38]                                
01a9b294  cbz       x0, #0x1a9d1d8                                 
01a9b298  ldr       w1, [x20, #0x18]                               
01a9b29c  ldr       x2, [x28]                                      
01a9b2a0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b2a4  cbz       x0, #0x1a9d1d8                                 
01a9b2a8  ldr       x0, [x0, #0x20]                                
01a9b2ac  cbz       x0, #0x1a9d1d8                                 
01a9b2b0  ldr       w1, [x19, #0xe4]                               
01a9b2b4  ldr       x2, [x25]                                      
01a9b2b8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b2bc  cbz       x0, #0x1a9d1d8                                 
01a9b2c0  ldr       w8, [x0, #0x1c]                                
01a9b2c4  cmp       w8, #1                                         
01a9b2c8  b.ne      #0x1a9b5d0                                     
01a9b2cc  adrp      x21, #0x3a7c000                                
01a9b2d0  ldr       x21, [x21, #0xde8]                             
01a9b2d4  ldr       x0, [x21]                                      
01a9b2d8  ldr       w8, [x0, #0xe4]                                
01a9b2dc  cbnz      w8, #0x1a9b2e8                                 
01a9b2e0  bl        #0x183dcb0                                     
01a9b2e4  ldr       x0, [x21]                                      
01a9b2e8  ldr       x8, [x24]                                      
01a9b2ec  ldr       x8, [x8, #0xb8]                                
01a9b2f0  ldr       x9, [x8]                                       
01a9b2f4  cbz       x9, #0x1a9d1d8                                 
01a9b2f8  ldr       x8, [x0, #0xb8]                                
01a9b2fc  ldr       x8, [x8, #0xf8]                                
01a9b300  cbz       x8, #0x1a9d1d8                                 
01a9b304  ldr       w9, [x9, #0x5cc]                               
01a9b308  ldr       w10, [x8, #0x18]                               
01a9b30c  cmp       w9, w10                                        
01a9b310  b.hs      #0x1a9d1dc                                     
01a9b314  adrp      x10, #0x3a7d000                                
01a9b318  ldr       x10, [x10, #0x98]                              
01a9b31c  b         #0x1a9b5ac                                     
01a9b320  cmp       w26, #4                                        
01a9b324  b.eq      #0x1a9b390                                     
01a9b328  cmp       w26, #5                                        
01a9b32c  b.eq      #0x1a9b448                                     
01a9b330  cmp       w26, #6                                        
01a9b334  b.eq      #0x1a9b420                                     
01a9b338  b         #0x1a9cb14                                     
01a9b33c  adrp      x8, #0x3a7c000                                 
01a9b340  ldr       x8, [x8, #0xc08]                               
01a9b344  ldr       x8, [x8]                                       
01a9b348  ldr       x8, [x8, #0xb8]                                
01a9b34c  ldr       x8, [x8]                                       
01a9b350  cbz       x8, #0x1a9d1d8                                 
01a9b354  ldp       w3, w2, [x8, #0x5c]                            
01a9b358  mov       x0, x19                                        
01a9b35c  mov       w4, w24                                        
01a9b360  mov       w5, w22                                        
01a9b364  ldp       x20, x19, [sp, #0x80]                          
01a9b368  ldr       x1, [x8, #0x40]                                
01a9b36c  ldp       x22, x21, [sp, #0x70]                          
01a9b370  ldr       d8, [sp, #0x20]                                
01a9b374  ldp       x24, x23, [sp, #0x60]                          
01a9b378  mov       w6, #1                                         
01a9b37c  ldp       x26, x25, [sp, #0x50]                          
01a9b380  ldp       x28, x27, [sp, #0x40]                          
01a9b384  ldp       x29, x30, [sp, #0x30]                          
01a9b388  add       sp, sp, #0x90                                  
01a9b38c  b         #0x1a90fe8                                     // EventCtrl$$ShowStartEvent
01a9b390  cmp       w25, #1                                        
01a9b394  b.eq      #0x1a9b474                                     
01a9b398  cbnz      w25, #0x1a9cb14                                
01a9b39c  mov       x0, x19                                        
01a9b3a0  mov       w1, w24                                        
01a9b3a4  ldr       d8, [sp, #0x20]                                
01a9b3a8  ldp       x20, x19, [sp, #0x80]                          
01a9b3ac  ldp       x22, x21, [sp, #0x70]                          
01a9b3b0  ldp       x24, x23, [sp, #0x60]                          
01a9b3b4  b         #0x1a9b40c                                     
01a9b3b8  ldr       x8, [x19, #0x118]                              
01a9b3bc  cbz       x8, #0x1a9d1d8                                 
01a9b3c0  ldr       w9, [x8, #0x18]                                
01a9b3c4  cmp       w9, w25                                        
01a9b3c8  b.ls      #0x1a9d1dc                                     
01a9b3cc  sxtw      x9, w25                                        
01a9b3d0  add       x8, x8, x9, lsl #3                             
01a9b3d4  ldr       x8, [x8, #0x20]                                
01a9b3d8  cbz       x8, #0x1a9d1d8                                 
01a9b3dc  ldr       w8, [x8, #0x18]                                
01a9b3e0  cmp       w8, w24                                        
01a9b3e4  b.le      #0x1a9b420                                     
01a9b3e8  cmp       w25, #5                                        
01a9b3ec  str       w25, [x19, #0x13c]                             
01a9b3f0  b.ne      #0x1a9b4a0                                     
01a9b3f4  mov       x0, x19                                        
01a9b3f8  ldp       x20, x19, [sp, #0x80]                          
01a9b3fc  ldp       x22, x21, [sp, #0x70]                          
01a9b400  mov       w1, #-1                                        
01a9b404  ldp       x24, x23, [sp, #0x60]                          
01a9b408  ldr       d8, [sp, #0x20]                                
01a9b40c  ldp       x26, x25, [sp, #0x50]                          
01a9b410  ldp       x28, x27, [sp, #0x40]                          
01a9b414  ldp       x29, x30, [sp, #0x30]                          
01a9b418  add       sp, sp, #0x90                                  
01a9b41c  b         #0x1a9d1e0                                     // EventCtrl$$ShowShopEvent
01a9b420  mov       x0, x19                                        
01a9b424  ldp       x20, x19, [sp, #0x80]                          
01a9b428  ldp       x22, x21, [sp, #0x70]                          
01a9b42c  ldr       d8, [sp, #0x20]                                
01a9b430  ldp       x24, x23, [sp, #0x60]                          
01a9b434  ldp       x26, x25, [sp, #0x50]                          
01a9b438  ldp       x28, x27, [sp, #0x40]                          
01a9b43c  ldp       x29, x30, [sp, #0x30]                          
01a9b440  add       sp, sp, #0x90                                  
01a9b444  b         #0x1a8f39c                                     // EventCtrl$$ShowRandomeEvent
01a9b448  mov       x0, x19                                        
01a9b44c  ldp       x20, x19, [sp, #0x80]                          
01a9b450  ldp       x22, x21, [sp, #0x70]                          
01a9b454  mov       w1, #1                                         
01a9b458  ldp       x24, x23, [sp, #0x60]                          
01a9b45c  ldr       d8, [sp, #0x20]                                
01a9b460  ldp       x26, x25, [sp, #0x50]                          
01a9b464  ldp       x28, x27, [sp, #0x40]                          
01a9b468  ldp       x29, x30, [sp, #0x30]                          
01a9b46c  add       sp, sp, #0x90                                  
01a9b470  b         #0x1a8cda0                                     // EventCtrl$$ShowEpilogue
01a9b474  mov       x0, x19                                        
01a9b478  mov       w1, w24                                        
01a9b47c  ldr       d8, [sp, #0x20]                                
01a9b480  ldp       x20, x19, [sp, #0x80]                          
01a9b484  ldp       x22, x21, [sp, #0x70]                          
01a9b488  ldp       x24, x23, [sp, #0x60]                          
01a9b48c  ldp       x26, x25, [sp, #0x50]                          
01a9b490  ldp       x28, x27, [sp, #0x40]                          
01a9b494  ldp       x29, x30, [sp, #0x30]                          
01a9b498  add       sp, sp, #0x90                                  
01a9b49c  b         #0x1a9e3e8                                     // EventCtrl$$ShowShopReject
01a9b4a0  ldr       x8, [x19, #0x120]                              
01a9b4a4  str       w24, [x19, #0xe0]                              
01a9b4a8  cbz       x8, #0x1a9d1d8                                 
01a9b4ac  ldr       w10, [x8, #0x18]                               
01a9b4b0  adrp      x24, #0x3a7c000                                
01a9b4b4  ldr       x24, [x24, #0xc08]                             
01a9b4b8  cmp       w10, w25                                       
01a9b4bc  b.ls      #0x1a9d1dc                                     
01a9b4c0  add       x9, x8, x9, lsl #3                             
01a9b4c4  ldr       x0, [x9, #0x20]                                
01a9b4c8  cbz       x0, #0x1a9d1d8                                 
01a9b4cc  ldr       w9, [x0, #0x18]                                
01a9b4d0  ldr       w10, [x19, #0xb0]                              
01a9b4d4  cmp       w9, w10                                        
01a9b4d8  b.lt      #0x1a9b4f8                                     
01a9b4dc  adrp      x8, #0x3a8c000                                 
01a9b4e0  mov       w1, wzr                                        
01a9b4e4  ldr       x8, [x8, #0x728]                               
01a9b4e8  ldr       x2, [x8]                                       
01a9b4ec  bl        #0x276c96c                                     // System.Collections.Generic.List<int>$$RemoveAt
01a9b4f0  ldr       x8, [x19, #0x120]                              
01a9b4f4  cbz       x8, #0x1a9d1d8                                 
01a9b4f8  ldrsw     x9, [x19, #0x13c]                              
01a9b4fc  ldr       w10, [x8, #0x18]                               
01a9b500  cmp       w9, w10                                        
01a9b504  b.hs      #0x1a9d1dc                                     
01a9b508  add       x8, x8, x9, lsl #3                             
01a9b50c  ldr       x0, [x8, #0x20]                                
01a9b510  cbz       x0, #0x1a9d1d8                                 
01a9b514  adrp      x9, #0x3a7c000                                 
01a9b518  ldr       x9, [x9, #0xc10]                               
01a9b51c  ldr       w10, [x0, #0x1c]                               
01a9b520  ldr       x8, [x0, #0x10]                                
01a9b524  ldr       w1, [x19, #0xe0]                               
01a9b528  ldr       x9, [x9]                                       
01a9b52c  add       w10, w10, #1                                   
01a9b530  str       w10, [x0, #0x1c]                               
01a9b534  cbz       x8, #0x1a9d1d8                                 
01a9b538  ldrsw     x10, [x0, #0x18]                               
01a9b53c  ldr       w11, [x8, #0x18]                               
01a9b540  cmp       w10, w11                                       
01a9b544  b.hs      #0x1a9b754                                     
01a9b548  add       x8, x8, x10, lsl #2                            
01a9b54c  add       w9, w10, #1                                    
01a9b550  str       w9, [x0, #0x18]                                
01a9b554  str       w1, [x8, #0x20]                                
01a9b558  b         #0x1a9b764                                     
01a9b55c  adrp      x21, #0x3a7c000                                
01a9b560  ldr       x21, [x21, #0xde8]                             
01a9b564  ldr       x0, [x21]                                      
01a9b568  ldr       w8, [x0, #0xe4]                                
01a9b56c  cbnz      w8, #0x1a9b578                                 
01a9b570  bl        #0x183dcb0                                     
01a9b574  ldr       x0, [x21]                                      
01a9b578  ldr       x8, [x24]                                      
01a9b57c  ldr       x8, [x8, #0xb8]                                
01a9b580  ldr       x9, [x8]                                       
01a9b584  cbz       x9, #0x1a9d1d8                                 
01a9b588  ldr       x8, [x0, #0xb8]                                
01a9b58c  ldr       x8, [x8, #0xf0]                                
01a9b590  cbz       x8, #0x1a9d1d8                                 
01a9b594  ldr       w9, [x9, #0x5cc]                               
01a9b598  ldr       w10, [x8, #0x18]                               
01a9b59c  cmp       w9, w10                                        
01a9b5a0  b.hs      #0x1a9d1dc                                     
01a9b5a4  adrp      x10, #0x3a8c000                                
01a9b5a8  ldr       x10, [x10, #0x720]                             
01a9b5ac  add       x8, x8, w9, sxtw #3                            
01a9b5b0  adrp      x9, #0x3a81000                                 
01a9b5b4  mov       x3, xzr                                        
01a9b5b8  ldr       x9, [x9, #0xc08]                               
01a9b5bc  ldr       x0, [x10]                                      
01a9b5c0  ldr       x1, [x8, #0x20]                                
01a9b5c4  ldr       x2, [x9]                                       
01a9b5c8  bl        #0x2c6dcf0                                     // System.String$$Concat
01a9b5cc  mov       x22, x0                                        
01a9b5d0  ldr       w8, [sp, #0x28]                                
01a9b5d4  cmn       w8, #1                                         
01a9b5d8  b.eq      #0x1a9b610                                     
01a9b5dc  ldr       x8, [x24]                                      
01a9b5e0  ldr       x8, [x8, #0xb8]                                
01a9b5e4  ldr       x0, [x8]                                       
01a9b5e8  cbz       x0, #0x1a9d1d8                                 
01a9b5ec  adrp      x8, #0x3a7c000                                 
01a9b5f0  ldr       x8, [x8, #0xd40]                               
01a9b5f4  ldr       x1, [x8]                                       
01a9b5f8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9b5fc  cbz       x0, #0x1a9d1d8                                 
01a9b600  ldr       w1, [sp, #0x28]                                
01a9b604  mov       x2, xzr                                        
01a9b608  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a9b60c  str       x0, [x19, #0x140]                              
01a9b610  ldr       x8, [x19, #0x118]                              
01a9b614  cbz       x8, #0x1a9d1d8                                 
01a9b618  ldrsw     x9, [x19, #0x13c]                              
01a9b61c  ldr       w10, [x8, #0x18]                               
01a9b620  cmp       w9, w10                                        
01a9b624  b.hs      #0x1a9d1dc                                     
01a9b628  add       x8, x8, x9, lsl #3                             
01a9b62c  ldr       x0, [x8, #0x20]                                
01a9b630  cbz       x0, #0x1a9d1d8                                 
01a9b634  ldr       w1, [x19, #0xe0]                               
01a9b638  ldr       x2, [x27]                                      
01a9b63c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b640  cbz       x0, #0x1a9d1d8                                 
01a9b644  ldr       x0, [x0, #0x38]                                
01a9b648  cbz       x0, #0x1a9d1d8                                 
01a9b64c  ldr       w1, [x20, #0x18]                               
01a9b650  ldr       x2, [x28]                                      
01a9b654  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b658  cbz       x0, #0x1a9d1d8                                 
01a9b65c  ldr       x0, [x0, #0x20]                                
01a9b660  cbz       x0, #0x1a9d1d8                                 
01a9b664  ldr       w1, [x19, #0xe4]                               
01a9b668  ldr       x2, [x25]                                      
01a9b66c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b670  cbz       x0, #0x1a9d1d8                                 
01a9b674  ldr       x0, [x0, #0x30]                                
01a9b678  ldr       x1, [x23]                                      
01a9b67c  mov       x2, xzr                                        
01a9b680  bl        #0x2c6c040                                     // System.String$$op_Inequality
01a9b684  tbz       w0, #0, #0x1a9bf30                             
01a9b688  ldr       x8, [x19, #0x118]                              
01a9b68c  cbz       x8, #0x1a9d1d8                                 
01a9b690  ldrsw     x9, [x19, #0x13c]                              
01a9b694  ldr       w10, [x8, #0x18]                               
01a9b698  cmp       w9, w10                                        
01a9b69c  b.hs      #0x1a9d1dc                                     
01a9b6a0  add       x8, x8, x9, lsl #3                             
01a9b6a4  ldr       x0, [x8, #0x20]                                
01a9b6a8  cbz       x0, #0x1a9d1d8                                 
01a9b6ac  ldr       w1, [x19, #0xe0]                               
01a9b6b0  ldr       x2, [x27]                                      
01a9b6b4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b6b8  cbz       x0, #0x1a9d1d8                                 
01a9b6bc  ldr       x0, [x0, #0x38]                                
01a9b6c0  cbz       x0, #0x1a9d1d8                                 
01a9b6c4  ldr       w1, [x20, #0x18]                               
01a9b6c8  ldr       x2, [x28]                                      
01a9b6cc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b6d0  cbz       x0, #0x1a9d1d8                                 
01a9b6d4  ldr       x0, [x0, #0x20]                                
01a9b6d8  cbz       x0, #0x1a9d1d8                                 
01a9b6dc  ldr       w1, [x19, #0xe4]                               
01a9b6e0  ldr       x2, [x25]                                      
01a9b6e4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b6e8  cbz       x0, #0x1a9d1d8                                 
01a9b6ec  ldr       x1, [x0, #0x30]                                
01a9b6f0  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01a9b6f4  ldr       w8, [sp, #0x14]                                
01a9b6f8  mov       x23, x0                                        
01a9b6fc  mov       x0, x19                                        
01a9b700  mov       x1, x23                                        
01a9b704  and       w2, w8, #1                                     
01a9b708  bl        #0x1a91980                                     // EventCtrl$$GiveRewardAndSetRewardText
01a9b70c  cbz       x23, #0x1a9d1d8                                
01a9b710  ldr       w8, [x23, #0x18]                               
01a9b714  cmp       w8, #1                                         
01a9b718  b.lt      #0x1a9bf30                                     
01a9b71c  bic       w9, w8, w8, asr #31                            
01a9b720  mov       w26, wzr                                       
01a9b724  cmp       w8, w26                                        
01a9b728  b.eq      #0x1a9d1dc                                     
01a9b72c  add       x29, x23, w26, sxtw #3                         
01a9b730  ldr       x10, [x29, #0x20]!                             
01a9b734  cbz       x10, #0x1a9d1d8                                
01a9b738  ldr       w11, [x10, #0x10]                              
01a9b73c  cmp       w11, #6                                        
01a9b740  b.eq      #0x1a9b8d0                                     
01a9b744  add       w26, w26, #1                                   
01a9b748  cmp       w9, w26                                        
01a9b74c  b.ne      #0x1a9b724                                     
01a9b750  b         #0x1a9bf30                                     
01a9b754  ldr       x8, [x9, #0x20]                                
01a9b758  ldr       x8, [x8, #0xc0]                                
01a9b75c  ldr       x2, [x8, #0x70]                                
01a9b760  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01a9b764  ldr       w8, [sp, #0x28]                                
01a9b768  cmn       w8, #1                                         
01a9b76c  b.eq      #0x1a9b7b0                                     
01a9b770  ldr       x8, [x24]                                      
01a9b774  ldr       x8, [x8, #0xb8]                                
01a9b778  ldr       x0, [x8]                                       
01a9b77c  cbz       x0, #0x1a9d1d8                                 
01a9b780  adrp      x8, #0x3a7c000                                 
01a9b784  ldr       x8, [x8, #0xd40]                               
01a9b788  ldr       x1, [x8]                                       
01a9b78c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9b790  cbz       x0, #0x1a9d1d8                                 
01a9b794  ldr       w1, [sp, #0x28]                                
01a9b798  mov       x2, xzr                                        
01a9b79c  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a9b7a0  str       x0, [x19, #0x140]                              
01a9b7a4  cbz       x0, #0x1a9d1d8                                 
01a9b7a8  ldr       w8, [sp, #0x18]                                
01a9b7ac  str       w8, [x0, #0xb8]                                
01a9b7b0  adrp      x22, #0x3a7b000                                
01a9b7b4  ldr       x22, [x22, #0xaf0]                             
01a9b7b8  ldr       w8, [x19, #0x13c]                              
01a9b7bc  ldr       x20, [x22]                                     
01a9b7c0  cbz       w8, #0x1a9b82c                                 
01a9b7c4  cmp       w8, #4                                         
01a9b7c8  b.ne      #0x1a9bad8                                     
01a9b7cc  ldr       x8, [x24]                                      
01a9b7d0  ldr       x8, [x8, #0xb8]                                
01a9b7d4  ldr       x0, [x8]                                       
01a9b7d8  cbz       x0, #0x1a9d1d8                                 
01a9b7dc  mov       x1, xzr                                        
01a9b7e0  bl        #0x1afc498                                     // DataMgr$$GetMainEventIndex
01a9b7e4  adrp      x23, #0x3a7c000                                
01a9b7e8  mov       w21, w0                                        
01a9b7ec  ldr       x23, [x23, #0xde8]                             
01a9b7f0  ldr       x0, [x23]                                      
01a9b7f4  ldr       w8, [x0, #0xe4]                                
01a9b7f8  cbz       w21, #0x1a9b9b0                                
01a9b7fc  cbnz      w8, #0x1a9b808                                 
01a9b800  bl        #0x183dcb0                                     
01a9b804  ldr       x0, [x23]                                      
01a9b808  ldr       x8, [x24]                                      
01a9b80c  ldr       x8, [x8, #0xb8]                                
01a9b810  ldr       x8, [x8]                                       
01a9b814  cbz       x8, #0x1a9d1d8                                 
01a9b818  ldr       x9, [x0, #0xb8]                                
01a9b81c  ldr       x0, [x9, #0x220]                               
01a9b820  cbz       x0, #0x1a9d1d8                                 
01a9b824  sub       w9, w21, #1                                    
01a9b828  b         #0x1a9baa0                                     
01a9b82c  ldr       x8, [x19, #0x118]                              
01a9b830  cbz       x8, #0x1a9d1d8                                 
01a9b834  ldr       w9, [x8, #0x18]                                
01a9b838  cbz       w9, #0x1a9d1dc                                 
01a9b83c  ldr       x0, [x8, #0x20]                                
01a9b840  cbz       x0, #0x1a9d1d8                                 
01a9b844  adrp      x8, #0x3a8c000                                 
01a9b848  ldr       x8, [x8, #0x6a8]                               
01a9b84c  ldr       w1, [x19, #0xe0]                               
01a9b850  ldr       x2, [x8]                                       
01a9b854  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9b858  cbz       x0, #0x1a9d1d8                                 
01a9b85c  ldr       x1, [x0, #0x28]                                
01a9b860  bl        #0x1a9db28                                     // EventCtrl$$GetSubIndex
01a9b864  cmn       w0, #1                                         
01a9b868  b.eq      #0x1a9bad8                                     
01a9b86c  ldr       x8, [x24]                                      
01a9b870  ldr       x8, [x8, #0xb8]                                
01a9b874  ldr       x8, [x8]                                       
01a9b878  cbz       x8, #0x1a9d1d8                                 
01a9b87c  adrp      x23, #0x3a7c000                                
01a9b880  mov       w21, w0                                        
01a9b884  ldr       x23, [x23, #0xde8]                             
01a9b888  ldr       w10, [x8, #0x150]                              
01a9b88c  ldr       x0, [x23]                                      
01a9b890  cmp       w21, w10                                       
01a9b894  ldr       w9, [x0, #0xe4]                                
01a9b898  b.ge      #0x1a9ba70                                     
01a9b89c  cbnz      w9, #0x1a9b8b8                                 
01a9b8a0  bl        #0x183dcb0                                     
01a9b8a4  ldr       x8, [x24]                                      
01a9b8a8  ldr       x8, [x8, #0xb8]                                
01a9b8ac  ldr       x8, [x8]                                       
01a9b8b0  cbz       x8, #0x1a9d1d8                                 
01a9b8b4  ldr       x0, [x23]                                      
01a9b8b8  ldr       x9, [x0, #0xb8]                                
01a9b8bc  ldr       x0, [x9, #0x690]                               
01a9b8c0  cbz       x0, #0x1a9d1d8                                 
01a9b8c4  ldrsw     x2, [x8, #0x5cc]                               
01a9b8c8  sxtw      x1, w21                                        
01a9b8cc  b         #0x1a9baa8                                     
01a9b8d0  adrp      x21, #0x3a7b000                                
01a9b8d4  ldr       x21, [x21, #0xf88]                             
01a9b8d8  ldr       x24, [x10, #0x18]                              
01a9b8dc  ldr       x0, [x21]                                      
01a9b8e0  ldr       w8, [x0, #0xe4]                                
01a9b8e4  cbnz      w8, #0x1a9b8ec                                 
01a9b8e8  bl        #0x183dcb0                                     
01a9b8ec  mov       x0, x24                                        
01a9b8f0  mov       x1, xzr                                        
01a9b8f4  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9b8f8  cbz       w0, #0x1a9b9f4                                 
01a9b8fc  ldr       w8, [x23, #0x18]                               
01a9b900  cmp       w26, w8                                        
01a9b904  b.hs      #0x1a9d1dc                                     
01a9b908  ldr       x8, [x29]                                      
01a9b90c  cbz       x8, #0x1a9d1d8                                 
01a9b910  ldr       x0, [x21]                                      
01a9b914  ldr       x24, [x8, #0x18]                               
01a9b918  ldr       w9, [x0, #0xe4]                                
01a9b91c  cbnz      w9, #0x1a9b924                                 
01a9b920  bl        #0x183dcb0                                     
01a9b924  mov       x0, x24                                        
01a9b928  mov       x1, xzr                                        
01a9b92c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9b930  ldr       w8, [x23, #0x18]                               
01a9b934  cmp       w0, #1                                         
01a9b938  b.ne      #0x1a9bc24                                     
01a9b93c  adrp      x24, #0x3a7c000                                
01a9b940  cmp       w26, w8                                        
01a9b944  ldr       x24, [x24, #0xc08]                             
01a9b948  b.hs      #0x1a9d1dc                                     
01a9b94c  ldr       x8, [x29]                                      
01a9b950  cbz       x8, #0x1a9d1d8                                 
01a9b954  ldr       x0, [x21]                                      
01a9b958  ldr       s8, [x8, #0x20]                                
01a9b95c  ldr       w9, [x0, #0xe4]                                
01a9b960  cbnz      w9, #0x1a9b968                                 
01a9b964  bl        #0x183dcb0                                     
01a9b968  fmov      s0, s8                                         
01a9b96c  mov       x0, xzr                                        
01a9b970  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9b974  cmp       w0, #2                                         
01a9b978  b.ne      #0x1a9bd00                                     
01a9b97c  ldr       x8, [x19, #0x140]                              
01a9b980  cbz       x8, #0x1a9d1d8                                 
01a9b984  ldp       w9, w10, [x8, #0x44]                           
01a9b988  cmp       w9, #0                                         
01a9b98c  cinc      w9, w9, lt                                     
01a9b990  cmp       w10, #0                                        
01a9b994  cinc      w10, w10, lt                                   
01a9b998  asr       w9, w9, #1                                     
01a9b99c  asr       w10, w10, #1                                   
01a9b9a0  stp       w9, w10, [x8, #0x44]                           
01a9b9a4  mov       w9, #1                                         
01a9b9a8  str       w9, [x8, #0x6c]                                
01a9b9ac  b         #0x1a9bf28                                     
01a9b9b0  cbnz      w8, #0x1a9b9bc                                 
01a9b9b4  bl        #0x183dcb0                                     
01a9b9b8  ldr       x0, [x23]                                      
01a9b9bc  ldr       x8, [x24]                                      
01a9b9c0  ldr       x8, [x8, #0xb8]                                
01a9b9c4  ldr       x9, [x8]                                       
01a9b9c8  cbz       x9, #0x1a9d1d8                                 
01a9b9cc  ldr       x8, [x0, #0xb8]                                
01a9b9d0  ldr       x8, [x8, #0x400]                               
01a9b9d4  cbz       x8, #0x1a9d1d8                                 
01a9b9d8  ldrsw     x9, [x9, #0x5cc]                               
01a9b9dc  ldr       w10, [x8, #0x18]                               
01a9b9e0  cmp       w9, w10                                        
01a9b9e4  b.hs      #0x1a9d1dc                                     
01a9b9e8  add       x8, x8, x9, lsl #3                             
01a9b9ec  ldr       x2, [x8, #0x20]                                
01a9b9f0  b         #0x1a9bab0                                     
01a9b9f4  adrp      x24, #0x3a7c000                                
01a9b9f8  ldr       x24, [x24, #0xc08]                             
01a9b9fc  ldr       x8, [x24]                                      
01a9ba00  ldr       x8, [x8, #0xb8]                                
01a9ba04  ldr       x0, [x8]                                       
01a9ba08  cbz       x0, #0x1a9d1d8                                 
01a9ba0c  adrp      x8, #0x3a7c000                                 
01a9ba10  ldr       x8, [x8, #0xd40]                               
01a9ba14  ldr       x1, [x8]                                       
01a9ba18  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9ba1c  ldr       w8, [x23, #0x18]                               
01a9ba20  cmp       w26, w8                                        
01a9ba24  b.hs      #0x1a9d1dc                                     
01a9ba28  ldr       x8, [x29]                                      
01a9ba2c  cbz       x8, #0x1a9d1d8                                 
01a9ba30  mov       x23, x0                                        
01a9ba34  ldr       x0, [x21]                                      
01a9ba38  ldr       s8, [x8, #0x20]                                
01a9ba3c  ldr       w9, [x0, #0xe4]                                
01a9ba40  cbnz      w9, #0x1a9ba48                                 
01a9ba44  bl        #0x183dcb0                                     
01a9ba48  fmov      s0, s8                                         
01a9ba4c  mov       x0, xzr                                        
01a9ba50  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9ba54  cbz       x23, #0x1a9d1d8                                
01a9ba58  mov       w1, w0                                         
01a9ba5c  mov       x0, x23                                        
01a9ba60  mov       x2, xzr                                        
01a9ba64  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a9ba68  str       x0, [x19, #0x140]                              
01a9ba6c  b         #0x1a9bf28                                     
01a9ba70  cbnz      w9, #0x1a9ba8c                                 
01a9ba74  bl        #0x183dcb0                                     
01a9ba78  ldr       x8, [x24]                                      
01a9ba7c  ldr       x8, [x8, #0xb8]                                
01a9ba80  ldr       x8, [x8]                                       
01a9ba84  cbz       x8, #0x1a9d1d8                                 
01a9ba88  ldr       x0, [x23]                                      
01a9ba8c  ldr       x9, [x0, #0xb8]                                
01a9ba90  ldr       x0, [x9, #0x238]                               
01a9ba94  cbz       x0, #0x1a9d1d8                                 
01a9ba98  ldr       w9, [x8, #0x150]                               
01a9ba9c  sub       w9, w21, w9                                    
01a9baa0  ldrsw     x2, [x8, #0x5cc]                               
01a9baa4  sxtw      x1, w9                                         
01a9baa8  bl        #0x1661844                                     
01a9baac  mov       x2, x0                                         
01a9bab0  adrp      x8, #0x3a8c000                                 
01a9bab4  adrp      x9, #0x3a8c000                                 
01a9bab8  mov       x0, x20                                        
01a9babc  ldr       x8, [x8, #0x738]                               
01a9bac0  ldr       x9, [x9, #0x740]                               
01a9bac4  mov       x4, xzr                                        
01a9bac8  ldr       x1, [x8]                                       
01a9bacc  ldr       x3, [x9]                                       
01a9bad0  bl        #0x2c6e254                                     // System.String$$Concat
01a9bad4  mov       x20, x0                                        
01a9bad8  ldr       x9, [x19, #0x140]                              
01a9badc  ldr       x8, [x19, #0x118]                              
01a9bae0  cbz       x9, #0x1a9bb60                                 
01a9bae4  cbz       x8, #0x1a9d1d8                                 
01a9bae8  ldrsw     x9, [x19, #0x13c]                              
01a9baec  ldr       w10, [x8, #0x18]                               
01a9baf0  cmp       w9, w10                                        
01a9baf4  b.hs      #0x1a9d1dc                                     
01a9baf8  add       x8, x8, x9, lsl #3                             
01a9bafc  ldr       x0, [x8, #0x20]                                
01a9bb00  cbz       x0, #0x1a9d1d8                                 
01a9bb04  adrp      x8, #0x3a8c000                                 
01a9bb08  ldr       x8, [x8, #0x6a8]                               
01a9bb0c  ldr       w1, [x19, #0xe0]                               
01a9bb10  ldr       x2, [x8]                                       
01a9bb14  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9bb18  cbz       x0, #0x1a9d1d8                                 
01a9bb1c  ldr       x9, [x19, #0x140]                              
01a9bb20  cbz       x9, #0x1a9d1d8                                 
01a9bb24  ldr       x8, [x24]                                      
01a9bb28  ldr       x8, [x8, #0xb8]                                
01a9bb2c  ldr       x8, [x8]                                       
01a9bb30  cbz       x8, #0x1a9d1d8                                 
01a9bb34  ldr       x9, [x9, #0x20]                                
01a9bb38  cbz       x9, #0x1a9d1d8                                 
01a9bb3c  ldrsw     x10, [x8, #0x5cc]                              
01a9bb40  ldr       w11, [x9, #0x18]                               
01a9bb44  cmp       w10, w11                                       
01a9bb48  b.hs      #0x1a9d1dc                                     
01a9bb4c  add       x9, x9, x10, lsl #3                            
01a9bb50  ldr       x0, [x0, #0x30]                                
01a9bb54  ldr       x2, [x8, #0x40]                                
01a9bb58  ldr       x1, [x9, #0x20]                                
01a9bb5c  b         #0x1a9bbb4                                     
01a9bb60  cbz       x8, #0x1a9d1d8                                 
01a9bb64  ldrsw     x9, [x19, #0x13c]                              
01a9bb68  ldr       w10, [x8, #0x18]                               
01a9bb6c  cmp       w9, w10                                        
01a9bb70  b.hs      #0x1a9d1dc                                     
01a9bb74  add       x8, x8, x9, lsl #3                             
01a9bb78  ldr       x0, [x8, #0x20]                                
01a9bb7c  cbz       x0, #0x1a9d1d8                                 
01a9bb80  adrp      x8, #0x3a8c000                                 
01a9bb84  ldr       x8, [x8, #0x6a8]                               
01a9bb88  ldr       w1, [x19, #0xe0]                               
01a9bb8c  ldr       x2, [x8]                                       
01a9bb90  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9bb94  cbz       x0, #0x1a9d1d8                                 
01a9bb98  ldr       x8, [x24]                                      
01a9bb9c  ldr       x8, [x8, #0xb8]                                
01a9bba0  ldr       x8, [x8]                                       
01a9bba4  cbz       x8, #0x1a9d1d8                                 
01a9bba8  ldr       x0, [x0, #0x30]                                
01a9bbac  ldr       x2, [x8, #0x40]                                
01a9bbb0  ldr       x1, [x22]                                      
01a9bbb4  mov       x3, xzr                                        
01a9bbb8  bl        #0x2c6e654                                     // System.String$$Format
01a9bbbc  mov       x1, x0                                         
01a9bbc0  mov       x0, x20                                        
01a9bbc4  mov       x2, xzr                                        
01a9bbc8  bl        #0x2c63780                                     // System.String$$Concat
01a9bbcc  mov       x1, x0                                         
01a9bbd0  mov       x0, x19                                        
01a9bbd4  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a9bbd8  mov       x1, x0                                         
01a9bbdc  mov       x0, x19                                        
01a9bbe0  mov       x2, xzr                                        
01a9bbe4  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a9bbe8  str       x0, [x19, #0x188]                              
01a9bbec  mov       x0, x19                                        
01a9bbf0  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a9bbf4  mov       x0, x19                                        
01a9bbf8  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01a9bbfc  mov       x0, x19                                        
01a9bc00  ldp       x20, x19, [sp, #0x80]                          
01a9bc04  ldp       x22, x21, [sp, #0x70]                          
01a9bc08  ldr       d8, [sp, #0x20]                                
01a9bc0c  ldp       x24, x23, [sp, #0x60]                          
01a9bc10  ldp       x26, x25, [sp, #0x50]                          
01a9bc14  ldp       x28, x27, [sp, #0x40]                          
01a9bc18  ldp       x29, x30, [sp, #0x30]                          
01a9bc1c  add       sp, sp, #0x90                                  
01a9bc20  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a9bc24  cmp       w26, w8                                        
01a9bc28  b.hs      #0x1a9d1dc                                     
01a9bc2c  ldr       x8, [x29]                                      
01a9bc30  cbz       x8, #0x1a9d1d8                                 
01a9bc34  ldr       x0, [x21]                                      
01a9bc38  ldr       x24, [x8, #0x18]                               
01a9bc3c  ldr       w9, [x0, #0xe4]                                
01a9bc40  cbnz      w9, #0x1a9bc48                                 
01a9bc44  bl        #0x183dcb0                                     
01a9bc48  mov       x0, x24                                        
01a9bc4c  mov       x1, xzr                                        
01a9bc50  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9bc54  cmp       w0, #2                                         
01a9bc58  b.ne      #0x1a9bd7c                                     
01a9bc5c  adrp      x24, #0x3a7c000                                
01a9bc60  ldr       x24, [x24, #0xc08]                             
01a9bc64  ldr       x8, [x24]                                      
01a9bc68  ldr       x8, [x8, #0xb8]                                
01a9bc6c  ldr       x0, [x8]                                       
01a9bc70  cbz       x0, #0x1a9d1d8                                 
01a9bc74  adrp      x8, #0x3a7c000                                 
01a9bc78  ldr       x8, [x8, #0xd40]                               
01a9bc7c  ldr       x1, [x8]                                       
01a9bc80  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9bc84  ldr       w8, [x23, #0x18]                               
01a9bc88  cmp       w26, w8                                        
01a9bc8c  b.hs      #0x1a9d1dc                                     
01a9bc90  ldr       x8, [x29]                                      
01a9bc94  cbz       x8, #0x1a9d1d8                                 
01a9bc98  mov       x23, x0                                        
01a9bc9c  ldr       x0, [x21]                                      
01a9bca0  ldr       s8, [x8, #0x20]                                
01a9bca4  ldr       w9, [x0, #0xe4]                                
01a9bca8  cbnz      w9, #0x1a9bcb0                                 
01a9bcac  bl        #0x183dcb0                                     
01a9bcb0  fmov      s0, s8                                         
01a9bcb4  mov       x0, xzr                                        
01a9bcb8  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9bcbc  cbz       x23, #0x1a9d1d8                                
01a9bcc0  mov       w1, w0                                         
01a9bcc4  mov       x0, x23                                        
01a9bcc8  mov       x2, xzr                                        
01a9bccc  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a9bcd0  str       x0, [x19, #0x140]                              
01a9bcd4  cbz       x0, #0x1a9d1d8                                 
01a9bcd8  ldp       w8, w9, [x0, #0x44]                            
01a9bcdc  cmp       w8, #0                                         
01a9bce0  cinc      w8, w8, lt                                     
01a9bce4  cmp       w9, #0                                         
01a9bce8  cinc      w9, w9, lt                                     
01a9bcec  asr       w8, w8, #1                                     
01a9bcf0  asr       w9, w9, #1                                     
01a9bcf4  stp       w8, w9, [x0, #0x44]                            
01a9bcf8  mov       w8, #1                                         
01a9bcfc  b         #0x1a9bf24                                     
01a9bd00  ldr       w8, [x23, #0x18]                               
01a9bd04  cmp       w26, w8                                        
01a9bd08  b.hs      #0x1a9d1dc                                     
01a9bd0c  ldr       x8, [x29]                                      
01a9bd10  cbz       x8, #0x1a9d1d8                                 
01a9bd14  ldr       x0, [x21]                                      
01a9bd18  ldr       s8, [x8, #0x20]                                
01a9bd1c  ldr       w9, [x0, #0xe4]                                
01a9bd20  cbnz      w9, #0x1a9bd28                                 
01a9bd24  bl        #0x183dcb0                                     
01a9bd28  fmov      s0, s8                                         
01a9bd2c  mov       x0, xzr                                        
01a9bd30  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9bd34  cmp       w0, #3                                         
01a9bd38  b.ne      #0x1a9bf28                                     
01a9bd3c  ldr       x8, [x19, #0x140]                              
01a9bd40  cbz       x8, #0x1a9d1d8                                 
01a9bd44  ldur      d0, [x8, #0x44]                                
01a9bd48  fmov      v1.2s, #1.50000000                             
01a9bd4c  mov       w9, #0x7f800000                                
01a9bd50  dup       v2.2s, w9                                      
01a9bd54  mov       w9, #2                                         
01a9bd58  scvtf     v0.2s, v0.2s                                   
01a9bd5c  str       w9, [x8, #0x6c]                                
01a9bd60  fmul      v0.2s, v0.2s, v1.2s                            
01a9bd64  movi      v1.2s, #0x80, lsl #24                          
01a9bd68  fcmeq     v2.2s, v0.2s, v2.2s                            
01a9bd6c  fcvtzs    v0.2s, v0.2s                                   
01a9bd70  bit       v0.8b, v1.8b, v2.8b                            
01a9bd74  stur      d0, [x8, #0x44]                                
01a9bd78  b         #0x1a9bf28                                     
01a9bd7c  ldr       w8, [x23, #0x18]                               
01a9bd80  cmp       w26, w8                                        
01a9bd84  b.hs      #0x1a9d1dc                                     
01a9bd88  ldr       x8, [x29]                                      
01a9bd8c  cbz       x8, #0x1a9d1d8                                 
01a9bd90  ldr       x0, [x21]                                      
01a9bd94  ldr       x24, [x8, #0x18]                               
01a9bd98  ldr       w9, [x0, #0xe4]                                
01a9bd9c  cbnz      w9, #0x1a9bda4                                 
01a9bda0  bl        #0x183dcb0                                     
01a9bda4  mov       x0, x24                                        
01a9bda8  mov       x1, xzr                                        
01a9bdac  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9bdb0  cmp       w0, #3                                         
01a9bdb4  b.ne      #0x1a9be68                                     
01a9bdb8  adrp      x24, #0x3a7c000                                
01a9bdbc  ldr       x24, [x24, #0xc08]                             
01a9bdc0  ldr       x8, [x24]                                      
01a9bdc4  ldr       x8, [x8, #0xb8]                                
01a9bdc8  ldr       x0, [x8]                                       
01a9bdcc  cbz       x0, #0x1a9d1d8                                 
01a9bdd0  adrp      x8, #0x3a7c000                                 
01a9bdd4  ldr       x8, [x8, #0xd40]                               
01a9bdd8  ldr       x1, [x8]                                       
01a9bddc  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9bde0  ldr       w8, [x23, #0x18]                               
01a9bde4  cmp       w26, w8                                        
01a9bde8  b.hs      #0x1a9d1dc                                     
01a9bdec  ldr       x8, [x29]                                      
01a9bdf0  cbz       x8, #0x1a9d1d8                                 
01a9bdf4  mov       x23, x0                                        
01a9bdf8  ldr       x0, [x21]                                      
01a9bdfc  ldr       s8, [x8, #0x20]                                
01a9be00  ldr       w9, [x0, #0xe4]                                
01a9be04  cbnz      w9, #0x1a9be0c                                 
01a9be08  bl        #0x183dcb0                                     
01a9be0c  fmov      s0, s8                                         
01a9be10  mov       x0, xzr                                        
01a9be14  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9be18  cbz       x23, #0x1a9d1d8                                
01a9be1c  mov       w1, w0                                         
01a9be20  mov       x0, x23                                        
01a9be24  mov       x2, xzr                                        
01a9be28  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a9be2c  str       x0, [x19, #0x140]                              
01a9be30  cbz       x0, #0x1a9d1d8                                 
01a9be34  ldur      d0, [x0, #0x44]                                
01a9be38  fmov      v1.2s, #1.50000000                             
01a9be3c  mov       w8, #0x7f800000                                
01a9be40  dup       v2.2s, w8                                      
01a9be44  mov       w8, #2                                         
01a9be48  scvtf     v0.2s, v0.2s                                   
01a9be4c  fmul      v0.2s, v0.2s, v1.2s                            
01a9be50  movi      v1.2s, #0x80, lsl #24                          
01a9be54  fcmeq     v2.2s, v0.2s, v2.2s                            
01a9be58  fcvtzs    v0.2s, v0.2s                                   
01a9be5c  bit       v0.8b, v1.8b, v2.8b                            
01a9be60  stur      d0, [x0, #0x44]                                
01a9be64  b         #0x1a9bf24                                     
01a9be68  ldr       w8, [x23, #0x18]                               
01a9be6c  cmp       w26, w8                                        
01a9be70  b.hs      #0x1a9d1dc                                     
01a9be74  ldr       x8, [x29]                                      
01a9be78  cbz       x8, #0x1a9d1d8                                 
01a9be7c  ldr       x0, [x21]                                      
01a9be80  ldr       x24, [x8, #0x18]                               
01a9be84  ldr       w9, [x0, #0xe4]                                
01a9be88  cbnz      w9, #0x1a9be90                                 
01a9be8c  bl        #0x183dcb0                                     
01a9be90  mov       x0, x24                                        
01a9be94  mov       x1, xzr                                        
01a9be98  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01a9be9c  adrp      x24, #0x3a7c000                                
01a9bea0  cmp       w0, #4                                         
01a9bea4  ldr       x24, [x24, #0xc08]                             
01a9bea8  b.ne      #0x1a9bf28                                     
01a9beac  ldr       x8, [x24]                                      
01a9beb0  ldr       x8, [x8, #0xb8]                                
01a9beb4  ldr       x0, [x8]                                       
01a9beb8  cbz       x0, #0x1a9d1d8                                 
01a9bebc  adrp      x8, #0x3a7c000                                 
01a9bec0  ldr       x8, [x8, #0xd40]                               
01a9bec4  ldr       x1, [x8]                                       
01a9bec8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01a9becc  ldr       w8, [x23, #0x18]                               
01a9bed0  cmp       w26, w8                                        
01a9bed4  b.hs      #0x1a9d1dc                                     
01a9bed8  ldr       x8, [x29]                                      
01a9bedc  cbz       x8, #0x1a9d1d8                                 
01a9bee0  mov       x23, x0                                        
01a9bee4  ldr       x0, [x21]                                      
01a9bee8  ldr       s8, [x8, #0x20]                                
01a9beec  ldr       w9, [x0, #0xe4]                                
01a9bef0  cbnz      w9, #0x1a9bef8                                 
01a9bef4  bl        #0x183dcb0                                     
01a9bef8  fmov      s0, s8                                         
01a9befc  mov       x0, xzr                                        
01a9bf00  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01a9bf04  cbz       x23, #0x1a9d1d8                                
01a9bf08  mov       w1, w0                                         
01a9bf0c  mov       x0, x23                                        
01a9bf10  mov       x2, xzr                                        
01a9bf14  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01a9bf18  str       x0, [x19, #0x140]                              
01a9bf1c  cbz       x0, #0x1a9d1d8                                 
01a9bf20  mov       w8, #4                                         
01a9bf24  str       w8, [x0, #0x6c]                                
01a9bf28  mov       w8, #1                                         
01a9bf2c  strb      w8, [x19, #0x1e0]                              
01a9bf30  ldr       x9, [x19, #0x140]                              
01a9bf34  ldr       x8, [x19, #0x118]                              
01a9bf38  cbz       x9, #0x1a9bfe8                                 
01a9bf3c  cbz       x8, #0x1a9d1d8                                 
01a9bf40  ldrsw     x9, [x19, #0x13c]                              
01a9bf44  ldr       w10, [x8, #0x18]                               
01a9bf48  adrp      x29, #0x3a7b000                                
01a9bf4c  ldr       x29, [x29, #0xaf0]                             
01a9bf50  cmp       w9, w10                                        
01a9bf54  b.hs      #0x1a9d1dc                                     
01a9bf58  add       x8, x8, x9, lsl #3                             
01a9bf5c  ldr       x0, [x8, #0x20]                                
01a9bf60  cbz       x0, #0x1a9d1d8                                 
01a9bf64  ldr       w1, [x19, #0xe0]                               
01a9bf68  ldr       x2, [x27]                                      
01a9bf6c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9bf70  cbz       x0, #0x1a9d1d8                                 
01a9bf74  ldr       x9, [x19, #0x140]                              
01a9bf78  cbz       x9, #0x1a9d1d8                                 
01a9bf7c  ldr       x8, [x24]                                      
01a9bf80  ldr       x8, [x8, #0xb8]                                
01a9bf84  ldr       x8, [x8]                                       
01a9bf88  cbz       x8, #0x1a9d1d8                                 
01a9bf8c  ldr       x9, [x9, #0x20]                                
01a9bf90  cbz       x9, #0x1a9d1d8                                 
01a9bf94  ldrsw     x10, [x8, #0x5cc]                              
01a9bf98  ldr       w11, [x9, #0x18]                               
01a9bf9c  cmp       w10, w11                                       
01a9bfa0  b.hs      #0x1a9d1dc                                     
01a9bfa4  add       x9, x9, x10, lsl #3                            
01a9bfa8  ldr       x0, [x0, #0x30]                                
01a9bfac  ldr       x2, [x8, #0x40]                                
01a9bfb0  mov       x3, xzr                                        
01a9bfb4  ldr       x1, [x9, #0x20]                                
01a9bfb8  bl        #0x2c6e654                                     // System.String$$Format
01a9bfbc  adrp      x8, #0x3a7b000                                 
01a9bfc0  mov       x2, xzr                                        
01a9bfc4  ldr       x8, [x8, #0x7d0]                               
01a9bfc8  ldr       x1, [x8]                                       
01a9bfcc  bl        #0x2c63780                                     // System.String$$Concat
01a9bfd0  ldr       x8, [x19, #0x140]                              
01a9bfd4  cbz       x8, #0x1a9d1d8                                 
01a9bfd8  ldr       w9, [sp, #0x18]                                
01a9bfdc  mov       x24, x0                                        
01a9bfe0  str       w9, [x8, #0xb8]                                
01a9bfe4  b         #0x1a9c064                                     
01a9bfe8  adrp      x29, #0x3a7b000                                
01a9bfec  ldr       x29, [x29, #0xaf0]                             
01a9bff0  cbz       x8, #0x1a9d1d8                                 
01a9bff4  ldrsw     x9, [x19, #0x13c]                              
01a9bff8  ldr       w10, [x8, #0x18]                               
01a9bffc  cmp       w9, w10                                        
01a9c000  b.hs      #0x1a9d1dc                                     
01a9c004  add       x8, x8, x9, lsl #3                             
01a9c008  ldr       x0, [x8, #0x20]                                
01a9c00c  cbz       x0, #0x1a9d1d8                                 
01a9c010  ldr       w1, [x19, #0xe0]                               
01a9c014  ldr       x2, [x27]                                      
01a9c018  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c01c  cbz       x0, #0x1a9d1d8                                 
01a9c020  ldr       x8, [x24]                                      
01a9c024  ldr       x8, [x8, #0xb8]                                
01a9c028  ldr       x8, [x8]                                       
01a9c02c  cbz       x8, #0x1a9d1d8                                 
01a9c030  ldr       x0, [x0, #0x30]                                
01a9c034  ldr       x2, [x8, #0x40]                                
01a9c038  mov       x3, xzr                                        
01a9c03c  ldr       x1, [x29]                                      
01a9c040  bl        #0x2c6e654                                     // System.String$$Format
01a9c044  adrp      x8, #0x3a7b000                                 
01a9c048  mov       x2, xzr                                        
01a9c04c  ldr       x8, [x8, #0x7d0]                               
01a9c050  ldr       x1, [x8]                                       
01a9c054  bl        #0x2c63780                                     // System.String$$Concat
01a9c058  ldr       x8, [x19, #0x140]                              
01a9c05c  mov       x24, x0                                        
01a9c060  cbz       x8, #0x1a9c83c                                 
01a9c064  adrp      x8, #0x3a7b000                                 
01a9c068  mov       w1, #5                                         
01a9c06c  ldr       x8, [x8, #0x7c8]                               
01a9c070  ldr       x0, [x8]                                       
01a9c074  bl        #0x183dc20                                     
01a9c078  cbz       x0, #0x1a9d1d8                                 
01a9c07c  ldr       w8, [x0, #0x18]                                
01a9c080  mov       x23, x0                                        
01a9c084  cbz       w8, #0x1a9d1dc                                 
01a9c088  cmp       w8, #1                                         
01a9c08c  str       x24, [x23, #0x20]                              
01a9c090  b.eq      #0x1a9d1dc                                     
01a9c094  str       x22, [x23, #0x28]                              
01a9c098  adrp      x24, #0x3a7c000                                
01a9c09c  cmp       w8, #2                                         
01a9c0a0  ldr       x24, [x24, #0xc08]                             
01a9c0a4  b.ls      #0x1a9d1dc                                     
01a9c0a8  ldr       x9, [x19, #0xf0]                               
01a9c0ac  cmp       w8, #3                                         
01a9c0b0  str       x9, [x23, #0x30]                               
01a9c0b4  b.eq      #0x1a9d1dc                                     
01a9c0b8  adrp      x8, #0x3a7c000                                 
01a9c0bc  ldr       x8, [x8, #0xee8]                               
01a9c0c0  ldr       x8, [x8]                                       
01a9c0c4  str       x8, [x23, #0x38]                               
01a9c0c8  ldr       x8, [x19, #0x118]                              
01a9c0cc  cbz       x8, #0x1a9d1d8                                 
01a9c0d0  ldrsw     x9, [x19, #0x13c]                              
01a9c0d4  ldr       w10, [x8, #0x18]                               
01a9c0d8  cmp       w9, w10                                        
01a9c0dc  b.hs      #0x1a9d1dc                                     
01a9c0e0  add       x8, x8, x9, lsl #3                             
01a9c0e4  ldr       x0, [x8, #0x20]                                
01a9c0e8  cbz       x0, #0x1a9d1d8                                 
01a9c0ec  ldr       w1, [x19, #0xe0]                               
01a9c0f0  ldr       x2, [x27]                                      
01a9c0f4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c0f8  cbz       x0, #0x1a9d1d8                                 
01a9c0fc  ldr       x0, [x0, #0x38]                                
01a9c100  cbz       x0, #0x1a9d1d8                                 
01a9c104  ldr       w1, [x20, #0x18]                               
01a9c108  ldr       x2, [x28]                                      
01a9c10c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c110  cbz       x0, #0x1a9d1d8                                 
01a9c114  ldr       x0, [x0, #0x20]                                
01a9c118  cbz       x0, #0x1a9d1d8                                 
01a9c11c  ldr       w1, [x19, #0xe4]                               
01a9c120  ldr       x2, [x25]                                      
01a9c124  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c128  cbz       x0, #0x1a9d1d8                                 
01a9c12c  ldr       x9, [x19, #0x140]                              
01a9c130  cbz       x9, #0x1a9d1d8                                 
01a9c134  ldr       x8, [x24]                                      
01a9c138  ldr       x8, [x8, #0xb8]                                
01a9c13c  ldr       x8, [x8]                                       
01a9c140  cbz       x8, #0x1a9d1d8                                 
01a9c144  ldr       x9, [x9, #0x20]                                
01a9c148  cbz       x9, #0x1a9d1d8                                 
01a9c14c  ldrsw     x10, [x8, #0x5cc]                              
01a9c150  ldr       w11, [x9, #0x18]                               
01a9c154  cmp       w10, w11                                       
01a9c158  b.hs      #0x1a9d1dc                                     
01a9c15c  add       x9, x9, x10, lsl #3                            
01a9c160  ldr       x0, [x0, #0x20]                                
01a9c164  ldr       x2, [x8, #0x40]                                
01a9c168  ldr       x1, [x9, #0x20]                                
01a9c16c  mov       x3, xzr                                        
01a9c170  bl        #0x2c6e654                                     // System.String$$Format
01a9c174  ldr       w8, [x23, #0x18]                               
01a9c178  cmp       w8, #4                                         
01a9c17c  b.ls      #0x1a9d1dc                                     
01a9c180  str       x0, [x23, #0x40]                               
01a9c184  mov       x0, x23                                        
01a9c188  mov       x1, xzr                                        
01a9c18c  bl        #0x2c6e35c                                     // System.String$$Concat
01a9c190  ldr       x8, [x19, #0x118]                              
01a9c194  cbz       x8, #0x1a9d1d8                                 
01a9c198  ldrsw     x9, [x19, #0x13c]                              
01a9c19c  ldr       w10, [x8, #0x18]                               
01a9c1a0  cmp       w9, w10                                        
01a9c1a4  b.hs      #0x1a9d1dc                                     
01a9c1a8  add       x8, x8, x9, lsl #3                             
01a9c1ac  mov       x22, x0                                        
01a9c1b0  ldr       x0, [x8, #0x20]                                
01a9c1b4  cbz       x0, #0x1a9d1d8                                 
01a9c1b8  ldr       w1, [x19, #0xe0]                               
01a9c1bc  ldr       x2, [x27]                                      
01a9c1c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c1c4  cbz       x0, #0x1a9d1d8                                 
01a9c1c8  ldr       x0, [x0, #0x38]                                
01a9c1cc  cbz       x0, #0x1a9d1d8                                 
01a9c1d0  ldr       w1, [x20, #0x18]                               
01a9c1d4  ldr       x2, [x28]                                      
01a9c1d8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c1dc  cbz       x0, #0x1a9d1d8                                 
01a9c1e0  ldr       x0, [x0, #0x20]                                
01a9c1e4  cbz       x0, #0x1a9d1d8                                 
01a9c1e8  ldr       w1, [x19, #0xe4]                               
01a9c1ec  ldr       x2, [x25]                                      
01a9c1f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c1f4  cbz       x0, #0x1a9d1d8                                 
01a9c1f8  ldr       w8, [x0, #0x18]                                
01a9c1fc  cmn       w8, #3                                         
01a9c200  b.eq      #0x1a9c2e8                                     
01a9c204  ldr       x8, [x24]                                      
01a9c208  ldr       x8, [x8, #0xb8]                                
01a9c20c  ldr       x0, [x8]                                       
01a9c210  cbz       x0, #0x1a9d1d8                                 
01a9c214  mov       w1, wzr                                        
01a9c218  mov       x2, xzr                                        
01a9c21c  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9c220  fcmp      s0, #0.0                                       
01a9c224  b.ls      #0x1a9c288                                     
01a9c228  ldr       x8, [x24]                                      
01a9c22c  ldr       x8, [x8, #0xb8]                                
01a9c230  ldr       x0, [x8]                                       
01a9c234  cbz       x0, #0x1a9d1d8                                 
01a9c238  mov       w1, #1                                         
01a9c23c  mov       x2, xzr                                        
01a9c240  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9c244  fcmp      s0, #0.0                                       
01a9c248  b.hi      #0x1a9c2e8                                     
01a9c24c  adrp      x21, #0x3a7c000                                
01a9c250  ldr       x21, [x21, #0xde8]                             
01a9c254  ldr       x0, [x21]                                      
01a9c258  ldr       w8, [x0, #0xe4]                                
01a9c25c  cbnz      w8, #0x1a9c268                                 
01a9c260  bl        #0x183dcb0                                     
01a9c264  ldr       x0, [x21]                                      
01a9c268  ldr       x8, [x24]                                      
01a9c26c  ldr       x8, [x8, #0xb8]                                
01a9c270  ldr       x9, [x8]                                       
01a9c274  cbz       x9, #0x1a9d1d8                                 
01a9c278  ldr       x8, [x0, #0xb8]                                
01a9c27c  ldr       x8, [x8, #0xd8]                                
01a9c280  cbnz      x8, #0x1a9c2c0                                 
01a9c284  b         #0x1a9d1d8                                     
01a9c288  adrp      x21, #0x3a7c000                                
01a9c28c  ldr       x21, [x21, #0xde8]                             
01a9c290  ldr       x0, [x21]                                      
01a9c294  ldr       w8, [x0, #0xe4]                                
01a9c298  cbnz      w8, #0x1a9c2a4                                 
01a9c29c  bl        #0x183dcb0                                     
01a9c2a0  ldr       x0, [x21]                                      
01a9c2a4  ldr       x8, [x24]                                      
01a9c2a8  ldr       x8, [x8, #0xb8]                                
01a9c2ac  ldr       x9, [x8]                                       
01a9c2b0  cbz       x9, #0x1a9d1d8                                 
01a9c2b4  ldr       x8, [x0, #0xb8]                                
01a9c2b8  ldr       x8, [x8, #0xd0]                                
01a9c2bc  cbz       x8, #0x1a9d1d8                                 
01a9c2c0  ldr       w9, [x9, #0x5cc]                               
01a9c2c4  ldr       w10, [x8, #0x18]                               
01a9c2c8  cmp       w9, w10                                        
01a9c2cc  b.hs      #0x1a9d1dc                                     
01a9c2d0  add       x8, x8, w9, sxtw #3                            
01a9c2d4  mov       x0, x22                                        
01a9c2d8  mov       x2, xzr                                        
01a9c2dc  ldr       x1, [x8, #0x20]                                
01a9c2e0  bl        #0x2c63780                                     // System.String$$Concat
01a9c2e4  mov       x22, x0                                        
01a9c2e8  ldr       w8, [sp, #0x1c]                                
01a9c2ec  tbz       w8, #0, #0x1a9c338                             
01a9c2f0  adrp      x21, #0x3d14000                                
01a9c2f4  ldrb      w8, [x21, #0x677]                              
01a9c2f8  cbnz      w8, #0x1a9c310                                 
01a9c2fc  adrp      x0, #0x3a7c000                                 
01a9c300  ldr       x0, [x0, #0xc98]                               
01a9c304  bl        #0x183db90                                     
01a9c308  mov       w8, #1                                         
01a9c30c  strb      w8, [x21, #0x677]                              
01a9c310  adrp      x8, #0x3a7c000                                 
01a9c314  ldr       x8, [x8, #0xc98]                               
01a9c318  ldr       x8, [x8]                                       
01a9c31c  ldr       x8, [x8, #0xb8]                                
01a9c320  ldr       x8, [x8]                                       
01a9c324  cbz       x8, #0x1a9d1d8                                 
01a9c328  ldr       x0, [x8, #0x78]                                
01a9c32c  cbz       x0, #0x1a9d1d8                                 
01a9c330  mov       x1, xzr                                        
01a9c334  bl        #0x1977704                                     // LevelUpPopup$$Show
01a9c338  ldrb      w8, [x19, #0x1e0]                              
01a9c33c  cbz       w8, #0x1a9c414                                 
01a9c340  adrp      x8, #0x3a7b000                                 
01a9c344  mov       w1, #5                                         
01a9c348  ldr       x8, [x8, #0x7c8]                               
01a9c34c  ldr       x0, [x8]                                       
01a9c350  bl        #0x183dc20                                     
01a9c354  cbz       x0, #0x1a9d1d8                                 
01a9c358  ldr       w8, [x0, #0x18]                                
01a9c35c  mov       x21, x0                                        
01a9c360  cbz       w8, #0x1a9d1dc                                 
01a9c364  cmp       w8, #1                                         
01a9c368  str       x22, [x21, #0x20]                              
01a9c36c  b.eq      #0x1a9d1dc                                     
01a9c370  adrp      x9, #0x3a7c000                                 
01a9c374  ldr       x9, [x9, #0x5e0]                               
01a9c378  ldr       x9, [x9]                                       
01a9c37c  str       x9, [x21, #0x28]                               
01a9c380  ldr       x9, [x19, #0x140]                              
01a9c384  cbz       x9, #0x1a9d1d8                                 
01a9c388  cmp       w8, #2                                         
01a9c38c  b.ls      #0x1a9d1dc                                     
01a9c390  ldr       x9, [x9, #0x80]                                
01a9c394  cmp       w8, #3                                         
01a9c398  str       x9, [x21, #0x30]                               
01a9c39c  b.eq      #0x1a9d1dc                                     
01a9c3a0  adrp      x8, #0x3a7b000                                 
01a9c3a4  ldr       x8, [x8, #0xbc8]                               
01a9c3a8  ldr       x8, [x8]                                       
01a9c3ac  str       x8, [x21, #0x38]                               
01a9c3b0  ldr       x8, [x24]                                      
01a9c3b4  ldr       x8, [x8, #0xb8]                                
01a9c3b8  ldr       x9, [x8]                                       
01a9c3bc  cbz       x9, #0x1a9d1d8                                 
01a9c3c0  ldr       x8, [x19, #0x140]                              
01a9c3c4  cbz       x8, #0x1a9d1d8                                 
01a9c3c8  ldr       x0, [x9, #0x1f8]                               
01a9c3cc  cbz       x0, #0x1a9d1d8                                 
01a9c3d0  adrp      x9, #0x3a7c000                                 
01a9c3d4  ldr       x9, [x9, #0xc30]                               
01a9c3d8  ldr       w1, [x8, #0x10]                                
01a9c3dc  ldr       x2, [x9]                                       
01a9c3e0  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01a9c3e4  str       w0, [sp, #0x2c]                                
01a9c3e8  add       x0, sp, #0x2c                                  
01a9c3ec  mov       x1, xzr                                        
01a9c3f0  bl        #0x2dcd834                                     // System.Int32$$ToString
01a9c3f4  ldr       w8, [x21, #0x18]                               
01a9c3f8  cmp       w8, #4                                         
01a9c3fc  b.ls      #0x1a9d1dc                                     
01a9c400  str       x0, [x21, #0x40]                               
01a9c404  mov       x0, x21                                        
01a9c408  mov       x1, xzr                                        
01a9c40c  bl        #0x2c6e35c                                     // System.String$$Concat
01a9c410  mov       x22, x0                                        
01a9c414  mov       x0, x19                                        
01a9c418  mov       x1, x22                                        
01a9c41c  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01a9c420  mov       x1, x0                                         
01a9c424  mov       x0, x19                                        
01a9c428  mov       x2, xzr                                        
01a9c42c  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01a9c430  str       x0, [x19, #0x188]                              
01a9c434  mov       x0, x19                                        
01a9c438  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01a9c43c  ldr       x8, [x19, #0x118]                              
01a9c440  cbz       x8, #0x1a9d1d8                                 
01a9c444  ldrsw     x9, [x19, #0x13c]                              
01a9c448  ldr       w10, [x8, #0x18]                               
01a9c44c  cmp       w9, w10                                        
01a9c450  b.hs      #0x1a9d1dc                                     
01a9c454  add       x8, x8, x9, lsl #3                             
01a9c458  ldr       x0, [x8, #0x20]                                
01a9c45c  cbz       x0, #0x1a9d1d8                                 
01a9c460  ldr       w1, [x19, #0xe0]                               
01a9c464  ldr       x2, [x27]                                      
01a9c468  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c46c  cbz       x0, #0x1a9d1d8                                 
01a9c470  ldr       x0, [x0, #0x38]                                
01a9c474  cbz       x0, #0x1a9d1d8                                 
01a9c478  ldr       w1, [x20, #0x18]                               
01a9c47c  ldr       x2, [x28]                                      
01a9c480  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c484  cbz       x0, #0x1a9d1d8                                 
01a9c488  ldr       x0, [x0, #0x20]                                
01a9c48c  cbz       x0, #0x1a9d1d8                                 
01a9c490  ldr       w1, [x19, #0xe4]                               
01a9c494  ldr       x2, [x25]                                      
01a9c498  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c49c  cbz       x0, #0x1a9d1d8                                 
01a9c4a0  ldr       w8, [x0, #0x18]                                
01a9c4a4  cmn       w8, #1                                         
01a9c4a8  b.eq      #0x1a9c73c                                     
01a9c4ac  ldr       x8, [x19, #0x118]                              
01a9c4b0  cbz       x8, #0x1a9d1d8                                 
01a9c4b4  ldrsw     x9, [x19, #0x13c]                              
01a9c4b8  ldr       w10, [x8, #0x18]                               
01a9c4bc  cmp       w9, w10                                        
01a9c4c0  b.hs      #0x1a9d1dc                                     
01a9c4c4  add       x8, x8, x9, lsl #3                             
01a9c4c8  ldr       x0, [x8, #0x20]                                
01a9c4cc  cbz       x0, #0x1a9d1d8                                 
01a9c4d0  ldr       w1, [x19, #0xe0]                               
01a9c4d4  ldr       x2, [x27]                                      
01a9c4d8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c4dc  cbz       x0, #0x1a9d1d8                                 
01a9c4e0  ldr       x0, [x0, #0x38]                                
01a9c4e4  cbz       x0, #0x1a9d1d8                                 
01a9c4e8  ldr       w1, [x20, #0x18]                               
01a9c4ec  ldr       x2, [x28]                                      
01a9c4f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c4f4  cbz       x0, #0x1a9d1d8                                 
01a9c4f8  ldr       x0, [x0, #0x20]                                
01a9c4fc  cbz       x0, #0x1a9d1d8                                 
01a9c500  ldr       w1, [x19, #0xe4]                               
01a9c504  ldr       x2, [x25]                                      
01a9c508  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c50c  cbz       x0, #0x1a9d1d8                                 
01a9c510  ldr       w8, [x0, #0x18]                                
01a9c514  cmn       w8, #3                                         
01a9c518  b.eq      #0x1a9c660                                     
01a9c51c  ldr       x8, [x24]                                      
01a9c520  ldr       x8, [x8, #0xb8]                                
01a9c524  ldr       x0, [x8]                                       
01a9c528  cbz       x0, #0x1a9d1d8                                 
01a9c52c  mov       w1, wzr                                        
01a9c530  mov       x2, xzr                                        
01a9c534  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9c538  fcmp      s0, #0.0                                       
01a9c53c  b.ls      #0x1a9c660                                     
01a9c540  ldr       x8, [x24]                                      
01a9c544  ldr       x8, [x8, #0xb8]                                
01a9c548  ldr       x0, [x8]                                       
01a9c54c  cbz       x0, #0x1a9d1d8                                 
01a9c550  mov       w1, #1                                         
01a9c554  mov       x2, xzr                                        
01a9c558  bl        #0x1af7748                                     // DataMgr$$GetUserData
01a9c55c  fcmp      s0, #0.0                                       
01a9c560  b.ls      #0x1a9c660                                     
01a9c564  ldr       x8, [x19, #0x118]                              
01a9c568  cbz       x8, #0x1a9d1d8                                 
01a9c56c  ldrsw     x9, [x19, #0x13c]                              
01a9c570  ldr       w10, [x8, #0x18]                               
01a9c574  cmp       w9, w10                                        
01a9c578  b.hs      #0x1a9d1dc                                     
01a9c57c  add       x8, x8, x9, lsl #3                             
01a9c580  ldr       x0, [x8, #0x20]                                
01a9c584  cbz       x0, #0x1a9d1d8                                 
01a9c588  ldr       w1, [x19, #0xe0]                               
01a9c58c  ldr       x2, [x27]                                      
01a9c590  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c594  cbz       x0, #0x1a9d1d8                                 
01a9c598  ldr       x0, [x0, #0x38]                                
01a9c59c  cbz       x0, #0x1a9d1d8                                 
01a9c5a0  ldr       w1, [x20, #0x18]                               
01a9c5a4  ldr       x2, [x28]                                      
01a9c5a8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c5ac  cbz       x0, #0x1a9d1d8                                 
01a9c5b0  ldr       x0, [x0, #0x20]                                
01a9c5b4  cbz       x0, #0x1a9d1d8                                 
01a9c5b8  ldr       w1, [x19, #0xe4]                               
01a9c5bc  ldr       x2, [x25]                                      
01a9c5c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c5c4  cbz       x0, #0x1a9d1d8                                 
01a9c5c8  ldr       w8, [x0, #0x18]                                
01a9c5cc  cmn       w8, #2                                         
01a9c5d0  b.ne      #0x1a9cb38                                     
01a9c5d4  ldr       x0, [x19, #0xb8]                               
01a9c5d8  cbz       x0, #0x1a9d1d8                                 
01a9c5dc  adrp      x8, #0x3a8c000                                 
01a9c5e0  mov       w1, wzr                                        
01a9c5e4  ldr       x8, [x8, #0x610]                               
01a9c5e8  ldr       x2, [x8]                                       
01a9c5ec  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c5f0  adrp      x8, #0x3a7c000                                 
01a9c5f4  mov       x21, x0                                        
01a9c5f8  ldr       x8, [x8, #0xc78]                               
01a9c5fc  ldr       x8, [x8]                                       
01a9c600  mov       x0, x8                                         
01a9c604  bl        #0x183ddcc                                     
01a9c608  adrp      x8, #0x3a8c000                                 
01a9c60c  mov       x1, x20                                        
01a9c610  mov       x3, xzr                                        
01a9c614  ldr       x8, [x8, #0xa08]                               
01a9c618  mov       x22, x0                                        
01a9c61c  ldr       x2, [x8]                                       
01a9c620  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9c624  adrp      x20, #0x3a7c000                                
01a9c628  ldr       x20, [x20, #0xde8]                             
01a9c62c  ldr       x0, [x20]                                      
01a9c630  ldr       w8, [x0, #0xe4]                                
01a9c634  cbnz      w8, #0x1a9c640                                 
01a9c638  bl        #0x183dcb0                                     
01a9c63c  ldr       x0, [x20]                                      
01a9c640  ldr       x8, [x24]                                      
01a9c644  ldr       x8, [x8, #0xb8]                                
01a9c648  ldr       x9, [x8]                                       
01a9c64c  cbz       x9, #0x1a9d1d8                                 
01a9c650  ldr       x8, [x0, #0xb8]                                
01a9c654  ldr       x8, [x8, #0xa8]                                
01a9c658  cbnz      x8, #0x1a9cad4                                 
01a9c65c  b         #0x1a9d1d8                                     
01a9c660  adrp      x8, #0x3a7c000                                 
01a9c664  ldr       x8, [x8, #0xca8]                               
01a9c668  ldr       x8, [x8]                                       
01a9c66c  ldr       x8, [x8, #0xb8]                                
01a9c670  ldr       x21, [x8]                                      
01a9c674  cbz       x21, #0x1a9d1d8                                
01a9c678  ldrb      w8, [x21, #0x20]                               
01a9c67c  cbz       w8, #0x1a9c6bc                                 
01a9c680  adrp      x8, #0x3a7c000                                 
01a9c684  mov       w1, #1                                         
01a9c688  ldr       x8, [x8, #0x80]                                
01a9c68c  ldr       x0, [x8]                                       
01a9c690  bl        #0x183dc20                                     
01a9c694  cbz       x0, #0x1a9d1d8                                 
01a9c698  ldr       w8, [x0, #0x18]                                
01a9c69c  mov       x2, x0                                         
01a9c6a0  cbz       w8, #0x1a9d1dc                                 
01a9c6a4  mov       w8, #1                                         
01a9c6a8  mov       x0, x21                                        
01a9c6ac  mov       w1, #0x11                                      
01a9c6b0  mov       x3, xzr                                        
01a9c6b4  str       w8, [x2, #0x20]                                
01a9c6b8  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01a9c6bc  adrp      x8, #0x3a7e000                                 
01a9c6c0  ldr       x8, [x8, #0x158]                               
01a9c6c4  strb      wzr, [x19, #0x115]                             
01a9c6c8  ldr       x8, [x8]                                       
01a9c6cc  ldr       x8, [x8, #0xb8]                                
01a9c6d0  ldr       x0, [x8]                                       
01a9c6d4  cbz       x0, #0x1a9d1d8                                 
01a9c6d8  mov       x1, xzr                                        
01a9c6dc  bl        #0x198ff3c                                     // InventoryCtrl$$Hide
01a9c6e0  ldr       x8, [x24]                                      
01a9c6e4  ldr       x8, [x8, #0xb8]                                
01a9c6e8  ldr       x8, [x8]                                       
01a9c6ec  cbz       x8, #0x1a9d1d8                                 
01a9c6f0  ldr       w9, [x8, #0x10c]                               
01a9c6f4  ldr       w10, [x8, #0x70]                               
01a9c6f8  cmp       w9, w10                                        
01a9c6fc  b.ge      #0x1a9c7c8                                     
01a9c700  ldr       x0, [x8, #0x2b8]                               
01a9c704  ldr       w1, [x8, #0x2c0]                               
01a9c708  mov       x2, xzr                                        
01a9c70c  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a9c710  ldr       x8, [x24]                                      
01a9c714  ldr       x8, [x8, #0xb8]                                
01a9c718  ldr       x8, [x8]                                       
01a9c71c  tbz       w0, #0, #0x1a9c924                             
01a9c720  cbz       x8, #0x1a9d1d8                                 
01a9c724  ldr       w8, [x8, #0x10c]                               
01a9c728  cbz       w8, #0x1a9c938                                 
01a9c72c  ldr       w9, [x19, #0x110]                              
01a9c730  add       w8, w8, w9                                     
01a9c734  sub       w21, w8, #1                                    
01a9c738  b         #0x1a9c93c                                     
01a9c73c  ldr       x0, [x19, #0xb8]                               
01a9c740  cbz       x0, #0x1a9d1d8                                 
01a9c744  adrp      x8, #0x3a8c000                                 
01a9c748  mov       w1, wzr                                        
01a9c74c  ldr       x8, [x8, #0x610]                               
01a9c750  ldr       x2, [x8]                                       
01a9c754  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c758  adrp      x8, #0x3a7c000                                 
01a9c75c  mov       x21, x0                                        
01a9c760  ldr       x8, [x8, #0xc78]                               
01a9c764  ldr       x8, [x8]                                       
01a9c768  mov       x0, x8                                         
01a9c76c  bl        #0x183ddcc                                     
01a9c770  adrp      x8, #0x3a8c000                                 
01a9c774  mov       x1, x20                                        
01a9c778  mov       x3, xzr                                        
01a9c77c  ldr       x8, [x8, #0x9f8]                               
01a9c780  mov       x22, x0                                        
01a9c784  ldr       x2, [x8]                                       
01a9c788  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9c78c  adrp      x20, #0x3a7c000                                
01a9c790  ldr       x20, [x20, #0xde8]                             
01a9c794  ldr       x0, [x20]                                      
01a9c798  ldr       w8, [x0, #0xe4]                                
01a9c79c  cbnz      w8, #0x1a9c7a8                                 
01a9c7a0  bl        #0x183dcb0                                     
01a9c7a4  ldr       x0, [x20]                                      
01a9c7a8  ldr       x8, [x24]                                      
01a9c7ac  ldr       x8, [x8, #0xb8]                                
01a9c7b0  ldr       x9, [x8]                                       
01a9c7b4  cbz       x9, #0x1a9d1d8                                 
01a9c7b8  ldr       x8, [x0, #0xb8]                                
01a9c7bc  ldr       x8, [x8, #0xb8]                                
01a9c7c0  cbnz      x8, #0x1a9cad4                                 
01a9c7c4  b         #0x1a9d1d8                                     
01a9c7c8  ldr       x0, [x19, #0xb8]                               
01a9c7cc  cbz       x0, #0x1a9d1d8                                 
01a9c7d0  adrp      x8, #0x3a8c000                                 
01a9c7d4  mov       w1, wzr                                        
01a9c7d8  ldr       x8, [x8, #0x610]                               
01a9c7dc  ldr       x2, [x8]                                       
01a9c7e0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c7e4  adrp      x8, #0x3a7c000                                 
01a9c7e8  mov       x21, x0                                        
01a9c7ec  ldr       x8, [x8, #0xc78]                               
01a9c7f0  ldr       x8, [x8]                                       
01a9c7f4  mov       x0, x8                                         
01a9c7f8  bl        #0x183ddcc                                     
01a9c7fc  adrp      x8, #0x3a8c000                                 
01a9c800  mov       x1, x20                                        
01a9c804  mov       x3, xzr                                        
01a9c808  ldr       x8, [x8, #0xa00]                               
01a9c80c  mov       x22, x0                                        
01a9c810  ldr       x2, [x8]                                       
01a9c814  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9c818  adrp      x20, #0x3a7c000                                
01a9c81c  ldr       x20, [x20, #0xde8]                             
01a9c820  ldr       x0, [x20]                                      
01a9c824  ldr       w8, [x0, #0xe4]                                
01a9c828  cbnz      w8, #0x1a9c834                                 
01a9c82c  bl        #0x183dcb0                                     
01a9c830  ldr       x0, [x20]                                      
01a9c834  ldr       x8, [x24]                                      
01a9c838  b         #0x1a9cabc                                     
01a9c83c  adrp      x8, #0x3a7b000                                 
01a9c840  mov       w1, #5                                         
01a9c844  ldr       x8, [x8, #0x7c8]                               
01a9c848  ldr       x0, [x8]                                       
01a9c84c  bl        #0x183dc20                                     
01a9c850  cbz       x0, #0x1a9d1d8                                 
01a9c854  ldr       w8, [x0, #0x18]                                
01a9c858  mov       x23, x0                                        
01a9c85c  cbz       w8, #0x1a9d1dc                                 
01a9c860  cmp       w8, #1                                         
01a9c864  str       x24, [x23, #0x20]                              
01a9c868  b.eq      #0x1a9d1dc                                     
01a9c86c  str       x22, [x23, #0x28]                              
01a9c870  adrp      x24, #0x3a7c000                                
01a9c874  cmp       w8, #2                                         
01a9c878  ldr       x24, [x24, #0xc08]                             
01a9c87c  b.ls      #0x1a9d1dc                                     
01a9c880  ldr       x9, [x19, #0xf0]                               
01a9c884  cmp       w8, #3                                         
01a9c888  str       x9, [x23, #0x30]                               
01a9c88c  b.eq      #0x1a9d1dc                                     
01a9c890  adrp      x8, #0x3a7c000                                 
01a9c894  ldr       x8, [x8, #0xee8]                               
01a9c898  ldr       x8, [x8]                                       
01a9c89c  str       x8, [x23, #0x38]                               
01a9c8a0  ldr       x8, [x19, #0x118]                              
01a9c8a4  cbz       x8, #0x1a9d1d8                                 
01a9c8a8  ldrsw     x9, [x19, #0x13c]                              
01a9c8ac  ldr       w10, [x8, #0x18]                               
01a9c8b0  cmp       w9, w10                                        
01a9c8b4  b.hs      #0x1a9d1dc                                     
01a9c8b8  add       x8, x8, x9, lsl #3                             
01a9c8bc  ldr       x0, [x8, #0x20]                                
01a9c8c0  cbz       x0, #0x1a9d1d8                                 
01a9c8c4  ldr       w1, [x19, #0xe0]                               
01a9c8c8  ldr       x2, [x27]                                      
01a9c8cc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c8d0  cbz       x0, #0x1a9d1d8                                 
01a9c8d4  ldr       x0, [x0, #0x38]                                
01a9c8d8  cbz       x0, #0x1a9d1d8                                 
01a9c8dc  ldr       w1, [x20, #0x18]                               
01a9c8e0  ldr       x2, [x28]                                      
01a9c8e4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c8e8  cbz       x0, #0x1a9d1d8                                 
01a9c8ec  ldr       x0, [x0, #0x20]                                
01a9c8f0  cbz       x0, #0x1a9d1d8                                 
01a9c8f4  ldr       w1, [x19, #0xe4]                               
01a9c8f8  ldr       x2, [x25]                                      
01a9c8fc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c900  cbz       x0, #0x1a9d1d8                                 
01a9c904  ldr       x8, [x24]                                      
01a9c908  ldr       x8, [x8, #0xb8]                                
01a9c90c  ldr       x8, [x8]                                       
01a9c910  cbz       x8, #0x1a9d1d8                                 
01a9c914  ldr       x0, [x0, #0x20]                                
01a9c918  ldr       x2, [x8, #0x40]                                
01a9c91c  ldr       x1, [x29]                                      
01a9c920  b         #0x1a9c16c                                     
01a9c924  cbz       x8, #0x1a9d1d8                                 
01a9c928  ldr       w9, [x19, #0x110]                              
01a9c92c  ldr       w8, [x8, #0x10c]                               
01a9c930  add       w21, w8, w9                                    
01a9c934  b         #0x1a9c93c                                     
01a9c938  mov       w21, wzr                                       
01a9c93c  ldr       x0, [x19, #0xb8]                               
01a9c940  cbz       x0, #0x1a9d1d8                                 
01a9c944  adrp      x26, #0x3a8c000                                
01a9c948  mov       w1, wzr                                        
01a9c94c  ldr       x26, [x26, #0x610]                             
01a9c950  ldr       x2, [x26]                                      
01a9c954  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9c958  adrp      x25, #0x3a7c000                                
01a9c95c  mov       x22, x0                                        
01a9c960  ldr       x25, [x25, #0xc78]                             
01a9c964  ldr       x8, [x25]                                      
01a9c968  mov       x0, x8                                         
01a9c96c  bl        #0x183ddcc                                     
01a9c970  adrp      x8, #0x3a8c000                                 
01a9c974  mov       x1, x20                                        
01a9c978  mov       x3, xzr                                        
01a9c97c  ldr       x8, [x8, #0xa10]                               
01a9c980  mov       x23, x0                                        
01a9c984  ldr       x2, [x8]                                       
01a9c988  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9c98c  adrp      x24, #0x3a7c000                                
01a9c990  ldr       x24, [x24, #0xde8]                             
01a9c994  ldr       x0, [x24]                                      
01a9c998  ldr       w8, [x0, #0xe4]                                
01a9c99c  cbnz      w8, #0x1a9c9a8                                 
01a9c9a0  bl        #0x183dcb0                                     
01a9c9a4  ldr       x0, [x24]                                      
01a9c9a8  adrp      x8, #0x3a7c000                                 
01a9c9ac  ldr       x8, [x8, #0xc08]                               
01a9c9b0  ldr       x8, [x8]                                       
01a9c9b4  ldr       x8, [x8, #0xb8]                                
01a9c9b8  ldr       x8, [x8]                                       
01a9c9bc  cbz       x8, #0x1a9d1d8                                 
01a9c9c0  ldr       x9, [x0, #0xb8]                                
01a9c9c4  ldr       x0, [x9, #0xc0]                                
01a9c9c8  cbz       x0, #0x1a9d1d8                                 
01a9c9cc  ldrsw     x2, [x8, #0x5cc]                               
01a9c9d0  ldrsw     x1, [x8, #0x10c]                               
01a9c9d4  bl        #0x1661844                                     
01a9c9d8  ldr       x7, [x29]                                      
01a9c9dc  mov       x4, x0                                         
01a9c9e0  mov       x0, x19                                        
01a9c9e4  mov       x1, x22                                        
01a9c9e8  mov       w2, #1                                         
01a9c9ec  mov       x3, x23                                        
01a9c9f0  mov       x5, xzr                                        
01a9c9f4  mov       w6, w21                                        
01a9c9f8  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9c9fc  adrp      x8, #0x3a7c000                                 
01a9ca00  ldr       x8, [x8, #0xc08]                               
01a9ca04  ldr       x8, [x8]                                       
01a9ca08  ldr       x8, [x8, #0xb8]                                
01a9ca0c  ldr       x8, [x8]                                       
01a9ca10  cbz       x8, #0x1a9d1d8                                 
01a9ca14  ldr       x0, [x8, #0x2b8]                               
01a9ca18  ldr       w1, [x8, #0x2c0]                               
01a9ca1c  mov       x2, xzr                                        
01a9ca20  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a9ca24  tbnz      w0, #0, #0x1a9ca5c                             
01a9ca28  adrp      x8, #0x3a7c000                                 
01a9ca2c  ldr       x8, [x8, #0xc08]                               
01a9ca30  ldr       x8, [x8]                                       
01a9ca34  ldr       x8, [x8, #0xb8]                                
01a9ca38  ldr       x8, [x8]                                       
01a9ca3c  cbz       x8, #0x1a9d1d8                                 
01a9ca40  ldr       w9, [x8, #0x10c]                               
01a9ca44  cbnz      w9, #0x1a9ca5c                                 
01a9ca48  ldr       x0, [x8, #0x98]                                
01a9ca4c  ldr       w1, [x8, #0xa0]                                
01a9ca50  mov       x2, xzr                                        
01a9ca54  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a9ca58  tbz       w0, #0, #0x1a9cc1c                             
01a9ca5c  ldr       x0, [x19, #0xb8]                               
01a9ca60  cbz       x0, #0x1a9d1d8                                 
01a9ca64  ldr       x2, [x26]                                      
01a9ca68  mov       w1, #1                                         
01a9ca6c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ca70  ldr       x8, [x25]                                      
01a9ca74  mov       x21, x0                                        
01a9ca78  mov       x0, x8                                         
01a9ca7c  bl        #0x183ddcc                                     
01a9ca80  adrp      x8, #0x3a8c000                                 
01a9ca84  mov       x1, x20                                        
01a9ca88  mov       x3, xzr                                        
01a9ca8c  ldr       x8, [x8, #0xa28]                               
01a9ca90  mov       x22, x0                                        
01a9ca94  ldr       x2, [x8]                                       
01a9ca98  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9ca9c  ldr       x0, [x24]                                      
01a9caa0  ldr       w8, [x0, #0xe4]                                
01a9caa4  cbnz      w8, #0x1a9cab0                                 
01a9caa8  bl        #0x183dcb0                                     
01a9caac  ldr       x0, [x24]                                      
01a9cab0  adrp      x8, #0x3a7c000                                 
01a9cab4  ldr       x8, [x8, #0xc08]                               
01a9cab8  ldr       x8, [x8]                                       
01a9cabc  ldr       x8, [x8, #0xb8]                                
01a9cac0  ldr       x9, [x8]                                       
01a9cac4  cbz       x9, #0x1a9d1d8                                 
01a9cac8  ldr       x8, [x0, #0xb8]                                
01a9cacc  ldr       x8, [x8, #0xc8]                                
01a9cad0  cbz       x8, #0x1a9d1d8                                 
01a9cad4  ldrsw     x9, [x9, #0x5cc]                               
01a9cad8  ldr       w10, [x8, #0x18]                               
01a9cadc  cmp       w9, w10                                        
01a9cae0  b.hs      #0x1a9d1dc                                     
01a9cae4  add       x8, x8, x9, lsl #3                             
01a9cae8  ldr       x7, [x29]                                      
01a9caec  mov       x0, x19                                        
01a9caf0  mov       x1, x21                                        
01a9caf4  mov       w2, #1                                         
01a9caf8  mov       x3, x22                                        
01a9cafc  ldr       x4, [x8, #0x20]                                
01a9cb00  mov       x5, xzr                                        
01a9cb04  mov       w6, wzr                                        
01a9cb08  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9cb0c  mov       x0, x19                                        
01a9cb10  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01a9cb14  ldp       x20, x19, [sp, #0x80]                          
01a9cb18  ldr       d8, [sp, #0x20]                                
01a9cb1c  ldp       x22, x21, [sp, #0x70]                          
01a9cb20  ldp       x24, x23, [sp, #0x60]                          
01a9cb24  ldp       x26, x25, [sp, #0x50]                          
01a9cb28  ldp       x28, x27, [sp, #0x40]                          
01a9cb2c  ldp       x29, x30, [sp, #0x30]                          
01a9cb30  add       sp, sp, #0x90                                  
01a9cb34  ret                                                      
01a9cb38  ldrb      w8, [x19, #0x1e0]                              
01a9cb3c  cbz       w8, #0x1a9cd28                                 
01a9cb40  adrp      x8, #0x3a8c000                                 
01a9cb44  ldr       x8, [x8, #0xa40]                               
01a9cb48  ldr       x0, [x8]                                       
01a9cb4c  bl        #0x183ddcc                                     
01a9cb50  mov       x1, xzr                                        
01a9cb54  mov       x21, x0                                        
01a9cb58  bl        #0x1ab1cfc                                     // EventCtrl.<>c__DisplayClass116_1$$.ctor
01a9cb5c  cbz       x21, #0x1a9d1d8                                
01a9cb60  ldr       x8, [x19, #0x118]                              
01a9cb64  str       x20, [x21, #0x18]                              
01a9cb68  cbz       x8, #0x1a9d1d8                                 
01a9cb6c  ldrsw     x9, [x19, #0x13c]                              
01a9cb70  ldr       w10, [x8, #0x18]                               
01a9cb74  cmp       w9, w10                                        
01a9cb78  b.hs      #0x1a9d1dc                                     
01a9cb7c  add       x8, x8, x9, lsl #3                             
01a9cb80  ldr       x0, [x8, #0x20]                                
01a9cb84  cbz       x0, #0x1a9d1d8                                 
01a9cb88  ldr       w1, [x19, #0xe0]                               
01a9cb8c  ldr       x2, [x27]                                      
01a9cb90  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cb94  cbz       x0, #0x1a9d1d8                                 
01a9cb98  ldr       x8, [x21, #0x18]                               
01a9cb9c  cbz       x8, #0x1a9d1d8                                 
01a9cba0  ldr       x0, [x0, #0x38]                                
01a9cba4  cbz       x0, #0x1a9d1d8                                 
01a9cba8  ldr       w1, [x8, #0x18]                                
01a9cbac  ldr       x2, [x28]                                      
01a9cbb0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cbb4  cbz       x0, #0x1a9d1d8                                 
01a9cbb8  ldr       x0, [x0, #0x20]                                
01a9cbbc  cbz       x0, #0x1a9d1d8                                 
01a9cbc0  ldr       w1, [x19, #0xe4]                               
01a9cbc4  ldr       x2, [x25]                                      
01a9cbc8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cbcc  cbz       x0, #0x1a9d1d8                                 
01a9cbd0  ldr       w1, [x0, #0x38]                                
01a9cbd4  mov       x0, x19                                        
01a9cbd8  bl        #0x1a9e368                                     // EventCtrl$$GetWinRateStrByPercent
01a9cbdc  adrp      x8, #0x3a7d000                                 
01a9cbe0  mov       x20, x21                                       
01a9cbe4  mov       x2, xzr                                        
01a9cbe8  ldr       x8, [x8, #0x130]                               
01a9cbec  str       s0, [x20, #0x10]!                              
01a9cbf0  mov       x0, x20                                        
01a9cbf4  ldr       x1, [x8]                                       
01a9cbf8  bl        #0x2de259c                                     // System.Single$$ToString
01a9cbfc  adrp      x8, #0xa13000                                  
01a9cc00  ldr       s0, [x20]                                      
01a9cc04  ldr       s1, [x8, #0xc8]                                
01a9cc08  fcmp      s0, s1                                         
01a9cc0c  b.pl      #0x1a9cda0                                     
01a9cc10  adrp      x8, #0x3a8c000                                 
01a9cc14  ldr       x8, [x8, #0x710]                               
01a9cc18  b         #0x1a9cdbc                                     
01a9cc1c  ldr       x0, [x19, #0xb8]                               
01a9cc20  cbz       x0, #0x1a9d1d8                                 
01a9cc24  ldr       x2, [x26]                                      
01a9cc28  mov       w1, #1                                         
01a9cc2c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cc30  ldr       x8, [x25]                                      
01a9cc34  mov       x21, x0                                        
01a9cc38  mov       x0, x8                                         
01a9cc3c  bl        #0x183ddcc                                     
01a9cc40  adrp      x8, #0x3a8c000                                 
01a9cc44  mov       x1, x20                                        
01a9cc48  mov       x3, xzr                                        
01a9cc4c  ldr       x8, [x8, #0xa18]                               
01a9cc50  mov       x22, x0                                        
01a9cc54  ldr       x2, [x8]                                       
01a9cc58  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9cc5c  ldr       x0, [x24]                                      
01a9cc60  ldr       w8, [x0, #0xe4]                                
01a9cc64  cbnz      w8, #0x1a9cc70                                 
01a9cc68  bl        #0x183dcb0                                     
01a9cc6c  ldr       x0, [x24]                                      
01a9cc70  adrp      x8, #0x3a7c000                                 
01a9cc74  ldr       x8, [x8, #0xc08]                               
01a9cc78  ldr       x8, [x8]                                       
01a9cc7c  ldr       x8, [x8, #0xb8]                                
01a9cc80  ldr       x8, [x8]                                       
01a9cc84  cbz       x8, #0x1a9d1d8                                 
01a9cc88  ldr       x9, [x0, #0xb8]                                
01a9cc8c  ldr       x0, [x9, #0xc0]                                
01a9cc90  cbz       x0, #0x1a9d1d8                                 
01a9cc94  ldrsw     x2, [x8, #0x5cc]                               
01a9cc98  ldrsw     x1, [x8, #0x10c]                               
01a9cc9c  bl        #0x1661844                                     
01a9cca0  ldr       x7, [x29]                                      
01a9cca4  mov       x4, x0                                         
01a9cca8  mov       x0, x19                                        
01a9ccac  mov       x1, x21                                        
01a9ccb0  mov       w2, #1                                         
01a9ccb4  mov       x3, x22                                        
01a9ccb8  mov       x5, xzr                                        
01a9ccbc  mov       w6, #-1                                        
01a9ccc0  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9ccc4  ldr       x0, [x19, #0xb8]                               
01a9ccc8  cbz       x0, #0x1a9d1d8                                 
01a9cccc  ldr       x2, [x26]                                      
01a9ccd0  mov       w1, #2                                         
01a9ccd4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9ccd8  ldr       x8, [x25]                                      
01a9ccdc  mov       x21, x0                                        
01a9cce0  mov       x0, x8                                         
01a9cce4  bl        #0x183ddcc                                     
01a9cce8  adrp      x8, #0x3a8c000                                 
01a9ccec  mov       x1, x20                                        
01a9ccf0  mov       x3, xzr                                        
01a9ccf4  ldr       x8, [x8, #0xa20]                               
01a9ccf8  mov       x22, x0                                        
01a9ccfc  ldr       x2, [x8]                                       
01a9cd00  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9cd04  adrp      x8, #0x3a7c000                                 
01a9cd08  ldr       x8, [x8, #0xc08]                               
01a9cd0c  ldr       x8, [x8]                                       
01a9cd10  ldr       x8, [x8, #0xb8]                                
01a9cd14  ldr       x9, [x8]                                       
01a9cd18  cbz       x9, #0x1a9d1d8                                 
01a9cd1c  ldr       x8, [x24]                                      
01a9cd20  ldr       x8, [x8, #0xb8]                                
01a9cd24  b         #0x1a9cacc                                     
01a9cd28  ldr       x8, [x19, #0x118]                              
01a9cd2c  cbz       x8, #0x1a9d1d8                                 
01a9cd30  ldrsw     x9, [x19, #0x13c]                              
01a9cd34  ldr       w10, [x8, #0x18]                               
01a9cd38  cmp       w9, w10                                        
01a9cd3c  b.hs      #0x1a9d1dc                                     
01a9cd40  add       x8, x8, x9, lsl #3                             
01a9cd44  ldr       x0, [x8, #0x20]                                
01a9cd48  cbz       x0, #0x1a9d1d8                                 
01a9cd4c  ldr       w1, [x19, #0xe0]                               
01a9cd50  ldr       x2, [x27]                                      
01a9cd54  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cd58  cbz       x0, #0x1a9d1d8                                 
01a9cd5c  ldr       x0, [x0, #0x38]                                
01a9cd60  cbz       x0, #0x1a9d1d8                                 
01a9cd64  ldr       w1, [x20, #0x18]                               
01a9cd68  ldr       x2, [x28]                                      
01a9cd6c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cd70  cbz       x0, #0x1a9d1d8                                 
01a9cd74  ldr       x0, [x0, #0x20]                                
01a9cd78  cbz       x0, #0x1a9d1d8                                 
01a9cd7c  ldr       w1, [x19, #0xe4]                               
01a9cd80  ldr       x2, [x25]                                      
01a9cd84  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cd88  cbz       x0, #0x1a9d1d8                                 
01a9cd8c  ldr       w8, [x0, #0x18]                                
01a9cd90  mov       x0, x19                                        
01a9cd94  str       w8, [x19, #0xe0]                               
01a9cd98  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01a9cd9c  b         #0x1a9cb0c                                     
01a9cda0  adrp      x8, #0xa13000                                  
01a9cda4  mov       x20, x0                                        
01a9cda8  ldr       s1, [x8, #0x1c4]                               
01a9cdac  fcmp      s0, s1                                         
01a9cdb0  b.le      #0x1a9cdc0                                     
01a9cdb4  adrp      x8, #0x3a8c000                                 
01a9cdb8  ldr       x8, [x8, #0x708]                               
01a9cdbc  ldr       x20, [x8]                                      
01a9cdc0  ldr       x0, [x19, #0xb8]                               
01a9cdc4  cbz       x0, #0x1a9d1d8                                 
01a9cdc8  adrp      x27, #0x3a8c000                                
01a9cdcc  mov       w1, wzr                                        
01a9cdd0  ldr       x27, [x27, #0x610]                             
01a9cdd4  ldr       x2, [x27]                                      
01a9cdd8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cddc  adrp      x26, #0x3a7c000                                
01a9cde0  mov       x22, x0                                        
01a9cde4  ldr       x26, [x26, #0xc78]                             
01a9cde8  ldr       x8, [x26]                                      
01a9cdec  mov       x0, x8                                         
01a9cdf0  bl        #0x183ddcc                                     
01a9cdf4  adrp      x8, #0x3a8c000                                 
01a9cdf8  mov       x1, x21                                        
01a9cdfc  mov       x3, xzr                                        
01a9ce00  ldr       x8, [x8, #0xa30]                               
01a9ce04  mov       x23, x0                                        
01a9ce08  ldr       x2, [x8]                                       
01a9ce0c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9ce10  adrp      x29, #0x3a7b000                                
01a9ce14  mov       w1, #6                                         
01a9ce18  ldr       x29, [x29, #0x7c8]                             
01a9ce1c  ldr       x0, [x29]                                      
01a9ce20  bl        #0x183dc20                                     
01a9ce24  adrp      x25, #0x3a7c000                                
01a9ce28  mov       x24, x0                                        
01a9ce2c  ldr       x25, [x25, #0xde8]                             
01a9ce30  ldr       x8, [x25]                                      
01a9ce34  ldr       w9, [x8, #0xe4]                                
01a9ce38  cbnz      w9, #0x1a9ce48                                 
01a9ce3c  mov       x0, x8                                         
01a9ce40  bl        #0x183dcb0                                     
01a9ce44  ldr       x8, [x25]                                      
01a9ce48  adrp      x9, #0x3a7c000                                 
01a9ce4c  ldr       x9, [x9, #0xc08]                               
01a9ce50  ldr       x9, [x9]                                       
01a9ce54  ldr       x9, [x9, #0xb8]                                
01a9ce58  ldr       x10, [x9]                                      
01a9ce5c  cbz       x10, #0x1a9d1d8                                
01a9ce60  ldr       x8, [x8, #0xb8]                                
01a9ce64  ldr       x9, [x8, #0x90]                                
01a9ce68  cbz       x9, #0x1a9d1d8                                 
01a9ce6c  ldrsw     x10, [x10, #0x5cc]                             
01a9ce70  ldr       w8, [x9, #0x18]                                
01a9ce74  cmp       w10, w8                                        
01a9ce78  b.hs      #0x1a9d1dc                                     
01a9ce7c  cbz       x24, #0x1a9d1d8                                
01a9ce80  ldr       w8, [x24, #0x18]                               
01a9ce84  cbz       w8, #0x1a9d1dc                                 
01a9ce88  add       x9, x9, x10, lsl #3                            
01a9ce8c  cmp       w8, #1                                         
01a9ce90  ldr       x9, [x9, #0x20]                                
01a9ce94  str       x9, [x24, #0x20]                               
01a9ce98  b.eq      #0x1a9d1dc                                     
01a9ce9c  adrp      x9, #0x3a8c000                                 
01a9cea0  ldr       x9, [x9, #0x718]                               
01a9cea4  ldr       x9, [x9]                                       
01a9cea8  str       x9, [x24, #0x28]                               
01a9ceac  adrp      x9, #0x3a7c000                                 
01a9ceb0  ldr       x9, [x9, #0xc08]                               
01a9ceb4  ldr       x9, [x9]                                       
01a9ceb8  ldr       x9, [x9, #0xb8]                                
01a9cebc  ldr       x10, [x9]                                      
01a9cec0  cbz       x10, #0x1a9d1d8                                
01a9cec4  ldr       x9, [x25]                                      
01a9cec8  ldr       x9, [x9, #0xb8]                                
01a9cecc  ldr       x9, [x9, #0xe8]                                
01a9ced0  cbz       x9, #0x1a9d1d8                                 
01a9ced4  ldrsw     x10, [x10, #0x5cc]                             
01a9ced8  ldr       w11, [x9, #0x18]                               
01a9cedc  cmp       w10, w11                                       
01a9cee0  b.hs      #0x1a9d1dc                                     
01a9cee4  cmp       w8, #2                                         
01a9cee8  b.ls      #0x1a9d1dc                                     
01a9ceec  add       x9, x9, x10, lsl #3                            
01a9cef0  cmp       w8, #3                                         
01a9cef4  ldr       x9, [x9, #0x20]                                
01a9cef8  str       x9, [x24, #0x30]                               
01a9cefc  b.eq      #0x1a9d1dc                                     
01a9cf00  adrp      x9, #0x3a7c000                                 
01a9cf04  cmp       w8, #4                                         
01a9cf08  ldr       x9, [x9, #0x4e0]                               
01a9cf0c  ldr       x9, [x9]                                       
01a9cf10  str       x9, [x24, #0x38]                               
01a9cf14  b.ls      #0x1a9d1dc                                     
01a9cf18  cmp       w8, #5                                         
01a9cf1c  str       x20, [x24, #0x40]                              
01a9cf20  b.eq      #0x1a9d1dc                                     
01a9cf24  adrp      x28, #0x3a7e000                                
01a9cf28  mov       x0, x24                                        
01a9cf2c  mov       x1, xzr                                        
01a9cf30  ldr       x28, [x28, #0x470]                             
01a9cf34  ldr       x8, [x28]                                      
01a9cf38  str       x8, [x24, #0x48]                               
01a9cf3c  bl        #0x2c6e35c                                     // System.String$$Concat
01a9cf40  adrp      x8, #0x3a7b000                                 
01a9cf44  mov       x4, x0                                         
01a9cf48  mov       x0, x19                                        
01a9cf4c  ldr       x8, [x8, #0xaf0]                               
01a9cf50  mov       x1, x22                                        
01a9cf54  mov       w2, #1                                         
01a9cf58  mov       x3, x23                                        
01a9cf5c  mov       x5, xzr                                        
01a9cf60  mov       w6, wzr                                        
01a9cf64  ldr       x7, [x8]                                       
01a9cf68  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01a9cf6c  adrp      x24, #0x3a7c000                                
01a9cf70  ldr       x24, [x24, #0xc08]                             
01a9cf74  ldr       x8, [x24]                                      
01a9cf78  ldr       x8, [x8, #0xb8]                                
01a9cf7c  ldr       x8, [x8]                                       
01a9cf80  cbz       x8, #0x1a9d1d8                                 
01a9cf84  ldr       x0, [x8, #0x2b8]                               
01a9cf88  ldr       w1, [x8, #0x2c0]                               
01a9cf8c  mov       x2, xzr                                        
01a9cf90  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01a9cf94  mov       w8, w0                                         
01a9cf98  ldr       x0, [x19, #0xb8]                               
01a9cf9c  tbz       w8, #0, #0x1a9d108                             
01a9cfa0  cbz       x0, #0x1a9d1d8                                 
01a9cfa4  ldr       x2, [x27]                                      
01a9cfa8  mov       w1, #1                                         
01a9cfac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9cfb0  ldr       x8, [x26]                                      
01a9cfb4  mov       x22, x0                                        
01a9cfb8  mov       x0, x8                                         
01a9cfbc  bl        #0x183ddcc                                     
01a9cfc0  adrp      x8, #0x3a8c000                                 
01a9cfc4  mov       x1, x21                                        
01a9cfc8  mov       x3, xzr                                        
01a9cfcc  ldr       x8, [x8, #0xa38]                               
01a9cfd0  mov       x23, x0                                        
01a9cfd4  ldr       x2, [x8]                                       
01a9cfd8  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9cfdc  ldr       x0, [x29]                                      
01a9cfe0  mov       w1, #6                                         
01a9cfe4  bl        #0x183dc20                                     
01a9cfe8  ldr       x8, [x25]                                      
01a9cfec  mov       x21, x0                                        
01a9cff0  ldr       w9, [x8, #0xe4]                                
01a9cff4  cbnz      w9, #0x1a9d004                                 
01a9cff8  mov       x0, x8                                         
01a9cffc  bl        #0x183dcb0                                     
01a9d000  ldr       x8, [x25]                                      
01a9d004  ldr       x9, [x24]                                      
01a9d008  ldr       x9, [x9, #0xb8]                                
01a9d00c  ldr       x10, [x9]                                      
01a9d010  cbz       x10, #0x1a9d1d8                                
01a9d014  ldr       x8, [x8, #0xb8]                                
01a9d018  ldr       x9, [x8, #0x98]                                
01a9d01c  cbz       x9, #0x1a9d1d8                                 
01a9d020  ldrsw     x10, [x10, #0x5cc]                             
01a9d024  ldr       w8, [x9, #0x18]                                
01a9d028  cmp       w10, w8                                        
01a9d02c  b.hs      #0x1a9d1dc                                     
01a9d030  cbz       x21, #0x1a9d1d8                                
01a9d034  ldr       w8, [x21, #0x18]                               
01a9d038  cbz       w8, #0x1a9d1dc                                 
01a9d03c  add       x9, x9, x10, lsl #3                            
01a9d040  cmp       w8, #1                                         
01a9d044  ldr       x9, [x9, #0x20]                                
01a9d048  str       x9, [x21, #0x20]                               
01a9d04c  b.eq      #0x1a9d1dc                                     
01a9d050  adrp      x9, #0x3a8c000                                 
01a9d054  ldr       x9, [x9, #0x718]                               
01a9d058  ldr       x9, [x9]                                       
01a9d05c  str       x9, [x21, #0x28]                               
01a9d060  ldr       x9, [x24]                                      
01a9d064  ldr       x9, [x9, #0xb8]                                
01a9d068  ldr       x10, [x9]                                      
01a9d06c  cbz       x10, #0x1a9d1d8                                
01a9d070  ldr       x9, [x25]                                      
01a9d074  ldr       x9, [x9, #0xb8]                                
01a9d078  ldr       x9, [x9, #0xe8]                                
01a9d07c  cbz       x9, #0x1a9d1d8                                 
01a9d080  ldrsw     x10, [x10, #0x5cc]                             
01a9d084  ldr       w11, [x9, #0x18]                               
01a9d088  cmp       w10, w11                                       
01a9d08c  b.hs      #0x1a9d1dc                                     
01a9d090  cmp       w8, #2                                         
01a9d094  b.ls      #0x1a9d1dc                                     
01a9d098  add       x9, x9, x10, lsl #3                            
01a9d09c  cmp       w8, #3                                         
01a9d0a0  ldr       x9, [x9, #0x20]                                
01a9d0a4  str       x9, [x21, #0x30]                               
01a9d0a8  b.eq      #0x1a9d1dc                                     
01a9d0ac  adrp      x9, #0x3a7c000                                 
01a9d0b0  cmp       w8, #4                                         
01a9d0b4  ldr       x9, [x9, #0x4e0]                               
01a9d0b8  ldr       x9, [x9]                                       
01a9d0bc  str       x9, [x21, #0x38]                               
01a9d0c0  b.ls      #0x1a9d1dc                                     
01a9d0c4  cmp       w8, #5                                         
01a9d0c8  str       x20, [x21, #0x40]                              
01a9d0cc  b.eq      #0x1a9d1dc                                     
01a9d0d0  ldr       x8, [x28]                                      
01a9d0d4  mov       x0, x21                                        
01a9d0d8  mov       x1, xzr                                        
01a9d0dc  str       x8, [x21, #0x48]                               
01a9d0e0  bl        #0x2c6e35c                                     // System.String$$Concat
01a9d0e4  adrp      x8, #0x3a7b000                                 
01a9d0e8  mov       x4, x0                                         
01a9d0ec  mov       x0, x19                                        
01a9d0f0  ldr       x8, [x8, #0xaf0]                               
01a9d0f4  mov       x1, x22                                        
01a9d0f8  mov       w2, #1                                         
01a9d0fc  mov       x3, x23                                        
01a9d100  ldr       x7, [x8]                                       
01a9d104  b         #0x1a9cb00                                     
01a9d108  cbz       x0, #0x1a9d1d8                                 
01a9d10c  ldr       x2, [x27]                                      
01a9d110  mov       w1, #1                                         
01a9d114  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01a9d118  ldr       x8, [x26]                                      
01a9d11c  ldr       x22, [x21, #0x18]                              
01a9d120  mov       x20, x0                                        
01a9d124  mov       x0, x8                                         
01a9d128  bl        #0x183ddcc                                     
01a9d12c  adrp      x8, #0x3a8c000                                 
01a9d130  mov       x1, x22                                        
01a9d134  mov       x3, xzr                                        
01a9d138  ldr       x8, [x8, #0x9f0]                               
01a9d13c  mov       x21, x0                                        
01a9d140  ldr       x2, [x8]                                       
01a9d144  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01a9d148  ldr       x0, [x25]                                      
01a9d14c  adrp      x22, #0x3a7b000                                
01a9d150  ldr       w8, [x0, #0xe4]                                
01a9d154  ldr       x22, [x22, #0xaf0]                             
01a9d158  cbnz      w8, #0x1a9d164                                 
01a9d15c  bl        #0x183dcb0                                     
01a9d160  ldr       x0, [x25]                                      
01a9d164  ldr       x8, [x24]                                      
01a9d168  ldr       x8, [x8, #0xb8]                                
01a9d16c  ldr       x9, [x8]                                       
01a9d170  cbz       x9, #0x1a9d1d8                                 
01a9d174  ldr       x10, [x0, #0xb8]                               
01a9d178  ldr       x8, [x10, #0x98]                               
01a9d17c  cbz       x8, #0x1a9d1d8                                 
01a9d180  ldrsw     x9, [x9, #0x5cc]                               
01a9d184  ldr       w11, [x8, #0x18]                               
01a9d188  cmp       w9, w11                                        
01a9d18c  b.hs      #0x1a9d1dc                                     
01a9d190  ldr       x10, [x10, #0xa0]                              
01a9d194  cbz       x10, #0x1a9d1d8                                
01a9d198  ldr       w11, [x10, #0x18]                              
01a9d19c  cmp       w9, w11                                        
01a9d1a0  b.hs      #0x1a9d1dc                                     
01a9d1a4  add       x8, x8, x9, lsl #3                             
01a9d1a8  add       x9, x10, x9, lsl #3                            
01a9d1ac  mov       x2, xzr                                        
01a9d1b0  ldr       x0, [x8, #0x20]                                
01a9d1b4  ldr       x1, [x9, #0x20]                                
01a9d1b8  bl        #0x2c63780                                     // System.String$$Concat
01a9d1bc  ldr       x7, [x22]                                      
01a9d1c0  mov       x4, x0                                         
01a9d1c4  mov       x0, x19                                        
01a9d1c8  mov       x1, x20                                        
01a9d1cc  mov       w2, wzr                                        
01a9d1d0  mov       x3, x21                                        
01a9d1d4  b         #0x1a9cb00                                     
01a9d1d8  bl        #0x183dddc                                     
01a9d1dc  bl        #0x183dde4                                     