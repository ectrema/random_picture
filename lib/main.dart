import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_picture/home/home_view.dart';
import 'package:random_picture/home/home_view_controller_bindings.dart';
import 'package:random_picture/home/second_view/second_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Random image",
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          page: () => HomeView(),
          binding: HomeViewControllerBingins(),
        ),
        GetPage(
          name: '/second',
          page: () => SecondView(),
        )
      ],
      defaultTransition: Transition.noTransition,
      debugShowCheckedModeBanner: false,
    ),
  );
}
