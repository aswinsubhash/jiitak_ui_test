import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/qr_controller.dart';

class QrView extends GetView<QrController> {
  const QrView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QrView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'QrView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
