import 'package:get/get.dart';

class EditProfileController extends GetxController {
  List<String> images = [
    'assets/images/image_street.png',
    'assets/images/image_street.png',
  ];
  List<String> officeImage = [
    'assets/images/image_office.png',
    'assets/images/image_office.png',
    'assets/images/image_office.png',
  ];

  List<String> foodImages = [
    'assets/images/food_one.png',
    'assets/images/food_two.png',
    'assets/images/food_three.png',
  ];
  List<String> bioImages = [
    'assets/images/bio_one.png',
    'assets/images/bio_two.png',
    'assets/images/bio_three.png',
  ];
  List<String> bevImages = [
    'assets/images/ice.png',
    'assets/images/sprite.png',
    'assets/images/cola.png',
  ];

  var value = false.obs;
}
