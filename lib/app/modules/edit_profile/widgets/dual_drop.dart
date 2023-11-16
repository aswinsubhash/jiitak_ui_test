import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class DualDropTile extends StatelessWidget {
  final String title;
  final String start;
  final String end;
  const DualDropTile({
    Key? key,
    required this.title,
    required this.start,
    required this.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Text(title),
              const Text(
                '*',
                style: TextStyle(color: AppColor.kRossyRed),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
               width: MediaQuery.of(context).size.width / 3,
              child: TextField(
                cursorColor: AppColor.kAppOrange,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: start,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kAppOrange,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kLightGrey,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(8.0),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('〜'),
            ),
            SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width / 3,
              child: TextField(
                cursorColor: AppColor.kAppOrange,
                style: const TextStyle(
                  fontSize: 15,
                ),
                decoration: InputDecoration(
                  hintText: end,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kAppOrange,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kLightGrey,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(8.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
