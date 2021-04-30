import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momsbooklog/components/datarowwidget.dart';
import 'package:momsbooklog/models/getxcontroller.dart';

class ContentPage extends StatelessWidget {
  final MyController _myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: DataRowWidget()),
    );
  }
}
