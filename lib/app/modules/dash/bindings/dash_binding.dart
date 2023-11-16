import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../qr/controllers/qr_controller.dart';
import '../../stamp_details/controllers/stamp_details_controller.dart';
import '../controllers/dash_controller.dart';

class DashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashController>(
      () => DashController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<StampDetailsController>(
      () => StampDetailsController(),
    );
    Get.lazyPut<QrController>(
      () => QrController(),
    );
  }
}
