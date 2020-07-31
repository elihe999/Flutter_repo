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
      home: HomePage(),
      routes: {
        './home': (BuildContext context) => HomePage(),
        './detail': (BuildContext context) => DetailPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red,
      child: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, './detail');
          },
          child: Text(
            '点击跳转详情页',
            // textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.italic
            ),
          ),
        )
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: GestureDetector(
          onTap: (){
            // Navigator.pushNamed(context, './home');
            Navigator.pop(context);
          },
          child: Text(
            '点击跳转首页',
            // textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.italic
            ),
          ),
        )
      ),
    );
  }
}

