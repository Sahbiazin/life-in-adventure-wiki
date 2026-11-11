void EventCtrl___CheckAllEvent_b__150_12 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aabaf0 to 0x1aabb04
01aabaf0  ldrb      w8, [x0, #0x1a8]                               
01aabaf4  cbz       w8, #0x1aabb00                                 
01aabaf8  mov       w1, #1                                         
01aabafc  b         #0x1a8c444                                     // EventCtrl$$Death
01aabb00  ret                                                      