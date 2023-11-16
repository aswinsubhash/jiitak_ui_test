import 'package:flutter/material.dart';

import '../../../utils/app_color.dart';
import '../controllers/home_controller.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 19, vertical: 8),
                  child: Container(
                    height: 430.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.kWhite,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                controller.images[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 150,
                                    decoration: const BoxDecoration(
                                      color: AppColor.kShadeOrange,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '介護付き有料老人ホーム',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: AppColor.kAppOrange,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    '¥ 6,000',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 15),
                              const Text('5月 31日（水）08 : 00 ~ 17 : 00'),
                              const SizedBox(height: 5),
                              const Text('北海道札幌市東雲町3丁目916番地17号'),
                              const SizedBox(height: 5),
                              const Text('交通費 300円'),
                              const SizedBox(height: 5),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '住宅型有料老人ホームひまわり倶楽部',
                                    style: TextStyle(
                                      color: AppColor.kLightGrey,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    size: 28,
                                    color: AppColor.kLightGrey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 165.0,
                  left: 12.0,
                  child: Container(
                    height: 25.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: AppColor.kRossyRed,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        '本日まで',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppColor.kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
      itemCount: controller.images.length,
    );
  }
}
