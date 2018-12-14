
import 'package:flutter/material.dart';
/// 新建一个界面
class Demo1 extends StatefulWidget {
  // 类的构造器，用来接收传递的值
  Demo1({Key key, this.title,Key key2,this.urls}) : super(key: key);
  final String title;   // 用来储存传递过来的值
  final String urls;
  @override
  Demo1State createState() => new Demo1State();
}

class Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    print(widget.urls);
    return new Scaffold(
      appBar: new AppBar( title: new Text( widget.title ), ),
      body: new Center(
        child:new  Text('ggggggggggggg'),
      ),
    );
  }
  }