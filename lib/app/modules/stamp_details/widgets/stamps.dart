import 'package:flutter/widgets.dart';

import '../../../utils/app_color.dart';
import '../../../utils/custom_icons.dart';

class StampWidget extends StatelessWidget {
  const StampWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
          height: 200,
          width: 320,
          decoration: BoxDecoration(
            color: AppColor.kWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                    Icon(
                      CustomIcons.verified,
                      size: 40,
                      color: AppColor.kAppOrange,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
