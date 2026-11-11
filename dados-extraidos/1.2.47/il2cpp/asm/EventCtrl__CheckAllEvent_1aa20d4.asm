void EventCtrl__CheckAllEvent (EventCtrl_o* __this, bool allResult, const MethodInfo* method);
// RVA 0x1aa20d4 to 0x1aa5224
01aa20d4  sub       sp, sp, #0xf0                                  
01aa20d8  stp       d13, d12, [sp, #0x60]                          
01aa20dc  stp       d11, d10, [sp, #0x70]                          
01aa20e0  stp       d9, d8, [sp, #0x80]                            
01aa20e4  stp       x29, x30, [sp, #0x90]                          
01aa20e8  stp       x28, x27, [sp, #0xa0]                          
01aa20ec  stp       x26, x25, [sp, #0xb0]                          
01aa20f0  stp       x24, x23, [sp, #0xc0]                          
01aa20f4  stp       x22, x21, [sp, #0xd0]                          
01aa20f8  stp       x20, x19, [sp, #0xe0]                          
01aa20fc  str       w1, [sp, #0x3c]                                
01aa2100  adrp      x21, #0x3d14000                                
01aa2104  adrp      x19, #0x3a8c000                                
01aa2108  ldrb      w8, [x21, #0xcfb]                              
01aa210c  ldr       x19, [x19, #0xb58]                             
01aa2110  mov       x20, x0                                        
01aa2114  tbnz      w8, #0, #0x1aa2348                             
01aa2118  adrp      x0, #0x3a7c000                                 
01aa211c  ldr       x0, [x0, #0xd40]                               
01aa2120  bl        #0x183db90                                     
01aa2124  adrp      x0, #0x3a7b000                                 
01aa2128  ldr       x0, [x0, #0xf88]                               
01aa212c  bl        #0x183db90                                     
01aa2130  adrp      x0, #0x3a7c000                                 
01aa2134  ldr       x0, [x0, #0xc08]                               
01aa2138  bl        #0x183db90                                     
01aa213c  adrp      x0, #0x3a8c000                                 
01aa2140  ldr       x0, [x0, #0xb60]                               
01aa2144  bl        #0x183db90                                     
01aa2148  adrp      x0, #0x3a8c000                                 
01aa214c  ldr       x0, [x0, #0xb68]                               
01aa2150  bl        #0x183db90                                     
01aa2154  adrp      x0, #0x3a8c000                                 
01aa2158  ldr       x0, [x0, #0xb70]                               
01aa215c  bl        #0x183db90                                     
01aa2160  adrp      x0, #0x3a8c000                                 
01aa2164  ldr       x0, [x0, #0xb78]                               
01aa2168  bl        #0x183db90                                     
01aa216c  adrp      x0, #0x3a8c000                                 
01aa2170  ldr       x0, [x0, #0xb80]                               
01aa2174  bl        #0x183db90                                     
01aa2178  adrp      x0, #0x3a8c000                                 
01aa217c  ldr       x0, [x0, #0xb88]                               
01aa2180  bl        #0x183db90                                     
01aa2184  adrp      x0, #0x3a8c000                                 
01aa2188  ldr       x0, [x0, #0xb90]                               
01aa218c  bl        #0x183db90                                     
01aa2190  adrp      x0, #0x3a8c000                                 
01aa2194  ldr       x0, [x0, #0xb98]                               
01aa2198  bl        #0x183db90                                     
01aa219c  adrp      x0, #0x3a8c000                                 
01aa21a0  ldr       x0, [x0, #0xba0]                               
01aa21a4  bl        #0x183db90                                     
01aa21a8  adrp      x0, #0x3a8c000                                 
01aa21ac  ldr       x0, [x0, #0xba8]                               
01aa21b0  bl        #0x183db90                                     
01aa21b4  adrp      x0, #0x3a7c000                                 
01aa21b8  ldr       x0, [x0, #0xca8]                               
01aa21bc  bl        #0x183db90                                     
01aa21c0  adrp      x0, #0x3a7c000                                 
01aa21c4  ldr       x0, [x0, #0x80]                                
01aa21c8  bl        #0x183db90                                     
01aa21cc  adrp      x0, #0x3a8c000                                 
01aa21d0  ldr       x0, [x0, #0x968]                               
01aa21d4  bl        #0x183db90                                     
01aa21d8  adrp      x0, #0x3a8c000                                 
01aa21dc  ldr       x0, [x0, #0x9e0]                               
01aa21e0  bl        #0x183db90                                     
01aa21e4  adrp      x0, #0x3a8c000                                 
01aa21e8  ldr       x0, [x0, #0x7d8]                               
01aa21ec  bl        #0x183db90                                     
01aa21f0  adrp      x0, #0x3a8c000                                 
01aa21f4  ldr       x0, [x0, #0x698]                               
01aa21f8  bl        #0x183db90                                     
01aa21fc  adrp      x0, #0x3a8c000                                 
01aa2200  ldr       x0, [x0, #0x610]                               
01aa2204  bl        #0x183db90                                     
01aa2208  adrp      x0, #0x3a8c000                                 
01aa220c  ldr       x0, [x0, #0x6a0]                               
01aa2210  bl        #0x183db90                                     
01aa2214  adrp      x0, #0x3a8c000                                 
01aa2218  ldr       x0, [x0, #0x6a8]                               
01aa221c  bl        #0x183db90                                     
01aa2220  adrp      x0, #0x3a7c000                                 
01aa2224  ldr       x0, [x0, #0xde8]                               
01aa2228  bl        #0x183db90                                     
01aa222c  adrp      x0, #0x3a7b000                                 
01aa2230  ldr       x0, [x0, #0x7c8]                               
01aa2234  bl        #0x183db90                                     
01aa2238  adrp      x0, #0x3a8c000                                 
01aa223c  ldr       x0, [x0, #0xbb0]                               
01aa2240  bl        #0x183db90                                     
01aa2244  adrp      x0, #0x3a8c000                                 
01aa2248  ldr       x0, [x0, #0xbb8]                               
01aa224c  bl        #0x183db90                                     
01aa2250  adrp      x0, #0x3a8c000                                 
01aa2254  ldr       x0, [x0, #0xbc0]                               
01aa2258  bl        #0x183db90                                     
01aa225c  adrp      x0, #0x3a8c000                                 
01aa2260  ldr       x0, [x0, #0xbc8]                               
01aa2264  bl        #0x183db90                                     
01aa2268  adrp      x0, #0x3a8c000                                 
01aa226c  ldr       x0, [x0, #0xbd0]                               
01aa2270  bl        #0x183db90                                     
01aa2274  adrp      x0, #0x3a8c000                                 
01aa2278  ldr       x0, [x0, #0xbd8]                               
01aa227c  bl        #0x183db90                                     
01aa2280  adrp      x0, #0x3a8c000                                 
01aa2284  ldr       x0, [x0, #0xbe0]                               
01aa2288  bl        #0x183db90                                     
01aa228c  adrp      x0, #0x3a8c000                                 
01aa2290  ldr       x0, [x0, #0xbe8]                               
01aa2294  bl        #0x183db90                                     
01aa2298  adrp      x0, #0x3a8c000                                 
01aa229c  ldr       x0, [x0, #0xbf0]                               
01aa22a0  bl        #0x183db90                                     
01aa22a4  adrp      x0, #0x3a7c000                                 
01aa22a8  ldr       x0, [x0, #0xc78]                               
01aa22ac  bl        #0x183db90                                     
01aa22b0  adrp      x0, #0x3a7c000                                 
01aa22b4  ldr       x0, [x0, #0x4e0]                               
01aa22b8  bl        #0x183db90                                     
01aa22bc  adrp      x0, #0x3a7c000                                 
01aa22c0  ldr       x0, [x0, #0xee8]                               
01aa22c4  bl        #0x183db90                                     
01aa22c8  adrp      x0, #0x3a8c000                                 
01aa22cc  ldr       x0, [x0, #0x708]                               
01aa22d0  bl        #0x183db90                                     
01aa22d4  adrp      x0, #0x3a8c000                                 
01aa22d8  ldr       x0, [x0, #0x710]                               
01aa22dc  bl        #0x183db90                                     
01aa22e0  adrp      x0, #0x3a8c000                                 
01aa22e4  ldr       x0, [x0, #0x718]                               
01aa22e8  bl        #0x183db90                                     
01aa22ec  adrp      x0, #0x3a7d000                                 
01aa22f0  ldr       x0, [x0, #0x98]                                
01aa22f4  bl        #0x183db90                                     
01aa22f8  adrp      x0, #0x3a7d000                                 
01aa22fc  ldr       x0, [x0, #0x130]                               
01aa2300  bl        #0x183db90                                     
01aa2304  adrp      x0, #0x3a7e000                                 
01aa2308  ldr       x0, [x0, #0x470]                               
01aa230c  bl        #0x183db90                                     
01aa2310  adrp      x0, #0x3a8c000                                 
01aa2314  ldr       x0, [x0, #0x720]                               
01aa2318  bl        #0x183db90                                     
01aa231c  adrp      x0, #0x3a7b000                                 
01aa2320  ldr       x0, [x0, #0xaf0]                               
01aa2324  bl        #0x183db90                                     
01aa2328  adrp      x0, #0x3a81000                                 
01aa232c  ldr       x0, [x0, #0xc08]                               
01aa2330  bl        #0x183db90                                     
01aa2334  adrp      x0, #0x3a8c000                                 
01aa2338  ldr       x0, [x0, #0xb58]                               
01aa233c  bl        #0x183db90                                     
01aa2340  mov       w8, #1                                         
01aa2344  strb      w8, [x21, #0xcfb]                              
01aa2348  adrp      x22, #0x3a7b000                                
01aa234c  ldr       x22, [x22, #0x768]                             
01aa2350  ldr       x21, [x19]                                     
01aa2354  ldr       x0, [x22, #0xe0]                               
01aa2358  ldr       w8, [x0, #0xe4]                                
01aa235c  cbnz      w8, #0x1aa2364                                 
01aa2360  bl        #0x183dcb0                                     
01aa2364  mov       x0, x21                                        
01aa2368  mov       x1, xzr                                        
01aa236c  bl        #0x2ddf084                                     // System.Type$$GetTypeFromHandle
01aa2370  ldr       x8, [x22, #0x98]                               
01aa2374  mov       x21, x0                                        
01aa2378  ldr       w9, [x8, #0xe4]                                
01aa237c  cbnz      w9, #0x1aa2388                                 
01aa2380  mov       x0, x8                                         
01aa2384  bl        #0x183dcb0                                     
01aa2388  mov       x0, x21                                        
01aa238c  mov       x1, xzr                                        
01aa2390  bl        #0x2e03858                                     // System.Enum$$GetValues
01aa2394  cbz       x0, #0x1aa521c                                 
01aa2398  mov       x1, xzr                                        
01aa239c  bl        #0x2de827c                                     // System.Array$$get_Length
01aa23a0  sub       w8, w0, #1                                     
01aa23a4  cmp       w8, #1                                         
01aa23a8  str       w8, [sp, #0xc]                                 
01aa23ac  b.lt      #0x1aa51f0                                     
01aa23b0  mov       w8, #0x7f800000                                
01aa23b4  fmov      v11.2s, #1.50000000                            
01aa23b8  movi      v12.2s, #0x80, lsl #24                         
01aa23bc  dup       v9.2s, w8                                      
01aa23c0  adrp      x8, #0xa13000                                  
01aa23c4  adrp      x23, #0x3a8c000                                
01aa23c8  ldr       s10, [x8, #0xc8]                               
01aa23cc  adrp      x8, #0xa13000                                  
01aa23d0  adrp      x28, #0x3a7c000                                
01aa23d4  adrp      x29, #0x3a7b000                                
01aa23d8  adrp      x21, #0x3a8c000                                
01aa23dc  adrp      x19, #0x3a8c000                                
01aa23e0  ldr       s13, [x8, #0x1c4]                              
01aa23e4  ldr       x23, [x23, #0x6a8]                             
01aa23e8  ldr       x28, [x28, #0xc08]                             
01aa23ec  ldr       x29, [x29, #0xaf0]                             
01aa23f0  ldr       x21, [x21, #0x698]                             
01aa23f4  ldr       x19, [x19, #0x6a0]                             
01aa23f8  mov       w10, wzr                                       
01aa23fc  ldr       x8, [x20, #0x118]                              
01aa2400  str       w10, [x20, #0x13c]                             
01aa2404  cbz       x8, #0x1aa521c                                 
01aa2408  ldr       w9, [x8, #0x18]                                
01aa240c  cmp       w10, w9                                        
01aa2410  b.hs      #0x1aa5220                                     
01aa2414  add       x8, x8, w10, uxtw #3                           
01aa2418  ldr       x8, [x8, #0x20]                                
01aa241c  cbz       x8, #0x1aa521c                                 
01aa2420  ldr       w8, [x8, #0x18]                                
01aa2424  cmp       w8, #1                                         
01aa2428  str       w8, [sp, #0x20]                                
01aa242c  b.lt      #0x1aa51e0                                     
01aa2430  mov       w22, wzr                                       
01aa2434  str       w10, [sp, #0x1c]                               
01aa2438  ldr       w8, [x20, #0x13c]                              
01aa243c  str       w22, [x20, #0xe0]                              
01aa2440  str       w22, [sp, #0x24]                               
01aa2444  cmp       w8, #1                                         
01aa2448  b.ne      #0x1aa24bc                                     
01aa244c  ldr       x8, [x20, #0x118]                              
01aa2450  cbz       x8, #0x1aa521c                                 
01aa2454  ldr       w9, [x8, #0x18]                                
01aa2458  tst       w9, #0xfffffffe                                
01aa245c  b.eq      #0x1aa5220                                     
01aa2460  ldr       x0, [x8, #0x28]                                
01aa2464  cbz       x0, #0x1aa521c                                 
01aa2468  ldr       x2, [x23]                                      
01aa246c  mov       w1, w22                                        
01aa2470  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2474  cbz       x0, #0x1aa521c                                 
01aa2478  ldr       x0, [x0, #0x18]                                
01aa247c  mov       x1, xzr                                        
01aa2480  bl        #0x2c6d184                                     // System.String$$IsNullOrWhiteSpace
01aa2484  ldr       x9, [x28]                                      
01aa2488  mov       w8, w0                                         
01aa248c  ldr       x9, [x9, #0xb8]                                
01aa2490  ldr       x0, [x9]                                       
01aa2494  tbz       w8, #0, #0x1aa24c8                             
01aa2498  cbz       x0, #0x1aa521c                                 
01aa249c  adrp      x8, #0x3a7c000                                 
01aa24a0  ldr       x8, [x8, #0xd40]                               
01aa24a4  ldr       x1, [x8]                                       
01aa24a8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa24ac  cbz       x0, #0x1aa521c                                 
01aa24b0  mov       x1, xzr                                        
01aa24b4  bl        #0x1ab04ac                                     // MonsterDataBase$$GetRandomMonsterData
01aa24b8  b         #0x1aa2534                                     
01aa24bc  ldr       x26, [x29]                                     
01aa24c0  str       xzr, [x20, #0x140]                             
01aa24c4  b         #0x1aa2600                                     
01aa24c8  cbz       x0, #0x1aa521c                                 
01aa24cc  adrp      x8, #0x3a7c000                                 
01aa24d0  ldr       x8, [x8, #0xd40]                               
01aa24d4  ldr       x1, [x8]                                       
01aa24d8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa24dc  ldr       x8, [x20, #0x118]                              
01aa24e0  cbz       x8, #0x1aa521c                                 
01aa24e4  ldrsw     x9, [x20, #0x13c]                              
01aa24e8  ldr       w10, [x8, #0x18]                               
01aa24ec  cmp       w9, w10                                        
01aa24f0  b.hs      #0x1aa5220                                     
01aa24f4  add       x8, x8, x9, lsl #3                             
01aa24f8  mov       x24, x0                                        
01aa24fc  ldr       x0, [x8, #0x20]                                
01aa2500  cbz       x0, #0x1aa521c                                 
01aa2504  ldr       w1, [x20, #0xe0]                               
01aa2508  ldr       x2, [x23]                                      
01aa250c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2510  cbz       x0, #0x1aa521c                                 
01aa2514  ldr       x1, [x0, #0x18]                                
01aa2518  mov       x0, x20                                        
01aa251c  bl        #0x1a9e5d4                                     // EventCtrl$$GetMonsterIndex
01aa2520  cbz       x24, #0x1aa521c                                
01aa2524  mov       w1, w0                                         
01aa2528  mov       x0, x24                                        
01aa252c  mov       x2, xzr                                        
01aa2530  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa2534  ldr       x8, [x28]                                      
01aa2538  mov       x24, x0                                        
01aa253c  str       x24, [x20, #0x140]                             
01aa2540  ldr       x8, [x8, #0xb8]                                
01aa2544  ldr       x0, [x8]                                       
01aa2548  cbz       x0, #0x1aa521c                                 
01aa254c  adrp      x8, #0x3a7c000                                 
01aa2550  ldr       x8, [x8, #0xd40]                               
01aa2554  ldr       x1, [x8]                                       
01aa2558  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa255c  ldr       x8, [x20, #0x140]                              
01aa2560  cbz       x8, #0x1aa521c                                 
01aa2564  cbz       x0, #0x1aa521c                                 
01aa2568  ldr       x1, [x8, #0xb0]                                
01aa256c  mov       x2, xzr                                        
01aa2570  bl        #0x1ab0690                                     // MonsterDataBase$$GetChoiceAbIndex
01aa2574  cbz       x24, #0x1aa521c                                
01aa2578  ldr       x8, [x20, #0x140]                              
01aa257c  ldr       x26, [x29]                                     
01aa2580  str       w0, [x24, #0xb8]                               
01aa2584  cbz       x8, #0x1aa2600                                 
01aa2588  ldr       x8, [x20, #0x118]                              
01aa258c  cbz       x8, #0x1aa521c                                 
01aa2590  ldrsw     x9, [x20, #0x13c]                              
01aa2594  ldr       w10, [x8, #0x18]                               
01aa2598  cmp       w9, w10                                        
01aa259c  b.hs      #0x1aa5220                                     
01aa25a0  add       x8, x8, x9, lsl #3                             
01aa25a4  ldr       x0, [x8, #0x20]                                
01aa25a8  cbz       x0, #0x1aa521c                                 
01aa25ac  ldr       w1, [x20, #0xe0]                               
01aa25b0  ldr       x2, [x23]                                      
01aa25b4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa25b8  cbz       x0, #0x1aa521c                                 
01aa25bc  ldr       x9, [x20, #0x140]                              
01aa25c0  cbz       x9, #0x1aa521c                                 
01aa25c4  ldr       x8, [x28]                                      
01aa25c8  ldr       x8, [x8, #0xb8]                                
01aa25cc  ldr       x8, [x8]                                       
01aa25d0  cbz       x8, #0x1aa521c                                 
01aa25d4  ldr       x9, [x9, #0x20]                                
01aa25d8  cbz       x9, #0x1aa521c                                 
01aa25dc  ldrsw     x10, [x8, #0x5cc]                              
01aa25e0  ldr       w11, [x9, #0x18]                               
01aa25e4  cmp       w10, w11                                       
01aa25e8  b.hs      #0x1aa5220                                     
01aa25ec  add       x9, x9, x10, lsl #3                            
01aa25f0  ldr       x0, [x0, #0x30]                                
01aa25f4  ldr       x2, [x8, #0x40]                                
01aa25f8  ldr       x1, [x9, #0x20]                                
01aa25fc  b         #0x1aa2650                                     
01aa2600  ldr       x8, [x20, #0x118]                              
01aa2604  cbz       x8, #0x1aa521c                                 
01aa2608  ldrsw     x9, [x20, #0x13c]                              
01aa260c  ldr       w10, [x8, #0x18]                               
01aa2610  cmp       w9, w10                                        
01aa2614  b.hs      #0x1aa5220                                     
01aa2618  add       x8, x8, x9, lsl #3                             
01aa261c  ldr       x0, [x8, #0x20]                                
01aa2620  cbz       x0, #0x1aa521c                                 
01aa2624  ldr       w1, [x20, #0xe0]                               
01aa2628  ldr       x2, [x23]                                      
01aa262c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2630  cbz       x0, #0x1aa521c                                 
01aa2634  ldr       x8, [x28]                                      
01aa2638  ldr       x8, [x8, #0xb8]                                
01aa263c  ldr       x8, [x8]                                       
01aa2640  cbz       x8, #0x1aa521c                                 
01aa2644  ldr       x0, [x0, #0x30]                                
01aa2648  ldr       x2, [x8, #0x40]                                
01aa264c  ldr       x1, [x29]                                      
01aa2650  mov       x3, xzr                                        
01aa2654  bl        #0x2c6e654                                     // System.String$$Format
01aa2658  mov       x1, x0                                         
01aa265c  mov       x0, x26                                        
01aa2660  mov       x2, xzr                                        
01aa2664  bl        #0x2c63780                                     // System.String$$Concat
01aa2668  mov       x0, x20                                        
01aa266c  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa2670  mov       x0, x20                                        
01aa2674  bl        #0x1a9dc34                                     // EventCtrl$$SetChoiceBtn
01aa2678  mov       x0, x20                                        
01aa267c  bl        #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa2680  adrp      x26, #0x3a7c000                                
01aa2684  ldr       x8, [x20, #0x118]                              
01aa2688  ldr       x26, [x26, #0xde8]                             
01aa268c  cbz       x8, #0x1aa521c                                 
01aa2690  str       wzr, [sp, #0x4c]                               
01aa2694  ldrsw     x9, [x20, #0x13c]                              
01aa2698  ldr       w10, [x8, #0x18]                               
01aa269c  cmp       w9, w10                                        
01aa26a0  b.hs      #0x1aa5220                                     
01aa26a4  add       x8, x8, x9, lsl #3                             
01aa26a8  ldr       x0, [x8, #0x20]                                
01aa26ac  cbz       x0, #0x1aa521c                                 
01aa26b0  ldr       w1, [x20, #0xe0]                               
01aa26b4  ldr       x2, [x23]                                      
01aa26b8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa26bc  cbz       x0, #0x1aa521c                                 
01aa26c0  ldr       x8, [x0, #0x38]                                
01aa26c4  cbz       x8, #0x1aa521c                                 
01aa26c8  ldr       w8, [x8, #0x18]                                
01aa26cc  ldr       w9, [sp, #0x4c]                                
01aa26d0  cmp       w9, w8                                         
01aa26d4  b.ge      #0x1aa51cc                                     
01aa26d8  adrp      x8, #0x3a8c000                                 
01aa26dc  ldr       x8, [x8, #0xbc0]                               
01aa26e0  ldr       x0, [x8]                                       
01aa26e4  bl        #0x183ddcc                                     
01aa26e8  mov       x1, xzr                                        
01aa26ec  mov       x24, x0                                        
01aa26f0  bl        #0x1ab2b10                                     // EventCtrl.<>c__DisplayClass150_0$$.ctor
01aa26f4  cbz       x24, #0x1aa521c                                
01aa26f8  ldr       w8, [sp, #0x4c]                                
01aa26fc  mov       x0, x20                                        
01aa2700  mov       w1, wzr                                        
01aa2704  mov       w2, #1                                         
01aa2708  str       x20, [x24, #0x18]                              
01aa270c  str       w8, [x24, #0x10]                               
01aa2710  bl        #0x1a8c9e0                                     // EventCtrl$$OnFinishEvent
01aa2714  ldr       x8, [x20, #0x118]                              
01aa2718  ldr       w9, [sp, #0x3c]                                
01aa271c  str       x24, [sp, #0x58]                               
01aa2720  tbz       w9, #0, #0x1aa3c7c                             
01aa2724  cbz       x8, #0x1aa521c                                 
01aa2728  mov       w22, wzr                                       
01aa272c  ldrsw     x9, [x20, #0x13c]                              
01aa2730  ldr       w10, [x8, #0x18]                               
01aa2734  cmp       w9, w10                                        
01aa2738  b.hs      #0x1aa5220                                     
01aa273c  add       x8, x8, x9, lsl #3                             
01aa2740  ldr       x0, [x8, #0x20]                                
01aa2744  cbz       x0, #0x1aa521c                                 
01aa2748  ldr       w1, [x20, #0xe0]                               
01aa274c  ldr       x2, [x23]                                      
01aa2750  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2754  cbz       x0, #0x1aa521c                                 
01aa2758  ldr       x0, [x0, #0x38]                                
01aa275c  cbz       x0, #0x1aa521c                                 
01aa2760  ldr       w1, [x24, #0x10]                               
01aa2764  ldr       x2, [x21]                                      
01aa2768  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa276c  cbz       x0, #0x1aa521c                                 
01aa2770  ldr       x8, [x0, #0x20]                                
01aa2774  cbz       x8, #0x1aa521c                                 
01aa2778  ldr       w8, [x8, #0x18]                                
01aa277c  cmp       w22, w8                                        
01aa2780  b.ge      #0x1aa4c38                                     
01aa2784  ldr       x27, [x29]                                     
01aa2788  ldr       x8, [x20, #0x118]                              
01aa278c  str       w22, [x20, #0xe4]                              
01aa2790  strb      wzr, [x20, #0x1e0]                             
01aa2794  str       x27, [x20, #0xf0]                              
01aa2798  cbz       x8, #0x1aa521c                                 
01aa279c  ldrsw     x9, [x20, #0x13c]                              
01aa27a0  ldr       w10, [x8, #0x18]                               
01aa27a4  cmp       w9, w10                                        
01aa27a8  b.hs      #0x1aa5220                                     
01aa27ac  add       x8, x8, x9, lsl #3                             
01aa27b0  ldr       x0, [x8, #0x20]                                
01aa27b4  cbz       x0, #0x1aa521c                                 
01aa27b8  ldr       w1, [x20, #0xe0]                               
01aa27bc  ldr       x2, [x23]                                      
01aa27c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa27c4  cbz       x0, #0x1aa521c                                 
01aa27c8  ldr       x0, [x0, #0x38]                                
01aa27cc  cbz       x0, #0x1aa521c                                 
01aa27d0  ldr       w1, [x24, #0x10]                               
01aa27d4  ldr       x2, [x21]                                      
01aa27d8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa27dc  cbz       x0, #0x1aa521c                                 
01aa27e0  ldr       x0, [x0, #0x20]                                
01aa27e4  cbz       x0, #0x1aa521c                                 
01aa27e8  ldr       w1, [x20, #0xe4]                               
01aa27ec  ldr       x2, [x19]                                      
01aa27f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa27f4  cbz       x0, #0x1aa521c                                 
01aa27f8  ldr       w8, [x0, #0x1c]                                
01aa27fc  cbz       w8, #0x1aa28bc                                 
01aa2800  ldr       x8, [x20, #0x118]                              
01aa2804  cbz       x8, #0x1aa521c                                 
01aa2808  ldrsw     x9, [x20, #0x13c]                              
01aa280c  ldr       w10, [x8, #0x18]                               
01aa2810  cmp       w9, w10                                        
01aa2814  b.hs      #0x1aa5220                                     
01aa2818  add       x8, x8, x9, lsl #3                             
01aa281c  ldr       x0, [x8, #0x20]                                
01aa2820  cbz       x0, #0x1aa521c                                 
01aa2824  ldr       w1, [x20, #0xe0]                               
01aa2828  ldr       x2, [x23]                                      
01aa282c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2830  cbz       x0, #0x1aa521c                                 
01aa2834  ldr       x0, [x0, #0x38]                                
01aa2838  cbz       x0, #0x1aa521c                                 
01aa283c  ldr       w1, [x24, #0x10]                               
01aa2840  ldr       x2, [x21]                                      
01aa2844  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2848  cbz       x0, #0x1aa521c                                 
01aa284c  ldr       x0, [x0, #0x20]                                
01aa2850  cbz       x0, #0x1aa521c                                 
01aa2854  ldr       w1, [x20, #0xe4]                               
01aa2858  ldr       x2, [x19]                                      
01aa285c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2860  cbz       x0, #0x1aa521c                                 
01aa2864  ldr       w8, [x0, #0x1c]                                
01aa2868  cmp       w8, #1                                         
01aa286c  b.ne      #0x1aa2928                                     
01aa2870  ldr       x0, [x26]                                      
01aa2874  ldr       w8, [x0, #0xe4]                                
01aa2878  cbnz      w8, #0x1aa2884                                 
01aa287c  bl        #0x183dcb0                                     
01aa2880  ldr       x0, [x26]                                      
01aa2884  ldr       x8, [x28]                                      
01aa2888  ldr       x8, [x8, #0xb8]                                
01aa288c  ldr       x9, [x8]                                       
01aa2890  cbz       x9, #0x1aa521c                                 
01aa2894  ldr       x8, [x0, #0xb8]                                
01aa2898  ldr       x8, [x8, #0xf8]                                
01aa289c  cbz       x8, #0x1aa521c                                 
01aa28a0  ldr       w9, [x9, #0x5cc]                               
01aa28a4  ldr       w10, [x8, #0x18]                               
01aa28a8  cmp       w9, w10                                        
01aa28ac  b.hs      #0x1aa5220                                     
01aa28b0  adrp      x10, #0x3a7d000                                
01aa28b4  ldr       x10, [x10, #0x98]                              
01aa28b8  b         #0x1aa2904                                     
01aa28bc  ldr       x0, [x26]                                      
01aa28c0  ldr       w8, [x0, #0xe4]                                
01aa28c4  cbnz      w8, #0x1aa28d0                                 
01aa28c8  bl        #0x183dcb0                                     
01aa28cc  ldr       x0, [x26]                                      
01aa28d0  ldr       x8, [x28]                                      
01aa28d4  ldr       x8, [x8, #0xb8]                                
01aa28d8  ldr       x9, [x8]                                       
01aa28dc  cbz       x9, #0x1aa521c                                 
01aa28e0  ldr       x8, [x0, #0xb8]                                
01aa28e4  ldr       x8, [x8, #0xf0]                                
01aa28e8  cbz       x8, #0x1aa521c                                 
01aa28ec  ldr       w9, [x9, #0x5cc]                               
01aa28f0  ldr       w10, [x8, #0x18]                               
01aa28f4  cmp       w9, w10                                        
01aa28f8  b.hs      #0x1aa5220                                     
01aa28fc  adrp      x10, #0x3a8c000                                
01aa2900  ldr       x10, [x10, #0x720]                             
01aa2904  add       x8, x8, w9, sxtw #3                            
01aa2908  ldr       x0, [x10]                                      
01aa290c  mov       x3, xzr                                        
01aa2910  ldr       x1, [x8, #0x20]                                
01aa2914  adrp      x8, #0x3a81000                                 
01aa2918  ldr       x8, [x8, #0xc08]                               
01aa291c  ldr       x2, [x8]                                       
01aa2920  bl        #0x2c6dcf0                                     // System.String$$Concat
01aa2924  mov       x27, x0                                        
01aa2928  ldr       x8, [x20, #0x118]                              
01aa292c  cbz       x8, #0x1aa521c                                 
01aa2930  ldrsw     x9, [x20, #0x13c]                              
01aa2934  ldr       w10, [x8, #0x18]                               
01aa2938  cmp       w9, w10                                        
01aa293c  b.hs      #0x1aa5220                                     
01aa2940  add       x8, x8, x9, lsl #3                             
01aa2944  ldr       x0, [x8, #0x20]                                
01aa2948  cbz       x0, #0x1aa521c                                 
01aa294c  ldr       w1, [x20, #0xe0]                               
01aa2950  ldr       x2, [x23]                                      
01aa2954  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2958  cbz       x0, #0x1aa521c                                 
01aa295c  ldr       x0, [x0, #0x38]                                
01aa2960  cbz       x0, #0x1aa521c                                 
01aa2964  ldr       w1, [x24, #0x10]                               
01aa2968  ldr       x2, [x21]                                      
01aa296c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2970  cbz       x0, #0x1aa521c                                 
01aa2974  ldr       x0, [x0, #0x20]                                
01aa2978  cbz       x0, #0x1aa521c                                 
01aa297c  ldr       w1, [x20, #0xe4]                               
01aa2980  ldr       x2, [x19]                                      
01aa2984  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2988  cbz       x0, #0x1aa521c                                 
01aa298c  ldr       x0, [x0, #0x30]                                
01aa2990  ldr       x1, [x29]                                      
01aa2994  mov       x2, xzr                                        
01aa2998  mov       x26, x29                                       
01aa299c  bl        #0x2c6c040                                     // System.String$$op_Inequality
01aa29a0  tbz       w0, #0, #0x1aa2efc                             
01aa29a4  ldr       x8, [x20, #0x118]                              
01aa29a8  cbz       x8, #0x1aa521c                                 
01aa29ac  ldrsw     x9, [x20, #0x13c]                              
01aa29b0  ldr       w10, [x8, #0x18]                               
01aa29b4  cmp       w9, w10                                        
01aa29b8  b.hs      #0x1aa5220                                     
01aa29bc  add       x8, x8, x9, lsl #3                             
01aa29c0  ldr       x0, [x8, #0x20]                                
01aa29c4  cbz       x0, #0x1aa521c                                 
01aa29c8  ldr       w1, [x20, #0xe0]                               
01aa29cc  ldr       x2, [x23]                                      
01aa29d0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa29d4  cbz       x0, #0x1aa521c                                 
01aa29d8  ldr       x0, [x0, #0x38]                                
01aa29dc  cbz       x0, #0x1aa521c                                 
01aa29e0  ldr       w1, [x24, #0x10]                               
01aa29e4  ldr       x2, [x21]                                      
01aa29e8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa29ec  cbz       x0, #0x1aa521c                                 
01aa29f0  ldr       x0, [x0, #0x20]                                
01aa29f4  cbz       x0, #0x1aa521c                                 
01aa29f8  ldr       w1, [x20, #0xe4]                               
01aa29fc  ldr       x2, [x19]                                      
01aa2a00  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2a04  cbz       x0, #0x1aa521c                                 
01aa2a08  ldr       x1, [x0, #0x30]                                
01aa2a0c  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01aa2a10  mov       x28, x0                                        
01aa2a14  mov       x0, x20                                        
01aa2a18  mov       w2, wzr                                        
01aa2a1c  mov       x1, x28                                        
01aa2a20  bl        #0x1a91980                                     // EventCtrl$$GiveRewardAndSetRewardText
01aa2a24  cbz       x28, #0x1aa521c                                
01aa2a28  ldr       w8, [x28, #0x18]                               
01aa2a2c  cmp       w8, #1                                         
01aa2a30  b.lt      #0x1aa2efc                                     
01aa2a34  bic       w9, w8, w8, asr #31                            
01aa2a38  mov       w29, wzr                                       
01aa2a3c  cmp       w8, w29                                        
01aa2a40  b.eq      #0x1aa5220                                     
01aa2a44  add       x25, x28, w29, sxtw #3                         
01aa2a48  ldr       x10, [x25, #0x20]!                             
01aa2a4c  cbz       x10, #0x1aa521c                                
01aa2a50  ldr       w11, [x10, #0x10]                              
01aa2a54  cmp       w11, #6                                        
01aa2a58  b.eq      #0x1aa2a6c                                     
01aa2a5c  add       w29, w29, #1                                   
01aa2a60  cmp       w9, w29                                        
01aa2a64  b.ne      #0x1aa2a3c                                     
01aa2a68  b         #0x1aa2efc                                     
01aa2a6c  adrp      x8, #0x3a7b000                                 
01aa2a70  ldr       x8, [x8, #0xf88]                               
01aa2a74  ldr       x24, [x10, #0x18]                              
01aa2a78  ldr       x0, [x8]                                       
01aa2a7c  ldr       w8, [x0, #0xe4]                                
01aa2a80  cbnz      w8, #0x1aa2a88                                 
01aa2a84  bl        #0x183dcb0                                     
01aa2a88  mov       x0, x24                                        
01aa2a8c  mov       x1, xzr                                        
01aa2a90  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa2a94  cbz       w0, #0x1aa2b54                                 
01aa2a98  ldr       w8, [x28, #0x18]                               
01aa2a9c  cmp       w29, w8                                        
01aa2aa0  b.hs      #0x1aa5220                                     
01aa2aa4  ldr       x8, [x25]                                      
01aa2aa8  cbz       x8, #0x1aa521c                                 
01aa2aac  adrp      x9, #0x3a7b000                                 
01aa2ab0  ldr       x9, [x9, #0xf88]                               
01aa2ab4  ldr       x24, [x8, #0x18]                               
01aa2ab8  ldr       x0, [x9]                                       
01aa2abc  ldr       w9, [x0, #0xe4]                                
01aa2ac0  cbnz      w9, #0x1aa2ac8                                 
01aa2ac4  bl        #0x183dcb0                                     
01aa2ac8  mov       x0, x24                                        
01aa2acc  mov       x1, xzr                                        
01aa2ad0  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa2ad4  ldr       w8, [x28, #0x18]                               
01aa2ad8  cmp       w0, #1                                         
01aa2adc  b.ne      #0x1aa2bd8                                     
01aa2ae0  cmp       w29, w8                                        
01aa2ae4  b.hs      #0x1aa5220                                     
01aa2ae8  ldr       x8, [x25]                                      
01aa2aec  cbz       x8, #0x1aa521c                                 
01aa2af0  adrp      x9, #0x3a7b000                                 
01aa2af4  ldr       x9, [x9, #0xf88]                               
01aa2af8  ldr       s8, [x8, #0x20]                                
01aa2afc  ldr       x0, [x9]                                       
01aa2b00  ldr       w9, [x0, #0xe4]                                
01aa2b04  cbnz      w9, #0x1aa2b0c                                 
01aa2b08  bl        #0x183dcb0                                     
01aa2b0c  fmov      s0, s8                                         
01aa2b10  mov       x0, xzr                                        
01aa2b14  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa2b18  cmp       w0, #2                                         
01aa2b1c  b.ne      #0x1aa2cc4                                     
01aa2b20  ldr       x8, [x20, #0x140]                              
01aa2b24  cbz       x8, #0x1aa521c                                 
01aa2b28  ldp       w9, w10, [x8, #0x44]                           
01aa2b2c  cmp       w9, #0                                         
01aa2b30  cinc      w9, w9, lt                                     
01aa2b34  cmp       w10, #0                                        
01aa2b38  cinc      w10, w10, lt                                   
01aa2b3c  asr       w9, w9, #1                                     
01aa2b40  asr       w10, w10, #1                                   
01aa2b44  stp       w9, w10, [x8, #0x44]                           
01aa2b48  mov       w9, #1                                         
01aa2b4c  str       w9, [x8, #0x6c]                                
01aa2b50  b         #0x1aa2ef4                                     
01aa2b54  adrp      x8, #0x3a7c000                                 
01aa2b58  ldr       x8, [x8, #0xc08]                               
01aa2b5c  ldr       x8, [x8]                                       
01aa2b60  ldr       x8, [x8, #0xb8]                                
01aa2b64  ldr       x0, [x8]                                       
01aa2b68  cbz       x0, #0x1aa521c                                 
01aa2b6c  adrp      x8, #0x3a7c000                                 
01aa2b70  ldr       x8, [x8, #0xd40]                               
01aa2b74  ldr       x1, [x8]                                       
01aa2b78  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa2b7c  ldr       w8, [x28, #0x18]                               
01aa2b80  cmp       w29, w8                                        
01aa2b84  b.hs      #0x1aa5220                                     
01aa2b88  ldr       x8, [x25]                                      
01aa2b8c  cbz       x8, #0x1aa521c                                 
01aa2b90  adrp      x9, #0x3a7b000                                 
01aa2b94  mov       x24, x0                                        
01aa2b98  ldr       x9, [x9, #0xf88]                               
01aa2b9c  ldr       s8, [x8, #0x20]                                
01aa2ba0  ldr       x0, [x9]                                       
01aa2ba4  ldr       w9, [x0, #0xe4]                                
01aa2ba8  cbnz      w9, #0x1aa2bb0                                 
01aa2bac  bl        #0x183dcb0                                     
01aa2bb0  fmov      s0, s8                                         
01aa2bb4  mov       x0, xzr                                        
01aa2bb8  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa2bbc  cbz       x24, #0x1aa521c                                
01aa2bc0  mov       w1, w0                                         
01aa2bc4  mov       x0, x24                                        
01aa2bc8  mov       x2, xzr                                        
01aa2bcc  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa2bd0  str       x0, [x20, #0x140]                              
01aa2bd4  b         #0x1aa2ef4                                     
01aa2bd8  cmp       w29, w8                                        
01aa2bdc  b.hs      #0x1aa5220                                     
01aa2be0  ldr       x8, [x25]                                      
01aa2be4  cbz       x8, #0x1aa521c                                 
01aa2be8  adrp      x9, #0x3a7b000                                 
01aa2bec  ldr       x9, [x9, #0xf88]                               
01aa2bf0  ldr       x24, [x8, #0x18]                               
01aa2bf4  ldr       x0, [x9]                                       
01aa2bf8  ldr       w9, [x0, #0xe4]                                
01aa2bfc  cbnz      w9, #0x1aa2c04                                 
01aa2c00  bl        #0x183dcb0                                     
01aa2c04  mov       x0, x24                                        
01aa2c08  mov       x1, xzr                                        
01aa2c0c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa2c10  cmp       w0, #2                                         
01aa2c14  b.ne      #0x1aa2d38                                     
01aa2c18  adrp      x8, #0x3a7c000                                 
01aa2c1c  ldr       x8, [x8, #0xc08]                               
01aa2c20  ldr       x8, [x8]                                       
01aa2c24  ldr       x8, [x8, #0xb8]                                
01aa2c28  ldr       x0, [x8]                                       
01aa2c2c  cbz       x0, #0x1aa521c                                 
01aa2c30  adrp      x8, #0x3a7c000                                 
01aa2c34  ldr       x8, [x8, #0xd40]                               
01aa2c38  ldr       x1, [x8]                                       
01aa2c3c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa2c40  ldr       w8, [x28, #0x18]                               
01aa2c44  cmp       w29, w8                                        
01aa2c48  b.hs      #0x1aa5220                                     
01aa2c4c  ldr       x8, [x25]                                      
01aa2c50  cbz       x8, #0x1aa521c                                 
01aa2c54  adrp      x9, #0x3a7b000                                 
01aa2c58  mov       x24, x0                                        
01aa2c5c  ldr       x9, [x9, #0xf88]                               
01aa2c60  ldr       s8, [x8, #0x20]                                
01aa2c64  ldr       x0, [x9]                                       
01aa2c68  ldr       w9, [x0, #0xe4]                                
01aa2c6c  cbnz      w9, #0x1aa2c74                                 
01aa2c70  bl        #0x183dcb0                                     
01aa2c74  fmov      s0, s8                                         
01aa2c78  mov       x0, xzr                                        
01aa2c7c  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa2c80  cbz       x24, #0x1aa521c                                
01aa2c84  mov       w1, w0                                         
01aa2c88  mov       x0, x24                                        
01aa2c8c  mov       x2, xzr                                        
01aa2c90  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa2c94  str       x0, [x20, #0x140]                              
01aa2c98  cbz       x0, #0x1aa521c                                 
01aa2c9c  ldp       w8, w9, [x0, #0x44]                            
01aa2ca0  cmp       w8, #0                                         
01aa2ca4  cinc      w8, w8, lt                                     
01aa2ca8  cmp       w9, #0                                         
01aa2cac  cinc      w9, w9, lt                                     
01aa2cb0  asr       w8, w8, #1                                     
01aa2cb4  asr       w9, w9, #1                                     
01aa2cb8  stp       w8, w9, [x0, #0x44]                            
01aa2cbc  mov       w8, #1                                         
01aa2cc0  b         #0x1aa2ef0                                     
01aa2cc4  ldr       w8, [x28, #0x18]                               
01aa2cc8  cmp       w29, w8                                        
01aa2ccc  b.hs      #0x1aa5220                                     
01aa2cd0  ldr       x8, [x25]                                      
01aa2cd4  cbz       x8, #0x1aa521c                                 
01aa2cd8  adrp      x9, #0x3a7b000                                 
01aa2cdc  ldr       x9, [x9, #0xf88]                               
01aa2ce0  ldr       s8, [x8, #0x20]                                
01aa2ce4  ldr       x0, [x9]                                       
01aa2ce8  ldr       w9, [x0, #0xe4]                                
01aa2cec  cbnz      w9, #0x1aa2cf4                                 
01aa2cf0  bl        #0x183dcb0                                     
01aa2cf4  fmov      s0, s8                                         
01aa2cf8  mov       x0, xzr                                        
01aa2cfc  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa2d00  cmp       w0, #3                                         
01aa2d04  b.ne      #0x1aa2ef4                                     
01aa2d08  ldr       x8, [x20, #0x140]                              
01aa2d0c  cbz       x8, #0x1aa521c                                 
01aa2d10  ldur      d0, [x8, #0x44]                                
01aa2d14  mov       w9, #2                                         
01aa2d18  str       w9, [x8, #0x6c]                                
01aa2d1c  scvtf     v0.2s, v0.2s                                   
01aa2d20  fmul      v0.2s, v0.2s, v11.2s                           
01aa2d24  fcmeq     v1.2s, v0.2s, v9.2s                            
01aa2d28  fcvtzs    v0.2s, v0.2s                                   
01aa2d2c  bit       v0.8b, v12.8b, v1.8b                           
01aa2d30  stur      d0, [x8, #0x44]                                
01aa2d34  b         #0x1aa2ef4                                     
01aa2d38  ldr       w8, [x28, #0x18]                               
01aa2d3c  cmp       w29, w8                                        
01aa2d40  b.hs      #0x1aa5220                                     
01aa2d44  ldr       x8, [x25]                                      
01aa2d48  cbz       x8, #0x1aa521c                                 
01aa2d4c  adrp      x9, #0x3a7b000                                 
01aa2d50  ldr       x9, [x9, #0xf88]                               
01aa2d54  ldr       x24, [x8, #0x18]                               
01aa2d58  ldr       x0, [x9]                                       
01aa2d5c  ldr       w9, [x0, #0xe4]                                
01aa2d60  cbnz      w9, #0x1aa2d68                                 
01aa2d64  bl        #0x183dcb0                                     
01aa2d68  mov       x0, x24                                        
01aa2d6c  mov       x1, xzr                                        
01aa2d70  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa2d74  cmp       w0, #3                                         
01aa2d78  b.ne      #0x1aa2e24                                     
01aa2d7c  adrp      x8, #0x3a7c000                                 
01aa2d80  ldr       x8, [x8, #0xc08]                               
01aa2d84  ldr       x8, [x8]                                       
01aa2d88  ldr       x8, [x8, #0xb8]                                
01aa2d8c  ldr       x0, [x8]                                       
01aa2d90  cbz       x0, #0x1aa521c                                 
01aa2d94  adrp      x8, #0x3a7c000                                 
01aa2d98  ldr       x8, [x8, #0xd40]                               
01aa2d9c  ldr       x1, [x8]                                       
01aa2da0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa2da4  ldr       w8, [x28, #0x18]                               
01aa2da8  cmp       w29, w8                                        
01aa2dac  b.hs      #0x1aa5220                                     
01aa2db0  ldr       x8, [x25]                                      
01aa2db4  cbz       x8, #0x1aa521c                                 
01aa2db8  adrp      x9, #0x3a7b000                                 
01aa2dbc  mov       x24, x0                                        
01aa2dc0  ldr       x9, [x9, #0xf88]                               
01aa2dc4  ldr       s8, [x8, #0x20]                                
01aa2dc8  ldr       x0, [x9]                                       
01aa2dcc  ldr       w9, [x0, #0xe4]                                
01aa2dd0  cbnz      w9, #0x1aa2dd8                                 
01aa2dd4  bl        #0x183dcb0                                     
01aa2dd8  fmov      s0, s8                                         
01aa2ddc  mov       x0, xzr                                        
01aa2de0  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa2de4  cbz       x24, #0x1aa521c                                
01aa2de8  mov       w1, w0                                         
01aa2dec  mov       x0, x24                                        
01aa2df0  mov       x2, xzr                                        
01aa2df4  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa2df8  str       x0, [x20, #0x140]                              
01aa2dfc  cbz       x0, #0x1aa521c                                 
01aa2e00  ldur      d0, [x0, #0x44]                                
01aa2e04  mov       w8, #2                                         
01aa2e08  scvtf     v0.2s, v0.2s                                   
01aa2e0c  fmul      v0.2s, v0.2s, v11.2s                           
01aa2e10  fcmeq     v1.2s, v0.2s, v9.2s                            
01aa2e14  fcvtzs    v0.2s, v0.2s                                   
01aa2e18  bit       v0.8b, v12.8b, v1.8b                           
01aa2e1c  stur      d0, [x0, #0x44]                                
01aa2e20  b         #0x1aa2ef0                                     
01aa2e24  ldr       w8, [x28, #0x18]                               
01aa2e28  cmp       w29, w8                                        
01aa2e2c  b.hs      #0x1aa5220                                     
01aa2e30  ldr       x8, [x25]                                      
01aa2e34  cbz       x8, #0x1aa521c                                 
01aa2e38  adrp      x9, #0x3a7b000                                 
01aa2e3c  ldr       x9, [x9, #0xf88]                               
01aa2e40  ldr       x24, [x8, #0x18]                               
01aa2e44  ldr       x0, [x9]                                       
01aa2e48  ldr       w9, [x0, #0xe4]                                
01aa2e4c  cbnz      w9, #0x1aa2e54                                 
01aa2e50  bl        #0x183dcb0                                     
01aa2e54  mov       x0, x24                                        
01aa2e58  mov       x1, xzr                                        
01aa2e5c  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa2e60  cmp       w0, #4                                         
01aa2e64  b.ne      #0x1aa2ef4                                     
01aa2e68  adrp      x8, #0x3a7c000                                 
01aa2e6c  ldr       x8, [x8, #0xc08]                               
01aa2e70  ldr       x8, [x8]                                       
01aa2e74  ldr       x8, [x8, #0xb8]                                
01aa2e78  ldr       x0, [x8]                                       
01aa2e7c  cbz       x0, #0x1aa521c                                 
01aa2e80  adrp      x8, #0x3a7c000                                 
01aa2e84  ldr       x8, [x8, #0xd40]                               
01aa2e88  ldr       x1, [x8]                                       
01aa2e8c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa2e90  ldr       w8, [x28, #0x18]                               
01aa2e94  cmp       w29, w8                                        
01aa2e98  b.hs      #0x1aa5220                                     
01aa2e9c  ldr       x8, [x25]                                      
01aa2ea0  cbz       x8, #0x1aa521c                                 
01aa2ea4  adrp      x9, #0x3a7b000                                 
01aa2ea8  mov       x24, x0                                        
01aa2eac  ldr       x9, [x9, #0xf88]                               
01aa2eb0  ldr       s8, [x8, #0x20]                                
01aa2eb4  ldr       x0, [x9]                                       
01aa2eb8  ldr       w9, [x0, #0xe4]                                
01aa2ebc  cbnz      w9, #0x1aa2ec4                                 
01aa2ec0  bl        #0x183dcb0                                     
01aa2ec4  fmov      s0, s8                                         
01aa2ec8  mov       x0, xzr                                        
01aa2ecc  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa2ed0  cbz       x24, #0x1aa521c                                
01aa2ed4  mov       w1, w0                                         
01aa2ed8  mov       x0, x24                                        
01aa2edc  mov       x2, xzr                                        
01aa2ee0  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa2ee4  str       x0, [x20, #0x140]                              
01aa2ee8  cbz       x0, #0x1aa521c                                 
01aa2eec  mov       w8, #4                                         
01aa2ef0  str       w8, [x0, #0x6c]                                
01aa2ef4  mov       w8, #1                                         
01aa2ef8  strb      w8, [x20, #0x1e0]                              
01aa2efc  ldr       x25, [x20, #0x140]                             
01aa2f00  cbz       x25, #0x1aa2f70                                
01aa2f04  adrp      x28, #0x3a7c000                                
01aa2f08  ldr       x28, [x28, #0xc08]                             
01aa2f0c  ldr       x8, [x28]                                      
01aa2f10  ldr       x8, [x8, #0xb8]                                
01aa2f14  ldr       x0, [x8]                                       
01aa2f18  cbz       x0, #0x1aa521c                                 
01aa2f1c  ldr       x8, [x25, #0x20]                               
01aa2f20  cbz       x8, #0x1aa521c                                 
01aa2f24  ldrsw     x9, [x0, #0x5cc]                               
01aa2f28  ldr       w10, [x8, #0x18]                               
01aa2f2c  cmp       w9, w10                                        
01aa2f30  b.hs      #0x1aa5220                                     
01aa2f34  add       x8, x8, x9, lsl #3                             
01aa2f38  mov       x29, x26                                       
01aa2f3c  ldr       x24, [x8, #0x20]                               
01aa2f40  adrp      x8, #0x3a7c000                                 
01aa2f44  ldr       x8, [x8, #0xd40]                               
01aa2f48  ldr       x1, [x8]                                       
01aa2f4c  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa2f50  ldr       x8, [x20, #0x140]                              
01aa2f54  cbz       x8, #0x1aa521c                                 
01aa2f58  cbz       x0, #0x1aa521c                                 
01aa2f5c  ldr       x1, [x8, #0xb0]                                
01aa2f60  mov       x2, xzr                                        
01aa2f64  bl        #0x1ab0690                                     // MonsterDataBase$$GetChoiceAbIndex
01aa2f68  str       w0, [x25, #0xb8]                               
01aa2f6c  b         #0x1aa2f80                                     
01aa2f70  adrp      x28, #0x3a7c000                                
01aa2f74  ldr       x24, [x26]                                     
01aa2f78  mov       x29, x26                                       
01aa2f7c  ldr       x28, [x28, #0xc08]                             
01aa2f80  adrp      x26, #0x3a7c000                                
01aa2f84  ldr       x8, [x20, #0x118]                              
01aa2f88  ldr       x26, [x26, #0xde8]                             
01aa2f8c  cbz       x8, #0x1aa521c                                 
01aa2f90  ldrsw     x9, [x20, #0x13c]                              
01aa2f94  ldr       w10, [x8, #0x18]                               
01aa2f98  cmp       w9, w10                                        
01aa2f9c  b.hs      #0x1aa5220                                     
01aa2fa0  add       x8, x8, x9, lsl #3                             
01aa2fa4  ldr       x0, [x8, #0x20]                                
01aa2fa8  cbz       x0, #0x1aa521c                                 
01aa2fac  ldr       w1, [x20, #0xe0]                               
01aa2fb0  ldr       x2, [x23]                                      
01aa2fb4  ldr       x25, [x20, #0xf0]                              
01aa2fb8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2fbc  cbz       x0, #0x1aa521c                                 
01aa2fc0  ldr       x0, [x0, #0x38]                                
01aa2fc4  cbz       x0, #0x1aa521c                                 
01aa2fc8  ldr       x8, [sp, #0x58]                                
01aa2fcc  ldr       x2, [x21]                                      
01aa2fd0  ldr       w1, [x8, #0x10]                                
01aa2fd4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2fd8  cbz       x0, #0x1aa521c                                 
01aa2fdc  ldr       x0, [x0, #0x20]                                
01aa2fe0  cbz       x0, #0x1aa521c                                 
01aa2fe4  ldr       w1, [x20, #0xe4]                               
01aa2fe8  ldr       x2, [x19]                                      
01aa2fec  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa2ff0  cbz       x0, #0x1aa521c                                 
01aa2ff4  ldr       x8, [x28]                                      
01aa2ff8  ldr       x8, [x8, #0xb8]                                
01aa2ffc  ldr       x8, [x8]                                       
01aa3000  cbz       x8, #0x1aa521c                                 
01aa3004  ldr       x0, [x0, #0x20]                                
01aa3008  ldr       x2, [x8, #0x40]                                
01aa300c  mov       x1, x24                                        
01aa3010  mov       x3, xzr                                        
01aa3014  bl        #0x2c6e654                                     // System.String$$Format
01aa3018  adrp      x8, #0x3a7c000                                 
01aa301c  mov       x3, x0                                         
01aa3020  mov       x0, x27                                        
01aa3024  ldr       x8, [x8, #0xee8]                               
01aa3028  mov       x1, x25                                        
01aa302c  mov       x4, xzr                                        
01aa3030  ldr       x2, [x8]                                       
01aa3034  bl        #0x2c6e254                                     // System.String$$Concat
01aa3038  ldr       x8, [x20, #0x118]                              
01aa303c  cbz       x8, #0x1aa521c                                 
01aa3040  ldrsw     x9, [x20, #0x13c]                              
01aa3044  ldr       w10, [x8, #0x18]                               
01aa3048  cmp       w9, w10                                        
01aa304c  b.hs      #0x1aa5220                                     
01aa3050  add       x8, x8, x9, lsl #3                             
01aa3054  mov       x27, x0                                        
01aa3058  ldr       x0, [x8, #0x20]                                
01aa305c  cbz       x0, #0x1aa521c                                 
01aa3060  ldr       w1, [x20, #0xe0]                               
01aa3064  ldr       x2, [x23]                                      
01aa3068  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa306c  cbz       x0, #0x1aa521c                                 
01aa3070  ldr       x0, [x0, #0x38]                                
01aa3074  cbz       x0, #0x1aa521c                                 
01aa3078  ldr       x24, [sp, #0x58]                               
01aa307c  ldr       x2, [x21]                                      
01aa3080  ldr       w1, [x24, #0x10]                               
01aa3084  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3088  cbz       x0, #0x1aa521c                                 
01aa308c  ldr       x0, [x0, #0x20]                                
01aa3090  cbz       x0, #0x1aa521c                                 
01aa3094  ldr       w1, [x20, #0xe4]                               
01aa3098  ldr       x2, [x19]                                      
01aa309c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa30a0  cbz       x0, #0x1aa521c                                 
01aa30a4  ldr       w8, [x0, #0x18]                                
01aa30a8  cmn       w8, #3                                         
01aa30ac  b.eq      #0x1aa3180                                     
01aa30b0  ldr       x8, [x28]                                      
01aa30b4  ldr       x8, [x8, #0xb8]                                
01aa30b8  ldr       x0, [x8]                                       
01aa30bc  cbz       x0, #0x1aa521c                                 
01aa30c0  mov       w1, wzr                                        
01aa30c4  mov       x2, xzr                                        
01aa30c8  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa30cc  fcmp      s0, #0.0                                       
01aa30d0  b.ls      #0x1aa312c                                     
01aa30d4  ldr       x8, [x28]                                      
01aa30d8  ldr       x8, [x8, #0xb8]                                
01aa30dc  ldr       x0, [x8]                                       
01aa30e0  cbz       x0, #0x1aa521c                                 
01aa30e4  mov       w1, #1                                         
01aa30e8  mov       x2, xzr                                        
01aa30ec  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa30f0  fcmp      s0, #0.0                                       
01aa30f4  b.hi      #0x1aa3180                                     
01aa30f8  ldr       x0, [x26]                                      
01aa30fc  ldr       w8, [x0, #0xe4]                                
01aa3100  cbnz      w8, #0x1aa310c                                 
01aa3104  bl        #0x183dcb0                                     
01aa3108  ldr       x0, [x26]                                      
01aa310c  ldr       x8, [x28]                                      
01aa3110  ldr       x8, [x8, #0xb8]                                
01aa3114  ldr       x9, [x8]                                       
01aa3118  cbz       x9, #0x1aa521c                                 
01aa311c  ldr       x8, [x0, #0xb8]                                
01aa3120  ldr       x8, [x8, #0xd8]                                
01aa3124  cbnz      x8, #0x1aa315c                                 
01aa3128  b         #0x1aa521c                                     
01aa312c  ldr       x0, [x26]                                      
01aa3130  ldr       w8, [x0, #0xe4]                                
01aa3134  cbnz      w8, #0x1aa3140                                 
01aa3138  bl        #0x183dcb0                                     
01aa313c  ldr       x0, [x26]                                      
01aa3140  ldr       x8, [x28]                                      
01aa3144  ldr       x8, [x8, #0xb8]                                
01aa3148  ldr       x9, [x8]                                       
01aa314c  cbz       x9, #0x1aa521c                                 
01aa3150  ldr       x8, [x0, #0xb8]                                
01aa3154  ldr       x8, [x8, #0xd0]                                
01aa3158  cbz       x8, #0x1aa521c                                 
01aa315c  ldr       w9, [x9, #0x5cc]                               
01aa3160  ldr       w10, [x8, #0x18]                               
01aa3164  cmp       w9, w10                                        
01aa3168  b.hs      #0x1aa5220                                     
01aa316c  add       x8, x8, w9, sxtw #3                            
01aa3170  mov       x0, x27                                        
01aa3174  mov       x2, xzr                                        
01aa3178  ldr       x1, [x8, #0x20]                                
01aa317c  bl        #0x2c63780                                     // System.String$$Concat
01aa3180  mov       x0, x20                                        
01aa3184  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa3188  ldr       x8, [x20, #0x118]                              
01aa318c  cbz       x8, #0x1aa521c                                 
01aa3190  ldrsw     x9, [x20, #0x13c]                              
01aa3194  ldr       w10, [x8, #0x18]                               
01aa3198  cmp       w9, w10                                        
01aa319c  b.hs      #0x1aa5220                                     
01aa31a0  add       x8, x8, x9, lsl #3                             
01aa31a4  ldr       x0, [x8, #0x20]                                
01aa31a8  cbz       x0, #0x1aa521c                                 
01aa31ac  ldr       w1, [x20, #0xe0]                               
01aa31b0  ldr       x2, [x23]                                      
01aa31b4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa31b8  cbz       x0, #0x1aa521c                                 
01aa31bc  ldr       x0, [x0, #0x38]                                
01aa31c0  cbz       x0, #0x1aa521c                                 
01aa31c4  ldr       w1, [x24, #0x10]                               
01aa31c8  ldr       x2, [x21]                                      
01aa31cc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa31d0  cbz       x0, #0x1aa521c                                 
01aa31d4  ldr       x0, [x0, #0x20]                                
01aa31d8  cbz       x0, #0x1aa521c                                 
01aa31dc  ldr       w1, [x20, #0xe4]                               
01aa31e0  ldr       x2, [x19]                                      
01aa31e4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa31e8  cbz       x0, #0x1aa521c                                 
01aa31ec  ldr       w8, [x0, #0x18]                                
01aa31f0  cmn       w8, #3                                         
01aa31f4  b.eq      #0x1aa3334                                     
01aa31f8  ldr       x8, [x28]                                      
01aa31fc  ldr       x8, [x8, #0xb8]                                
01aa3200  ldr       x0, [x8]                                       
01aa3204  cbz       x0, #0x1aa521c                                 
01aa3208  mov       w1, wzr                                        
01aa320c  mov       x2, xzr                                        
01aa3210  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa3214  fcmp      s0, #0.0                                       
01aa3218  b.ls      #0x1aa3334                                     
01aa321c  ldr       x8, [x28]                                      
01aa3220  ldr       x8, [x8, #0xb8]                                
01aa3224  ldr       x0, [x8]                                       
01aa3228  cbz       x0, #0x1aa521c                                 
01aa322c  mov       w1, #1                                         
01aa3230  mov       x2, xzr                                        
01aa3234  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa3238  fcmp      s0, #0.0                                       
01aa323c  b.ls      #0x1aa3334                                     
01aa3240  ldr       x8, [x20, #0x118]                              
01aa3244  cbz       x8, #0x1aa521c                                 
01aa3248  ldrsw     x9, [x20, #0x13c]                              
01aa324c  ldr       w10, [x8, #0x18]                               
01aa3250  cmp       w9, w10                                        
01aa3254  b.hs      #0x1aa5220                                     
01aa3258  add       x8, x8, x9, lsl #3                             
01aa325c  ldr       x0, [x8, #0x20]                                
01aa3260  cbz       x0, #0x1aa521c                                 
01aa3264  ldr       w1, [x20, #0xe0]                               
01aa3268  ldr       x2, [x23]                                      
01aa326c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3270  cbz       x0, #0x1aa521c                                 
01aa3274  ldr       x0, [x0, #0x38]                                
01aa3278  cbz       x0, #0x1aa521c                                 
01aa327c  ldr       w1, [x24, #0x10]                               
01aa3280  ldr       x2, [x21]                                      
01aa3284  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3288  cbz       x0, #0x1aa521c                                 
01aa328c  ldr       x0, [x0, #0x20]                                
01aa3290  cbz       x0, #0x1aa521c                                 
01aa3294  ldr       w1, [x20, #0xe4]                               
01aa3298  ldr       x2, [x19]                                      
01aa329c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa32a0  cbz       x0, #0x1aa521c                                 
01aa32a4  ldr       w8, [x0, #0x18]                                
01aa32a8  cmn       w8, #2                                         
01aa32ac  b.ne      #0x1aa3644                                     
01aa32b0  ldr       x0, [x20, #0xb8]                               
01aa32b4  cbz       x0, #0x1aa521c                                 
01aa32b8  adrp      x8, #0x3a8c000                                 
01aa32bc  mov       w1, wzr                                        
01aa32c0  ldr       x8, [x8, #0x610]                               
01aa32c4  ldr       x2, [x8]                                       
01aa32c8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa32cc  adrp      x8, #0x3a7c000                                 
01aa32d0  mov       x24, x0                                        
01aa32d4  ldr       x8, [x8, #0xc78]                               
01aa32d8  ldr       x8, [x8]                                       
01aa32dc  mov       x0, x8                                         
01aa32e0  bl        #0x183ddcc                                     
01aa32e4  adrp      x8, #0x3a8c000                                 
01aa32e8  mov       x1, x20                                        
01aa32ec  mov       x3, xzr                                        
01aa32f0  ldr       x8, [x8, #0xb80]                               
01aa32f4  mov       x25, x0                                        
01aa32f8  ldr       x2, [x8]                                       
01aa32fc  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa3300  ldr       x0, [x26]                                      
01aa3304  ldr       w8, [x0, #0xe4]                                
01aa3308  cbnz      w8, #0x1aa3314                                 
01aa330c  bl        #0x183dcb0                                     
01aa3310  ldr       x0, [x26]                                      
01aa3314  ldr       x8, [x28]                                      
01aa3318  ldr       x8, [x8, #0xb8]                                
01aa331c  ldr       x9, [x8]                                       
01aa3320  cbz       x9, #0x1aa521c                                 
01aa3324  ldr       x8, [x0, #0xb8]                                
01aa3328  ldr       x8, [x8, #0xa8]                                
01aa332c  cbnz      x8, #0x1aa35f8                                 
01aa3330  b         #0x1aa521c                                     
01aa3334  adrp      x8, #0x3a7c000                                 
01aa3338  ldr       x8, [x8, #0xca8]                               
01aa333c  ldr       x8, [x8]                                       
01aa3340  ldr       x8, [x8, #0xb8]                                
01aa3344  ldr       x24, [x8]                                      
01aa3348  cbz       x24, #0x1aa521c                                
01aa334c  ldrb      w8, [x24, #0x20]                               
01aa3350  cbz       w8, #0x1aa3390                                 
01aa3354  adrp      x8, #0x3a7c000                                 
01aa3358  mov       w1, #1                                         
01aa335c  ldr       x8, [x8, #0x80]                                
01aa3360  ldr       x0, [x8]                                       
01aa3364  bl        #0x183dc20                                     
01aa3368  cbz       x0, #0x1aa521c                                 
01aa336c  ldr       w8, [x0, #0x18]                                
01aa3370  mov       x2, x0                                         
01aa3374  cbz       w8, #0x1aa5220                                 
01aa3378  mov       w8, #1                                         
01aa337c  mov       x0, x24                                        
01aa3380  mov       w1, #0x11                                      
01aa3384  mov       x3, xzr                                        
01aa3388  str       w8, [x2, #0x20]                                
01aa338c  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01aa3390  ldr       x8, [x28]                                      
01aa3394  strb      wzr, [x20, #0x115]                             
01aa3398  ldr       x8, [x8, #0xb8]                                
01aa339c  ldr       x8, [x8]                                       
01aa33a0  cbz       x8, #0x1aa521c                                 
01aa33a4  ldr       w9, [x8, #0x10c]                               
01aa33a8  ldr       w10, [x8, #0x70]                               
01aa33ac  cmp       w9, w10                                        
01aa33b0  b.ge      #0x1aa3404                                     
01aa33b4  ldr       w9, [x8, #0x2c0]                               
01aa33b8  ldr       x0, [x8, #0x2b8]                               
01aa33bc  mov       x2, xzr                                        
01aa33c0  ldr       x8, [sp, #0x50]                                
01aa33c4  and       x8, x8, #0xffffffff00000000                    
01aa33c8  orr       x24, x8, x9                                    
01aa33cc  mov       x1, x24                                        
01aa33d0  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01aa33d4  ldr       x8, [x28]                                      
01aa33d8  str       x24, [sp, #0x50]                               
01aa33dc  ldr       x8, [x8, #0xb8]                                
01aa33e0  ldr       x8, [x8]                                       
01aa33e4  tbz       w0, #0, #0x1aa3480                             
01aa33e8  cbz       x8, #0x1aa521c                                 
01aa33ec  ldr       w8, [x8, #0x10c]                               
01aa33f0  cbz       w8, #0x1aa3494                                 
01aa33f4  ldr       w9, [x20, #0x110]                              
01aa33f8  add       w8, w8, w9                                     
01aa33fc  sub       w24, w8, #1                                    
01aa3400  b         #0x1aa3498                                     
01aa3404  ldr       x0, [x20, #0xb8]                               
01aa3408  cbz       x0, #0x1aa521c                                 
01aa340c  adrp      x8, #0x3a8c000                                 
01aa3410  mov       w1, wzr                                        
01aa3414  ldr       x8, [x8, #0x610]                               
01aa3418  ldr       x2, [x8]                                       
01aa341c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3420  adrp      x8, #0x3a7c000                                 
01aa3424  mov       x24, x0                                        
01aa3428  ldr       x8, [x8, #0xc78]                               
01aa342c  ldr       x8, [x8]                                       
01aa3430  mov       x0, x8                                         
01aa3434  bl        #0x183ddcc                                     
01aa3438  adrp      x8, #0x3a8c000                                 
01aa343c  mov       x1, x20                                        
01aa3440  mov       x3, xzr                                        
01aa3444  ldr       x8, [x8, #0xb60]                               
01aa3448  mov       x25, x0                                        
01aa344c  ldr       x2, [x8]                                       
01aa3450  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa3454  ldr       x0, [x26]                                      
01aa3458  ldr       w8, [x0, #0xe4]                                
01aa345c  cbnz      w8, #0x1aa3468                                 
01aa3460  bl        #0x183dcb0                                     
01aa3464  ldr       x0, [x26]                                      
01aa3468  ldr       x8, [x28]                                      
01aa346c  ldr       x8, [x8, #0xb8]                                
01aa3470  ldr       x9, [x8]                                       
01aa3474  cbz       x9, #0x1aa521c                                 
01aa3478  ldr       x8, [x0, #0xb8]                                
01aa347c  b         #0x1aa35f0                                     
01aa3480  cbz       x8, #0x1aa521c                                 
01aa3484  ldr       w9, [x20, #0x110]                              
01aa3488  ldr       w8, [x8, #0x10c]                               
01aa348c  add       w24, w8, w9                                    
01aa3490  b         #0x1aa3498                                     
01aa3494  mov       w24, wzr                                       
01aa3498  ldr       x0, [x20, #0xb8]                               
01aa349c  cbz       x0, #0x1aa521c                                 
01aa34a0  adrp      x8, #0x3a8c000                                 
01aa34a4  mov       w1, wzr                                        
01aa34a8  ldr       x8, [x8, #0x610]                               
01aa34ac  ldr       x2, [x8]                                       
01aa34b0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa34b4  ldr       x8, [sp, #0x58]                                
01aa34b8  mov       x25, x0                                        
01aa34bc  ldr       x27, [x8, #0x20]                               
01aa34c0  cbnz      x27, #0x1aa3508                                
01aa34c4  adrp      x8, #0x3a7c000                                 
01aa34c8  ldr       x8, [x8, #0xc78]                               
01aa34cc  ldr       x0, [x8]                                       
01aa34d0  bl        #0x183ddcc                                     
01aa34d4  adrp      x8, #0x3a8c000                                 
01aa34d8  mov       x26, x29                                       
01aa34dc  mov       x3, xzr                                        
01aa34e0  ldr       x8, [x8, #0xbb8]                               
01aa34e4  ldr       x29, [sp, #0x58]                               
01aa34e8  mov       x27, x0                                        
01aa34ec  ldr       x2, [x8]                                       
01aa34f0  mov       x1, x29                                        
01aa34f4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa34f8  str       x27, [x29, #0x20]                              
01aa34fc  mov       x29, x26                                       
01aa3500  adrp      x26, #0x3a7c000                                
01aa3504  ldr       x26, [x26, #0xde8]                             
01aa3508  ldr       x0, [x26]                                      
01aa350c  ldr       w8, [x0, #0xe4]                                
01aa3510  cbnz      w8, #0x1aa351c                                 
01aa3514  bl        #0x183dcb0                                     
01aa3518  ldr       x0, [x26]                                      
01aa351c  ldr       x8, [x28]                                      
01aa3520  ldr       x8, [x8, #0xb8]                                
01aa3524  ldr       x9, [x8]                                       
01aa3528  cbz       x9, #0x1aa521c                                 
01aa352c  ldr       x8, [x0, #0xb8]                                
01aa3530  ldr       x8, [x8, #0xc0]                                
01aa3534  cbz       x8, #0x1aa521c                                 
01aa3538  ldr       x11, [x8, #0x10]                               
01aa353c  ldrsw     x10, [x9, #0x10c]                              
01aa3540  ldr       w12, [x11]                                     
01aa3544  cmp       w10, w12                                       
01aa3548  b.hs      #0x1aa5220                                     
01aa354c  ldrsw     x9, [x9, #0x5cc]                               
01aa3550  ldr       x11, [x11, #0x10]                              
01aa3554  cmp       w9, w11                                        
01aa3558  b.hs      #0x1aa5220                                     
01aa355c  madd      x9, x11, x10, x9                               
01aa3560  ldr       x7, [x29]                                      
01aa3564  mov       x0, x20                                        
01aa3568  mov       x1, x25                                        
01aa356c  mov       w2, #1                                         
01aa3570  mov       x3, x27                                        
01aa3574  mov       x5, xzr                                        
01aa3578  mov       w6, w24                                        
01aa357c  add       x8, x8, x9, lsl #3                             
01aa3580  ldr       x4, [x8, #0x20]                                
01aa3584  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa3588  ldr       x0, [x20, #0xb8]                               
01aa358c  cbz       x0, #0x1aa521c                                 
01aa3590  adrp      x8, #0x3a8c000                                 
01aa3594  mov       w1, #1                                         
01aa3598  ldr       x8, [x8, #0x610]                               
01aa359c  ldr       x2, [x8]                                       
01aa35a0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa35a4  adrp      x8, #0x3a7c000                                 
01aa35a8  mov       x24, x0                                        
01aa35ac  ldr       x8, [x8, #0xc78]                               
01aa35b0  ldr       x8, [x8]                                       
01aa35b4  mov       x0, x8                                         
01aa35b8  bl        #0x183ddcc                                     
01aa35bc  adrp      x8, #0x3a8c000                                 
01aa35c0  mov       x1, x20                                        
01aa35c4  mov       x3, xzr                                        
01aa35c8  ldr       x8, [x8, #0xb90]                               
01aa35cc  mov       x25, x0                                        
01aa35d0  ldr       x2, [x8]                                       
01aa35d4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa35d8  ldr       x8, [x28]                                      
01aa35dc  ldr       x8, [x8, #0xb8]                                
01aa35e0  ldr       x9, [x8]                                       
01aa35e4  cbz       x9, #0x1aa521c                                 
01aa35e8  ldr       x8, [x26]                                      
01aa35ec  ldr       x8, [x8, #0xb8]                                
01aa35f0  ldr       x8, [x8, #0xc8]                                
01aa35f4  cbz       x8, #0x1aa521c                                 
01aa35f8  ldrsw     x9, [x9, #0x5cc]                               
01aa35fc  ldr       w10, [x8, #0x18]                               
01aa3600  cmp       w9, w10                                        
01aa3604  b.hs      #0x1aa5220                                     
01aa3608  add       x8, x8, x9, lsl #3                             
01aa360c  ldr       x7, [x29]                                      
01aa3610  mov       x0, x20                                        
01aa3614  mov       x1, x24                                        
01aa3618  mov       w2, #1                                         
01aa361c  ldr       x4, [x8, #0x20]                                
01aa3620  mov       x3, x25                                        
01aa3624  mov       x5, xzr                                        
01aa3628  mov       w6, wzr                                        
01aa362c  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa3630  ldr       x24, [sp, #0x58]                               
01aa3634  ldr       x8, [x20, #0x118]                              
01aa3638  add       w22, w22, #1                                   
01aa363c  cbnz      x8, #0x1aa272c                                 
01aa3640  b         #0x1aa521c                                     
01aa3644  ldr       x8, [x20, #0x118]                              
01aa3648  cbz       x8, #0x1aa521c                                 
01aa364c  ldrsw     x9, [x20, #0x13c]                              
01aa3650  ldr       w10, [x8, #0x18]                               
01aa3654  cmp       w9, w10                                        
01aa3658  b.hs      #0x1aa5220                                     
01aa365c  add       x8, x8, x9, lsl #3                             
01aa3660  ldr       x0, [x8, #0x20]                                
01aa3664  cbz       x0, #0x1aa521c                                 
01aa3668  ldr       w1, [x20, #0xe0]                               
01aa366c  ldr       x2, [x23]                                      
01aa3670  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3674  cbz       x0, #0x1aa521c                                 
01aa3678  ldr       x0, [x0, #0x38]                                
01aa367c  cbz       x0, #0x1aa521c                                 
01aa3680  ldr       w1, [x24, #0x10]                               
01aa3684  ldr       x2, [x21]                                      
01aa3688  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa368c  cbz       x0, #0x1aa521c                                 
01aa3690  ldr       x0, [x0, #0x20]                                
01aa3694  cbz       x0, #0x1aa521c                                 
01aa3698  ldr       w1, [x20, #0xe4]                               
01aa369c  ldr       x2, [x19]                                      
01aa36a0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa36a4  cbz       x0, #0x1aa521c                                 
01aa36a8  ldr       w8, [x0, #0x18]                                
01aa36ac  cmn       w8, #1                                         
01aa36b0  b.eq      #0x1aa3794                                     
01aa36b4  ldrb      w8, [x20, #0x1e0]                              
01aa36b8  cbz       w8, #0x1aa3634                                 
01aa36bc  adrp      x8, #0x3a8c000                                 
01aa36c0  ldr       x8, [x8, #0xbd8]                               
01aa36c4  ldr       x0, [x8]                                       
01aa36c8  bl        #0x183ddcc                                     
01aa36cc  mov       x1, xzr                                        
01aa36d0  mov       x28, x0                                        
01aa36d4  bl        #0x1ab2b70                                     // EventCtrl.<>c__DisplayClass150_1$$.ctor
01aa36d8  cbz       x28, #0x1aa521c                                
01aa36dc  ldr       x8, [x20, #0x118]                              
01aa36e0  str       x24, [x28, #0x18]                              
01aa36e4  cbz       x8, #0x1aa521c                                 
01aa36e8  ldrsw     x9, [x20, #0x13c]                              
01aa36ec  ldr       w10, [x8, #0x18]                               
01aa36f0  cmp       w9, w10                                        
01aa36f4  b.hs      #0x1aa5220                                     
01aa36f8  add       x8, x8, x9, lsl #3                             
01aa36fc  ldr       x0, [x8, #0x20]                                
01aa3700  cbz       x0, #0x1aa521c                                 
01aa3704  ldr       w1, [x20, #0xe0]                               
01aa3708  ldr       x2, [x23]                                      
01aa370c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3710  cbz       x0, #0x1aa521c                                 
01aa3714  ldr       x8, [x28, #0x18]                               
01aa3718  cbz       x8, #0x1aa521c                                 
01aa371c  ldr       x0, [x0, #0x38]                                
01aa3720  cbz       x0, #0x1aa521c                                 
01aa3724  ldr       w1, [x8, #0x10]                                
01aa3728  ldr       x2, [x21]                                      
01aa372c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3730  cbz       x0, #0x1aa521c                                 
01aa3734  ldr       x0, [x0, #0x20]                                
01aa3738  cbz       x0, #0x1aa521c                                 
01aa373c  ldr       w1, [x20, #0xe4]                               
01aa3740  ldr       x2, [x19]                                      
01aa3744  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3748  cbz       x0, #0x1aa521c                                 
01aa374c  ldr       w1, [x0, #0x38]                                
01aa3750  mov       x0, x20                                        
01aa3754  bl        #0x1a9e368                                     // EventCtrl$$GetWinRateStrByPercent
01aa3758  adrp      x8, #0x3a7d000                                 
01aa375c  mov       x24, x28                                       
01aa3760  mov       x2, xzr                                        
01aa3764  ldr       x8, [x8, #0x130]                               
01aa3768  str       s0, [x24, #0x10]!                              
01aa376c  mov       x0, x24                                        
01aa3770  ldr       x1, [x8]                                       
01aa3774  bl        #0x2de259c                                     // System.Single$$ToString
01aa3778  ldr       s0, [x24]                                      
01aa377c  str       x0, [sp, #0x40]                                
01aa3780  fcmp      s0, s10                                        
01aa3784  b.pl      #0x1aa3818                                     
01aa3788  adrp      x8, #0x3a8c000                                 
01aa378c  ldr       x8, [x8, #0x710]                               
01aa3790  b         #0x1aa3828                                     
01aa3794  ldr       x0, [x20, #0xb8]                               
01aa3798  cbz       x0, #0x1aa521c                                 
01aa379c  adrp      x8, #0x3a8c000                                 
01aa37a0  mov       w1, wzr                                        
01aa37a4  ldr       x8, [x8, #0x610]                               
01aa37a8  ldr       x2, [x8]                                       
01aa37ac  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa37b0  adrp      x8, #0x3a7c000                                 
01aa37b4  mov       x24, x0                                        
01aa37b8  ldr       x8, [x8, #0xc78]                               
01aa37bc  ldr       x8, [x8]                                       
01aa37c0  mov       x0, x8                                         
01aa37c4  bl        #0x183ddcc                                     
01aa37c8  adrp      x8, #0x3a8c000                                 
01aa37cc  mov       x1, x20                                        
01aa37d0  mov       x3, xzr                                        
01aa37d4  ldr       x8, [x8, #0xb88]                               
01aa37d8  mov       x25, x0                                        
01aa37dc  ldr       x2, [x8]                                       
01aa37e0  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa37e4  ldr       x0, [x26]                                      
01aa37e8  ldr       w8, [x0, #0xe4]                                
01aa37ec  cbnz      w8, #0x1aa37f8                                 
01aa37f0  bl        #0x183dcb0                                     
01aa37f4  ldr       x0, [x26]                                      
01aa37f8  ldr       x8, [x28]                                      
01aa37fc  ldr       x8, [x8, #0xb8]                                
01aa3800  ldr       x9, [x8]                                       
01aa3804  cbz       x9, #0x1aa521c                                 
01aa3808  ldr       x8, [x0, #0xb8]                                
01aa380c  ldr       x8, [x8, #0xb8]                                
01aa3810  cbnz      x8, #0x1aa35f8                                 
01aa3814  b         #0x1aa521c                                     
01aa3818  fcmp      s0, s13                                        
01aa381c  b.le      #0x1aa3830                                     
01aa3820  adrp      x8, #0x3a8c000                                 
01aa3824  ldr       x8, [x8, #0x708]                               
01aa3828  ldr       x8, [x8]                                       
01aa382c  str       x8, [sp, #0x40]                                
01aa3830  ldr       x0, [x20, #0xb8]                               
01aa3834  cbz       x0, #0x1aa521c                                 
01aa3838  adrp      x8, #0x3a8c000                                 
01aa383c  mov       w1, wzr                                        
01aa3840  ldr       x8, [x8, #0x610]                               
01aa3844  ldr       x2, [x8]                                       
01aa3848  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa384c  adrp      x8, #0x3a7c000                                 
01aa3850  mov       x27, x0                                        
01aa3854  ldr       x8, [x8, #0xc78]                               
01aa3858  ldr       x8, [x8]                                       
01aa385c  mov       x0, x8                                         
01aa3860  bl        #0x183ddcc                                     
01aa3864  adrp      x8, #0x3a8c000                                 
01aa3868  mov       x1, x28                                        
01aa386c  mov       x3, xzr                                        
01aa3870  ldr       x8, [x8, #0xbc8]                               
01aa3874  mov       x24, x0                                        
01aa3878  ldr       x2, [x8]                                       
01aa387c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa3880  adrp      x8, #0x3a7b000                                 
01aa3884  mov       w1, #6                                         
01aa3888  ldr       x8, [x8, #0x7c8]                               
01aa388c  ldr       x0, [x8]                                       
01aa3890  bl        #0x183dc20                                     
01aa3894  ldr       x8, [x26]                                      
01aa3898  mov       x25, x0                                        
01aa389c  ldr       w9, [x8, #0xe4]                                
01aa38a0  cbnz      w9, #0x1aa38b0                                 
01aa38a4  mov       x0, x8                                         
01aa38a8  bl        #0x183dcb0                                     
01aa38ac  ldr       x8, [x26]                                      
01aa38b0  adrp      x9, #0x3a7c000                                 
01aa38b4  ldr       x9, [x9, #0xc08]                               
01aa38b8  ldr       x9, [x9]                                       
01aa38bc  ldr       x9, [x9, #0xb8]                                
01aa38c0  ldr       x10, [x9]                                      
01aa38c4  cbz       x10, #0x1aa521c                                
01aa38c8  ldr       x8, [x8, #0xb8]                                
01aa38cc  ldr       x9, [x8, #0x90]                                
01aa38d0  cbz       x9, #0x1aa521c                                 
01aa38d4  ldrsw     x10, [x10, #0x5cc]                             
01aa38d8  ldr       w8, [x9, #0x18]                                
01aa38dc  cmp       w10, w8                                        
01aa38e0  b.hs      #0x1aa5220                                     
01aa38e4  cbz       x25, #0x1aa521c                                
01aa38e8  ldr       w8, [x25, #0x18]                               
01aa38ec  cbz       w8, #0x1aa5220                                 
01aa38f0  add       x9, x9, x10, lsl #3                            
01aa38f4  cmp       w8, #1                                         
01aa38f8  ldr       x9, [x9, #0x20]                                
01aa38fc  str       x9, [x25, #0x20]                               
01aa3900  b.eq      #0x1aa5220                                     
01aa3904  adrp      x9, #0x3a8c000                                 
01aa3908  ldr       x9, [x9, #0x718]                               
01aa390c  ldr       x9, [x9]                                       
01aa3910  str       x9, [x25, #0x28]                               
01aa3914  adrp      x9, #0x3a7c000                                 
01aa3918  ldr       x9, [x9, #0xc08]                               
01aa391c  ldr       x9, [x9]                                       
01aa3920  ldr       x9, [x9, #0xb8]                                
01aa3924  ldr       x10, [x9]                                      
01aa3928  cbz       x10, #0x1aa521c                                
01aa392c  ldr       x9, [x26]                                      
01aa3930  ldr       x9, [x9, #0xb8]                                
01aa3934  ldr       x9, [x9, #0xe8]                                
01aa3938  cbz       x9, #0x1aa521c                                 
01aa393c  ldrsw     x10, [x10, #0x5cc]                             
01aa3940  ldr       w11, [x9, #0x18]                               
01aa3944  cmp       w10, w11                                       
01aa3948  b.hs      #0x1aa5220                                     
01aa394c  cmp       w8, #2                                         
01aa3950  b.ls      #0x1aa5220                                     
01aa3954  add       x9, x9, x10, lsl #3                            
01aa3958  cmp       w8, #3                                         
01aa395c  ldr       x9, [x9, #0x20]                                
01aa3960  str       x9, [x25, #0x30]                               
01aa3964  b.eq      #0x1aa5220                                     
01aa3968  adrp      x9, #0x3a7c000                                 
01aa396c  cmp       w8, #4                                         
01aa3970  ldr       x9, [x9, #0x4e0]                               
01aa3974  ldr       x9, [x9]                                       
01aa3978  str       x9, [x25, #0x38]                               
01aa397c  b.ls      #0x1aa5220                                     
01aa3980  cmp       w8, #5                                         
01aa3984  ldr       x8, [sp, #0x40]                                
01aa3988  str       x8, [x25, #0x40]                               
01aa398c  b.eq      #0x1aa5220                                     
01aa3990  adrp      x8, #0x3a7e000                                 
01aa3994  mov       x0, x25                                        
01aa3998  mov       x1, xzr                                        
01aa399c  ldr       x8, [x8, #0x470]                               
01aa39a0  ldr       x8, [x8]                                       
01aa39a4  str       x8, [x25, #0x48]                               
01aa39a8  bl        #0x2c6e35c                                     // System.String$$Concat
01aa39ac  ldr       x7, [x29]                                      
01aa39b0  mov       x4, x0                                         
01aa39b4  mov       x0, x20                                        
01aa39b8  mov       x1, x27                                        
01aa39bc  mov       w2, #1                                         
01aa39c0  mov       x3, x24                                        
01aa39c4  mov       x5, xzr                                        
01aa39c8  mov       w6, wzr                                        
01aa39cc  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa39d0  adrp      x8, #0x3a7c000                                 
01aa39d4  ldr       x8, [x8, #0xc08]                               
01aa39d8  ldr       x8, [x8]                                       
01aa39dc  ldr       x8, [x8, #0xb8]                                
01aa39e0  ldr       x8, [x8]                                       
01aa39e4  cbz       x8, #0x1aa521c                                 
01aa39e8  ldr       w9, [x8, #0x2c0]                               
01aa39ec  ldr       x0, [x8, #0x2b8]                               
01aa39f0  mov       x2, xzr                                        
01aa39f4  ldr       x8, [sp, #0x30]                                
01aa39f8  and       x8, x8, #0xffffffff00000000                    
01aa39fc  orr       x24, x8, x9                                    
01aa3a00  mov       x1, x24                                        
01aa3a04  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01aa3a08  mov       w8, w0                                         
01aa3a0c  ldr       x0, [x20, #0xb8]                               
01aa3a10  str       x24, [sp, #0x30]                               
01aa3a14  tbz       w8, #0, #0x1aa3ba4                             
01aa3a18  cbz       x0, #0x1aa521c                                 
01aa3a1c  adrp      x8, #0x3a8c000                                 
01aa3a20  mov       w1, #1                                         
01aa3a24  ldr       x8, [x8, #0x610]                               
01aa3a28  ldr       x2, [x8]                                       
01aa3a2c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3a30  adrp      x8, #0x3a7c000                                 
01aa3a34  mov       x27, x0                                        
01aa3a38  ldr       x8, [x8, #0xc78]                               
01aa3a3c  ldr       x8, [x8]                                       
01aa3a40  mov       x0, x8                                         
01aa3a44  bl        #0x183ddcc                                     
01aa3a48  adrp      x8, #0x3a8c000                                 
01aa3a4c  mov       x1, x28                                        
01aa3a50  mov       x3, xzr                                        
01aa3a54  ldr       x8, [x8, #0xbd0]                               
01aa3a58  mov       x24, x0                                        
01aa3a5c  ldr       x2, [x8]                                       
01aa3a60  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa3a64  adrp      x8, #0x3a7b000                                 
01aa3a68  mov       w1, #6                                         
01aa3a6c  ldr       x8, [x8, #0x7c8]                               
01aa3a70  ldr       x0, [x8]                                       
01aa3a74  bl        #0x183dc20                                     
01aa3a78  ldr       x8, [x26]                                      
01aa3a7c  mov       x25, x0                                        
01aa3a80  ldr       w9, [x8, #0xe4]                                
01aa3a84  cbnz      w9, #0x1aa3a94                                 
01aa3a88  mov       x0, x8                                         
01aa3a8c  bl        #0x183dcb0                                     
01aa3a90  ldr       x8, [x26]                                      
01aa3a94  adrp      x28, #0x3a7c000                                
01aa3a98  ldr       x28, [x28, #0xc08]                             
01aa3a9c  ldr       x9, [x28]                                      
01aa3aa0  ldr       x9, [x9, #0xb8]                                
01aa3aa4  ldr       x10, [x9]                                      
01aa3aa8  cbz       x10, #0x1aa521c                                
01aa3aac  ldr       x8, [x8, #0xb8]                                
01aa3ab0  ldr       x9, [x8, #0x98]                                
01aa3ab4  cbz       x9, #0x1aa521c                                 
01aa3ab8  ldrsw     x10, [x10, #0x5cc]                             
01aa3abc  ldr       w8, [x9, #0x18]                                
01aa3ac0  cmp       w10, w8                                        
01aa3ac4  b.hs      #0x1aa5220                                     
01aa3ac8  cbz       x25, #0x1aa521c                                
01aa3acc  ldr       w8, [x25, #0x18]                               
01aa3ad0  cbz       w8, #0x1aa5220                                 
01aa3ad4  add       x9, x9, x10, lsl #3                            
01aa3ad8  cmp       w8, #1                                         
01aa3adc  ldr       x9, [x9, #0x20]                                
01aa3ae0  str       x9, [x25, #0x20]                               
01aa3ae4  b.eq      #0x1aa5220                                     
01aa3ae8  adrp      x9, #0x3a8c000                                 
01aa3aec  ldr       x9, [x9, #0x718]                               
01aa3af0  ldr       x9, [x9]                                       
01aa3af4  str       x9, [x25, #0x28]                               
01aa3af8  ldr       x9, [x28]                                      
01aa3afc  ldr       x9, [x9, #0xb8]                                
01aa3b00  ldr       x10, [x9]                                      
01aa3b04  cbz       x10, #0x1aa521c                                
01aa3b08  ldr       x9, [x26]                                      
01aa3b0c  ldr       x9, [x9, #0xb8]                                
01aa3b10  ldr       x9, [x9, #0xe8]                                
01aa3b14  cbz       x9, #0x1aa521c                                 
01aa3b18  ldrsw     x10, [x10, #0x5cc]                             
01aa3b1c  ldr       w11, [x9, #0x18]                               
01aa3b20  cmp       w10, w11                                       
01aa3b24  b.hs      #0x1aa5220                                     
01aa3b28  cmp       w8, #2                                         
01aa3b2c  b.ls      #0x1aa5220                                     
01aa3b30  add       x9, x9, x10, lsl #3                            
01aa3b34  cmp       w8, #3                                         
01aa3b38  ldr       x9, [x9, #0x20]                                
01aa3b3c  str       x9, [x25, #0x30]                               
01aa3b40  b.eq      #0x1aa5220                                     
01aa3b44  adrp      x9, #0x3a7c000                                 
01aa3b48  cmp       w8, #4                                         
01aa3b4c  ldr       x9, [x9, #0x4e0]                               
01aa3b50  ldr       x9, [x9]                                       
01aa3b54  str       x9, [x25, #0x38]                               
01aa3b58  b.ls      #0x1aa5220                                     
01aa3b5c  cmp       w8, #5                                         
01aa3b60  ldr       x8, [sp, #0x40]                                
01aa3b64  str       x8, [x25, #0x40]                               
01aa3b68  b.eq      #0x1aa5220                                     
01aa3b6c  adrp      x8, #0x3a7e000                                 
01aa3b70  mov       x0, x25                                        
01aa3b74  mov       x1, xzr                                        
01aa3b78  ldr       x8, [x8, #0x470]                               
01aa3b7c  ldr       x8, [x8]                                       
01aa3b80  str       x8, [x25, #0x48]                               
01aa3b84  bl        #0x2c6e35c                                     // System.String$$Concat
01aa3b88  ldr       x7, [x29]                                      
01aa3b8c  mov       x4, x0                                         
01aa3b90  mov       x0, x20                                        
01aa3b94  mov       x1, x27                                        
01aa3b98  mov       w2, #1                                         
01aa3b9c  mov       x3, x24                                        
01aa3ba0  b         #0x1aa3624                                     
01aa3ba4  cbz       x0, #0x1aa521c                                 
01aa3ba8  adrp      x8, #0x3a8c000                                 
01aa3bac  mov       w1, #1                                         
01aa3bb0  ldr       x8, [x8, #0x610]                               
01aa3bb4  ldr       x2, [x8]                                       
01aa3bb8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3bbc  adrp      x8, #0x3a7c000                                 
01aa3bc0  mov       x24, x0                                        
01aa3bc4  ldr       x8, [x8, #0xc78]                               
01aa3bc8  ldr       x8, [x8]                                       
01aa3bcc  mov       x0, x8                                         
01aa3bd0  bl        #0x183ddcc                                     
01aa3bd4  adrp      x8, #0x3a8c000                                 
01aa3bd8  mov       x1, x20                                        
01aa3bdc  mov       x3, xzr                                        
01aa3be0  ldr       x8, [x8, #0xb98]                               
01aa3be4  mov       x25, x0                                        
01aa3be8  ldr       x2, [x8]                                       
01aa3bec  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa3bf0  ldr       x0, [x26]                                      
01aa3bf4  adrp      x28, #0x3a7c000                                
01aa3bf8  ldr       w8, [x0, #0xe4]                                
01aa3bfc  ldr       x28, [x28, #0xc08]                             
01aa3c00  cbnz      w8, #0x1aa3c0c                                 
01aa3c04  bl        #0x183dcb0                                     
01aa3c08  ldr       x0, [x26]                                      
01aa3c0c  ldr       x8, [x28]                                      
01aa3c10  ldr       x8, [x8, #0xb8]                                
01aa3c14  ldr       x9, [x8]                                       
01aa3c18  cbz       x9, #0x1aa521c                                 
01aa3c1c  ldr       x10, [x0, #0xb8]                               
01aa3c20  ldr       x8, [x10, #0x98]                               
01aa3c24  cbz       x8, #0x1aa521c                                 
01aa3c28  ldrsw     x9, [x9, #0x5cc]                               
01aa3c2c  ldr       w11, [x8, #0x18]                               
01aa3c30  cmp       w9, w11                                        
01aa3c34  b.hs      #0x1aa5220                                     
01aa3c38  ldr       x10, [x10, #0xa0]                              
01aa3c3c  cbz       x10, #0x1aa521c                                
01aa3c40  ldr       w11, [x10, #0x18]                              
01aa3c44  cmp       w9, w11                                        
01aa3c48  b.hs      #0x1aa5220                                     
01aa3c4c  add       x8, x8, x9, lsl #3                             
01aa3c50  add       x9, x10, x9, lsl #3                            
01aa3c54  mov       x2, xzr                                        
01aa3c58  ldr       x0, [x8, #0x20]                                
01aa3c5c  ldr       x1, [x9, #0x20]                                
01aa3c60  bl        #0x2c63780                                     // System.String$$Concat
01aa3c64  ldr       x7, [x29]                                      
01aa3c68  mov       x4, x0                                         
01aa3c6c  mov       x0, x20                                        
01aa3c70  mov       x1, x24                                        
01aa3c74  mov       w2, wzr                                        
01aa3c78  b         #0x1aa3620                                     
01aa3c7c  cbz       x8, #0x1aa521c                                 
01aa3c80  ldrsw     x9, [x20, #0x13c]                              
01aa3c84  ldr       w10, [x8, #0x18]                               
01aa3c88  cmp       w9, w10                                        
01aa3c8c  b.hs      #0x1aa5220                                     
01aa3c90  add       x8, x8, x9, lsl #3                             
01aa3c94  ldr       x0, [x8, #0x20]                                
01aa3c98  cbz       x0, #0x1aa521c                                 
01aa3c9c  ldr       w1, [x20, #0xe0]                               
01aa3ca0  ldr       x2, [x23]                                      
01aa3ca4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3ca8  cbz       x0, #0x1aa521c                                 
01aa3cac  ldr       x0, [x0, #0x38]                                
01aa3cb0  cbz       x0, #0x1aa521c                                 
01aa3cb4  ldr       w1, [x24, #0x10]                               
01aa3cb8  ldr       x2, [x21]                                      
01aa3cbc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3cc0  cbz       x0, #0x1aa521c                                 
01aa3cc4  ldr       x1, [x0, #0x20]                                
01aa3cc8  mov       x0, x20                                        
01aa3ccc  bl        #0x1a992c0                                     // EventCtrl$$GetResultIndex
01aa3cd0  ldr       x27, [x29]                                     
01aa3cd4  ldr       x8, [x20, #0x118]                              
01aa3cd8  str       w0, [x20, #0xe4]                               
01aa3cdc  strb      wzr, [x20, #0x1e0]                             
01aa3ce0  str       x27, [x20, #0xf0]                              
01aa3ce4  cbz       x8, #0x1aa521c                                 
01aa3ce8  ldrsw     x9, [x20, #0x13c]                              
01aa3cec  ldr       w10, [x8, #0x18]                               
01aa3cf0  cmp       w9, w10                                        
01aa3cf4  b.hs      #0x1aa5220                                     
01aa3cf8  add       x8, x8, x9, lsl #3                             
01aa3cfc  ldr       x0, [x8, #0x20]                                
01aa3d00  cbz       x0, #0x1aa521c                                 
01aa3d04  ldr       w1, [x20, #0xe0]                               
01aa3d08  ldr       x2, [x23]                                      
01aa3d0c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3d10  cbz       x0, #0x1aa521c                                 
01aa3d14  ldr       x0, [x0, #0x38]                                
01aa3d18  cbz       x0, #0x1aa521c                                 
01aa3d1c  ldr       w1, [x24, #0x10]                               
01aa3d20  ldr       x2, [x21]                                      
01aa3d24  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3d28  cbz       x0, #0x1aa521c                                 
01aa3d2c  ldr       x0, [x0, #0x20]                                
01aa3d30  cbz       x0, #0x1aa521c                                 
01aa3d34  ldr       w1, [x20, #0xe4]                               
01aa3d38  ldr       x2, [x19]                                      
01aa3d3c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3d40  cbz       x0, #0x1aa521c                                 
01aa3d44  ldr       w8, [x0, #0x1c]                                
01aa3d48  cbz       w8, #0x1aa3e08                                 
01aa3d4c  ldr       x8, [x20, #0x118]                              
01aa3d50  cbz       x8, #0x1aa521c                                 
01aa3d54  ldrsw     x9, [x20, #0x13c]                              
01aa3d58  ldr       w10, [x8, #0x18]                               
01aa3d5c  cmp       w9, w10                                        
01aa3d60  b.hs      #0x1aa5220                                     
01aa3d64  add       x8, x8, x9, lsl #3                             
01aa3d68  ldr       x0, [x8, #0x20]                                
01aa3d6c  cbz       x0, #0x1aa521c                                 
01aa3d70  ldr       w1, [x20, #0xe0]                               
01aa3d74  ldr       x2, [x23]                                      
01aa3d78  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3d7c  cbz       x0, #0x1aa521c                                 
01aa3d80  ldr       x0, [x0, #0x38]                                
01aa3d84  cbz       x0, #0x1aa521c                                 
01aa3d88  ldr       w1, [x24, #0x10]                               
01aa3d8c  ldr       x2, [x21]                                      
01aa3d90  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3d94  cbz       x0, #0x1aa521c                                 
01aa3d98  ldr       x0, [x0, #0x20]                                
01aa3d9c  cbz       x0, #0x1aa521c                                 
01aa3da0  ldr       w1, [x20, #0xe4]                               
01aa3da4  ldr       x2, [x19]                                      
01aa3da8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3dac  cbz       x0, #0x1aa521c                                 
01aa3db0  ldr       w8, [x0, #0x1c]                                
01aa3db4  cmp       w8, #1                                         
01aa3db8  b.ne      #0x1aa3e74                                     
01aa3dbc  ldr       x0, [x26]                                      
01aa3dc0  ldr       w8, [x0, #0xe4]                                
01aa3dc4  cbnz      w8, #0x1aa3dd0                                 
01aa3dc8  bl        #0x183dcb0                                     
01aa3dcc  ldr       x0, [x26]                                      
01aa3dd0  ldr       x8, [x28]                                      
01aa3dd4  ldr       x8, [x8, #0xb8]                                
01aa3dd8  ldr       x9, [x8]                                       
01aa3ddc  cbz       x9, #0x1aa521c                                 
01aa3de0  ldr       x8, [x0, #0xb8]                                
01aa3de4  ldr       x8, [x8, #0xf8]                                
01aa3de8  cbz       x8, #0x1aa521c                                 
01aa3dec  ldr       w9, [x9, #0x5cc]                               
01aa3df0  ldr       w10, [x8, #0x18]                               
01aa3df4  cmp       w9, w10                                        
01aa3df8  b.hs      #0x1aa5220                                     
01aa3dfc  adrp      x10, #0x3a7d000                                
01aa3e00  ldr       x10, [x10, #0x98]                              
01aa3e04  b         #0x1aa3e50                                     
01aa3e08  ldr       x0, [x26]                                      
01aa3e0c  ldr       w8, [x0, #0xe4]                                
01aa3e10  cbnz      w8, #0x1aa3e1c                                 
01aa3e14  bl        #0x183dcb0                                     
01aa3e18  ldr       x0, [x26]                                      
01aa3e1c  ldr       x8, [x28]                                      
01aa3e20  ldr       x8, [x8, #0xb8]                                
01aa3e24  ldr       x9, [x8]                                       
01aa3e28  cbz       x9, #0x1aa521c                                 
01aa3e2c  ldr       x8, [x0, #0xb8]                                
01aa3e30  ldr       x8, [x8, #0xf0]                                
01aa3e34  cbz       x8, #0x1aa521c                                 
01aa3e38  ldr       w9, [x9, #0x5cc]                               
01aa3e3c  ldr       w10, [x8, #0x18]                               
01aa3e40  cmp       w9, w10                                        
01aa3e44  b.hs      #0x1aa5220                                     
01aa3e48  adrp      x10, #0x3a8c000                                
01aa3e4c  ldr       x10, [x10, #0x720]                             
01aa3e50  add       x8, x8, w9, sxtw #3                            
01aa3e54  ldr       x0, [x10]                                      
01aa3e58  mov       x3, xzr                                        
01aa3e5c  ldr       x1, [x8, #0x20]                                
01aa3e60  adrp      x8, #0x3a81000                                 
01aa3e64  ldr       x8, [x8, #0xc08]                               
01aa3e68  ldr       x2, [x8]                                       
01aa3e6c  bl        #0x2c6dcf0                                     // System.String$$Concat
01aa3e70  mov       x27, x0                                        
01aa3e74  ldr       x8, [x20, #0x118]                              
01aa3e78  cbz       x8, #0x1aa521c                                 
01aa3e7c  ldrsw     x9, [x20, #0x13c]                              
01aa3e80  ldr       w10, [x8, #0x18]                               
01aa3e84  cmp       w9, w10                                        
01aa3e88  b.hs      #0x1aa5220                                     
01aa3e8c  add       x8, x8, x9, lsl #3                             
01aa3e90  ldr       x0, [x8, #0x20]                                
01aa3e94  cbz       x0, #0x1aa521c                                 
01aa3e98  ldr       w1, [x20, #0xe0]                               
01aa3e9c  ldr       x2, [x23]                                      
01aa3ea0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3ea4  cbz       x0, #0x1aa521c                                 
01aa3ea8  ldr       x0, [x0, #0x38]                                
01aa3eac  cbz       x0, #0x1aa521c                                 
01aa3eb0  ldr       w1, [x24, #0x10]                               
01aa3eb4  ldr       x2, [x21]                                      
01aa3eb8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3ebc  cbz       x0, #0x1aa521c                                 
01aa3ec0  ldr       x0, [x0, #0x20]                                
01aa3ec4  cbz       x0, #0x1aa521c                                 
01aa3ec8  ldr       w1, [x20, #0xe4]                               
01aa3ecc  ldr       x2, [x19]                                      
01aa3ed0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3ed4  cbz       x0, #0x1aa521c                                 
01aa3ed8  ldr       x0, [x0, #0x30]                                
01aa3edc  ldr       x1, [x29]                                      
01aa3ee0  mov       x2, xzr                                        
01aa3ee4  bl        #0x2c6c040                                     // System.String$$op_Inequality
01aa3ee8  tbz       w0, #0, #0x1aa4444                             
01aa3eec  ldr       x8, [x20, #0x118]                              
01aa3ef0  cbz       x8, #0x1aa521c                                 
01aa3ef4  ldrsw     x9, [x20, #0x13c]                              
01aa3ef8  ldr       w10, [x8, #0x18]                               
01aa3efc  cmp       w9, w10                                        
01aa3f00  b.hs      #0x1aa5220                                     
01aa3f04  add       x8, x8, x9, lsl #3                             
01aa3f08  ldr       x0, [x8, #0x20]                                
01aa3f0c  cbz       x0, #0x1aa521c                                 
01aa3f10  ldr       w1, [x20, #0xe0]                               
01aa3f14  ldr       x2, [x23]                                      
01aa3f18  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3f1c  cbz       x0, #0x1aa521c                                 
01aa3f20  ldr       x0, [x0, #0x38]                                
01aa3f24  cbz       x0, #0x1aa521c                                 
01aa3f28  ldr       w1, [x24, #0x10]                               
01aa3f2c  ldr       x2, [x21]                                      
01aa3f30  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3f34  cbz       x0, #0x1aa521c                                 
01aa3f38  ldr       x0, [x0, #0x20]                                
01aa3f3c  cbz       x0, #0x1aa521c                                 
01aa3f40  ldr       w1, [x20, #0xe4]                               
01aa3f44  ldr       x2, [x19]                                      
01aa3f48  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa3f4c  cbz       x0, #0x1aa521c                                 
01aa3f50  ldr       x1, [x0, #0x30]                                
01aa3f54  bl        #0x1a9004c                                     // EventCtrl$$GetFormatData
01aa3f58  mov       x28, x0                                        
01aa3f5c  mov       x0, x20                                        
01aa3f60  mov       w2, wzr                                        
01aa3f64  mov       x1, x28                                        
01aa3f68  bl        #0x1a91980                                     // EventCtrl$$GiveRewardAndSetRewardText
01aa3f6c  cbz       x28, #0x1aa521c                                
01aa3f70  ldr       w8, [x28, #0x18]                               
01aa3f74  cmp       w8, #1                                         
01aa3f78  b.lt      #0x1aa4444                                     
01aa3f7c  bic       w9, w8, w8, asr #31                            
01aa3f80  mov       w25, wzr                                       
01aa3f84  cmp       w8, w25                                        
01aa3f88  b.eq      #0x1aa5220                                     
01aa3f8c  add       x22, x28, w25, sxtw #3                         
01aa3f90  ldr       x10, [x22, #0x20]!                             
01aa3f94  cbz       x10, #0x1aa521c                                
01aa3f98  ldr       w11, [x10, #0x10]                              
01aa3f9c  cmp       w11, #6                                        
01aa3fa0  b.eq      #0x1aa3fb4                                     
01aa3fa4  add       w25, w25, #1                                   
01aa3fa8  cmp       w9, w25                                        
01aa3fac  b.ne      #0x1aa3f84                                     
01aa3fb0  b         #0x1aa4444                                     
01aa3fb4  adrp      x8, #0x3a7b000                                 
01aa3fb8  ldr       x8, [x8, #0xf88]                               
01aa3fbc  ldr       x24, [x10, #0x18]                              
01aa3fc0  ldr       x0, [x8]                                       
01aa3fc4  ldr       w8, [x0, #0xe4]                                
01aa3fc8  cbnz      w8, #0x1aa3fd0                                 
01aa3fcc  bl        #0x183dcb0                                     
01aa3fd0  mov       x0, x24                                        
01aa3fd4  mov       x1, xzr                                        
01aa3fd8  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa3fdc  cbz       w0, #0x1aa409c                                 
01aa3fe0  ldr       w8, [x28, #0x18]                               
01aa3fe4  cmp       w25, w8                                        
01aa3fe8  b.hs      #0x1aa5220                                     
01aa3fec  ldr       x8, [x22]                                      
01aa3ff0  cbz       x8, #0x1aa521c                                 
01aa3ff4  adrp      x9, #0x3a7b000                                 
01aa3ff8  ldr       x9, [x9, #0xf88]                               
01aa3ffc  ldr       x24, [x8, #0x18]                               
01aa4000  ldr       x0, [x9]                                       
01aa4004  ldr       w9, [x0, #0xe4]                                
01aa4008  cbnz      w9, #0x1aa4010                                 
01aa400c  bl        #0x183dcb0                                     
01aa4010  mov       x0, x24                                        
01aa4014  mov       x1, xzr                                        
01aa4018  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa401c  ldr       w8, [x28, #0x18]                               
01aa4020  cmp       w0, #1                                         
01aa4024  b.ne      #0x1aa4120                                     
01aa4028  cmp       w25, w8                                        
01aa402c  b.hs      #0x1aa5220                                     
01aa4030  ldr       x8, [x22]                                      
01aa4034  cbz       x8, #0x1aa521c                                 
01aa4038  adrp      x9, #0x3a7b000                                 
01aa403c  ldr       x9, [x9, #0xf88]                               
01aa4040  ldr       s8, [x8, #0x20]                                
01aa4044  ldr       x0, [x9]                                       
01aa4048  ldr       w9, [x0, #0xe4]                                
01aa404c  cbnz      w9, #0x1aa4054                                 
01aa4050  bl        #0x183dcb0                                     
01aa4054  fmov      s0, s8                                         
01aa4058  mov       x0, xzr                                        
01aa405c  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa4060  cmp       w0, #2                                         
01aa4064  b.ne      #0x1aa420c                                     
01aa4068  ldr       x8, [x20, #0x140]                              
01aa406c  cbz       x8, #0x1aa521c                                 
01aa4070  ldp       w9, w10, [x8, #0x44]                           
01aa4074  cmp       w9, #0                                         
01aa4078  cinc      w9, w9, lt                                     
01aa407c  cmp       w10, #0                                        
01aa4080  cinc      w10, w10, lt                                   
01aa4084  asr       w9, w9, #1                                     
01aa4088  asr       w10, w10, #1                                   
01aa408c  stp       w9, w10, [x8, #0x44]                           
01aa4090  mov       w9, #1                                         
01aa4094  str       w9, [x8, #0x6c]                                
01aa4098  b         #0x1aa443c                                     
01aa409c  adrp      x8, #0x3a7c000                                 
01aa40a0  ldr       x8, [x8, #0xc08]                               
01aa40a4  ldr       x8, [x8]                                       
01aa40a8  ldr       x8, [x8, #0xb8]                                
01aa40ac  ldr       x0, [x8]                                       
01aa40b0  cbz       x0, #0x1aa521c                                 
01aa40b4  adrp      x8, #0x3a7c000                                 
01aa40b8  ldr       x8, [x8, #0xd40]                               
01aa40bc  ldr       x1, [x8]                                       
01aa40c0  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa40c4  ldr       w8, [x28, #0x18]                               
01aa40c8  cmp       w25, w8                                        
01aa40cc  b.hs      #0x1aa5220                                     
01aa40d0  ldr       x8, [x22]                                      
01aa40d4  cbz       x8, #0x1aa521c                                 
01aa40d8  adrp      x9, #0x3a7b000                                 
01aa40dc  mov       x24, x0                                        
01aa40e0  ldr       x9, [x9, #0xf88]                               
01aa40e4  ldr       s8, [x8, #0x20]                                
01aa40e8  ldr       x0, [x9]                                       
01aa40ec  ldr       w9, [x0, #0xe4]                                
01aa40f0  cbnz      w9, #0x1aa40f8                                 
01aa40f4  bl        #0x183dcb0                                     
01aa40f8  fmov      s0, s8                                         
01aa40fc  mov       x0, xzr                                        
01aa4100  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa4104  cbz       x24, #0x1aa521c                                
01aa4108  mov       w1, w0                                         
01aa410c  mov       x0, x24                                        
01aa4110  mov       x2, xzr                                        
01aa4114  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa4118  str       x0, [x20, #0x140]                              
01aa411c  b         #0x1aa443c                                     
01aa4120  cmp       w25, w8                                        
01aa4124  b.hs      #0x1aa5220                                     
01aa4128  ldr       x8, [x22]                                      
01aa412c  cbz       x8, #0x1aa521c                                 
01aa4130  adrp      x9, #0x3a7b000                                 
01aa4134  ldr       x9, [x9, #0xf88]                               
01aa4138  ldr       x24, [x8, #0x18]                               
01aa413c  ldr       x0, [x9]                                       
01aa4140  ldr       w9, [x0, #0xe4]                                
01aa4144  cbnz      w9, #0x1aa414c                                 
01aa4148  bl        #0x183dcb0                                     
01aa414c  mov       x0, x24                                        
01aa4150  mov       x1, xzr                                        
01aa4154  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa4158  cmp       w0, #2                                         
01aa415c  b.ne      #0x1aa4280                                     
01aa4160  adrp      x8, #0x3a7c000                                 
01aa4164  ldr       x8, [x8, #0xc08]                               
01aa4168  ldr       x8, [x8]                                       
01aa416c  ldr       x8, [x8, #0xb8]                                
01aa4170  ldr       x0, [x8]                                       
01aa4174  cbz       x0, #0x1aa521c                                 
01aa4178  adrp      x8, #0x3a7c000                                 
01aa417c  ldr       x8, [x8, #0xd40]                               
01aa4180  ldr       x1, [x8]                                       
01aa4184  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa4188  ldr       w8, [x28, #0x18]                               
01aa418c  cmp       w25, w8                                        
01aa4190  b.hs      #0x1aa5220                                     
01aa4194  ldr       x8, [x22]                                      
01aa4198  cbz       x8, #0x1aa521c                                 
01aa419c  adrp      x9, #0x3a7b000                                 
01aa41a0  mov       x24, x0                                        
01aa41a4  ldr       x9, [x9, #0xf88]                               
01aa41a8  ldr       s8, [x8, #0x20]                                
01aa41ac  ldr       x0, [x9]                                       
01aa41b0  ldr       w9, [x0, #0xe4]                                
01aa41b4  cbnz      w9, #0x1aa41bc                                 
01aa41b8  bl        #0x183dcb0                                     
01aa41bc  fmov      s0, s8                                         
01aa41c0  mov       x0, xzr                                        
01aa41c4  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa41c8  cbz       x24, #0x1aa521c                                
01aa41cc  mov       w1, w0                                         
01aa41d0  mov       x0, x24                                        
01aa41d4  mov       x2, xzr                                        
01aa41d8  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa41dc  str       x0, [x20, #0x140]                              
01aa41e0  cbz       x0, #0x1aa521c                                 
01aa41e4  ldp       w8, w9, [x0, #0x44]                            
01aa41e8  cmp       w8, #0                                         
01aa41ec  cinc      w8, w8, lt                                     
01aa41f0  cmp       w9, #0                                         
01aa41f4  cinc      w9, w9, lt                                     
01aa41f8  asr       w8, w8, #1                                     
01aa41fc  asr       w9, w9, #1                                     
01aa4200  stp       w8, w9, [x0, #0x44]                            
01aa4204  mov       w8, #1                                         
01aa4208  b         #0x1aa4438                                     
01aa420c  ldr       w8, [x28, #0x18]                               
01aa4210  cmp       w25, w8                                        
01aa4214  b.hs      #0x1aa5220                                     
01aa4218  ldr       x8, [x22]                                      
01aa421c  cbz       x8, #0x1aa521c                                 
01aa4220  adrp      x9, #0x3a7b000                                 
01aa4224  ldr       x9, [x9, #0xf88]                               
01aa4228  ldr       s8, [x8, #0x20]                                
01aa422c  ldr       x0, [x9]                                       
01aa4230  ldr       w9, [x0, #0xe4]                                
01aa4234  cbnz      w9, #0x1aa423c                                 
01aa4238  bl        #0x183dcb0                                     
01aa423c  fmov      s0, s8                                         
01aa4240  mov       x0, xzr                                        
01aa4244  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa4248  cmp       w0, #3                                         
01aa424c  b.ne      #0x1aa443c                                     
01aa4250  ldr       x8, [x20, #0x140]                              
01aa4254  cbz       x8, #0x1aa521c                                 
01aa4258  ldur      d0, [x8, #0x44]                                
01aa425c  mov       w9, #2                                         
01aa4260  str       w9, [x8, #0x6c]                                
01aa4264  scvtf     v0.2s, v0.2s                                   
01aa4268  fmul      v0.2s, v0.2s, v11.2s                           
01aa426c  fcmeq     v1.2s, v0.2s, v9.2s                            
01aa4270  fcvtzs    v0.2s, v0.2s                                   
01aa4274  bit       v0.8b, v12.8b, v1.8b                           
01aa4278  stur      d0, [x8, #0x44]                                
01aa427c  b         #0x1aa443c                                     
01aa4280  ldr       w8, [x28, #0x18]                               
01aa4284  cmp       w25, w8                                        
01aa4288  b.hs      #0x1aa5220                                     
01aa428c  ldr       x8, [x22]                                      
01aa4290  cbz       x8, #0x1aa521c                                 
01aa4294  adrp      x9, #0x3a7b000                                 
01aa4298  ldr       x9, [x9, #0xf88]                               
01aa429c  ldr       x24, [x8, #0x18]                               
01aa42a0  ldr       x0, [x9]                                       
01aa42a4  ldr       w9, [x0, #0xe4]                                
01aa42a8  cbnz      w9, #0x1aa42b0                                 
01aa42ac  bl        #0x183dcb0                                     
01aa42b0  mov       x0, x24                                        
01aa42b4  mov       x1, xzr                                        
01aa42b8  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa42bc  cmp       w0, #3                                         
01aa42c0  b.ne      #0x1aa436c                                     
01aa42c4  adrp      x8, #0x3a7c000                                 
01aa42c8  ldr       x8, [x8, #0xc08]                               
01aa42cc  ldr       x8, [x8]                                       
01aa42d0  ldr       x8, [x8, #0xb8]                                
01aa42d4  ldr       x0, [x8]                                       
01aa42d8  cbz       x0, #0x1aa521c                                 
01aa42dc  adrp      x8, #0x3a7c000                                 
01aa42e0  ldr       x8, [x8, #0xd40]                               
01aa42e4  ldr       x1, [x8]                                       
01aa42e8  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa42ec  ldr       w8, [x28, #0x18]                               
01aa42f0  cmp       w25, w8                                        
01aa42f4  b.hs      #0x1aa5220                                     
01aa42f8  ldr       x8, [x22]                                      
01aa42fc  cbz       x8, #0x1aa521c                                 
01aa4300  adrp      x9, #0x3a7b000                                 
01aa4304  mov       x24, x0                                        
01aa4308  ldr       x9, [x9, #0xf88]                               
01aa430c  ldr       s8, [x8, #0x20]                                
01aa4310  ldr       x0, [x9]                                       
01aa4314  ldr       w9, [x0, #0xe4]                                
01aa4318  cbnz      w9, #0x1aa4320                                 
01aa431c  bl        #0x183dcb0                                     
01aa4320  fmov      s0, s8                                         
01aa4324  mov       x0, xzr                                        
01aa4328  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa432c  cbz       x24, #0x1aa521c                                
01aa4330  mov       w1, w0                                         
01aa4334  mov       x0, x24                                        
01aa4338  mov       x2, xzr                                        
01aa433c  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa4340  str       x0, [x20, #0x140]                              
01aa4344  cbz       x0, #0x1aa521c                                 
01aa4348  ldur      d0, [x0, #0x44]                                
01aa434c  mov       w8, #2                                         
01aa4350  scvtf     v0.2s, v0.2s                                   
01aa4354  fmul      v0.2s, v0.2s, v11.2s                           
01aa4358  fcmeq     v1.2s, v0.2s, v9.2s                            
01aa435c  fcvtzs    v0.2s, v0.2s                                   
01aa4360  bit       v0.8b, v12.8b, v1.8b                           
01aa4364  stur      d0, [x0, #0x44]                                
01aa4368  b         #0x1aa4438                                     
01aa436c  ldr       w8, [x28, #0x18]                               
01aa4370  cmp       w25, w8                                        
01aa4374  b.hs      #0x1aa5220                                     
01aa4378  ldr       x8, [x22]                                      
01aa437c  cbz       x8, #0x1aa521c                                 
01aa4380  adrp      x9, #0x3a7b000                                 
01aa4384  ldr       x9, [x9, #0xf88]                               
01aa4388  ldr       x24, [x8, #0x18]                               
01aa438c  ldr       x0, [x9]                                       
01aa4390  ldr       w9, [x0, #0xe4]                                
01aa4394  cbnz      w9, #0x1aa439c                                 
01aa4398  bl        #0x183dcb0                                     
01aa439c  mov       x0, x24                                        
01aa43a0  mov       x1, xzr                                        
01aa43a4  bl        #0x2d5aad4                                     // System.Convert$$ToInt32
01aa43a8  cmp       w0, #4                                         
01aa43ac  b.ne      #0x1aa443c                                     
01aa43b0  adrp      x8, #0x3a7c000                                 
01aa43b4  ldr       x8, [x8, #0xc08]                               
01aa43b8  ldr       x8, [x8]                                       
01aa43bc  ldr       x8, [x8, #0xb8]                                
01aa43c0  ldr       x0, [x8]                                       
01aa43c4  cbz       x0, #0x1aa521c                                 
01aa43c8  adrp      x8, #0x3a7c000                                 
01aa43cc  ldr       x8, [x8, #0xd40]                               
01aa43d0  ldr       x1, [x8]                                       
01aa43d4  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa43d8  ldr       w8, [x28, #0x18]                               
01aa43dc  cmp       w25, w8                                        
01aa43e0  b.hs      #0x1aa5220                                     
01aa43e4  ldr       x8, [x22]                                      
01aa43e8  cbz       x8, #0x1aa521c                                 
01aa43ec  adrp      x9, #0x3a7b000                                 
01aa43f0  mov       x24, x0                                        
01aa43f4  ldr       x9, [x9, #0xf88]                               
01aa43f8  ldr       s8, [x8, #0x20]                                
01aa43fc  ldr       x0, [x9]                                       
01aa4400  ldr       w9, [x0, #0xe4]                                
01aa4404  cbnz      w9, #0x1aa440c                                 
01aa4408  bl        #0x183dcb0                                     
01aa440c  fmov      s0, s8                                         
01aa4410  mov       x0, xzr                                        
01aa4414  bl        #0x2d5aa04                                     // System.Convert$$ToInt32
01aa4418  cbz       x24, #0x1aa521c                                
01aa441c  mov       w1, w0                                         
01aa4420  mov       x0, x24                                        
01aa4424  mov       x2, xzr                                        
01aa4428  bl        #0x1ab0510                                     // MonsterDataBase$$GetMonsterDataByIndex
01aa442c  str       x0, [x20, #0x140]                              
01aa4430  cbz       x0, #0x1aa521c                                 
01aa4434  mov       w8, #4                                         
01aa4438  str       w8, [x0, #0x6c]                                
01aa443c  mov       w8, #1                                         
01aa4440  strb      w8, [x20, #0x1e0]                              
01aa4444  ldr       x22, [x20, #0x140]                             
01aa4448  cbz       x22, #0x1aa44b4                                
01aa444c  adrp      x28, #0x3a7c000                                
01aa4450  ldr       x28, [x28, #0xc08]                             
01aa4454  ldr       x8, [x28]                                      
01aa4458  ldr       x8, [x8, #0xb8]                                
01aa445c  ldr       x0, [x8]                                       
01aa4460  cbz       x0, #0x1aa521c                                 
01aa4464  ldr       x8, [x22, #0x20]                               
01aa4468  cbz       x8, #0x1aa521c                                 
01aa446c  ldrsw     x9, [x0, #0x5cc]                               
01aa4470  ldr       w10, [x8, #0x18]                               
01aa4474  cmp       w9, w10                                        
01aa4478  b.hs      #0x1aa5220                                     
01aa447c  add       x8, x8, x9, lsl #3                             
01aa4480  ldr       x24, [x8, #0x20]                               
01aa4484  adrp      x8, #0x3a7c000                                 
01aa4488  ldr       x8, [x8, #0xd40]                               
01aa448c  ldr       x1, [x8]                                       
01aa4490  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa4494  ldr       x8, [x20, #0x140]                              
01aa4498  cbz       x8, #0x1aa521c                                 
01aa449c  cbz       x0, #0x1aa521c                                 
01aa44a0  ldr       x1, [x8, #0xb0]                                
01aa44a4  mov       x2, xzr                                        
01aa44a8  bl        #0x1ab0690                                     // MonsterDataBase$$GetChoiceAbIndex
01aa44ac  str       w0, [x22, #0xb8]                               
01aa44b0  b         #0x1aa44c0                                     
01aa44b4  adrp      x28, #0x3a7c000                                
01aa44b8  ldr       x24, [x29]                                     
01aa44bc  ldr       x28, [x28, #0xc08]                             
01aa44c0  ldr       x8, [x20, #0x118]                              
01aa44c4  cbz       x8, #0x1aa521c                                 
01aa44c8  ldrsw     x9, [x20, #0x13c]                              
01aa44cc  ldr       w10, [x8, #0x18]                               
01aa44d0  cmp       w9, w10                                        
01aa44d4  b.hs      #0x1aa5220                                     
01aa44d8  add       x8, x8, x9, lsl #3                             
01aa44dc  ldr       x0, [x8, #0x20]                                
01aa44e0  cbz       x0, #0x1aa521c                                 
01aa44e4  ldr       w1, [x20, #0xe0]                               
01aa44e8  ldr       x2, [x23]                                      
01aa44ec  ldr       x25, [x20, #0xf0]                              
01aa44f0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa44f4  cbz       x0, #0x1aa521c                                 
01aa44f8  ldr       x0, [x0, #0x38]                                
01aa44fc  cbz       x0, #0x1aa521c                                 
01aa4500  ldr       x8, [sp, #0x58]                                
01aa4504  ldr       x2, [x21]                                      
01aa4508  ldr       w1, [x8, #0x10]                                
01aa450c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4510  cbz       x0, #0x1aa521c                                 
01aa4514  ldr       x0, [x0, #0x20]                                
01aa4518  cbz       x0, #0x1aa521c                                 
01aa451c  ldr       w1, [x20, #0xe4]                               
01aa4520  ldr       x2, [x19]                                      
01aa4524  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4528  cbz       x0, #0x1aa521c                                 
01aa452c  ldr       x8, [x28]                                      
01aa4530  ldr       x8, [x8, #0xb8]                                
01aa4534  ldr       x8, [x8]                                       
01aa4538  cbz       x8, #0x1aa521c                                 
01aa453c  ldr       x0, [x0, #0x20]                                
01aa4540  ldr       x2, [x8, #0x40]                                
01aa4544  mov       x1, x24                                        
01aa4548  mov       x3, xzr                                        
01aa454c  bl        #0x2c6e654                                     // System.String$$Format
01aa4550  adrp      x8, #0x3a7c000                                 
01aa4554  mov       x3, x0                                         
01aa4558  mov       x0, x27                                        
01aa455c  ldr       x8, [x8, #0xee8]                               
01aa4560  mov       x1, x25                                        
01aa4564  mov       x4, xzr                                        
01aa4568  ldr       x2, [x8]                                       
01aa456c  bl        #0x2c6e254                                     // System.String$$Concat
01aa4570  ldr       x8, [x20, #0x118]                              
01aa4574  cbz       x8, #0x1aa521c                                 
01aa4578  ldrsw     x9, [x20, #0x13c]                              
01aa457c  ldr       w10, [x8, #0x18]                               
01aa4580  cmp       w9, w10                                        
01aa4584  b.hs      #0x1aa5220                                     
01aa4588  add       x8, x8, x9, lsl #3                             
01aa458c  mov       x27, x0                                        
01aa4590  ldr       x0, [x8, #0x20]                                
01aa4594  cbz       x0, #0x1aa521c                                 
01aa4598  ldr       w1, [x20, #0xe0]                               
01aa459c  ldr       x2, [x23]                                      
01aa45a0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa45a4  cbz       x0, #0x1aa521c                                 
01aa45a8  ldr       x0, [x0, #0x38]                                
01aa45ac  cbz       x0, #0x1aa521c                                 
01aa45b0  ldr       x22, [sp, #0x58]                               
01aa45b4  ldr       x2, [x21]                                      
01aa45b8  ldr       w1, [x22, #0x10]                               
01aa45bc  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa45c0  cbz       x0, #0x1aa521c                                 
01aa45c4  ldr       x0, [x0, #0x20]                                
01aa45c8  cbz       x0, #0x1aa521c                                 
01aa45cc  ldr       w1, [x20, #0xe4]                               
01aa45d0  ldr       x2, [x19]                                      
01aa45d4  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa45d8  cbz       x0, #0x1aa521c                                 
01aa45dc  ldr       w8, [x0, #0x18]                                
01aa45e0  cmn       w8, #3                                         
01aa45e4  b.eq      #0x1aa46b8                                     
01aa45e8  ldr       x8, [x28]                                      
01aa45ec  ldr       x8, [x8, #0xb8]                                
01aa45f0  ldr       x0, [x8]                                       
01aa45f4  cbz       x0, #0x1aa521c                                 
01aa45f8  mov       w1, wzr                                        
01aa45fc  mov       x2, xzr                                        
01aa4600  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa4604  fcmp      s0, #0.0                                       
01aa4608  b.ls      #0x1aa4664                                     
01aa460c  ldr       x8, [x28]                                      
01aa4610  ldr       x8, [x8, #0xb8]                                
01aa4614  ldr       x0, [x8]                                       
01aa4618  cbz       x0, #0x1aa521c                                 
01aa461c  mov       w1, #1                                         
01aa4620  mov       x2, xzr                                        
01aa4624  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa4628  fcmp      s0, #0.0                                       
01aa462c  b.hi      #0x1aa46b8                                     
01aa4630  ldr       x0, [x26]                                      
01aa4634  ldr       w8, [x0, #0xe4]                                
01aa4638  cbnz      w8, #0x1aa4644                                 
01aa463c  bl        #0x183dcb0                                     
01aa4640  ldr       x0, [x26]                                      
01aa4644  ldr       x8, [x28]                                      
01aa4648  ldr       x8, [x8, #0xb8]                                
01aa464c  ldr       x9, [x8]                                       
01aa4650  cbz       x9, #0x1aa521c                                 
01aa4654  ldr       x8, [x0, #0xb8]                                
01aa4658  ldr       x8, [x8, #0xd8]                                
01aa465c  cbnz      x8, #0x1aa4694                                 
01aa4660  b         #0x1aa521c                                     
01aa4664  ldr       x0, [x26]                                      
01aa4668  ldr       w8, [x0, #0xe4]                                
01aa466c  cbnz      w8, #0x1aa4678                                 
01aa4670  bl        #0x183dcb0                                     
01aa4674  ldr       x0, [x26]                                      
01aa4678  ldr       x8, [x28]                                      
01aa467c  ldr       x8, [x8, #0xb8]                                
01aa4680  ldr       x9, [x8]                                       
01aa4684  cbz       x9, #0x1aa521c                                 
01aa4688  ldr       x8, [x0, #0xb8]                                
01aa468c  ldr       x8, [x8, #0xd0]                                
01aa4690  cbz       x8, #0x1aa521c                                 
01aa4694  ldr       w9, [x9, #0x5cc]                               
01aa4698  ldr       w10, [x8, #0x18]                               
01aa469c  cmp       w9, w10                                        
01aa46a0  b.hs      #0x1aa5220                                     
01aa46a4  add       x8, x8, w9, sxtw #3                            
01aa46a8  mov       x0, x27                                        
01aa46ac  mov       x2, xzr                                        
01aa46b0  ldr       x1, [x8, #0x20]                                
01aa46b4  bl        #0x2c63780                                     // System.String$$Concat
01aa46b8  mov       x0, x20                                        
01aa46bc  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa46c0  ldr       x8, [x20, #0x118]                              
01aa46c4  cbz       x8, #0x1aa521c                                 
01aa46c8  ldrsw     x9, [x20, #0x13c]                              
01aa46cc  ldr       w10, [x8, #0x18]                               
01aa46d0  cmp       w9, w10                                        
01aa46d4  b.hs      #0x1aa5220                                     
01aa46d8  add       x8, x8, x9, lsl #3                             
01aa46dc  ldr       x0, [x8, #0x20]                                
01aa46e0  cbz       x0, #0x1aa521c                                 
01aa46e4  ldr       w1, [x20, #0xe0]                               
01aa46e8  ldr       x2, [x23]                                      
01aa46ec  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa46f0  cbz       x0, #0x1aa521c                                 
01aa46f4  ldr       x0, [x0, #0x38]                                
01aa46f8  cbz       x0, #0x1aa521c                                 
01aa46fc  ldr       w1, [x22, #0x10]                               
01aa4700  ldr       x2, [x21]                                      
01aa4704  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4708  cbz       x0, #0x1aa521c                                 
01aa470c  ldr       x0, [x0, #0x20]                                
01aa4710  cbz       x0, #0x1aa521c                                 
01aa4714  ldr       w1, [x20, #0xe4]                               
01aa4718  ldr       x2, [x19]                                      
01aa471c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4720  cbz       x0, #0x1aa521c                                 
01aa4724  ldr       w8, [x0, #0x18]                                
01aa4728  cmn       w8, #1                                         
01aa472c  b.eq      #0x1aa49a8                                     
01aa4730  ldr       x8, [x20, #0x118]                              
01aa4734  cbz       x8, #0x1aa521c                                 
01aa4738  ldrsw     x9, [x20, #0x13c]                              
01aa473c  ldr       w10, [x8, #0x18]                               
01aa4740  cmp       w9, w10                                        
01aa4744  b.hs      #0x1aa5220                                     
01aa4748  add       x8, x8, x9, lsl #3                             
01aa474c  ldr       x0, [x8, #0x20]                                
01aa4750  cbz       x0, #0x1aa521c                                 
01aa4754  ldr       w1, [x20, #0xe0]                               
01aa4758  ldr       x2, [x23]                                      
01aa475c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4760  cbz       x0, #0x1aa521c                                 
01aa4764  ldr       x0, [x0, #0x38]                                
01aa4768  cbz       x0, #0x1aa521c                                 
01aa476c  ldr       w1, [x22, #0x10]                               
01aa4770  ldr       x2, [x21]                                      
01aa4774  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4778  cbz       x0, #0x1aa521c                                 
01aa477c  ldr       x0, [x0, #0x20]                                
01aa4780  cbz       x0, #0x1aa521c                                 
01aa4784  ldr       w1, [x20, #0xe4]                               
01aa4788  ldr       x2, [x19]                                      
01aa478c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4790  cbz       x0, #0x1aa521c                                 
01aa4794  ldr       w8, [x0, #0x18]                                
01aa4798  cmn       w8, #3                                         
01aa479c  b.eq      #0x1aa48dc                                     
01aa47a0  ldr       x8, [x28]                                      
01aa47a4  ldr       x8, [x8, #0xb8]                                
01aa47a8  ldr       x0, [x8]                                       
01aa47ac  cbz       x0, #0x1aa521c                                 
01aa47b0  mov       w1, wzr                                        
01aa47b4  mov       x2, xzr                                        
01aa47b8  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa47bc  fcmp      s0, #0.0                                       
01aa47c0  b.ls      #0x1aa48dc                                     
01aa47c4  ldr       x8, [x28]                                      
01aa47c8  ldr       x8, [x8, #0xb8]                                
01aa47cc  ldr       x0, [x8]                                       
01aa47d0  cbz       x0, #0x1aa521c                                 
01aa47d4  mov       w1, #1                                         
01aa47d8  mov       x2, xzr                                        
01aa47dc  bl        #0x1af7748                                     // DataMgr$$GetUserData
01aa47e0  fcmp      s0, #0.0                                       
01aa47e4  b.ls      #0x1aa48dc                                     
01aa47e8  ldr       x8, [x20, #0x118]                              
01aa47ec  cbz       x8, #0x1aa521c                                 
01aa47f0  ldrsw     x9, [x20, #0x13c]                              
01aa47f4  ldr       w10, [x8, #0x18]                               
01aa47f8  cmp       w9, w10                                        
01aa47fc  b.hs      #0x1aa5220                                     
01aa4800  add       x8, x8, x9, lsl #3                             
01aa4804  ldr       x0, [x8, #0x20]                                
01aa4808  cbz       x0, #0x1aa521c                                 
01aa480c  ldr       w1, [x20, #0xe0]                               
01aa4810  ldr       x2, [x23]                                      
01aa4814  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4818  cbz       x0, #0x1aa521c                                 
01aa481c  ldr       x0, [x0, #0x38]                                
01aa4820  cbz       x0, #0x1aa521c                                 
01aa4824  ldr       w1, [x22, #0x10]                               
01aa4828  ldr       x2, [x21]                                      
01aa482c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4830  cbz       x0, #0x1aa521c                                 
01aa4834  ldr       x0, [x0, #0x20]                                
01aa4838  cbz       x0, #0x1aa521c                                 
01aa483c  ldr       w1, [x20, #0xe4]                               
01aa4840  ldr       x2, [x19]                                      
01aa4844  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4848  cbz       x0, #0x1aa521c                                 
01aa484c  ldr       w8, [x0, #0x18]                                
01aa4850  cmn       w8, #2                                         
01aa4854  b.ne      #0x1aa4c50                                     
01aa4858  ldr       x0, [x20, #0xb8]                               
01aa485c  cbz       x0, #0x1aa521c                                 
01aa4860  adrp      x8, #0x3a8c000                                 
01aa4864  mov       w1, wzr                                        
01aa4868  ldr       x8, [x8, #0x610]                               
01aa486c  ldr       x2, [x8]                                       
01aa4870  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4874  adrp      x8, #0x3a7c000                                 
01aa4878  mov       x24, x0                                        
01aa487c  ldr       x8, [x8, #0xc78]                               
01aa4880  ldr       x8, [x8]                                       
01aa4884  mov       x0, x8                                         
01aa4888  bl        #0x183ddcc                                     
01aa488c  adrp      x8, #0x3a8c000                                 
01aa4890  mov       x1, x20                                        
01aa4894  mov       x3, xzr                                        
01aa4898  ldr       x8, [x8, #0xb68]                               
01aa489c  mov       x25, x0                                        
01aa48a0  ldr       x2, [x8]                                       
01aa48a4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa48a8  ldr       x0, [x26]                                      
01aa48ac  ldr       w8, [x0, #0xe4]                                
01aa48b0  cbnz      w8, #0x1aa48bc                                 
01aa48b4  bl        #0x183dcb0                                     
01aa48b8  ldr       x0, [x26]                                      
01aa48bc  ldr       x8, [x28]                                      
01aa48c0  ldr       x8, [x8, #0xb8]                                
01aa48c4  ldr       x9, [x8]                                       
01aa48c8  cbz       x9, #0x1aa521c                                 
01aa48cc  ldr       x8, [x0, #0xb8]                                
01aa48d0  ldr       x8, [x8, #0xa8]                                
01aa48d4  cbnz      x8, #0x1aa4c00                                 
01aa48d8  b         #0x1aa521c                                     
01aa48dc  adrp      x8, #0x3a7c000                                 
01aa48e0  ldr       x8, [x8, #0xca8]                               
01aa48e4  ldr       x8, [x8]                                       
01aa48e8  ldr       x8, [x8, #0xb8]                                
01aa48ec  ldr       x24, [x8]                                      
01aa48f0  cbz       x24, #0x1aa521c                                
01aa48f4  ldrb      w8, [x24, #0x20]                               
01aa48f8  cbz       w8, #0x1aa4938                                 
01aa48fc  adrp      x8, #0x3a7c000                                 
01aa4900  mov       w1, #1                                         
01aa4904  ldr       x8, [x8, #0x80]                                
01aa4908  ldr       x0, [x8]                                       
01aa490c  bl        #0x183dc20                                     
01aa4910  cbz       x0, #0x1aa521c                                 
01aa4914  ldr       w8, [x0, #0x18]                                
01aa4918  mov       x2, x0                                         
01aa491c  cbz       w8, #0x1aa5220                                 
01aa4920  mov       w8, #1                                         
01aa4924  mov       x0, x24                                        
01aa4928  mov       w1, #0x11                                      
01aa492c  mov       x3, xzr                                        
01aa4930  str       w8, [x2, #0x20]                                
01aa4934  bl        #0x195cf40                                     // HardModeMgr$$AddToHardModeChecker
01aa4938  ldr       x8, [x28]                                      
01aa493c  strb      wzr, [x20, #0x115]                             
01aa4940  ldr       x8, [x8, #0xb8]                                
01aa4944  ldr       x8, [x8]                                       
01aa4948  cbz       x8, #0x1aa521c                                 
01aa494c  ldr       w9, [x8, #0x10c]                               
01aa4950  ldr       w10, [x8, #0x70]                               
01aa4954  cmp       w9, w10                                        
01aa4958  b.ge      #0x1aa4a2c                                     
01aa495c  ldr       w9, [x8, #0x2c0]                               
01aa4960  ldr       x0, [x8, #0x2b8]                               
01aa4964  mov       x2, xzr                                        
01aa4968  ldr       x8, [sp, #0x28]                                
01aa496c  and       x8, x8, #0xffffffff00000000                    
01aa4970  orr       x1, x8, x9                                     
01aa4974  str       x1, [sp, #0x28]                                
01aa4978  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01aa497c  ldr       x8, [x28]                                      
01aa4980  ldr       x8, [x8, #0xb8]                                
01aa4984  ldr       x8, [x8]                                       
01aa4988  tbz       w0, #0, #0x1aa4aa8                             
01aa498c  cbz       x8, #0x1aa521c                                 
01aa4990  ldr       w8, [x8, #0x10c]                               
01aa4994  cbz       w8, #0x1aa4abc                                 
01aa4998  ldr       w9, [x20, #0x110]                              
01aa499c  add       w8, w8, w9                                     
01aa49a0  sub       w24, w8, #1                                    
01aa49a4  b         #0x1aa4ac0                                     
01aa49a8  ldr       x0, [x20, #0xb8]                               
01aa49ac  cbz       x0, #0x1aa521c                                 
01aa49b0  adrp      x8, #0x3a8c000                                 
01aa49b4  mov       w1, wzr                                        
01aa49b8  ldr       x8, [x8, #0x610]                               
01aa49bc  ldr       x2, [x8]                                       
01aa49c0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa49c4  adrp      x8, #0x3a7c000                                 
01aa49c8  mov       x24, x0                                        
01aa49cc  ldr       x8, [x8, #0xc78]                               
01aa49d0  ldr       x8, [x8]                                       
01aa49d4  mov       x0, x8                                         
01aa49d8  bl        #0x183ddcc                                     
01aa49dc  adrp      x8, #0x3a8c000                                 
01aa49e0  mov       x1, x20                                        
01aa49e4  mov       x3, xzr                                        
01aa49e8  ldr       x8, [x8, #0xba0]                               
01aa49ec  mov       x25, x0                                        
01aa49f0  ldr       x2, [x8]                                       
01aa49f4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa49f8  ldr       x0, [x26]                                      
01aa49fc  ldr       w8, [x0, #0xe4]                                
01aa4a00  cbnz      w8, #0x1aa4a0c                                 
01aa4a04  bl        #0x183dcb0                                     
01aa4a08  ldr       x0, [x26]                                      
01aa4a0c  ldr       x8, [x28]                                      
01aa4a10  ldr       x8, [x8, #0xb8]                                
01aa4a14  ldr       x9, [x8]                                       
01aa4a18  cbz       x9, #0x1aa521c                                 
01aa4a1c  ldr       x8, [x0, #0xb8]                                
01aa4a20  ldr       x8, [x8, #0xb8]                                
01aa4a24  cbnz      x8, #0x1aa4c00                                 
01aa4a28  b         #0x1aa521c                                     
01aa4a2c  ldr       x0, [x20, #0xb8]                               
01aa4a30  cbz       x0, #0x1aa521c                                 
01aa4a34  adrp      x8, #0x3a8c000                                 
01aa4a38  mov       w1, wzr                                        
01aa4a3c  ldr       x8, [x8, #0x610]                               
01aa4a40  ldr       x2, [x8]                                       
01aa4a44  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4a48  adrp      x8, #0x3a7c000                                 
01aa4a4c  mov       x24, x0                                        
01aa4a50  ldr       x8, [x8, #0xc78]                               
01aa4a54  ldr       x8, [x8]                                       
01aa4a58  mov       x0, x8                                         
01aa4a5c  bl        #0x183ddcc                                     
01aa4a60  adrp      x8, #0x3a8c000                                 
01aa4a64  mov       x1, x20                                        
01aa4a68  mov       x3, xzr                                        
01aa4a6c  ldr       x8, [x8, #0xba8]                               
01aa4a70  mov       x25, x0                                        
01aa4a74  ldr       x2, [x8]                                       
01aa4a78  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa4a7c  ldr       x0, [x26]                                      
01aa4a80  ldr       w8, [x0, #0xe4]                                
01aa4a84  cbnz      w8, #0x1aa4a90                                 
01aa4a88  bl        #0x183dcb0                                     
01aa4a8c  ldr       x0, [x26]                                      
01aa4a90  ldr       x8, [x28]                                      
01aa4a94  ldr       x8, [x8, #0xb8]                                
01aa4a98  ldr       x9, [x8]                                       
01aa4a9c  cbz       x9, #0x1aa521c                                 
01aa4aa0  ldr       x8, [x0, #0xb8]                                
01aa4aa4  b         #0x1aa4bf8                                     
01aa4aa8  cbz       x8, #0x1aa521c                                 
01aa4aac  ldr       w9, [x20, #0x110]                              
01aa4ab0  ldr       w8, [x8, #0x10c]                               
01aa4ab4  add       w24, w8, w9                                    
01aa4ab8  b         #0x1aa4ac0                                     
01aa4abc  mov       w24, wzr                                       
01aa4ac0  ldr       x0, [x20, #0xb8]                               
01aa4ac4  cbz       x0, #0x1aa521c                                 
01aa4ac8  adrp      x8, #0x3a8c000                                 
01aa4acc  mov       w1, wzr                                        
01aa4ad0  ldr       x8, [x8, #0x610]                               
01aa4ad4  ldr       x2, [x8]                                       
01aa4ad8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4adc  adrp      x8, #0x3a7c000                                 
01aa4ae0  mov       x25, x0                                        
01aa4ae4  ldr       x8, [x8, #0xc78]                               
01aa4ae8  ldr       x8, [x8]                                       
01aa4aec  mov       x0, x8                                         
01aa4af0  bl        #0x183ddcc                                     
01aa4af4  adrp      x8, #0x3a8c000                                 
01aa4af8  mov       x3, xzr                                        
01aa4afc  mov       x27, x0                                        
01aa4b00  ldr       x8, [x8, #0xbb0]                               
01aa4b04  ldr       x1, [sp, #0x58]                                
01aa4b08  ldr       x2, [x8]                                       
01aa4b0c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa4b10  ldr       x0, [x26]                                      
01aa4b14  ldr       w8, [x0, #0xe4]                                
01aa4b18  cbnz      w8, #0x1aa4b24                                 
01aa4b1c  bl        #0x183dcb0                                     
01aa4b20  ldr       x0, [x26]                                      
01aa4b24  ldr       x8, [x28]                                      
01aa4b28  ldr       x8, [x8, #0xb8]                                
01aa4b2c  ldr       x9, [x8]                                       
01aa4b30  cbz       x9, #0x1aa521c                                 
01aa4b34  ldr       x8, [x0, #0xb8]                                
01aa4b38  ldr       x8, [x8, #0xc0]                                
01aa4b3c  cbz       x8, #0x1aa521c                                 
01aa4b40  ldr       x11, [x8, #0x10]                               
01aa4b44  ldrsw     x10, [x9, #0x10c]                              
01aa4b48  ldr       w12, [x11]                                     
01aa4b4c  cmp       w10, w12                                       
01aa4b50  b.hs      #0x1aa5220                                     
01aa4b54  ldrsw     x9, [x9, #0x5cc]                               
01aa4b58  ldr       x11, [x11, #0x10]                              
01aa4b5c  cmp       w9, w11                                        
01aa4b60  b.hs      #0x1aa5220                                     
01aa4b64  madd      x9, x11, x10, x9                               
01aa4b68  ldr       x7, [x29]                                      
01aa4b6c  mov       x0, x20                                        
01aa4b70  mov       x1, x25                                        
01aa4b74  mov       w2, #1                                         
01aa4b78  mov       x3, x27                                        
01aa4b7c  mov       x5, xzr                                        
01aa4b80  mov       w6, w24                                        
01aa4b84  add       x8, x8, x9, lsl #3                             
01aa4b88  ldr       x4, [x8, #0x20]                                
01aa4b8c  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa4b90  ldr       x0, [x20, #0xb8]                               
01aa4b94  cbz       x0, #0x1aa521c                                 
01aa4b98  adrp      x8, #0x3a8c000                                 
01aa4b9c  mov       w1, #1                                         
01aa4ba0  ldr       x8, [x8, #0x610]                               
01aa4ba4  ldr       x2, [x8]                                       
01aa4ba8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4bac  adrp      x8, #0x3a7c000                                 
01aa4bb0  mov       x24, x0                                        
01aa4bb4  ldr       x8, [x8, #0xc78]                               
01aa4bb8  ldr       x8, [x8]                                       
01aa4bbc  mov       x0, x8                                         
01aa4bc0  bl        #0x183ddcc                                     
01aa4bc4  adrp      x8, #0x3a8c000                                 
01aa4bc8  mov       x1, x20                                        
01aa4bcc  mov       x3, xzr                                        
01aa4bd0  ldr       x8, [x8, #0xb70]                               
01aa4bd4  mov       x25, x0                                        
01aa4bd8  ldr       x2, [x8]                                       
01aa4bdc  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa4be0  ldr       x8, [x28]                                      
01aa4be4  ldr       x8, [x8, #0xb8]                                
01aa4be8  ldr       x9, [x8]                                       
01aa4bec  cbz       x9, #0x1aa521c                                 
01aa4bf0  ldr       x8, [x26]                                      
01aa4bf4  ldr       x8, [x8, #0xb8]                                
01aa4bf8  ldr       x8, [x8, #0xc8]                                
01aa4bfc  cbz       x8, #0x1aa521c                                 
01aa4c00  ldrsw     x9, [x9, #0x5cc]                               
01aa4c04  ldr       w10, [x8, #0x18]                               
01aa4c08  cmp       w9, w10                                        
01aa4c0c  b.hs      #0x1aa5220                                     
01aa4c10  add       x8, x8, x9, lsl #3                             
01aa4c14  ldr       x7, [x29]                                      
01aa4c18  mov       x0, x20                                        
01aa4c1c  mov       x1, x24                                        
01aa4c20  mov       w2, #1                                         
01aa4c24  ldr       x4, [x8, #0x20]                                
01aa4c28  mov       x3, x25                                        
01aa4c2c  mov       x5, xzr                                        
01aa4c30  mov       w6, wzr                                        
01aa4c34  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa4c38  ldr       w9, [sp, #0x4c]                                
01aa4c3c  ldr       x8, [x20, #0x118]                              
01aa4c40  add       w9, w9, #1                                     
01aa4c44  str       w9, [sp, #0x4c]                                
01aa4c48  cbnz      x8, #0x1aa2694                                 
01aa4c4c  b         #0x1aa521c                                     
01aa4c50  ldrb      w8, [x20, #0x1e0]                              
01aa4c54  cbz       w8, #0x1aa4c38                                 
01aa4c58  adrp      x8, #0x3a8c000                                 
01aa4c5c  ldr       x8, [x8, #0xbf0]                               
01aa4c60  ldr       x0, [x8]                                       
01aa4c64  bl        #0x183ddcc                                     
01aa4c68  mov       x1, xzr                                        
01aa4c6c  mov       x27, x0                                        
01aa4c70  bl        #0x1ab2cf0                                     // EventCtrl.<>c__DisplayClass150_2$$.ctor
01aa4c74  cbz       x27, #0x1aa521c                                
01aa4c78  ldr       x8, [x20, #0x118]                              
01aa4c7c  str       x22, [x27, #0x18]                              
01aa4c80  cbz       x8, #0x1aa521c                                 
01aa4c84  ldrsw     x9, [x20, #0x13c]                              
01aa4c88  ldr       w10, [x8, #0x18]                               
01aa4c8c  cmp       w9, w10                                        
01aa4c90  b.hs      #0x1aa5220                                     
01aa4c94  add       x8, x8, x9, lsl #3                             
01aa4c98  ldr       x0, [x8, #0x20]                                
01aa4c9c  cbz       x0, #0x1aa521c                                 
01aa4ca0  ldr       w1, [x20, #0xe0]                               
01aa4ca4  ldr       x2, [x23]                                      
01aa4ca8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4cac  cbz       x0, #0x1aa521c                                 
01aa4cb0  ldr       x8, [x27, #0x18]                               
01aa4cb4  cbz       x8, #0x1aa521c                                 
01aa4cb8  ldr       x0, [x0, #0x38]                                
01aa4cbc  cbz       x0, #0x1aa521c                                 
01aa4cc0  ldr       w1, [x8, #0x10]                                
01aa4cc4  ldr       x2, [x21]                                      
01aa4cc8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4ccc  cbz       x0, #0x1aa521c                                 
01aa4cd0  ldr       x0, [x0, #0x20]                                
01aa4cd4  cbz       x0, #0x1aa521c                                 
01aa4cd8  ldr       w1, [x20, #0xe4]                               
01aa4cdc  ldr       x2, [x19]                                      
01aa4ce0  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4ce4  cbz       x0, #0x1aa521c                                 
01aa4ce8  ldr       w1, [x0, #0x38]                                
01aa4cec  mov       x0, x20                                        
01aa4cf0  bl        #0x1a9e368                                     // EventCtrl$$GetWinRateStrByPercent
01aa4cf4  adrp      x8, #0x3a7d000                                 
01aa4cf8  mov       x24, x27                                       
01aa4cfc  mov       x2, xzr                                        
01aa4d00  ldr       x8, [x8, #0x130]                               
01aa4d04  str       s0, [x24, #0x10]!                              
01aa4d08  mov       x0, x24                                        
01aa4d0c  ldr       x1, [x8]                                       
01aa4d10  bl        #0x2de259c                                     // System.Single$$ToString
01aa4d14  ldr       s0, [x24]                                      
01aa4d18  fcmp      s0, s10                                        
01aa4d1c  b.pl      #0x1aa4d2c                                     
01aa4d20  adrp      x8, #0x3a8c000                                 
01aa4d24  ldr       x8, [x8, #0x710]                               
01aa4d28  b         #0x1aa4d40                                     
01aa4d2c  fcmp      s0, s13                                        
01aa4d30  mov       x26, x0                                        
01aa4d34  b.le      #0x1aa4d44                                     
01aa4d38  adrp      x8, #0x3a8c000                                 
01aa4d3c  ldr       x8, [x8, #0x708]                               
01aa4d40  ldr       x26, [x8]                                      
01aa4d44  ldr       x0, [x20, #0xb8]                               
01aa4d48  cbz       x0, #0x1aa521c                                 
01aa4d4c  adrp      x8, #0x3a8c000                                 
01aa4d50  mov       w1, wzr                                        
01aa4d54  ldr       x8, [x8, #0x610]                               
01aa4d58  ldr       x2, [x8]                                       
01aa4d5c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4d60  adrp      x8, #0x3a7c000                                 
01aa4d64  mov       x28, x0                                        
01aa4d68  ldr       x8, [x8, #0xc78]                               
01aa4d6c  ldr       x8, [x8]                                       
01aa4d70  mov       x0, x8                                         
01aa4d74  bl        #0x183ddcc                                     
01aa4d78  adrp      x8, #0x3a8c000                                 
01aa4d7c  mov       x1, x27                                        
01aa4d80  mov       x3, xzr                                        
01aa4d84  ldr       x8, [x8, #0xbe0]                               
01aa4d88  mov       x25, x0                                        
01aa4d8c  ldr       x2, [x8]                                       
01aa4d90  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa4d94  adrp      x8, #0x3a7b000                                 
01aa4d98  mov       w1, #6                                         
01aa4d9c  ldr       x8, [x8, #0x7c8]                               
01aa4da0  ldr       x0, [x8]                                       
01aa4da4  bl        #0x183dc20                                     
01aa4da8  adrp      x22, #0x3a7c000                                
01aa4dac  mov       x24, x0                                        
01aa4db0  ldr       x22, [x22, #0xde8]                             
01aa4db4  ldr       x8, [x22]                                      
01aa4db8  ldr       w9, [x8, #0xe4]                                
01aa4dbc  cbnz      w9, #0x1aa4dcc                                 
01aa4dc0  mov       x0, x8                                         
01aa4dc4  bl        #0x183dcb0                                     
01aa4dc8  ldr       x8, [x22]                                      
01aa4dcc  adrp      x9, #0x3a7c000                                 
01aa4dd0  ldr       x9, [x9, #0xc08]                               
01aa4dd4  ldr       x9, [x9]                                       
01aa4dd8  ldr       x9, [x9, #0xb8]                                
01aa4ddc  ldr       x10, [x9]                                      
01aa4de0  cbz       x10, #0x1aa521c                                
01aa4de4  ldr       x8, [x8, #0xb8]                                
01aa4de8  ldr       x9, [x8, #0x90]                                
01aa4dec  cbz       x9, #0x1aa521c                                 
01aa4df0  ldrsw     x10, [x10, #0x5cc]                             
01aa4df4  ldr       w8, [x9, #0x18]                                
01aa4df8  cmp       w10, w8                                        
01aa4dfc  b.hs      #0x1aa5220                                     
01aa4e00  cbz       x24, #0x1aa521c                                
01aa4e04  ldr       w8, [x24, #0x18]                               
01aa4e08  cbz       w8, #0x1aa5220                                 
01aa4e0c  add       x9, x9, x10, lsl #3                            
01aa4e10  cmp       w8, #1                                         
01aa4e14  ldr       x9, [x9, #0x20]                                
01aa4e18  str       x9, [x24, #0x20]                               
01aa4e1c  b.eq      #0x1aa5220                                     
01aa4e20  adrp      x9, #0x3a8c000                                 
01aa4e24  ldr       x9, [x9, #0x718]                               
01aa4e28  ldr       x9, [x9]                                       
01aa4e2c  str       x9, [x24, #0x28]                               
01aa4e30  adrp      x9, #0x3a7c000                                 
01aa4e34  ldr       x9, [x9, #0xc08]                               
01aa4e38  ldr       x9, [x9]                                       
01aa4e3c  ldr       x9, [x9, #0xb8]                                
01aa4e40  ldr       x10, [x9]                                      
01aa4e44  cbz       x10, #0x1aa521c                                
01aa4e48  adrp      x9, #0x3a7c000                                 
01aa4e4c  ldr       x9, [x9, #0xde8]                               
01aa4e50  ldr       x9, [x9]                                       
01aa4e54  ldr       x9, [x9, #0xb8]                                
01aa4e58  ldr       x9, [x9, #0xe8]                                
01aa4e5c  cbz       x9, #0x1aa521c                                 
01aa4e60  ldrsw     x10, [x10, #0x5cc]                             
01aa4e64  ldr       w11, [x9, #0x18]                               
01aa4e68  cmp       w10, w11                                       
01aa4e6c  b.hs      #0x1aa5220                                     
01aa4e70  cmp       w8, #2                                         
01aa4e74  b.ls      #0x1aa5220                                     
01aa4e78  add       x9, x9, x10, lsl #3                            
01aa4e7c  cmp       w8, #3                                         
01aa4e80  ldr       x9, [x9, #0x20]                                
01aa4e84  str       x9, [x24, #0x30]                               
01aa4e88  b.eq      #0x1aa5220                                     
01aa4e8c  adrp      x9, #0x3a7c000                                 
01aa4e90  cmp       w8, #4                                         
01aa4e94  ldr       x9, [x9, #0x4e0]                               
01aa4e98  ldr       x9, [x9]                                       
01aa4e9c  str       x9, [x24, #0x38]                               
01aa4ea0  b.ls      #0x1aa5220                                     
01aa4ea4  cmp       w8, #5                                         
01aa4ea8  str       x26, [x24, #0x40]                              
01aa4eac  b.eq      #0x1aa5220                                     
01aa4eb0  adrp      x8, #0x3a7e000                                 
01aa4eb4  mov       x0, x24                                        
01aa4eb8  mov       x1, xzr                                        
01aa4ebc  ldr       x8, [x8, #0x470]                               
01aa4ec0  ldr       x8, [x8]                                       
01aa4ec4  str       x8, [x24, #0x48]                               
01aa4ec8  bl        #0x2c6e35c                                     // System.String$$Concat
01aa4ecc  ldr       x7, [x29]                                      
01aa4ed0  mov       x4, x0                                         
01aa4ed4  mov       x0, x20                                        
01aa4ed8  mov       x1, x28                                        
01aa4edc  mov       w2, #1                                         
01aa4ee0  mov       x3, x25                                        
01aa4ee4  mov       x5, xzr                                        
01aa4ee8  mov       w6, wzr                                        
01aa4eec  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa4ef0  adrp      x28, #0x3a7c000                                
01aa4ef4  ldr       x28, [x28, #0xc08]                             
01aa4ef8  ldr       x8, [x28]                                      
01aa4efc  ldr       x8, [x8, #0xb8]                                
01aa4f00  ldr       x8, [x8]                                       
01aa4f04  cbz       x8, #0x1aa521c                                 
01aa4f08  ldr       w9, [x8, #0x2c0]                               
01aa4f0c  ldr       x0, [x8, #0x2b8]                               
01aa4f10  mov       x2, xzr                                        
01aa4f14  ldr       x8, [sp, #0x10]                                
01aa4f18  and       x8, x8, #0xffffffff00000000                    
01aa4f1c  orr       x22, x8, x9                                    
01aa4f20  mov       x1, x22                                        
01aa4f24  bl        #0x1942900                                     // CodeStage.AntiCheat.ObscuredTypes.ObscuredBool$$op_Implicit
01aa4f28  mov       w8, w0                                         
01aa4f2c  ldr       x0, [x20, #0xb8]                               
01aa4f30  str       x22, [sp, #0x10]                               
01aa4f34  tbz       w8, #0, #0x1aa50f4                             
01aa4f38  cbz       x0, #0x1aa521c                                 
01aa4f3c  adrp      x8, #0x3a8c000                                 
01aa4f40  mov       w1, #1                                         
01aa4f44  ldr       x8, [x8, #0x610]                               
01aa4f48  ldr       x2, [x8]                                       
01aa4f4c  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa4f50  adrp      x8, #0x3a7c000                                 
01aa4f54  mov       x28, x0                                        
01aa4f58  ldr       x8, [x8, #0xc78]                               
01aa4f5c  ldr       x8, [x8]                                       
01aa4f60  mov       x0, x8                                         
01aa4f64  bl        #0x183ddcc                                     
01aa4f68  adrp      x8, #0x3a8c000                                 
01aa4f6c  mov       x1, x27                                        
01aa4f70  mov       x3, xzr                                        
01aa4f74  ldr       x8, [x8, #0xbe8]                               
01aa4f78  mov       x25, x0                                        
01aa4f7c  ldr       x2, [x8]                                       
01aa4f80  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa4f84  adrp      x8, #0x3a7b000                                 
01aa4f88  mov       w1, #6                                         
01aa4f8c  ldr       x8, [x8, #0x7c8]                               
01aa4f90  ldr       x0, [x8]                                       
01aa4f94  bl        #0x183dc20                                     
01aa4f98  adrp      x22, #0x3a7c000                                
01aa4f9c  mov       x24, x0                                        
01aa4fa0  ldr       x22, [x22, #0xde8]                             
01aa4fa4  ldr       x8, [x22]                                      
01aa4fa8  ldr       w9, [x8, #0xe4]                                
01aa4fac  cbnz      w9, #0x1aa4fbc                                 
01aa4fb0  mov       x0, x8                                         
01aa4fb4  bl        #0x183dcb0                                     
01aa4fb8  ldr       x8, [x22]                                      
01aa4fbc  adrp      x9, #0x3a7c000                                 
01aa4fc0  ldr       x9, [x9, #0xc08]                               
01aa4fc4  ldr       x9, [x9]                                       
01aa4fc8  ldr       x9, [x9, #0xb8]                                
01aa4fcc  ldr       x10, [x9]                                      
01aa4fd0  cbz       x10, #0x1aa521c                                
01aa4fd4  ldr       x8, [x8, #0xb8]                                
01aa4fd8  ldr       x9, [x8, #0x98]                                
01aa4fdc  cbz       x9, #0x1aa521c                                 
01aa4fe0  ldrsw     x10, [x10, #0x5cc]                             
01aa4fe4  ldr       w8, [x9, #0x18]                                
01aa4fe8  cmp       w10, w8                                        
01aa4fec  b.hs      #0x1aa5220                                     
01aa4ff0  cbz       x24, #0x1aa521c                                
01aa4ff4  ldr       w8, [x24, #0x18]                               
01aa4ff8  cbz       w8, #0x1aa5220                                 
01aa4ffc  add       x9, x9, x10, lsl #3                            
01aa5000  cmp       w8, #1                                         
01aa5004  ldr       x9, [x9, #0x20]                                
01aa5008  str       x9, [x24, #0x20]                               
01aa500c  b.eq      #0x1aa5220                                     
01aa5010  adrp      x9, #0x3a8c000                                 
01aa5014  ldr       x9, [x9, #0x718]                               
01aa5018  ldr       x9, [x9]                                       
01aa501c  str       x9, [x24, #0x28]                               
01aa5020  adrp      x9, #0x3a7c000                                 
01aa5024  ldr       x9, [x9, #0xc08]                               
01aa5028  ldr       x9, [x9]                                       
01aa502c  ldr       x9, [x9, #0xb8]                                
01aa5030  ldr       x10, [x9]                                      
01aa5034  cbz       x10, #0x1aa521c                                
01aa5038  adrp      x9, #0x3a7c000                                 
01aa503c  ldr       x9, [x9, #0xde8]                               
01aa5040  ldr       x9, [x9]                                       
01aa5044  ldr       x9, [x9, #0xb8]                                
01aa5048  ldr       x9, [x9, #0xe8]                                
01aa504c  cbz       x9, #0x1aa521c                                 
01aa5050  ldrsw     x10, [x10, #0x5cc]                             
01aa5054  ldr       w11, [x9, #0x18]                               
01aa5058  cmp       w10, w11                                       
01aa505c  b.hs      #0x1aa5220                                     
01aa5060  cmp       w8, #2                                         
01aa5064  b.ls      #0x1aa5220                                     
01aa5068  add       x9, x9, x10, lsl #3                            
01aa506c  cmp       w8, #3                                         
01aa5070  ldr       x9, [x9, #0x20]                                
01aa5074  str       x9, [x24, #0x30]                               
01aa5078  b.eq      #0x1aa5220                                     
01aa507c  adrp      x9, #0x3a7c000                                 
01aa5080  cmp       w8, #4                                         
01aa5084  ldr       x9, [x9, #0x4e0]                               
01aa5088  ldr       x9, [x9]                                       
01aa508c  str       x9, [x24, #0x38]                               
01aa5090  b.ls      #0x1aa5220                                     
01aa5094  cmp       w8, #5                                         
01aa5098  str       x26, [x24, #0x40]                              
01aa509c  b.eq      #0x1aa5220                                     
01aa50a0  adrp      x8, #0x3a7e000                                 
01aa50a4  mov       x0, x24                                        
01aa50a8  mov       x1, xzr                                        
01aa50ac  ldr       x8, [x8, #0x470]                               
01aa50b0  ldr       x8, [x8]                                       
01aa50b4  str       x8, [x24, #0x48]                               
01aa50b8  bl        #0x2c6e35c                                     // System.String$$Concat
01aa50bc  ldr       x7, [x29]                                      
01aa50c0  mov       x4, x0                                         
01aa50c4  mov       x0, x20                                        
01aa50c8  mov       x1, x28                                        
01aa50cc  mov       w2, #1                                         
01aa50d0  mov       x3, x25                                        
01aa50d4  mov       x5, xzr                                        
01aa50d8  mov       w6, wzr                                        
01aa50dc  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa50e0  adrp      x28, #0x3a7c000                                
01aa50e4  adrp      x26, #0x3a7c000                                
01aa50e8  ldr       x28, [x28, #0xc08]                             
01aa50ec  ldr       x26, [x26, #0xde8]                             
01aa50f0  b         #0x1aa4c38                                     
01aa50f4  cbz       x0, #0x1aa521c                                 
01aa50f8  adrp      x8, #0x3a8c000                                 
01aa50fc  mov       w1, #1                                         
01aa5100  ldr       x8, [x8, #0x610]                               
01aa5104  ldr       x2, [x8]                                       
01aa5108  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa510c  adrp      x8, #0x3a7c000                                 
01aa5110  mov       x24, x0                                        
01aa5114  ldr       x8, [x8, #0xc78]                               
01aa5118  ldr       x8, [x8]                                       
01aa511c  mov       x0, x8                                         
01aa5120  bl        #0x183ddcc                                     
01aa5124  adrp      x8, #0x3a8c000                                 
01aa5128  mov       x1, x20                                        
01aa512c  mov       x3, xzr                                        
01aa5130  ldr       x8, [x8, #0xb78]                               
01aa5134  mov       x25, x0                                        
01aa5138  ldr       x2, [x8]                                       
01aa513c  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa5140  adrp      x26, #0x3a7c000                                
01aa5144  ldr       x26, [x26, #0xde8]                             
01aa5148  ldr       x0, [x26]                                      
01aa514c  ldr       w8, [x0, #0xe4]                                
01aa5150  cbnz      w8, #0x1aa515c                                 
01aa5154  bl        #0x183dcb0                                     
01aa5158  ldr       x0, [x26]                                      
01aa515c  ldr       x8, [x28]                                      
01aa5160  ldr       x8, [x8, #0xb8]                                
01aa5164  ldr       x9, [x8]                                       
01aa5168  cbz       x9, #0x1aa521c                                 
01aa516c  ldr       x10, [x0, #0xb8]                               
01aa5170  ldr       x8, [x10, #0x98]                               
01aa5174  cbz       x8, #0x1aa521c                                 
01aa5178  ldrsw     x9, [x9, #0x5cc]                               
01aa517c  ldr       w11, [x8, #0x18]                               
01aa5180  cmp       w9, w11                                        
01aa5184  b.hs      #0x1aa5220                                     
01aa5188  ldr       x10, [x10, #0xa0]                              
01aa518c  cbz       x10, #0x1aa521c                                
01aa5190  ldr       w11, [x10, #0x18]                              
01aa5194  cmp       w9, w11                                        
01aa5198  b.hs      #0x1aa5220                                     
01aa519c  add       x8, x8, x9, lsl #3                             
01aa51a0  add       x9, x10, x9, lsl #3                            
01aa51a4  mov       x2, xzr                                        
01aa51a8  ldr       x0, [x8, #0x20]                                
01aa51ac  ldr       x1, [x9, #0x20]                                
01aa51b0  bl        #0x2c63780                                     // System.String$$Concat
01aa51b4  ldr       x7, [x29]                                      
01aa51b8  mov       x4, x0                                         
01aa51bc  mov       x0, x20                                        
01aa51c0  mov       x1, x24                                        
01aa51c4  mov       w2, wzr                                        
01aa51c8  b         #0x1aa4c28                                     
01aa51cc  ldp       w8, w22, [sp, #0x20]                           
01aa51d0  ldr       w10, [sp, #0x1c]                               
01aa51d4  add       w22, w22, #1                                   
01aa51d8  cmp       w22, w8                                        
01aa51dc  b.ne      #0x1aa2438                                     
01aa51e0  ldr       w8, [sp, #0xc]                                 
01aa51e4  add       w10, w10, #1                                   
01aa51e8  cmp       w10, w8                                        
01aa51ec  b.ne      #0x1aa23fc                                     
01aa51f0  ldp       x20, x19, [sp, #0xe0]                          
01aa51f4  ldp       x22, x21, [sp, #0xd0]                          
01aa51f8  ldp       x24, x23, [sp, #0xc0]                          
01aa51fc  ldp       x26, x25, [sp, #0xb0]                          
01aa5200  ldp       x28, x27, [sp, #0xa0]                          
01aa5204  ldp       x29, x30, [sp, #0x90]                          
01aa5208  ldp       d9, d8, [sp, #0x80]                            
01aa520c  ldp       d11, d10, [sp, #0x70]                          
01aa5210  ldp       d13, d12, [sp, #0x60]                          
01aa5214  add       sp, sp, #0xf0                                  
01aa5218  ret                                                      
01aa521c  bl        #0x183dddc                                     
01aa5220  bl        #0x183dde4                                     