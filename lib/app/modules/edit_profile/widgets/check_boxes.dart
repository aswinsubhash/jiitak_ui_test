import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

Row unchecked(String date) {
  return Row(
    children: [
      Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              activeColor: AppColor.kAppOrange,
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(
                  width: 1.0,
                  color: AppColor.kLightGrey,
                ),
              ),
              value: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 10),
          Text(
            date,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(width: 25),
        ],
      ),
    ],
  );
}

Row checked(String date) {
  return Row(
    children: [
      Row(
        children: [
          SizedBox(
            width: 20,
            height: 20,
            child: Checkbox(
              activeColor: AppColor.kAppOrange,
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(
                  width: 1.0,
                  color: AppColor.kLightGrey,
                ),
              ),
              value: true,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 10),
          Text(
            date,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(width: 25),
        ],
      ),
    ],
  );
}

Column doubleLayerCheckbox() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
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
          unchecked('月'),
          unchecked('火'),
          unchecked('水'),
          unchecked('木'),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        children: [
          unchecked('金'),
          checked('土'),
          checked('日'),
          checked('祝'),
        ],
      )
    ],
  );
}
