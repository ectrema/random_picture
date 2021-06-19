import 'package:random_picture/home/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bienvenue dans votre application'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              initialValue: controller.name,
              decoration:
                  InputDecoration(hintText: 'Veuillez entrer votre nom'),
              onChanged: (value) {
                controller.name = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () async {
                await controller.getRandomPicture();
                Get.toNamed('/second');
              },
              child: Text('Démarrer'),
            ),
          ),
        ],
      ),
    );
  }
}
