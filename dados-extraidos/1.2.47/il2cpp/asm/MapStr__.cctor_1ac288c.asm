void MapStr___cctor (const MethodInfo* method);
// RVA 0x1ac288c to 0x1ac31ac
01ac288c  str       x30, [sp, #-0x20]!                             
01ac2890  stp       x20, x19, [sp, #0x10]                          
01ac2894  adrp      x20, #0x3d14000                                
01ac2898  adrp      x19, #0x3a7b000                                
01ac289c  ldrb      w8, [x20, #0xdca]                              
01ac28a0  ldr       x19, [x19, #0x7c8]                             
01ac28a4  tbnz      w8, #0, #0x1ac2b98                             
01ac28a8  adrp      x0, #0x3a7e000                                 
01ac28ac  ldr       x0, [x0, #0x2b8]                               // MapStr_TypeInfo
01ac28b0  bl        #0x183db90                                     
01ac28b4  adrp      x0, #0x3a7b000                                 
01ac28b8  ldr       x0, [x0, #0x7c8]                               
01ac28bc  bl        #0x183db90                                     
01ac28c0  adrp      x0, #0x3a8e000                                 
01ac28c4  ldr       x0, [x0, #0x10]                                // '신비로운'
01ac28c8  bl        #0x183db90                                     
01ac28cc  adrp      x0, #0x3a8e000                                 
01ac28d0  ldr       x0, [x0, #0x18]                                // '방어력 +15%, 반격 확률 +10%'
01ac28d4  bl        #0x183db90                                     
01ac28d8  adrp      x0, #0x3a8e000                                 
01ac28dc  ldr       x0, [x0, #0x20]                                // '사막'
01ac28e0  bl        #0x183db90                                     
01ac28e4  adrp      x0, #0x3a8e000                                 
01ac28e8  ldr       x0, [x0, #0x28]                                // '적막한'
01ac28ec  bl        #0x183db90                                     
01ac28f0  adrp      x0, #0x3a8e000                                 
01ac28f4  ldr       x0, [x0, #0x30]                                // '공격력 +10%, 속도 +0.2, 가드 확률 -20%'
01ac28f8  bl        #0x183db90                                     
01ac28fc  adrp      x0, #0x3a8e000                                 
01ac2900  ldr       x0, [x0, #0x38]                                // '산'
01ac2904  bl        #0x183db90                                     
01ac2908  adrp      x0, #0x3a8e000                                 
01ac290c  ldr       x0, [x0, #0x40]                                // '단단한'
01ac2910  bl        #0x183db90                                     
01ac2914  adrp      x0, #0x3a8e000                                 
01ac2918  ldr       x0, [x0, #0x48]                                // '조용한'
01ac291c  bl        #0x183db90                                     
01ac2920  adrp      x0, #0x3a8e000                                 
01ac2924  ldr       x0, [x0, #0x50]                                // '어두운'
01ac2928  bl        #0x183db90                                     
01ac292c  adrp      x0, #0x3a8e000                                 
01ac2930  ldr       x0, [x0, #0x58]                                // '간질거리는'
01ac2934  bl        #0x183db90                                     
01ac2938  adrp      x0, #0x3a8e000                                 
01ac293c  ldr       x0, [x0, #0x60]                                // '체력 +20%, 속도 -0.1'
01ac2940  bl        #0x183db90                                     
01ac2944  adrp      x0, #0x3a8e000                                 
01ac2948  ldr       x0, [x0, #0x68]                                // '숲'
01ac294c  bl        #0x183db90                                     
01ac2950  adrp      x0, #0x3a8e000                                 
01ac2954  ldr       x0, [x0, #0x70]                                // '거대한'
01ac2958  bl        #0x183db90                                     
01ac295c  adrp      x0, #0x3a8e000                                 
01ac2960  ldr       x0, [x0, #0x78]                                // '잔인한'
01ac2964  bl        #0x183db90                                     
01ac2968  adrp      x0, #0x3a8e000                                 
01ac296c  ldr       x0, [x0, #0x80]                                // '고원'
01ac2970  bl        #0x183db90                                     
01ac2974  adrp      x0, #0x3a8e000                                 
01ac2978  ldr       x0, [x0, #0x88]                                // '언덕'
01ac297c  bl        #0x183db90                                     
01ac2980  adrp      x0, #0x3a8e000                                 
01ac2984  ldr       x0, [x0, #0x90]                                // '체력 -15%, 속도 +0.1, 치명 확률 +10%'
01ac2988  bl        #0x183db90                                     
01ac298c  adrp      x0, #0x3a8e000                                 
01ac2990  ldr       x0, [x0, #0x98]                                // '오아시스'
01ac2994  bl        #0x183db90                                     
01ac2998  adrp      x0, #0x3a8e000                                 
01ac299c  ldr       x0, [x0, #0xa0]                                // '회피 확률 +5%, 공격력 +5%, 방어력 +10%'
01ac29a0  bl        #0x183db90                                     
01ac29a4  adrp      x0, #0x3a8e000                                 
01ac29a8  ldr       x0, [x0, #0xa8]                                // '설산'
01ac29ac  bl        #0x183db90                                     
01ac29b0  adrp      x0, #0x3a8e000                                 
01ac29b4  ldr       x0, [x0, #0xb0]                                // '폐광'
01ac29b8  bl        #0x183db90                                     
01ac29bc  adrp      x0, #0x3a8e000                                 
01ac29c0  ldr       x0, [x0, #0xb8]                                // '방어력 +5%, 속도 +0.1'
01ac29c4  bl        #0x183db90                                     
01ac29c8  adrp      x0, #0x3a8e000                                 
01ac29cc  ldr       x0, [x0, #0xc0]                                // '지하무덤'
01ac29d0  bl        #0x183db90                                     
01ac29d4  adrp      x0, #0x3a8e000                                 
01ac29d8  ldr       x0, [x0, #0xc8]                                // '협곡'
01ac29dc  bl        #0x183db90                                     
01ac29e0  adrp      x0, #0x3a8e000                                 
01ac29e4  ldr       x0, [x0, #0xd0]                                // '치명 확률 +25%, 치명 피해 -50%'
01ac29e8  bl        #0x183db90                                     
01ac29ec  adrp      x0, #0x3a8e000                                 
01ac29f0  ldr       x0, [x0, #0xd8]                                // '체력 -10%, 치명 피해 +30%'
01ac29f4  bl        #0x183db90                                     
01ac29f8  adrp      x0, #0x3a8e000                                 
01ac29fc  ldr       x0, [x0, #0xe0]                                // '유적지'
01ac2a00  bl        #0x183db90                                     
01ac2a04  adrp      x0, #0x3a8e000                                 
01ac2a08  ldr       x0, [x0, #0xe8]                                // '황홀한'
01ac2a0c  bl        #0x183db90                                     
01ac2a10  adrp      x0, #0x3a8e000                                 
01ac2a14  ldr       x0, [x0, #0xf0]                                // '공격력 +5%, 속도 +0.15'
01ac2a18  bl        #0x183db90                                     
01ac2a1c  adrp      x0, #0x3a8e000                                 
01ac2a20  ldr       x0, [x0, #0xf8]                                // '설원'
01ac2a24  bl        #0x183db90                                     
01ac2a28  adrp      x0, #0x3a8e000                                 
01ac2a2c  ldr       x0, [x0, #0x100]                               // '안개 낀'
01ac2a30  bl        #0x183db90                                     
01ac2a34  adrp      x0, #0x3a8e000                                 
01ac2a38  ldr       x0, [x0, #0x108]                               // '버려진 요새'
01ac2a3c  bl        #0x183db90                                     
01ac2a40  adrp      x0, #0x3a8e000                                 
01ac2a44  ldr       x0, [x0, #0x110]                               // '동굴'
01ac2a48  bl        #0x183db90                                     
01ac2a4c  adrp      x0, #0x3a8e000                                 
01ac2a50  ldr       x0, [x0, #0x118]                               // '독을 품은'
01ac2a54  bl        #0x183db90                                     
01ac2a58  adrp      x0, #0x3a8e000                                 
01ac2a5c  ldr       x0, [x0, #0x120]                               // '비좁은'
01ac2a60  bl        #0x183db90                                     
01ac2a64  adrp      x0, #0x3a8e000                                 
01ac2a68  ldr       x0, [x0, #0x128]                               // '체력 -30%, 공격력 +30%, 치명 확률 +10%'
01ac2a6c  bl        #0x183db90                                     
01ac2a70  adrp      x0, #0x3a8e000                                 
01ac2a74  ldr       x0, [x0, #0x130]                               // '치명 확률 +5%'
01ac2a78  bl        #0x183db90                                     
01ac2a7c  adrp      x0, #0x3a8e000                                 
01ac2a80  ldr       x0, [x0, #0x138]                               // '죽음의'
01ac2a84  bl        #0x183db90                                     
01ac2a88  adrp      x0, #0x3a8e000                                 
01ac2a8c  ldr       x0, [x0, #0x140]                               // '삐걱이는'
01ac2a90  bl        #0x183db90                                     
01ac2a94  adrp      x0, #0x3a8e000                                 
01ac2a98  ldr       x0, [x0, #0x148]                               // '귀신들린'
01ac2a9c  bl        #0x183db90                                     
01ac2aa0  adrp      x0, #0x3a8e000                                 
01ac2aa4  ldr       x0, [x0, #0x150]                               // '황무지'
01ac2aa8  bl        #0x183db90                                     
01ac2aac  adrp      x0, #0x3a8e000                                 
01ac2ab0  ldr       x0, [x0, #0x158]                               // '평원'
01ac2ab4  bl        #0x183db90                                     
01ac2ab8  adrp      x0, #0x3a8e000                                 
01ac2abc  ldr       x0, [x0, #0x160]                               // '회피 확률 +5%'
01ac2ac0  bl        #0x183db90                                     
01ac2ac4  adrp      x0, #0x3a8e000                                 
01ac2ac8  ldr       x0, [x0, #0x168]                               // '회피 확률 +10%'
01ac2acc  bl        #0x183db90                                     
01ac2ad0  adrp      x0, #0x3a8e000                                 
01ac2ad4  ldr       x0, [x0, #0x170]                               // '체력 -5%, 회피 확률 +5%'
01ac2ad8  bl        #0x183db90                                     
01ac2adc  adrp      x0, #0x3a8e000                                 
01ac2ae0  ldr       x0, [x0, #0x178]                               // '뒤얽힌'
01ac2ae4  bl        #0x183db90                                     
01ac2ae8  adrp      x0, #0x3a8e000                                 
01ac2aec  ldr       x0, [x0, #0x180]                               // '치명 피해 +20%, 속도 +0.1'
01ac2af0  bl        #0x183db90                                     
01ac2af4  adrp      x0, #0x3a8e000                                 
01ac2af8  ldr       x0, [x0, #0x188]                               // '회피 확률 +5%, 가드 확률 +10%'
01ac2afc  bl        #0x183db90                                     
01ac2b00  adrp      x0, #0x3a8e000                                 
01ac2b04  ldr       x0, [x0, #0x190]                               // '속삭이는'
01ac2b08  bl        #0x183db90                                     
01ac2b0c  adrp      x0, #0x3a8e000                                 
01ac2b10  ldr       x0, [x0, #0x198]                               // '정글'
01ac2b14  bl        #0x183db90                                     
01ac2b18  adrp      x0, #0x3a8e000                                 
01ac2b1c  ldr       x0, [x0, #0x1a0]                               // '늪'
01ac2b20  bl        #0x183db90                                     
01ac2b24  adrp      x0, #0x3a8e000                                 
01ac2b28  ldr       x0, [x0, #0x1a8]                               // '체력 -25%, 회피 확률 +20%'
01ac2b2c  bl        #0x183db90                                     
01ac2b30  adrp      x0, #0x3a8e000                                 
01ac2b34  ldr       x0, [x0, #0x1b0]                               // '화산'
01ac2b38  bl        #0x183db90                                     
01ac2b3c  adrp      x0, #0x3a8e000                                 
01ac2b40  ldr       x0, [x0, #0x1b8]                               // '울퉁불퉁한'
01ac2b44  bl        #0x183db90                                     
01ac2b48  adrp      x0, #0x3a8e000                                 
01ac2b4c  ldr       x0, [x0, #0x1c0]                               // '체력 +5%, 방어력 +10%'
01ac2b50  bl        #0x183db90                                     
01ac2b54  adrp      x0, #0x3a8e000                                 
01ac2b58  ldr       x0, [x0, #0x1c8]                               // '반격 확률 +10%'
01ac2b5c  bl        #0x183db90                                     
01ac2b60  adrp      x0, #0x3a8e000                                 
01ac2b64  ldr       x0, [x0, #0x1d0]                               // '버려진 성'
01ac2b68  bl        #0x183db90                                     
01ac2b6c  adrp      x0, #0x3a8e000                                 
01ac2b70  ldr       x0, [x0, #0x1d8]                               // '식인'
01ac2b74  bl        #0x183db90                                     
01ac2b78  adrp      x0, #0x3a8e000                                 
01ac2b7c  ldr       x0, [x0, #0x1e0]                               // '방어력 -10%, 속도 +0.1'
01ac2b80  bl        #0x183db90                                     
01ac2b84  adrp      x0, #0x3a8e000                                 
01ac2b88  ldr       x0, [x0, #0x1e8]                               // '신기루'
01ac2b8c  bl        #0x183db90                                     
01ac2b90  mov       w8, #1                                         
01ac2b94  strb      w8, [x20, #0xdca]                              
01ac2b98  ldr       x0, [x19]                                      
01ac2b9c  mov       w1, #0x14                                      
01ac2ba0  bl        #0x183dc20                                     
01ac2ba4  cbz       x0, #0x1ac31a8                                 
01ac2ba8  ldr       w8, [x0, #0x18]                                
01ac2bac  cbz       w8, #0x1ac31a4                                 
01ac2bb0  adrp      x9, #0x3a8e000                                 
01ac2bb4  cmp       w8, #1                                         
01ac2bb8  ldr       x9, [x9, #0x48]                                // '조용한'
01ac2bbc  ldr       x9, [x9]                                       
01ac2bc0  str       x9, [x0, #0x20]                                
01ac2bc4  b.eq      #0x1ac31a4                                     
01ac2bc8  adrp      x9, #0x3a8e000                                 
01ac2bcc  cmp       w8, #2                                         
01ac2bd0  ldr       x9, [x9, #0x100]                               // '안개 낀'
01ac2bd4  ldr       x9, [x9]                                       
01ac2bd8  str       x9, [x0, #0x28]                                
01ac2bdc  b.ls      #0x1ac31a4                                     
01ac2be0  adrp      x9, #0x3a8e000                                 
01ac2be4  cmp       w8, #3                                         
01ac2be8  ldr       x9, [x9, #0x50]                                // '어두운'
01ac2bec  ldr       x9, [x9]                                       
01ac2bf0  str       x9, [x0, #0x30]                                
01ac2bf4  b.eq      #0x1ac31a4                                     
01ac2bf8  adrp      x9, #0x3a8e000                                 
01ac2bfc  cmp       w8, #4                                         
01ac2c00  ldr       x9, [x9, #0x120]                               // '비좁은'
01ac2c04  ldr       x9, [x9]                                       
01ac2c08  str       x9, [x0, #0x38]                                
01ac2c0c  b.ls      #0x1ac31a4                                     
01ac2c10  adrp      x9, #0x3a8e000                                 
01ac2c14  cmp       w8, #5                                         
01ac2c18  ldr       x9, [x9, #0x10]                                // '신비로운'
01ac2c1c  ldr       x9, [x9]                                       
01ac2c20  str       x9, [x0, #0x40]                                
01ac2c24  b.eq      #0x1ac31a4                                     
01ac2c28  adrp      x9, #0x3a8e000                                 
01ac2c2c  cmp       w8, #6                                         
01ac2c30  ldr       x9, [x9, #0x138]                               // '죽음의'
01ac2c34  ldr       x9, [x9]                                       
01ac2c38  str       x9, [x0, #0x48]                                
01ac2c3c  b.ls      #0x1ac31a4                                     
01ac2c40  adrp      x9, #0x3a8e000                                 
01ac2c44  cmp       w8, #7                                         
01ac2c48  ldr       x9, [x9, #0x148]                               // '귀신들린'
01ac2c4c  ldr       x9, [x9]                                       
01ac2c50  str       x9, [x0, #0x50]                                
01ac2c54  b.eq      #0x1ac31a4                                     
01ac2c58  adrp      x9, #0x3a8e000                                 
01ac2c5c  cmp       w8, #8                                         
01ac2c60  ldr       x9, [x9, #0x178]                               // '뒤얽힌'
01ac2c64  ldr       x9, [x9]                                       
01ac2c68  str       x9, [x0, #0x58]                                
01ac2c6c  b.ls      #0x1ac31a4                                     
01ac2c70  adrp      x9, #0x3a8e000                                 
01ac2c74  cmp       w8, #9                                         
01ac2c78  ldr       x9, [x9, #0x70]                                // '거대한'
01ac2c7c  ldr       x9, [x9]                                       
01ac2c80  str       x9, [x0, #0x60]                                
01ac2c84  b.eq      #0x1ac31a4                                     
01ac2c88  adrp      x9, #0x3a8e000                                 
01ac2c8c  cmp       w8, #0xa                                       
01ac2c90  ldr       x9, [x9, #0x1b8]                               // '울퉁불퉁한'
01ac2c94  ldr       x9, [x9]                                       
01ac2c98  str       x9, [x0, #0x68]                                
01ac2c9c  b.ls      #0x1ac31a4                                     
01ac2ca0  adrp      x9, #0x3a8e000                                 
01ac2ca4  cmp       w8, #0xb                                       
01ac2ca8  ldr       x9, [x9, #0x78]                                // '잔인한'
01ac2cac  ldr       x9, [x9]                                       
01ac2cb0  str       x9, [x0, #0x70]                                
01ac2cb4  b.eq      #0x1ac31a4                                     
01ac2cb8  adrp      x9, #0x3a8e000                                 
01ac2cbc  cmp       w8, #0xc                                       
01ac2cc0  ldr       x9, [x9, #0x1d8]                               // '식인'
01ac2cc4  ldr       x9, [x9]                                       
01ac2cc8  str       x9, [x0, #0x78]                                
01ac2ccc  b.ls      #0x1ac31a4                                     
01ac2cd0  adrp      x9, #0x3a8e000                                 
01ac2cd4  cmp       w8, #0xd                                       
01ac2cd8  ldr       x9, [x9, #0xe8]                                // '황홀한'
01ac2cdc  ldr       x9, [x9]                                       
01ac2ce0  str       x9, [x0, #0x80]                                
01ac2ce4  b.eq      #0x1ac31a4                                     
01ac2ce8  adrp      x9, #0x3a8e000                                 
01ac2cec  cmp       w8, #0xe                                       
01ac2cf0  ldr       x9, [x9, #0x140]                               // '삐걱이는'
01ac2cf4  ldr       x9, [x9]                                       
01ac2cf8  str       x9, [x0, #0x88]                                
01ac2cfc  b.ls      #0x1ac31a4                                     
01ac2d00  adrp      x9, #0x3a8e000                                 
01ac2d04  cmp       w8, #0xf                                       
01ac2d08  ldr       x9, [x9, #0x28]                                // '적막한'
01ac2d0c  ldr       x9, [x9]                                       
01ac2d10  str       x9, [x0, #0x90]                                
01ac2d14  b.eq      #0x1ac31a4                                     
01ac2d18  adrp      x9, #0x3a8e000                                 
01ac2d1c  cmp       w8, #0x10                                      
01ac2d20  ldr       x9, [x9, #0x1e8]                               // '신기루'
01ac2d24  ldr       x9, [x9]                                       
01ac2d28  str       x9, [x0, #0x98]                                
01ac2d2c  b.ls      #0x1ac31a4                                     
01ac2d30  adrp      x9, #0x3a8e000                                 
01ac2d34  cmp       w8, #0x11                                      
01ac2d38  ldr       x9, [x9, #0x190]                               // '속삭이는'
01ac2d3c  ldr       x9, [x9]                                       
01ac2d40  str       x9, [x0, #0xa0]                                
01ac2d44  b.eq      #0x1ac31a4                                     
01ac2d48  adrp      x9, #0x3a8e000                                 
01ac2d4c  cmp       w8, #0x12                                      
01ac2d50  ldr       x9, [x9, #0x118]                               // '독을 품은'
01ac2d54  ldr       x9, [x9]                                       
01ac2d58  str       x9, [x0, #0xa8]                                
01ac2d5c  b.ls      #0x1ac31a4                                     
01ac2d60  adrp      x9, #0x3a8e000                                 
01ac2d64  cmp       w8, #0x13                                      
01ac2d68  ldr       x9, [x9, #0x40]                                // '단단한'
01ac2d6c  ldr       x9, [x9]                                       
01ac2d70  str       x9, [x0, #0xb0]                                
01ac2d74  b.eq      #0x1ac31a4                                     
01ac2d78  adrp      x8, #0x3a8e000                                 
01ac2d7c  adrp      x20, #0x3a7e000                                
01ac2d80  mov       w1, #0x14                                      
01ac2d84  ldr       x8, [x8, #0x58]                                // '간질거리는'
01ac2d88  ldr       x8, [x8]                                       
01ac2d8c  ldr       x20, [x20, #0x2b8]                             // MapStr_TypeInfo
01ac2d90  str       x8, [x0, #0xb8]                                
01ac2d94  ldr       x8, [x20]                                      
01ac2d98  ldr       x8, [x8, #0xb8]                                
01ac2d9c  str       x0, [x8]                                       
01ac2da0  ldr       x0, [x19]                                      
01ac2da4  bl        #0x183dc20                                     
01ac2da8  cbz       x0, #0x1ac31a8                                 
01ac2dac  ldr       w8, [x0, #0x18]                                
01ac2db0  cbz       w8, #0x1ac31a4                                 
01ac2db4  adrp      x9, #0x3a8e000                                 
01ac2db8  cmp       w8, #1                                         
01ac2dbc  ldr       x9, [x9, #0xb8]                                // '방어력 +5%, 속도 +0.1'
01ac2dc0  ldr       x9, [x9]                                       
01ac2dc4  str       x9, [x0, #0x20]                                
01ac2dc8  b.eq      #0x1ac31a4                                     
01ac2dcc  adrp      x9, #0x3a8e000                                 
01ac2dd0  cmp       w8, #2                                         
01ac2dd4  ldr       x9, [x9, #0x160]                               // '회피 확률 +5%'
01ac2dd8  ldr       x9, [x9]                                       
01ac2ddc  str       x9, [x0, #0x28]                                
01ac2de0  b.ls      #0x1ac31a4                                     
01ac2de4  adrp      x9, #0x3a8e000                                 
01ac2de8  cmp       w8, #3                                         
01ac2dec  ldr       x9, [x9, #0x130]                               // '치명 확률 +5%'
01ac2df0  ldr       x9, [x9]                                       
01ac2df4  str       x9, [x0, #0x30]                                
01ac2df8  b.eq      #0x1ac31a4                                     
01ac2dfc  adrp      x9, #0x3a8e000                                 
01ac2e00  cmp       w8, #4                                         
01ac2e04  ldr       x9, [x9, #0x1e0]                               // '방어력 -10%, 속도 +0.1'
01ac2e08  ldr       x9, [x9]                                       
01ac2e0c  str       x9, [x0, #0x38]                                
01ac2e10  b.ls      #0x1ac31a4                                     
01ac2e14  adrp      x9, #0x3a8e000                                 
01ac2e18  cmp       w8, #5                                         
01ac2e1c  ldr       x9, [x9, #0xa0]                                // '회피 확률 +5%, 공격력 +5%, 방어력 +10%'
01ac2e20  ldr       x9, [x9]                                       
01ac2e24  str       x9, [x0, #0x40]                                
01ac2e28  b.eq      #0x1ac31a4                                     
01ac2e2c  adrp      x9, #0x3a8e000                                 
01ac2e30  cmp       w8, #6                                         
01ac2e34  ldr       x9, [x9, #0x128]                               // '체력 -30%, 공격력 +30%, 치명 확률 +10%'
01ac2e38  ldr       x9, [x9]                                       
01ac2e3c  str       x9, [x0, #0x48]                                
01ac2e40  b.ls      #0x1ac31a4                                     
01ac2e44  adrp      x9, #0x3a8e000                                 
01ac2e48  cmp       w8, #7                                         
01ac2e4c  ldr       x9, [x9, #0x180]                               // '치명 피해 +20%, 속도 +0.1'
01ac2e50  ldr       x9, [x9]                                       
01ac2e54  str       x9, [x0, #0x50]                                
01ac2e58  b.eq      #0x1ac31a4                                     
01ac2e5c  adrp      x9, #0x3a8e000                                 
01ac2e60  cmp       w8, #8                                         
01ac2e64  ldr       x9, [x9, #0x1c8]                               // '반격 확률 +10%'
01ac2e68  ldr       x9, [x9]                                       
01ac2e6c  str       x9, [x0, #0x58]                                
01ac2e70  b.ls      #0x1ac31a4                                     
01ac2e74  adrp      x9, #0x3a8e000                                 
01ac2e78  cmp       w8, #9                                         
01ac2e7c  ldr       x9, [x9, #0x60]                                // '체력 +20%, 속도 -0.1'
01ac2e80  ldr       x9, [x9]                                       
01ac2e84  str       x9, [x0, #0x60]                                
01ac2e88  b.eq      #0x1ac31a4                                     
01ac2e8c  adrp      x9, #0x3a8e000                                 
01ac2e90  cmp       w8, #0xa                                       
01ac2e94  ldr       x9, [x9, #0x18]                                // '방어력 +15%, 반격 확률 +10%'
01ac2e98  ldr       x9, [x9]                                       
01ac2e9c  str       x9, [x0, #0x68]                                
01ac2ea0  b.ls      #0x1ac31a4                                     
01ac2ea4  adrp      x9, #0x3a8e000                                 
01ac2ea8  cmp       w8, #0xb                                       
01ac2eac  ldr       x9, [x9, #0xf0]                                // '공격력 +5%, 속도 +0.15'
01ac2eb0  ldr       x9, [x9]                                       
01ac2eb4  str       x9, [x0, #0x70]                                
01ac2eb8  b.eq      #0x1ac31a4                                     
01ac2ebc  adrp      x9, #0x3a8e000                                 
01ac2ec0  cmp       w8, #0xc                                       
01ac2ec4  ldr       x9, [x9, #0x30]                                // '공격력 +10%, 속도 +0.2, 가드 확률 -20%'
01ac2ec8  ldr       x9, [x9]                                       
01ac2ecc  str       x9, [x0, #0x78]                                
01ac2ed0  b.ls      #0x1ac31a4                                     
01ac2ed4  adrp      x9, #0x3a8e000                                 
01ac2ed8  cmp       w8, #0xd                                       
01ac2edc  ldr       x9, [x9, #0x188]                               // '회피 확률 +5%, 가드 확률 +10%'
01ac2ee0  ldr       x9, [x9]                                       
01ac2ee4  str       x9, [x0, #0x80]                                
01ac2ee8  b.eq      #0x1ac31a4                                     
01ac2eec  adrp      x9, #0x3a8e000                                 
01ac2ef0  cmp       w8, #0xe                                       
01ac2ef4  ldr       x9, [x9, #0xd8]                                // '체력 -10%, 치명 피해 +30%'
01ac2ef8  ldr       x9, [x9]                                       
01ac2efc  str       x9, [x0, #0x88]                                
01ac2f00  b.ls      #0x1ac31a4                                     
01ac2f04  adrp      x9, #0x3a8e000                                 
01ac2f08  cmp       w8, #0xf                                       
01ac2f0c  ldr       x9, [x9, #0xd0]                                // '치명 확률 +25%, 치명 피해 -50%'
01ac2f10  ldr       x9, [x9]                                       
01ac2f14  str       x9, [x0, #0x90]                                
01ac2f18  b.eq      #0x1ac31a4                                     
01ac2f1c  adrp      x9, #0x3a8e000                                 
01ac2f20  cmp       w8, #0x10                                      
01ac2f24  ldr       x9, [x9, #0x1a8]                               // '체력 -25%, 회피 확률 +20%'
01ac2f28  ldr       x9, [x9]                                       
01ac2f2c  str       x9, [x0, #0x98]                                
01ac2f30  b.ls      #0x1ac31a4                                     
01ac2f34  adrp      x9, #0x3a8e000                                 
01ac2f38  cmp       w8, #0x11                                      
01ac2f3c  ldr       x9, [x9, #0x170]                               // '체력 -5%, 회피 확률 +5%'
01ac2f40  ldr       x9, [x9]                                       
01ac2f44  str       x9, [x0, #0xa0]                                
01ac2f48  b.eq      #0x1ac31a4                                     
01ac2f4c  adrp      x9, #0x3a8e000                                 
01ac2f50  cmp       w8, #0x12                                      
01ac2f54  ldr       x9, [x9, #0x90]                                // '체력 -15%, 속도 +0.1, 치명 확률 +10%'
01ac2f58  ldr       x9, [x9]                                       
01ac2f5c  str       x9, [x0, #0xa8]                                
01ac2f60  b.ls      #0x1ac31a4                                     
01ac2f64  adrp      x9, #0x3a8e000                                 
01ac2f68  cmp       w8, #0x13                                      
01ac2f6c  ldr       x9, [x9, #0x1c0]                               // '체력 +5%, 방어력 +10%'
01ac2f70  ldr       x9, [x9]                                       
01ac2f74  str       x9, [x0, #0xb0]                                
01ac2f78  b.eq      #0x1ac31a4                                     
01ac2f7c  adrp      x8, #0x3a8e000                                 
01ac2f80  mov       w1, #0x14                                      
01ac2f84  ldr       x8, [x8, #0x168]                               // '회피 확률 +10%'
01ac2f88  ldr       x8, [x8]                                       
01ac2f8c  str       x8, [x0, #0xb8]                                
01ac2f90  ldr       x8, [x20]                                      
01ac2f94  ldr       x9, [x8, #0xb8]                                
01ac2f98  ldr       x8, [x19]                                      
01ac2f9c  str       x0, [x9, #8]                                   
01ac2fa0  mov       x0, x8                                         
01ac2fa4  bl        #0x183dc20                                     
01ac2fa8  cbz       x0, #0x1ac31a8                                 
01ac2fac  ldr       w8, [x0, #0x18]                                
01ac2fb0  cbz       w8, #0x1ac31a4                                 
01ac2fb4  adrp      x9, #0x3a8e000                                 
01ac2fb8  cmp       w8, #1                                         
01ac2fbc  ldr       x9, [x9, #0x68]                                // '숲'
01ac2fc0  ldr       x9, [x9]                                       
01ac2fc4  str       x9, [x0, #0x20]                                
01ac2fc8  b.eq      #0x1ac31a4                                     
01ac2fcc  adrp      x9, #0x3a8e000                                 
01ac2fd0  cmp       w8, #2                                         
01ac2fd4  ldr       x9, [x9, #0xb0]                                // '폐광'
01ac2fd8  ldr       x9, [x9]                                       
01ac2fdc  str       x9, [x0, #0x28]                                
01ac2fe0  b.ls      #0x1ac31a4                                     
01ac2fe4  adrp      x9, #0x3a8e000                                 
01ac2fe8  cmp       w8, #3                                         
01ac2fec  ldr       x9, [x9, #0x110]                               // '동굴'
01ac2ff0  ldr       x9, [x9]                                       
01ac2ff4  str       x9, [x0, #0x30]                                
01ac2ff8  b.eq      #0x1ac31a4                                     
01ac2ffc  adrp      x9, #0x3a8e000                                 
01ac3000  cmp       w8, #4                                         
01ac3004  ldr       x9, [x9, #0xc0]                                // '지하무덤'
01ac3008  ldr       x9, [x9]                                       
01ac300c  str       x9, [x0, #0x38]                                
01ac3010  b.ls      #0x1ac31a4                                     
01ac3014  adrp      x9, #0x3a8e000                                 
01ac3018  cmp       w8, #5                                         
01ac301c  ldr       x9, [x9, #0xc8]                                // '협곡'
01ac3020  ldr       x9, [x9]                                       
01ac3024  str       x9, [x0, #0x40]                                
01ac3028  b.eq      #0x1ac31a4                                     
01ac302c  adrp      x9, #0x3a8e000                                 
01ac3030  cmp       w8, #6                                         
01ac3034  ldr       x9, [x9, #0x88]                                // '언덕'
01ac3038  ldr       x9, [x9]                                       
01ac303c  str       x9, [x0, #0x48]                                
01ac3040  b.ls      #0x1ac31a4                                     
01ac3044  adrp      x9, #0x3a8e000                                 
01ac3048  cmp       w8, #7                                         
01ac304c  ldr       x9, [x9, #0x198]                               // '정글'
01ac3050  ldr       x9, [x9]                                       
01ac3054  str       x9, [x0, #0x50]                                
01ac3058  b.eq      #0x1ac31a4                                     
01ac305c  adrp      x9, #0x3a8e000                                 
01ac3060  cmp       w8, #8                                         
01ac3064  ldr       x9, [x9, #0x38]                                // '산'
01ac3068  ldr       x9, [x9]                                       
01ac306c  str       x9, [x0, #0x58]                                
01ac3070  b.ls      #0x1ac31a4                                     
01ac3074  adrp      x9, #0x3a8e000                                 
01ac3078  cmp       w8, #9                                         
01ac307c  ldr       x9, [x9, #0x1d0]                               // '버려진 성'
01ac3080  ldr       x9, [x9]                                       
01ac3084  str       x9, [x0, #0x60]                                
01ac3088  b.eq      #0x1ac31a4                                     
01ac308c  adrp      x9, #0x3a8e000                                 
01ac3090  cmp       w8, #0xa                                       
01ac3094  ldr       x9, [x9, #0x158]                               // '평원'
01ac3098  ldr       x9, [x9]                                       
01ac309c  str       x9, [x0, #0x68]                                
01ac30a0  b.ls      #0x1ac31a4                                     
01ac30a4  adrp      x9, #0x3a8e000                                 
01ac30a8  cmp       w8, #0xb                                       
01ac30ac  ldr       x9, [x9, #0x80]                                // '고원'
01ac30b0  ldr       x9, [x9]                                       
01ac30b4  str       x9, [x0, #0x70]                                
01ac30b8  b.eq      #0x1ac31a4                                     
01ac30bc  adrp      x9, #0x3a8e000                                 
01ac30c0  cmp       w8, #0xc                                       
01ac30c4  ldr       x9, [x9, #0x1b0]                               // '화산'
01ac30c8  ldr       x9, [x9]                                       
01ac30cc  str       x9, [x0, #0x78]                                
01ac30d0  b.ls      #0x1ac31a4                                     
01ac30d4  adrp      x9, #0x3a8e000                                 
01ac30d8  cmp       w8, #0xd                                       
01ac30dc  ldr       x9, [x9, #0xe0]                                // '유적지'
01ac30e0  ldr       x9, [x9]                                       
01ac30e4  str       x9, [x0, #0x80]                                
01ac30e8  b.eq      #0x1ac31a4                                     
01ac30ec  adrp      x9, #0x3a8e000                                 
01ac30f0  cmp       w8, #0xe                                       
01ac30f4  ldr       x9, [x9, #0xa8]                                // '설산'
01ac30f8  ldr       x9, [x9]                                       
01ac30fc  str       x9, [x0, #0x88]                                
01ac3100  b.ls      #0x1ac31a4                                     
01ac3104  adrp      x9, #0x3a8e000                                 
01ac3108  cmp       w8, #0xf                                       
01ac310c  ldr       x9, [x9, #0xf8]                                // '설원'
01ac3110  ldr       x9, [x9]                                       
01ac3114  str       x9, [x0, #0x90]                                
01ac3118  b.eq      #0x1ac31a4                                     
01ac311c  adrp      x9, #0x3a8e000                                 
01ac3120  cmp       w8, #0x10                                      
01ac3124  ldr       x9, [x9, #0x108]                               // '버려진 요새'
01ac3128  ldr       x9, [x9]                                       
01ac312c  str       x9, [x0, #0x98]                                
01ac3130  b.ls      #0x1ac31a4                                     
01ac3134  adrp      x9, #0x3a8e000                                 
01ac3138  cmp       w8, #0x11                                      
01ac313c  ldr       x9, [x9, #0x150]                               // '황무지'
01ac3140  ldr       x9, [x9]                                       
01ac3144  str       x9, [x0, #0xa0]                                
01ac3148  b.eq      #0x1ac31a4                                     
01ac314c  adrp      x9, #0x3a8e000                                 
01ac3150  cmp       w8, #0x12                                      
01ac3154  ldr       x9, [x9, #0x98]                                // '오아시스'
01ac3158  ldr       x9, [x9]                                       
01ac315c  str       x9, [x0, #0xa8]                                
01ac3160  b.ls      #0x1ac31a4                                     
01ac3164  adrp      x9, #0x3a8e000                                 
01ac3168  cmp       w8, #0x13                                      
01ac316c  ldr       x9, [x9, #0x20]                                // '사막'
01ac3170  ldr       x9, [x9]                                       
01ac3174  str       x9, [x0, #0xb0]                                
01ac3178  b.eq      #0x1ac31a4                                     
01ac317c  adrp      x8, #0x3a8e000                                 
01ac3180  ldr       x8, [x8, #0x1a0]                               // '늪'
01ac3184  ldr       x8, [x8]                                       
01ac3188  str       x8, [x0, #0xb8]                                
01ac318c  ldr       x8, [x20]                                      
01ac3190  ldp       x20, x19, [sp, #0x10]                          
01ac3194  ldr       x8, [x8, #0xb8]                                
01ac3198  str       x0, [x8, #0x10]                                
01ac319c  ldr       x30, [sp], #0x20                               
01ac31a0  ret                                                      
01ac31a4  bl        #0x183dde4                                     
01ac31a8  bl        #0x183dddc                                     