void EventCtrl___CheckAllEvent_b__150_9 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aabb04 to 0x1aabb18
01aabb04  ldrb      w8, [x0, #0x1a8]                               
01aabb08  cbz       w8, #0x1aabb14                                 
01aabb0c  mov       w1, #1                                         
01aabb10  b         #0x1a8c444                                     // EventCtrl$$Death
01aabb14  ret                                                      