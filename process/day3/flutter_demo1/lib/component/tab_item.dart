
import 'package:flutter/cupertino.dart';

const double _kTextAndIconHeight = 53.0;

class IconTab extends StatefulWidget {

  final String text;
  final String icon;
  final Color color;

  //构造器
  IconTab({
    this.text,
    this.icon,
    this.color
  });

  // @override
  // IconTabState createState() => new IconTabState();

  @override
  State<StatefulWidget> createState() {
    return new IconTabState();
  }

}

class IconTabState extends State<IconTab> {

  @override
  Widget build(BuildContext context) {

    Widget icon = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Container(
          child: new Image(
            image: new AssetImage(widget.icon),
            height: 30.0,
            width: 30.0,
          ),
          margin: EdgeInsets.only(bottom: 3.0),
        ),
        Text(
          widget.text,
          softWrap: false,
          style: TextStyle(color: widget.color),
        )
      ],
    );


    return SafeArea(
        child: SizedBox(
        height: _kTextAndIconHeight,
        child: Center(
          child: icon,
        ),
      ),
    );
  }

}