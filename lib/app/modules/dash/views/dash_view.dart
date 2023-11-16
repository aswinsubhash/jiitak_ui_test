import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/custom_icons.dart';
import '../../chat/views/chat_view.dart';
import '../../edit_profile/views/edit_profile_view.dart';
import '../../home/views/home_view.dart';
import '../../qr/views/qr_view.dart';
import '../../stamp_details/views/stamp_details_view.dart';
import '../controllers/dash_controller.dart';

class DashView extends GetView<DashController> {
  const DashView({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeView(),
      const StampDetailsView(),
      const QrView(),
      const ChatView(),
      const EditProfileView()
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: GetBuilder<DashController>(
          init: DashController(),
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: FloatingActionButton(
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 250, 170, 20),
                        Color.fromARGB(255, 255, 208, 121),
                      ],
                    ),
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner_outlined,
                    size: 35,
                  ),
                ),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: GetBuilder<DashController>(
        builder: (context) {
          return Stack(
            children: [
              pages.elementAt(controller.currentSelectedIntex),
              Align(
                alignment: const Alignment(0.0, 1.0),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: AppColor.kAppOrange,
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  unselectedItemColor: AppColor.kBlack,
                  unselectedLabelStyle:
                      const TextStyle(color: Colors.white, fontSize: 10),
                  selectedLabelStyle:
                      const TextStyle(color: Colors.white, fontSize: 10),
                  currentIndex: controller.currentSelectedIntex,
                  onTap: (newIntex) {
                    controller.bottomIndex(newIntex);
                  },
                  backgroundColor: Colors.white,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.search,
                          size: 20,
                        ),
                        label: 'さがす'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.bag,
                          size: 20,
                        ),
                        label: 'お仕事'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.transparent,
                        ),
                        label: '打刻する'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CupertinoIcons.chat_bubble,
                          size: 20,
                        ),
                        label: 'チャット'),
                    BottomNavigationBarItem(
                        icon: Icon(
                          CustomIcons.user_1,
                          size: 20,
                        ),
                        label: 'マイページ')
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
