import 'package:get/get.dart';

class DashController extends GetxController {
  int currentSelectedIntex = 0;
  bottomIndex(newIntex) {
    if (newIntex == 2) {
      return;
    } else {
      currentSelectedIntex = newIntex;
      update();
    }
  }
}
