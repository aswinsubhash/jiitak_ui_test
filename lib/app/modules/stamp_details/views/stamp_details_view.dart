import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../controllers/stamp_details_controller.dart';
import '../widgets/date_list_tile.dart';
import '../widgets/stamps.dart';

class StampDetailsView extends GetView<StampDetailsController> {
  const StampDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kStampScreenScaffold,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: AppColor.kStampScreenScaffold,
          leading: const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: AppColor
                  .kStampCircleAvatar, // Set your desired background color
              // Set the radius
              child: Icon(
                CupertinoIcons.back,
                color: AppColor.kWhite,
                size: 20, // Set your desired icon color
              ),
            ),
          ),
          centerTitle: true,
          title: const Text('スタンプカード詳細'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_circle_outline),
            )
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20.0),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mer キッチン', style: TextStyle(color: AppColor.kWhite)),
                  Row(
                    children: [
                      Text(
                        '現在の獲得数',
                        style: TextStyle(color: AppColor.kWhite),
                      ),
                      Text(
                        '30',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColor.kWhite,
                        ),
                      ),
                      Text(
                        '個',
                        style: TextStyle(color: AppColor.kWhite),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.kScaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const StampWidget();
                    },
                    itemCount: 2,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('2 / 2枚目'),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Text(
                      'スタンプ獲得履歴',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return DateListTile(date: controller.dates[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(color: AppColor.kLightGrey);
                },
                itemCount: 6,
              ),
              const SizedBox(height: 80)
            ],
          ),
        ),
      ),
    );
  }
}
