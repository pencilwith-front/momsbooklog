import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momsbooklog/pages/contentpage.dart';

void main() => runApp(GetMaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Get.to(ContentPage());
            },
            child: Text('move'),
          ),
        ),
      ),
    );
  }
}
