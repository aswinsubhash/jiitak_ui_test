import 'package:flutter/widgets.dart';

import '../../../utils/app_color.dart';

class DateListTile extends StatelessWidget{
  final String? date;
  const DateListTile({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date!,
            style: const TextStyle(color: AppColor.kLightGrey),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('スタンプを獲得しました。'),
              Text(
                '1 個',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
