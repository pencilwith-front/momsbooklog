import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:momsbooklog/components/datarowwidget.dart';
import 'package:momsbooklog/models/getxcontroller.dart';
import 'package:momsbooklog/pages/registerpage.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  final MyController _myController = Get.put(MyController());
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          margin: EdgeInsets.only(bottom: 55),
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Get.to(RegisterPage());
            },
            child: Icon(Icons.add),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    indicatorColor: Colors.pink,
                    indicatorWeight: 1.5,
                    controller: _tabController,
                    tabs: [
                      Text(
                        'My Library',
                      ),
                      Text(
                        'Others',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [DataRowWidget(), DataRowWidget()],
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.pink,
                  child: Center(child: Text('ADMOB')),
                ),
              ],
            ),
          ),
        ));
  }
}
