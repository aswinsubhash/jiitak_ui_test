import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class NotificationBadgeIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onTap;
  final int notificationCount;

  const NotificationBadgeIcon({
    Key? key,
    this.onTap,
    required this.iconData,
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 80,
        width: 70,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  iconData,
                  color: AppColor.kBlack,
                  size: 30,
                ),
              ],
            ),
            Positioned(
              top: 15,
              right: 18,
              child: Container(
                width: 20,
                height: 15,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.kAppOrange,
                ),
                alignment: Alignment.center,
                child: Text(
                  '$notificationCount +',
                  style: const TextStyle(fontSize: 7),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}