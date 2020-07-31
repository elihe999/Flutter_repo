import 'dart:convert';

import 'package:flutter/foundation.dart';

class Friend {

  @required final String avatar;
  @required final String name;
  @required final String email;

  //构造函数
  Friend({this.avatar, this.name, this.email});

  static List<Friend> resloveDataFromResponse(String responseData) {
    var json = jsonDecode(responseData);
    var results = json['results'];
    var listresult = results
      .map((obj)=>Friend.fromMap(obj))
      .toList()
      .cast<Friend>();

    return listresult;
  }

  //数据转Friend
  static Friend fromMap(Map map) {
    var name = map['name'];

    return new Friend(
      avatar: map['picture']['large'],
      name: '${name['first']} ${name['last']}',
      email: map['email']
    );
  }


}