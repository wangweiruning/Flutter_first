import 'package:flutter/material.dart';
class MsgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
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
        body: new Center(child:new Text("消息")),
      ),
    );
  }
}
