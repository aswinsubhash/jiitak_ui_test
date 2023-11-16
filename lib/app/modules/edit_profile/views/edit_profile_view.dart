import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';
import '../controllers/edit_profile_controller.dart';
import '../widgets/check_boxes.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_title_textfield.dart';
import '../widgets/dual_drop.dart';
import '../widgets/grid_section.dart';
import '../widgets/notification_badge.dart';
import '../widgets/section_one.dart';

class EditProfileView extends GetView {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EditProfileController controller = Get.put(EditProfileController());
    return Scaffold(
      backgroundColor: AppColor.kScaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: AppColor.kWhite,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: AppColor.kScaffoldBackgroundColor,
            // Set the radius
            child: Icon(
              CupertinoIcons.back,
              color: AppColor.kLightGrey,
              size: 20,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          '店舗プロフィール編集',
          style: TextStyle(color: AppColor.kBlack),
        ),
        actions: [
          NotificationBadgeIcon(
            iconData: Icons.notifications_none,
            notificationCount: 99,
            onTap: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitleTextField(
                height: 40,
                width: double.maxFinite,
                titleText: '店舗名',
                hintText: 'Mer キッチン',
              ),
              const CustomTitleTextField(
                height: 40,
                width: double.maxFinite,
                titleText: '代表担当者名',
                hintText: '林田　絵梨花',
              ),
              const CustomTitleTextField(
                height: 40,
                width: double.maxFinite,
                titleText: '店舗電話番号',
                hintText: '123 - 4567 8910',
              ),
              const CustomTitleTextField(
                height: 40,
                width: double.maxFinite,
                titleText: '店舗住所',
                hintText: '大分県豊後高田市払田791-13',
              ),
              const SizedBox(height: 20),
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_map.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SectionOne(controller: controller),
              GridSection(
                title: '店舗内観',
                bracketTitle: '（1枚〜3枚ずつ追加してください）',
                images: controller.officeImage,
              ),
              GridSection(
                title: '料理写真',
                bracketTitle: '（1枚〜3枚ずつ追加してください）',
                images: controller.foodImages,
              ),
              GridSection(
                title: 'メニュー写真',
                bracketTitle: '（1枚〜3枚ずつ追加してください）',
                images: controller.bioImages,
              ),
              const DualDropTile(
                title: '営業時間',
                start: '10 : 00',
                end: '20 : 00',
              ),
              const SizedBox(height: 10),
              const DualDropTile(
                title: 'ランチ時間',
                start: '11 : 00',
                end: '15 : 00',
              ),
              const SizedBox(height: 10),
              doubleLayerCheckbox(),
              const CustomTitleTextField(
                height: 40,
                width: double.infinity,
                hintText: '料理カテゴリー選択',
                titleText: '料理カテゴリー',
              ),
              const DualDropTile(
                title: '予算',
                start: '¥ 1,000',
                end: '¥ 2,000',
              ),
              const CustomTitleTextField(
                height: 40,
                width: double.infinity,
                hintText: '美味しい！リーズナブルなオムライスランチ！',
                titleText: 'キャッチコピー',
              ),
              const CustomTitleTextField(
                height: 40,
                width: double.infinity,
                hintText: '40席',
                titleText: '座席数',
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text('定休日'),
                  Text(
                    '*',
                    style: TextStyle(color: AppColor.kRossyRed),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  checked('有'),
                  unchecked('無'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text('駐車場'),
                  Text(
                    '*',
                    style: TextStyle(color: AppColor.kRossyRed),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  checked('有'),
                  unchecked('無'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text('来店プレゼント'),
                  Text(
                    '*',
                    style: TextStyle(color: AppColor.kRossyRed),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  checked('有（最大３枚まで）'),
                  unchecked('無'),
                ],
              ),
              GridSection(
                title: '',
                bracketTitle: '',
                images: controller.bevImages,
              ),
              const CustomTitleTextField(
                height: 40,
                width: double.infinity,
                hintText: 'いちごクリームアイスクリーム, ジュース',
                titleText: '来店プレゼント名',
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: () {},
                width: double.infinity,
                child: const Text('編集を保存'),
              ),
              const SizedBox(height: 90), 
            ],
          ),
        ),
      ),
    );
  }


}

