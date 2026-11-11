void EventCtrl___CheckAllEvent_b__150_0 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aaba50 to 0x1aaba64
01aaba50  ldrb      w8, [x0, #0x1a8]                               
01aaba54  cbz       w8, #0x1aaba60                                 
01aaba58  mov       w1, #1                                         
01aaba5c  b         #0x1a8c444                                     // EventCtrl$$Death
01aaba60  ret                                                      