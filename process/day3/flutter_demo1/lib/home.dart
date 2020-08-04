
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo4/component/tab_item.dart';
import 'package:flutter_demo4/screen/Company/CompanyScreen.dart';
import 'package:flutter_demo4/screen/Job/JobMainScreen.dart';
import 'package:flutter_demo4/screen/Message/MessageMain.dart';
import 'package:flutter_demo4/screen/Mine/MineMain.dart';

const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;

class BOSSApp extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<BOSSApp> with SingleTickerProviderStateMixin {

  TabController _controller;
  int _currentIndex = 0;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();

    _controller = new TabController(initialIndex:_currentIndex, length: 4, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };
    _controller.addListener(onChanged);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[
          JobMainScreen(),
          CompanyMain(),
          MessageMain(),
          MineMain()
        ],
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: TabBar(
          controller: _controller,
          labelStyle: new TextStyle(fontSize: 11),
          tabs: <Widget>[
            new IconTab(
              icon: _currentIndex == INDEX_JOB
              ? 'assets/images/ic_main_tab_find_nor.png'
              : 'assets/images/ic_main_tab_find_pre.png',
              text: '职位',
              color: _currentIndex == INDEX_JOB
              ? Colors.grey : Theme.of(context).primaryColor,
            ),
            new IconTab(
              icon: _currentIndex == INDEX_COMPANY
              ? 'assets/images/ic_main_tab_company_nor.png'
              : 'assets/images/ic_main_tab_company_pre.png',
              text: '公司',
              color: _currentIndex == INDEX_COMPANY
              ? Colors.grey : Theme.of(context).primaryColor,
            ),
            new IconTab(
              icon: _currentIndex == INDEX_MESSAGE
              ? 'assets/images/ic_main_tab_contacts_nor.png'
              : 'assets/images/ic_main_tab_contacts_pre.png',
              text: '消息',
              color: _currentIndex == INDEX_MESSAGE
              ? Colors.grey : Theme.of(context).primaryColor,
            ),
            new IconTab(
              icon: _currentIndex == INDEX_MINE
              ? 'assets/images/ic_main_tab_my_nor.png'
              : 'assets/images/ic_main_tab_my_pre.png',
              text: '我的',
              color: _currentIndex == INDEX_MINE
              ? Colors.grey : Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }

}
