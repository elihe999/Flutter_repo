
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project1/Component/friend.dart';

class FriendListPage extends StatefulWidget {

  @override
  _FriendListPageState createState() => new _FriendListPageState();
}

class _FriendListPageState extends State<FriendListPage> {

  List<Friend> _friends = [];
  var url = 'https://randomuser.me/api/?results=25';
  //（1）创建httpClient
  var httpClient = new HttpClient();

  @override
  void initState() {
    super.initState();

    //网络加载
    _loadFriendsData();
  }

  _loadFriendsData() async{

    //(2)打开http连接，设置请求头
    // httpClient.get(host, port, path)
    // httpClient.post(host, port, path)
    HttpClientRequest request = await httpClient.getUrl(Uri.parse(url));
    // request.headers.add(name, value)

    //(3)等待连接服务器
    HttpClientResponse response = await request.close();

    if(response.statusCode == 200) {
      var jsonString = await response.transform(utf8.decoder).join();
      setState(() {
        _friends = Friend.resloveDataFromResponse(jsonString);
      });
    }

    //请求结束，关闭httpClient
    httpClient.close();
  }

  Widget _buildFriendsCell(BuildContext context, int index) {
    //获取数据
    var friend = _friends[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(friend.avatar),
      ),
      title: new Text(friend.name),
      subtitle: new Text(friend.email),
    );
  }

  Widget _buildContent() {
    var content;

    if(_friends.isEmpty) {
      content = new CircularProgressIndicator();
    }else {
      content = new ListView.builder(
          itemCount: _friends.length,
          itemBuilder: _buildFriendsCell,
        );
    }

    return content;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('好友列表'),),
      body: new Center(
        child: _buildContent()
      ),
    );
  }

}