import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  TextStyle myTextTheme(
    String font, {
    double size,
    Color color,
    bool bold,
  }) {
    return TextStyle(
        fontSize: size == null ? 10 : size,
        color: color != Colors.black ? color : Colors.black,
        fontFamily: font,
        fontWeight: bold == true ? FontWeight.bold : FontWeight.normal);
  }
}
