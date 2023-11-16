import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../../../utils/custom_icons.dart';
import '../controllers/home_controller.dart';
import '../widgets/date_picker.dart';
import '../widgets/list_tile.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kScaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColor.kWhite,
        elevation: 0,
        title: Row(children: [
          Expanded(
            child: Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColor.kScaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '北海道, 札幌市',
                    hintStyle: TextStyle(color: AppColor.kBlack, fontSize: 15),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(11),
                  ),
                ),
              ),
            ),
          ),
          const Icon(
            CustomIcons.params,
            color: AppColor.kLightGrey,
            size: 25,
          ),
          const SizedBox(width: 10),
          const Icon(
            Icons.favorite_border_outlined,
            color: AppColor.kRossyRed,
            size: 30,
          ),
        ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 30,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1.0, -4.0),
                end: Alignment(0.0, -1.0),
                colors: [
                  Color.fromARGB(255, 250, 170, 20),
                  Color.fromARGB(255, 255, 208, 121),
                ],
              ),
            ),
            child: const Center(
              child: Text('2022年 5月 26日（木）'),
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: DatePickerCustom(),
          ),
          const SizedBox(height: 15),
           Expanded(
            child: ListCustomTile(),
          ),
          const SizedBox(height: 50),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColor.kWhite,
          child: const Icon(
            CustomIcons.location,
            color: AppColor.kBlack,
            size: 30,
          ),
        ),
      ),
    );
  }
}
