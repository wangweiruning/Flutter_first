import 'package:flutter/material.dart';
import 'ImageTapWidget.dart';
class MsgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '智能小助手',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
        title: new Center(
          child: new Text("消息"),
        ),
      ),
        body: new Center(child:new ImageTapWidget(
          child: new Text("data"),
          onTap:(){
             print("3333333333333");
          },
          )
          ),
      ),
    );
  }
}
