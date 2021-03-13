import 'package:get/get.dart';
import 'package:paycheck/pages/pay/paylist.dart';
import 'package:paycheck/pages/pay/payregister.dart';

class ScreenController {
  int screenIdentifier = 0;

  void onItemTapped(int index) {
    screenIdentifier = index;
    if (index == 0)
      Get.off(() => PayList());
    else if (index == 1) Get.off(() => PayRegister());
  }
}
