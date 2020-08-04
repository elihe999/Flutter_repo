import 'package:flutter/material.dart';
import 'package:flutter_demo4/model/company.dart';

class ComanyListItem extends StatelessWidget {
  final Company companyModel;

  ComanyListItem(this.companyModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.only(
      //   top: 3.0,
      //   left: 5.0,
      //   right: 5.0,
      //   bottom: 3.0
      // ),
      // padding: const EdgeInsets.fromLTRB(left, top, right, bottom),

      padding: EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 3.0
      ),

      child: Card(
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    left: 15.0,
                    right: 15.0,
                    bottom: 0.0
                  ),
                  child: Image.network(
                    companyModel.logo,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 0.0,
                    right: 5.0,
                    bottom: 5.0
                  ),
                  child: Text(
                    companyModel.location.substring(0,companyModel.location.length>8? 8:companyModel.location.length),
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 5.0,
                    right: 10.0,
                    bottom: 5.0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '|'+companyModel.type,
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '|'+companyModel.size,
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        '|'+companyModel.employee,
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                    left: 10.0,
                    right: 5.0,
                    bottom: 15.0
                  ),
                  child: Text(
                    '热招：'+
                    companyModel.hot +
                    '等'+
                    companyModel.count +
                    '个职位',
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                ),
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }

}