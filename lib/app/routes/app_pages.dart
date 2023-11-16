import 'package:get/get.dart';

import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/dash/bindings/dash_binding.dart';
import '../modules/dash/views/dash_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/qr/bindings/qr_binding.dart';
import '../modules/qr/views/qr_view.dart';
import '../modules/stamp_details/bindings/stamp_details_binding.dart';
import '../modules/stamp_details/views/stamp_details_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.STAMP_DETAILS,
      page: () => const StampDetailsView(),
      binding: StampDetailsBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.DASH,
      page: () => const DashView(),
      binding: DashBinding(),
    ),
    GetPage(
      name: _Paths.QR,
      page: () => const QrView(),
      binding: QrBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
  ];
}
