import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'default_view.dart';
import 'desktop_view.dart';
import 'mobile_view.dart';
import 'tablet_view.dart';

class ListCustomTile extends GetResponsiveView<HomeController> {
  ListCustomTile({super.key});

  @override
  Widget builder() {
    if (screen.isPhone) {
      return MobileView(
        controller: controller,
      );
    } else if (screen.isTablet) {
      return TabletView(
        controller: controller,
      );
    } else if (screen.isDesktop) {
      return DesktopView(
        controller: controller,
      );
    }
    return DefaultView(
      controller: controller,
    );
  }
}






