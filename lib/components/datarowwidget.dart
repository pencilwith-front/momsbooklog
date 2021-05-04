import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momsbooklog/colors/colors.dart';
import 'package:momsbooklog/components/textrowwidget.dart';
import 'package:momsbooklog/models/getxcontroller.dart';

class DataRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
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
                      border: Border.all(width: 0.5),
                      color: background[(index % 5)],
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  margin: EdgeInsets.only(left: 50),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 5, color: Colors.white)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      // 사이즈 주기위해서
                      width: 95,
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
                        font: 'Acme',
                        size: 20,
                        color: titleColor[(index % 5)],
                      ),
                      TextRowWidget(
                        content: 'gunhosong@kakao.com',
                        bold: true,
                        font: 'Acme',
                        size: 15,
                        color: contentColor[(index % 5)],
                      ),
                      TextRowWidget(
                        content: '2021.04.20',
                        bold: true,
                        font: 'Cafe24',
                        size: 13,
                        color: contentColor[(index % 5)],
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
                              bold: true,
                              size: 12,
                              //color: Colors.yellow,
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 7.0),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                            TextRowWidget(
                              content: '100',
                              bold: true,
                              //color: Colors.yellow,
                              size: 12,
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
      },
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
