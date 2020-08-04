import 'package:flutter/material.dart';
import 'package:flutter_demo4/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.white),
        primaryColor: new Color.fromARGB(255, 0, 215, 198),
        accentColor: Colors.cyan[300]
      ),
      home: WelcomePage(),
    );
  }
}
