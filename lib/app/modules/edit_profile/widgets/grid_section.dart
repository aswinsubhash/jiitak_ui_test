import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';

class GridSection extends StatelessWidget {
  final String title;
  final String bracketTitle;
  final List<String> images;
  const GridSection({
    Key? key,
    required this.title,
    required this.bracketTitle,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Row(
          children: [
            Text(title),
            const Text(
              '*',
              style: TextStyle(color: AppColor.kRossyRed),
            ),
            const SizedBox(width: 5),
            Text(
              bracketTitle,
              style: const TextStyle(color: AppColor.kGrey),
            ),
          ],
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColor.kGrey,
                        image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.close,
                          size: 24,
                          color: AppColor.kWhite,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),

      ],
    );
  }
}
