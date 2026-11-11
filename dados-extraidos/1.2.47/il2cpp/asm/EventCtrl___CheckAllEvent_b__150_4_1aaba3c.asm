void EventCtrl___CheckAllEvent_b__150_4 (EventCtrl_o* __this, const MethodInfo* method);
// RVA 0x1aaba3c to 0x1aaba50
01aaba3c  ldrb      w8, [x0, #0x1a8]                               
01aaba40  cbz       w8, #0x1aaba4c                                 
01aaba44  mov       w1, #1                                         
01aaba48  b         #0x1a8c444                                     // EventCtrl$$Death
01aaba4c  ret                                                      