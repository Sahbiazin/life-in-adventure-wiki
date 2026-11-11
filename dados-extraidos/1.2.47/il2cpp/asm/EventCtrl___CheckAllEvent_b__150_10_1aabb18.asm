void EventCtrl___CheckAllEvent_b__150_10 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aabb18 to 0x1aabb28
01aabb18  ldrb      w8, [x0, #0x1a8]                               
01aabb1c  cbz       w8, #0x1aabb24                                 
01aabb20  b         #0x1a8f30c                                     // EventCtrl$$Continue
01aabb24  ret                                                      