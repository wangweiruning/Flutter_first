import 'package:flutter/material.dart';

class Demo1 extends StatelessWidget {
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
          leading:IconButton(
            icon: Icon(Icons.arrow_back_ios,color:Colors.purpleAccent),
            onPressed:(){ Navigator.of(context).pop();}
          ),
          title: new Text("详情"),
          centerTitle: true,
      ),
        body: new Center(child:new Text("demo1111111")),
      ),
    );
  }
}