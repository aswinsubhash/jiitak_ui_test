
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/app_color.dart';
import '../controllers/edit_profile_controller.dart';
import 'grid_section.dart';

class SectionOne extends StatelessWidget {
  const SectionOne({
    super.key,
    required this.controller,
  });

  final EditProfileController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            GridSection(
              images: controller.images,
              title: '店舗外観',
              bracketTitle: '（最大3枚まで）',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: AppColor.kLightGrey,
                dashPattern: const [5, 3],
                radius: const Radius.circular(5),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColor.kScaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.photo,
                        color: AppColor.kGrey,
                      ),
                      Text(
                        '写真を追加',
                        style: TextStyle(color: AppColor.kGrey),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}