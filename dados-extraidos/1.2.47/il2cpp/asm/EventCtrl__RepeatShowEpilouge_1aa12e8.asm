void EventCtrl__RepeatShowEpilouge (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aa12e8 to 0x1aa1c7c
01aa12e8  sub       sp, sp, #0x70                                  
01aa12ec  str       x30, [sp, #0x10]                               
01aa12f0  stp       x28, x27, [sp, #0x20]                          
01aa12f4  stp       x26, x25, [sp, #0x30]                          
01aa12f8  stp       x24, x23, [sp, #0x40]                          
01aa12fc  stp       x22, x21, [sp, #0x50]                          
01aa1300  stp       x20, x19, [sp, #0x60]                          
01aa1304  adrp      x20, #0x3d14000                                
01aa1308  adrp      x21, #0x3a8c000                                
01aa130c  mov       x19, x0                                        
01aa1310  ldrb      w8, [x20, #0xcf8]                              
01aa1314  ldr       x21, [x21, #0xb30]                             
01aa1318  tbnz      w8, #0, #0x1aa13e4                             
01aa131c  adrp      x0, #0x3a7e000                                 
01aa1320  ldr       x0, [x0, #0xd98]                               
01aa1324  bl        #0x183db90                                     
01aa1328  adrp      x0, #0x3a7c000                                 
01aa132c  ldr       x0, [x0, #0xc08]                               
01aa1330  bl        #0x183db90                                     
01aa1334  adrp      x0, #0x3a7c000                                 
01aa1338  ldr       x0, [x0, #0xc10]                               
01aa133c  bl        #0x183db90                                     
01aa1340  adrp      x0, #0x3a7d000                                 
01aa1344  ldr       x0, [x0, #0xb8]                                
01aa1348  bl        #0x183db90                                     
01aa134c  adrp      x0, #0x3a8c000                                 
01aa1350  ldr       x0, [x0, #0x728]                               
01aa1354  bl        #0x183db90                                     
01aa1358  adrp      x0, #0x3a7c000                                 
01aa135c  ldr       x0, [x0, #0xc20]                               
01aa1360  bl        #0x183db90                                     
01aa1364  adrp      x0, #0x3a8c000                                 
01aa1368  ldr       x0, [x0, #0x610]                               
01aa136c  bl        #0x183db90                                     
01aa1370  adrp      x0, #0x3a7c000                                 
01aa1374  ldr       x0, [x0, #0xc30]                               
01aa1378  bl        #0x183db90                                     
01aa137c  adrp      x0, #0x3a7c000                                 
01aa1380  ldr       x0, [x0, #0xfa8]                               
01aa1384  bl        #0x183db90                                     
01aa1388  adrp      x0, #0x3a7c000                                 
01aa138c  ldr       x0, [x0, #0xde8]                               
01aa1390  bl        #0x183db90                                     
01aa1394  adrp      x0, #0x3a8c000                                 
01aa1398  ldr       x0, [x0, #0xb38]                               
01aa139c  bl        #0x183db90                                     
01aa13a0  adrp      x0, #0x3a8c000                                 
01aa13a4  ldr       x0, [x0, #0xb40]                               
01aa13a8  bl        #0x183db90                                     
01aa13ac  adrp      x0, #0x3a8c000                                 
01aa13b0  ldr       x0, [x0, #0xb30]                               
01aa13b4  bl        #0x183db90                                     
01aa13b8  adrp      x0, #0x3a7c000                                 
01aa13bc  ldr       x0, [x0, #0xc78]                               
01aa13c0  bl        #0x183db90                                     
01aa13c4  adrp      x0, #0x3a7b000                                 
01aa13c8  ldr       x0, [x0, #0xaf0]                               
01aa13cc  bl        #0x183db90                                     
01aa13d0  adrp      x0, #0x3a8c000                                 
01aa13d4  ldr       x0, [x0, #0xb48]                               
01aa13d8  bl        #0x183db90                                     
01aa13dc  mov       w8, #1                                         
01aa13e0  strb      w8, [x20, #0xcf8]                              
01aa13e4  ldr       x0, [x21]                                      
01aa13e8  bl        #0x183ddcc                                     
01aa13ec  mov       x1, xzr                                        
01aa13f0  mov       x20, x0                                        
01aa13f4  bl        #0x1ab2990                                     // EventCtrl.<>c__DisplayClass146_0$$.ctor
01aa13f8  cbz       x20, #0x1aa1c74                                
01aa13fc  adrp      x24, #0x3a7c000                                
01aa1400  ldr       x24, [x24, #0xc08]                             
01aa1404  str       x19, [x20, #0x10]                              
01aa1408  ldr       x8, [x24]                                      
01aa140c  ldr       x8, [x8, #0xb8]                                
01aa1410  ldr       x0, [x8]                                       
01aa1414  mov       w8, #-1                                        
01aa1418  str       w8, [x20, #0x18]                               
01aa141c  cbz       x0, #0x1aa1c74                                 
01aa1420  ldr       x8, [x0, #0x178]                               
01aa1424  cbz       x8, #0x1aa1c74                                 
01aa1428  adrp      x23, #0x3a7e000                                
01aa142c  adrp      x28, #0x3a7c000                                
01aa1430  adrp      x26, #0x3a8c000                                
01aa1434  ldr       x23, [x23, #0xd98]                             
01aa1438  ldr       x28, [x28, #0xc30]                             
01aa143c  ldr       x26, [x26, #0x728]                             
01aa1440  ldr       w8, [x8, #0x18]                                
01aa1444  adrp      x27, #0x3a7c000                                
01aa1448  adrp      x25, #0x3a7c000                                
01aa144c  ldr       x27, [x27, #0xfa8]                             
01aa1450  ldr       x25, [x25, #0xde8]                             
01aa1454  cmp       w8, #1                                         
01aa1458  b.lt      #0x1aa16fc                                     
01aa145c  ldr       x1, [x23]                                      
01aa1460  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa1464  ldr       x8, [x24]                                      
01aa1468  ldr       x8, [x8, #0xb8]                                
01aa146c  ldr       x8, [x8]                                       
01aa1470  cbz       x8, #0x1aa1c74                                 
01aa1474  mov       x21, x0                                        
01aa1478  ldr       x0, [x8, #0x178]                               
01aa147c  cbz       x0, #0x1aa1c74                                 
01aa1480  ldr       x2, [x28]                                      
01aa1484  mov       w1, wzr                                        
01aa1488  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa148c  cbz       x21, #0x1aa1c74                                
01aa1490  mov       w1, w0                                         
01aa1494  mov       x0, x21                                        
01aa1498  mov       x2, xzr                                        
01aa149c  bl        #0x1ab56d4                                     // EventDataBase$$GetSubEp
01aa14a0  ldr       x8, [x24]                                      
01aa14a4  ldr       x8, [x8, #0xb8]                                
01aa14a8  ldr       x22, [x8]                                      
01aa14ac  cbz       x22, #0x1aa1c74                                
01aa14b0  ldr       x1, [x23]                                      
01aa14b4  mov       x21, x0                                        
01aa14b8  mov       x0, x22                                        
01aa14bc  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa14c0  ldr       x8, [x24]                                      
01aa14c4  ldr       x8, [x8, #0xb8]                                
01aa14c8  ldr       x8, [x8]                                       
01aa14cc  cbz       x8, #0x1aa1c74                                 
01aa14d0  mov       x23, x0                                        
01aa14d4  ldr       x0, [x8, #0x178]                               
01aa14d8  cbz       x0, #0x1aa1c74                                 
01aa14dc  ldr       x2, [x28]                                      
01aa14e0  mov       w1, wzr                                        
01aa14e4  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa14e8  cbz       x23, #0x1aa1c74                                
01aa14ec  mov       w1, w0                                         
01aa14f0  mov       x0, x23                                        
01aa14f4  mov       x2, xzr                                        
01aa14f8  bl        #0x1ab54a4                                     // EventDataBase$$GetSubEpIndex
01aa14fc  mov       w2, w0                                         
01aa1500  mov       x0, x22                                        
01aa1504  mov       w1, #1                                         
01aa1508  mov       x3, xzr                                        
01aa150c  bl        #0x1af345c                                     // DataMgr$$UnlockBookData
01aa1510  tbz       w0, #0, #0x1aa15a0                             
01aa1514  adrp      x22, #0x3d14000                                
01aa1518  ldrb      w8, [x22, #0x67f]                              
01aa151c  cbnz      w8, #0x1aa1534                                 
01aa1520  adrp      x0, #0x3a7d000                                 
01aa1524  ldr       x0, [x0, #0x170]                               
01aa1528  bl        #0x183db90                                     
01aa152c  mov       w8, #1                                         
01aa1530  strb      w8, [x22, #0x67f]                              
01aa1534  adrp      x8, #0x3a7d000                                 
01aa1538  ldr       x8, [x8, #0x170]                               
01aa153c  ldr       x0, [x25]                                      
01aa1540  ldr       x8, [x8]                                       
01aa1544  ldr       w9, [x0, #0xe4]                                
01aa1548  ldr       x8, [x8, #0xb8]                                
01aa154c  ldr       x22, [x8]                                      
01aa1550  cbnz      w9, #0x1aa155c                                 
01aa1554  bl        #0x183dcb0                                     
01aa1558  ldr       x0, [x25]                                      
01aa155c  ldr       x8, [x24]                                      
01aa1560  ldr       x8, [x8, #0xb8]                                
01aa1564  ldr       x9, [x8]                                       
01aa1568  cbz       x9, #0x1aa1c74                                 
01aa156c  ldr       x8, [x0, #0xb8]                                
01aa1570  ldr       x8, [x8, #0x108]                               
01aa1574  cbz       x8, #0x1aa1c74                                 
01aa1578  ldrsw     x9, [x9, #0x5cc]                               
01aa157c  ldr       w10, [x8, #0x18]                               
01aa1580  cmp       w9, w10                                        
01aa1584  b.hs      #0x1aa1c78                                     
01aa1588  cbz       x22, #0x1aa1c74                                
01aa158c  add       x8, x8, x9, lsl #3                             
01aa1590  mov       x0, x22                                        
01aa1594  mov       x2, xzr                                        
01aa1598  ldr       x1, [x8, #0x20]                                
01aa159c  bl        #0x1979ad8                                     // MiniNotiCtrl$$ShowMiniNoti
01aa15a0  ldr       x8, [x24]                                      
01aa15a4  ldr       x8, [x8, #0xb8]                                
01aa15a8  ldr       x8, [x8]                                       
01aa15ac  cbz       x8, #0x1aa1c74                                 
01aa15b0  ldr       x0, [x8, #0x178]                               
01aa15b4  cbz       x0, #0x1aa1c74                                 
01aa15b8  ldr       x2, [x28]                                      
01aa15bc  mov       w1, wzr                                        
01aa15c0  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa15c4  mov       w8, #0x138d                                    
01aa15c8  cmp       w0, w8                                         
01aa15cc  b.eq      #0x1aa1630                                     
01aa15d0  ldr       x8, [x24]                                      
01aa15d4  ldr       x8, [x8, #0xb8]                                
01aa15d8  ldr       x8, [x8]                                       
01aa15dc  cbz       x8, #0x1aa1c74                                 
01aa15e0  ldr       x0, [x8, #0x178]                               
01aa15e4  cbz       x0, #0x1aa1c74                                 
01aa15e8  ldr       x2, [x28]                                      
01aa15ec  mov       w1, wzr                                        
01aa15f0  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa15f4  mov       w8, #0x138f                                    
01aa15f8  cmp       w0, w8                                         
01aa15fc  b.eq      #0x1aa1630                                     
01aa1600  ldr       x8, [x24]                                      
01aa1604  ldr       x8, [x8, #0xb8]                                
01aa1608  ldr       x8, [x8]                                       
01aa160c  cbz       x8, #0x1aa1c74                                 
01aa1610  ldr       x0, [x8, #0x178]                               
01aa1614  cbz       x0, #0x1aa1c74                                 
01aa1618  ldr       x2, [x28]                                      
01aa161c  mov       w1, wzr                                        
01aa1620  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa1624  mov       w8, #0x1390                                    
01aa1628  cmp       w0, w8                                         
01aa162c  b.ne      #0x1aa1650                                     
01aa1630  ldr       x8, [x27]                                      
01aa1634  ldr       x8, [x8, #0xb8]                                
01aa1638  ldr       x0, [x8]                                       
01aa163c  cbz       x0, #0x1aa1c74                                 
01aa1640  mov       w1, #2                                         
01aa1644  mov       w2, #0xa                                       
01aa1648  mov       x3, xzr                                        
01aa164c  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1650  ldr       x8, [x24]                                      
01aa1654  ldr       x8, [x8, #0xb8]                                
01aa1658  ldr       x8, [x8]                                       
01aa165c  cbz       x8, #0x1aa1c74                                 
01aa1660  ldr       x0, [x8, #0x178]                               
01aa1664  cbz       x0, #0x1aa1c74                                 
01aa1668  ldr       x2, [x28]                                      
01aa166c  mov       w1, wzr                                        
01aa1670  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa1674  ldr       x8, [x19, #0x250]                              
01aa1678  cbz       x8, #0x1aa1c74                                 
01aa167c  mov       w9, #0x4dd3                                    
01aa1680  adrp      x10, #0x3a7d000                                
01aa1684  movk      w9, #0x1062, lsl #16                           
01aa1688  ldr       x10, [x10, #0xb8]                              
01aa168c  smull     x9, w0, w9                                     
01aa1690  mov       x0, x8                                         
01aa1694  ldr       x2, [x10]                                      
01aa1698  lsr       x11, x9, #0x3f                                 
01aa169c  asr       x9, x9, #0x26                                  
01aa16a0  add       w22, w9, w11                                   
01aa16a4  mov       w1, w22                                        
01aa16a8  bl        #0x276b5a8                                     // System.Collections.Generic.List<int>$$Contains
01aa16ac  tbnz      w0, #0, #0x1aa1934                             
01aa16b0  ldr       x0, [x19, #0x250]                              
01aa16b4  cbz       x0, #0x1aa1c74                                 
01aa16b8  adrp      x9, #0x3a7c000                                 
01aa16bc  ldr       x9, [x9, #0xc10]                               
01aa16c0  ldr       w10, [x0, #0x1c]                               
01aa16c4  ldr       x8, [x0, #0x10]                                
01aa16c8  ldr       x9, [x9]                                       
01aa16cc  add       w10, w10, #1                                   
01aa16d0  str       w10, [x0, #0x1c]                               
01aa16d4  cbz       x8, #0x1aa1c74                                 
01aa16d8  ldrsw     x10, [x0, #0x18]                               
01aa16dc  ldr       w11, [x8, #0x18]                               
01aa16e0  cmp       w10, w11                                       
01aa16e4  b.hs      #0x1aa18a0                                     
01aa16e8  add       x8, x8, x10, lsl #2                            
01aa16ec  add       w9, w10, #1                                    
01aa16f0  str       w9, [x0, #0x18]                                
01aa16f4  str       w22, [x8, #0x20]                               
01aa16f8  b         #0x1aa18b4                                     
01aa16fc  ldr       x8, [x0, #0x170]                               
01aa1700  cbz       x8, #0x1aa1c74                                 
01aa1704  ldr       w8, [x8, #0x18]                                
01aa1708  cmp       w8, #1                                         
01aa170c  b.lt      #0x1aa1950                                     
01aa1710  ldr       x1, [x23]                                      
01aa1714  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa1718  ldr       x8, [x24]                                      
01aa171c  ldr       x8, [x8, #0xb8]                                
01aa1720  ldr       x8, [x8]                                       
01aa1724  cbz       x8, #0x1aa1c74                                 
01aa1728  mov       x21, x0                                        
01aa172c  ldr       x0, [x8, #0x170]                               
01aa1730  cbz       x0, #0x1aa1c74                                 
01aa1734  ldr       x2, [x28]                                      
01aa1738  mov       w1, wzr                                        
01aa173c  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa1740  cbz       x21, #0x1aa1c74                                
01aa1744  mov       w1, w0                                         
01aa1748  mov       x0, x21                                        
01aa174c  mov       x2, xzr                                        
01aa1750  bl        #0x1ab558c                                     // EventDataBase$$GetMainEp
01aa1754  ldr       x8, [x24]                                      
01aa1758  ldr       x8, [x8, #0xb8]                                
01aa175c  ldr       x22, [x8]                                      
01aa1760  cbz       x22, #0x1aa1c74                                
01aa1764  ldr       x1, [x23]                                      
01aa1768  mov       x21, x0                                        
01aa176c  mov       x0, x22                                        
01aa1770  bl        #0x1d3ace8                                     // UnityEngine.Component$$GetComponent<object>
01aa1774  ldr       x8, [x24]                                      
01aa1778  ldr       x8, [x8, #0xb8]                                
01aa177c  ldr       x8, [x8]                                       
01aa1780  cbz       x8, #0x1aa1c74                                 
01aa1784  mov       x23, x0                                        
01aa1788  ldr       x0, [x8, #0x170]                               
01aa178c  cbz       x0, #0x1aa1c74                                 
01aa1790  ldr       x2, [x28]                                      
01aa1794  mov       w1, wzr                                        
01aa1798  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa179c  cbz       x23, #0x1aa1c74                                
01aa17a0  mov       w1, w0                                         
01aa17a4  mov       x0, x23                                        
01aa17a8  mov       x2, xzr                                        
01aa17ac  bl        #0x1ab53bc                                     // EventDataBase$$GetMainEpIndex
01aa17b0  mov       w2, w0                                         
01aa17b4  mov       x0, x22                                        
01aa17b8  mov       w1, wzr                                        
01aa17bc  mov       x3, xzr                                        
01aa17c0  bl        #0x1af345c                                     // DataMgr$$UnlockBookData
01aa17c4  tbz       w0, #0, #0x1aa1854                             
01aa17c8  adrp      x22, #0x3d14000                                
01aa17cc  ldrb      w8, [x22, #0x67f]                              
01aa17d0  cbnz      w8, #0x1aa17e8                                 
01aa17d4  adrp      x0, #0x3a7d000                                 
01aa17d8  ldr       x0, [x0, #0x170]                               
01aa17dc  bl        #0x183db90                                     
01aa17e0  mov       w8, #1                                         
01aa17e4  strb      w8, [x22, #0x67f]                              
01aa17e8  adrp      x8, #0x3a7d000                                 
01aa17ec  ldr       x8, [x8, #0x170]                               
01aa17f0  ldr       x0, [x25]                                      
01aa17f4  ldr       x8, [x8]                                       
01aa17f8  ldr       w9, [x0, #0xe4]                                
01aa17fc  ldr       x8, [x8, #0xb8]                                
01aa1800  ldr       x22, [x8]                                      
01aa1804  cbnz      w9, #0x1aa1810                                 
01aa1808  bl        #0x183dcb0                                     
01aa180c  ldr       x0, [x25]                                      
01aa1810  ldr       x8, [x24]                                      
01aa1814  ldr       x8, [x8, #0xb8]                                
01aa1818  ldr       x9, [x8]                                       
01aa181c  cbz       x9, #0x1aa1c74                                 
01aa1820  ldr       x8, [x0, #0xb8]                                
01aa1824  ldr       x8, [x8, #0x108]                               
01aa1828  cbz       x8, #0x1aa1c74                                 
01aa182c  ldrsw     x9, [x9, #0x5cc]                               
01aa1830  ldr       w10, [x8, #0x18]                               
01aa1834  cmp       w9, w10                                        
01aa1838  b.hs      #0x1aa1c78                                     
01aa183c  cbz       x22, #0x1aa1c74                                
01aa1840  add       x8, x8, x9, lsl #3                             
01aa1844  mov       x0, x22                                        
01aa1848  mov       x2, xzr                                        
01aa184c  ldr       x1, [x8, #0x20]                                
01aa1850  bl        #0x1979ad8                                     // MiniNotiCtrl$$ShowMiniNoti
01aa1854  ldr       x8, [x24]                                      
01aa1858  ldr       x8, [x8, #0xb8]                                
01aa185c  ldr       x8, [x8]                                       
01aa1860  cbz       x8, #0x1aa1c74                                 
01aa1864  ldr       x0, [x8, #0x170]                               
01aa1868  cbz       x0, #0x1aa1c74                                 
01aa186c  ldr       x2, [x28]                                      
01aa1870  mov       w1, wzr                                        
01aa1874  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa1878  mov       w8, #0x13b2                                    
01aa187c  cmp       w0, w8                                         
01aa1880  b.ne      #0x1aa1960                                     
01aa1884  ldr       x8, [x27]                                      
01aa1888  ldr       x8, [x8, #0xb8]                                
01aa188c  ldr       x0, [x8]                                       
01aa1890  cbz       x0, #0x1aa1c74                                 
01aa1894  mov       w1, #2                                         
01aa1898  mov       w2, #0xb                                       
01aa189c  b         #0x1aa19a8                                     
01aa18a0  ldr       x8, [x9, #0x20]                                
01aa18a4  mov       w1, w22                                        
01aa18a8  ldr       x8, [x8, #0xc0]                                
01aa18ac  ldr       x2, [x8, #0x70]                                
01aa18b0  bl        #0x276b228                                     // System.Collections.Generic.List<int>$$AddWithResize
01aa18b4  ldr       x8, [x27]                                      
01aa18b8  ldr       x8, [x8, #0xb8]                                
01aa18bc  ldr       x0, [x8]                                       
01aa18c0  cbz       x0, #0x1aa1c74                                 
01aa18c4  mov       w1, wzr                                        
01aa18c8  mov       w2, #1                                         
01aa18cc  mov       x3, xzr                                        
01aa18d0  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa18d4  ldr       x8, [x27]                                      
01aa18d8  ldr       x8, [x8, #0xb8]                                
01aa18dc  ldr       x0, [x8]                                       
01aa18e0  cbz       x0, #0x1aa1c74                                 
01aa18e4  mov       w1, #1                                         
01aa18e8  mov       w2, #1                                         
01aa18ec  mov       x3, xzr                                        
01aa18f0  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa18f4  ldr       x8, [x27]                                      
01aa18f8  ldr       x8, [x8, #0xb8]                                
01aa18fc  ldr       x0, [x8]                                       
01aa1900  cbz       x0, #0x1aa1c74                                 
01aa1904  mov       w1, #2                                         
01aa1908  mov       w2, #1                                         
01aa190c  mov       x3, xzr                                        
01aa1910  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1914  ldr       x8, [x27]                                      
01aa1918  ldr       x8, [x8, #0xb8]                                
01aa191c  ldr       x0, [x8]                                       
01aa1920  cbz       x0, #0x1aa1c74                                 
01aa1924  mov       w1, #3                                         
01aa1928  mov       w2, #1                                         
01aa192c  mov       x3, xzr                                        
01aa1930  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1934  ldr       x8, [x24]                                      
01aa1938  ldr       x8, [x8, #0xb8]                                
01aa193c  ldr       x8, [x8]                                       
01aa1940  cbz       x8, #0x1aa1c74                                 
01aa1944  ldr       x0, [x8, #0x178]                               
01aa1948  cbnz      x0, #0x1aa1aac                                 
01aa194c  b         #0x1aa1c74                                     
01aa1950  adrp      x8, #0x3a8c000                                 
01aa1954  ldr       x8, [x8, #0xb48]                               
01aa1958  ldr       x21, [x8]                                      
01aa195c  b         #0x1aa1ab8                                     
01aa1960  ldr       x8, [x24]                                      
01aa1964  ldr       x8, [x8, #0xb8]                                
01aa1968  ldr       x8, [x8]                                       
01aa196c  cbz       x8, #0x1aa1c74                                 
01aa1970  ldr       x0, [x8, #0x170]                               
01aa1974  cbz       x0, #0x1aa1c74                                 
01aa1978  ldr       x2, [x28]                                      
01aa197c  mov       w1, wzr                                        
01aa1980  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa1984  mov       w8, #0x138d                                    
01aa1988  cmp       w0, w8                                         
01aa198c  b.ne      #0x1aa19b0                                     
01aa1990  ldr       x8, [x27]                                      
01aa1994  ldr       x8, [x8, #0xb8]                                
01aa1998  ldr       x0, [x8]                                       
01aa199c  cbz       x0, #0x1aa1c74                                 
01aa19a0  mov       w1, #2                                         
01aa19a4  mov       w2, #0xd                                       
01aa19a8  mov       x3, xzr                                        
01aa19ac  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa19b0  ldr       x8, [x24]                                      
01aa19b4  ldr       x8, [x8, #0xb8]                                
01aa19b8  ldr       x8, [x8]                                       
01aa19bc  cbz       x8, #0x1aa1c74                                 
01aa19c0  ldr       x0, [x8, #0x170]                               
01aa19c4  cbz       x0, #0x1aa1c74                                 
01aa19c8  ldr       w8, [x0, #0x18]                                
01aa19cc  cmp       w8, #1                                         
01aa19d0  b.ne      #0x1aa1a94                                     
01aa19d4  ldr       x2, [x28]                                      
01aa19d8  mov       w1, wzr                                        
01aa19dc  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa19e0  ldr       x8, [x24]                                      
01aa19e4  str       w0, [x20, #0x18]                               
01aa19e8  ldr       x8, [x8, #0xb8]                                
01aa19ec  ldr       x8, [x8]                                       
01aa19f0  cbz       x8, #0x1aa1c74                                 
01aa19f4  ldr       x0, [x8, #0x170]                               
01aa19f8  cbz       x0, #0x1aa1c74                                 
01aa19fc  ldr       x2, [x28]                                      
01aa1a00  mov       w1, wzr                                        
01aa1a04  bl        #0x276af30                                     // System.Collections.Generic.List<int>$$get_Item
01aa1a08  add       w8, w0, #0x3e7                                 
01aa1a0c  cmp       w8, #0x7cf                                     
01aa1a10  b.lo      #0x1aa1a94                                     
01aa1a14  ldr       x8, [x27]                                      
01aa1a18  ldr       x8, [x8, #0xb8]                                
01aa1a1c  ldr       x0, [x8]                                       
01aa1a20  cbz       x0, #0x1aa1c74                                 
01aa1a24  mov       w1, wzr                                        
01aa1a28  mov       w2, wzr                                        
01aa1a2c  mov       x3, xzr                                        
01aa1a30  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1a34  ldr       x8, [x27]                                      
01aa1a38  ldr       x8, [x8, #0xb8]                                
01aa1a3c  ldr       x0, [x8]                                       
01aa1a40  cbz       x0, #0x1aa1c74                                 
01aa1a44  mov       w1, #1                                         
01aa1a48  mov       w2, wzr                                        
01aa1a4c  mov       x3, xzr                                        
01aa1a50  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1a54  ldr       x8, [x27]                                      
01aa1a58  ldr       x8, [x8, #0xb8]                                
01aa1a5c  ldr       x0, [x8]                                       
01aa1a60  cbz       x0, #0x1aa1c74                                 
01aa1a64  mov       w1, #2                                         
01aa1a68  mov       w2, wzr                                        
01aa1a6c  mov       x3, xzr                                        
01aa1a70  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1a74  ldr       x8, [x27]                                      
01aa1a78  ldr       x8, [x8, #0xb8]                                
01aa1a7c  ldr       x0, [x8]                                       
01aa1a80  cbz       x0, #0x1aa1c74                                 
01aa1a84  mov       w1, #3                                         
01aa1a88  mov       w2, wzr                                        
01aa1a8c  mov       x3, xzr                                        
01aa1a90  bl        #0x199f324                                     // PathMgr$$CompleteMission
01aa1a94  ldr       x8, [x24]                                      
01aa1a98  ldr       x8, [x8, #0xb8]                                
01aa1a9c  ldr       x8, [x8]                                       
01aa1aa0  cbz       x8, #0x1aa1c74                                 
01aa1aa4  ldr       x0, [x8, #0x170]                               
01aa1aa8  cbz       x0, #0x1aa1c74                                 
01aa1aac  ldr       x2, [x26]                                      
01aa1ab0  mov       w1, wzr                                        
01aa1ab4  bl        #0x276c96c                                     // System.Collections.Generic.List<int>$$RemoveAt
01aa1ab8  ldr       x8, [x24]                                      
01aa1abc  ldr       x8, [x8, #0xb8]                                
01aa1ac0  ldr       x8, [x8]                                       
01aa1ac4  cbz       x8, #0x1aa1c74                                 
01aa1ac8  ldr       x1, [x8, #0x40]                                
01aa1acc  mov       x0, x21                                        
01aa1ad0  mov       x2, xzr                                        
01aa1ad4  bl        #0x2c6434c                                     // System.String$$Format
01aa1ad8  mov       x1, x0                                         
01aa1adc  mov       x0, x19                                        
01aa1ae0  bl        #0x1a90f74                                     // EventCtrl$$Reveal
01aa1ae4  mov       x1, x0                                         
01aa1ae8  mov       x0, x19                                        
01aa1aec  mov       x2, xzr                                        
01aa1af0  bl        #0x35ca7c0                                     // UnityEngine.MonoBehaviour$$StartCoroutine
01aa1af4  str       x0, [x19, #0x188]                              
01aa1af8  mov       x0, x19                                        
01aa1afc  bl        #0x1a8c260                                     // EventCtrl$$ClearChoicePanel
01aa1b00  ldr       x8, [x24]                                      
01aa1b04  ldr       x8, [x8, #0xb8]                                
01aa1b08  ldr       x8, [x8]                                       
01aa1b0c  cbz       x8, #0x1aa1c74                                 
01aa1b10  ldr       x9, [x8, #0x170]                               
01aa1b14  cbz       x9, #0x1aa1c74                                 
01aa1b18  adrp      x8, #0x3a8c000                                 
01aa1b1c  adrp      x21, #0x3a7c000                                
01aa1b20  adrp      x23, #0x3a7b000                                
01aa1b24  ldr       x8, [x8, #0x610]                               
01aa1b28  ldr       x21, [x21, #0xc78]                             
01aa1b2c  ldr       w9, [x9, #0x18]                                
01aa1b30  ldr       x23, [x23, #0xaf0]                             
01aa1b34  ldr       x0, [x19, #0xb8]                               
01aa1b38  cbz       w9, #0x1aa1bac                                 
01aa1b3c  cbz       x0, #0x1aa1c74                                 
01aa1b40  adrp      x22, #0x3a8c000                                
01aa1b44  mov       w1, wzr                                        
01aa1b48  ldr       x22, [x22, #0xb40]                             
01aa1b4c  ldr       x2, [x8]                                       
01aa1b50  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1b54  ldr       x8, [x21]                                      
01aa1b58  mov       x21, x0                                        
01aa1b5c  mov       x0, x8                                         
01aa1b60  bl        #0x183ddcc                                     
01aa1b64  ldr       x2, [x22]                                      
01aa1b68  mov       x1, x20                                        
01aa1b6c  mov       x3, xzr                                        
01aa1b70  mov       x22, x0                                        
01aa1b74  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa1b78  ldr       x0, [x25]                                      
01aa1b7c  ldr       w8, [x0, #0xe4]                                
01aa1b80  cbnz      w8, #0x1aa1b8c                                 
01aa1b84  bl        #0x183dcb0                                     
01aa1b88  ldr       x0, [x25]                                      
01aa1b8c  ldr       x8, [x24]                                      
01aa1b90  ldr       x8, [x8, #0xb8]                                
01aa1b94  ldr       x9, [x8]                                       
01aa1b98  cbz       x9, #0x1aa1c74                                 
01aa1b9c  ldr       x8, [x0, #0xb8]                                
01aa1ba0  ldr       x8, [x8, #0xb8]                                
01aa1ba4  cbnz      x8, #0x1aa1c18                                 
01aa1ba8  b         #0x1aa1c74                                     
01aa1bac  cbz       x0, #0x1aa1c74                                 
01aa1bb0  ldr       x2, [x8]                                       
01aa1bb4  mov       w1, wzr                                        
01aa1bb8  bl        #0x27944d8                                     // System.Collections.Generic.List<object>$$get_Item
01aa1bbc  ldr       x8, [x21]                                      
01aa1bc0  mov       x21, x0                                        
01aa1bc4  mov       x0, x8                                         
01aa1bc8  bl        #0x183ddcc                                     
01aa1bcc  adrp      x8, #0x3a8c000                                 
01aa1bd0  mov       x1, x20                                        
01aa1bd4  mov       x3, xzr                                        
01aa1bd8  ldr       x8, [x8, #0xb38]                               
01aa1bdc  mov       x22, x0                                        
01aa1be0  ldr       x2, [x8]                                       
01aa1be4  bl        #0x35d87d4                                     // UnityEngine.Events.UnityAction$$.ctor
01aa1be8  ldr       x0, [x25]                                      
01aa1bec  ldr       w8, [x0, #0xe4]                                
01aa1bf0  cbnz      w8, #0x1aa1bfc                                 
01aa1bf4  bl        #0x183dcb0                                     
01aa1bf8  ldr       x0, [x25]                                      
01aa1bfc  ldr       x8, [x24]                                      
01aa1c00  ldr       x8, [x8, #0xb8]                                
01aa1c04  ldr       x9, [x8]                                       
01aa1c08  cbz       x9, #0x1aa1c74                                 
01aa1c0c  ldr       x8, [x0, #0xb8]                                
01aa1c10  ldr       x8, [x8, #0x88]                                
01aa1c14  cbz       x8, #0x1aa1c74                                 
01aa1c18  ldrsw     x9, [x9, #0x5cc]                               
01aa1c1c  ldr       w10, [x8, #0x18]                               
01aa1c20  cmp       w9, w10                                        
01aa1c24  b.hs      #0x1aa1c78                                     
01aa1c28  add       x8, x8, x9, lsl #3                             
01aa1c2c  ldr       x7, [x23]                                      
01aa1c30  mov       x0, x19                                        
01aa1c34  mov       x1, x21                                        
01aa1c38  mov       w2, #1                                         
01aa1c3c  mov       x3, x22                                        
01aa1c40  ldr       x4, [x8, #0x20]                                
01aa1c44  mov       x5, xzr                                        
01aa1c48  mov       w6, wzr                                        
01aa1c4c  bl        #0x1a9313c                                     // EventCtrl$$SetButton
01aa1c50  mov       x0, x19                                        
01aa1c54  ldp       x20, x19, [sp, #0x60]                          
01aa1c58  ldp       x22, x21, [sp, #0x50]                          
01aa1c5c  ldr       x30, [sp, #0x10]                               
01aa1c60  ldp       x24, x23, [sp, #0x40]                          
01aa1c64  ldp       x26, x25, [sp, #0x30]                          
01aa1c68  ldp       x28, x27, [sp, #0x20]                          
01aa1c6c  add       sp, sp, #0x70                                  
01aa1c70  b         #0x1a90178                                     // EventCtrl$$ShowEventCanvas
01aa1c74  bl        #0x183dddc                                     
01aa1c78  bl        #0x183dde4                                     