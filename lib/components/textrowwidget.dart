import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momsbooklog/models/getxcontroller.dart';

class TextRowWidget extends StatelessWidget {
  final MyController _myController = Get.find();

  @required
  String content;
  @required
  String font;
  Color color;
  bool bold;
  double size;

  TextRowWidget({this.content, this.font, this.color, this.bold, this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Text(
        '$content',
        style: _myController.myTextTheme(
          '$font',
          color: color,
          bold: bold,
          size: size,
        ),
      ),
    );
  }
}
