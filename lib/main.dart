import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/app_color.dart';

// void main() => runApp(
//       DevicePreview(
//         builder: (context) => const MyApp(), 
//       ),
//     );
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context), 
      builder: DevicePreview.appBuilder,
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        splashColor: AppColor.kTrasparent,
        highlightColor: AppColor.kTrasparent,
      ),
    );
  }
}
