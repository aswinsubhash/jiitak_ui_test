import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class CustomTitleTextField extends StatelessWidget {
  final double height;
  final double width;
  final String hintText;
  final String titleText;

  const CustomTitleTextField(
      {Key? key,
      required this.height,
      required this.width,
      required this.hintText,
      required this.titleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Text(titleText),
              const Text(
                '*',
                style: TextStyle(color: AppColor.kRossyRed),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height,
          width: width,
          child: TextField(
            cursorColor: AppColor.kAppOrange,
            style: const TextStyle(
              fontSize: 15,
            ),
            decoration: InputDecoration(
              hintText: hintText,
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
    );
  }
}
