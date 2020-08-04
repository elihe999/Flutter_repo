import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_demo4/component/DotsIndicator.dart';
import 'package:flutter_demo4/model/company.dart';

class CompanyDetail extends StatefulWidget {

  final Company _company;

  CompanyDetail(this._company);

  @override
  _CompanyDetailState createState() => new _CompanyDetailState();
}

class _CompanyDetailState extends State<CompanyDetail> {

  List<String> _urls = [
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20170725/861159df793857d6cb984b52db4d4c9c.jpg',
    'https://img2.bosszhipin.com/mcs/chatphoto/20151215/a79ac724c2da2a66575dab35384d2d75532b24d64bc38c29402b4a6629fcefd6_s.jpg',
    'https://img.bosszhipin.com/beijin/mcs/chatphoto/20180207/c15c2fc01c7407b98faf4002e682676b.jpg'
  ];
  List<Widget> _imagePages = <Widget>[];

  @override
  void initState() {
    super.initState();

    if(_urls.isNotEmpty) {
      // _imagePages = ;
      _urls.forEach((String url){
        _imagePages.add(
          new Container(
            color: Colors.black.withAlpha(900),
            child: new ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: new Image.network(
                url,
                fit: BoxFit.cover,
                height: 256),
            ),
          )
        );
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: Center(
        child: new IndicatorViewPager(pages: _imagePages)
      ),
    );
  }

}
