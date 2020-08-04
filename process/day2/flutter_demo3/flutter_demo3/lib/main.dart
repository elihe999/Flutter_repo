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
           centerTitle: false,
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
        drawer: Drawer(
          ///edit start
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
                child: Center(
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      child: Text('R'),
                    ),
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: Text('设置'),
              )
            ],
          ),
          ///edit end
        )
      ),
    );
  }
}