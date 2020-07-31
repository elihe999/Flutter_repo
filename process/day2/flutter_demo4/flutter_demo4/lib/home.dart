
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo4/component/tab_item.dart';

class BOSSApp extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<BOSSApp> {

  // TabController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconTab(
          icon: 'assets/images/ic_main_tab_my_nor.png',
          text: '我的',
          color: Colors.grey,
        ),
      // bottomNavigationBar: new Material(
      //   color: Colors.white,
      //   child: TabBar(
      //     controller: _controller,
      //     labelStyle: new TextStyle(fontSize: 11),
      //     tabs: <Widget>[

      //     ],
      //   ),
      // ),
    );
  }

}
