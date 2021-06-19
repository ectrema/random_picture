import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeViewController extends GetxController {
  String name = '';
  Rx<Image> picture = Image.memory(Uint8List(0)).obs;

  Future<void> getRandomPicture() async {
    http.Response response = await http.get(Uri.parse('https://picsum.photos/200'));   
    picture.value = Image.memory(response.bodyBytes);
  }
}
