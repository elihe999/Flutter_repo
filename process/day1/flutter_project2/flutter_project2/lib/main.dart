import 'package:flutter/material.dart';
import 'dart:math' as math;
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
      home: Container_p7(),
    );
  }
}

// class Container_p1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.red,
//       )
//     );
//   }
// }

// class Container_p2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Container(
//           margin: EdgeInsets.all(20),
//           width: 50,
//           height: 50,
//           color: Colors.red[300],
//         ),
//         Container(
//           margin: EdgeInsets.all(20),
//           // width: 50,
//           // height: 50,
//           color: Colors.blue,
//           child: Column(
//             children: <Widget>[
//               Text('显示1'),
//               Text('显示2'),
//               Text('显示3')
//             ],
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.all(20),
//           width: 50,
//           height: 50,
//           color: Colors.yellow,
//         ),
//       ],
//     );
//   }
// }

// class Container_p3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 200,
//         height: 200,
//         color: Colors.red,
//         child: Text('Text',
//           style: TextStyle(
//             fontSize: 30.0,
//             color: Colors.black
//           ),
//         ),
//         alignment: Alignment(-0.5,0)
//       )
//     );
//   }
// }

// class Container_p4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         color: Colors.red,
//         child: Container(
//           color: Colors.blue,
//           child: Text('这是一个字符串'),
//           // constraints: BoxConstraints(
//           //   maxWidth: 150,
//           //   maxHeight: 10000
//           // ),
//           constraints: BoxConstraints.expand()
//         ),
//       )
//     );
//   }
// }

// class Container_p5 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         // color: Colors.red, //注意：decoration和color是互斥的

//         decoration: BoxDecoration(
//           boxShadow: [
//             BoxShadow(
//               color: Colors.red,
//               offset: Offset(10,10),
//               blurRadius: 5)
//           ],
//           gradient: LinearGradient(
//             colors: [Colors.red, Colors.yellow]
//           ),

//           // borderRadius: BorderRadius.all(Radius.circular(20))
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(20),
//             bottomRight: Radius.circular(20)
//           )
//         ),
//         child: FlutterLogo(
//           size: 250.0,
//         ),
//       )
//     );
//   }
// }

// class Container_p6 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // return Center(
//     //   child: Container(
//     //     color: Colors.red,
//     //     child: Container(
//     //       child: FlutterLogo(
//     //       size: 250.0,
//     //     ),
//     //       transform: Matrix4.rotationX(0.9),
//     //     )
//     //   )
//     // );

//     return Center(
//       child: Container(
//         color: Colors.red,
//         // child: Transform.scale(
//         //   scale: 1.5,
//         //   child: FlutterLogo(
//         //   size: 250.0,
//         //   ),
//         // )
//         child: Transform.rotate(
//           angle: math.pi/4,
//           child: FlutterLogo(
//           size: 250.0,
//           ),
//         ),
//       )
//     );
//   }
// }

class Container_p7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            new Image.asset('images/author.png'),

            new Image.network(
              'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1022109268,3759531978&fm=26&gp=0.jpg',
              width: 150,
              height: 100,
            ),

            new FadeInImage.assetNetwork(
              placeholder: 'images/author.png',
              image: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1022109268,3759531978&fm=26&gp=0.jpg',
              width: 150,
              // height: 100,
              fit: BoxFit.fitWidth,
            )
          ],
        )
      )
    );
  }
}