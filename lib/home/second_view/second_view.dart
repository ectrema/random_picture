import 'package:random_picture/home/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Obx(
              () => Image(image: controller.picture.value.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () async {
                await controller.getRandomPicture();
              },
              child: Text('Nouvel photo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Text('Retour'),
            ),
          ),
        ],
      ),
    );
  }
}
