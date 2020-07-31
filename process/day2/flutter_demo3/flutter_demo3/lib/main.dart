import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: Text('首页'),
          // centerTitle: false,
        ),
        body: Center(
          child: Text('THIS IS BODY'),
        ),
        bottomNavigationBar: new BottomNavigationBar(
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('银行')
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.contacts), title: Text('联系人')
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.library_music), title: Text('音乐')
            ),
          ],
        ),
        drawer: new Drawer(
          child: Column(
            children: <Widget>[
              Text('data1'),  //Navigator.pop(context);
              Text('data2'),
              Text('data3'),
              Text('data4'),
            ],
          ),
        ),
      ),
    );
  }
}