import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momsbooklog/components/textrowwidget.dart';
import 'package:momsbooklog/models/getxcontroller.dart';

class DataRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 150,
      width: double.infinity,
      //color: Colors.red,
      child: Stack(
        children: [
          Align(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo[900],
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              margin: EdgeInsets.only(left: 50),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              //border line색 주기위해서
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1, color: Colors.white)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  // 사이즈 주기위해서
                  width: 100,
                  child: Image.asset(
                    'images/samplebook.jpeg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 125),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextRowWidget(
                    content: 'BIZZY BEAR',
                    bold: true,
                    font: 'Cafe24',
                    size: 20,
                    color: Colors.white,
                  ),
                  TextRowWidget(
                    content: 'gunhosong@kakao.com',
                    bold: true,
                    font: 'Cafe24',
                    size: 15,
                    color: Colors.white54,
                  ),
                  TextRowWidget(
                    content: '2021.04.20',
                    bold: true,
                    font: 'Cafe24',
                    size: 12,
                    color: Colors.white54,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextRowWidget(
                          content: '저장된 단어수: 10',
                          color: Colors.yellow,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              //Icons.favorite_border,
                              Icons.favorite,
                              color: Colors.red,
                              size: 18,
                            ),
                            TextRowWidget(
                              content: '1024',
                              color: Colors.yellow,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );

    //   Container(
    //   height: 120,
    //   padding: EdgeInsets.all(3.0),
    //   width: double.infinity,
    //   child: Card(
    //     elevation: 1.5,
    //     shape: RoundedRectangleBorder(
    //       side: BorderSide(color: Colors.black54, width: 1),
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     child: Row(
    //       children: [
    //         Padding(
    //           padding: const EdgeInsets.all(3.0),
    //           child:
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
