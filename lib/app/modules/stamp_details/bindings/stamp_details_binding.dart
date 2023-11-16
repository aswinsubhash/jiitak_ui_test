import 'package:get/get.dart';

import '../controllers/stamp_details_controller.dart';

class StampDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StampDetailsController>(
      () => StampDetailsController(),
    );
  }
}
