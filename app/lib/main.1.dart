/****
 * 
 * 改变主题颜色
 * 
 * 
 */

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:ThemeTestRoute(),
    );
  }
}

class ThemeTestRoute extends StatefulWidget{
  @override
 _ThemeTestRouteState createState()=>new _ThemeTestRouteState();
  }

class _ThemeTestRouteState extends State<ThemeTestRoute>{
  Color _themeColor = Colors.teal;//当前主题颜色
  @override 
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data:ThemeData(
        primarySwatch: _themeColor,//用于导航栏。floatingActionButton
        iconTheme: IconThemeData(color: _themeColor)//用于icon颜色
      ),
      child: Scaffold(
        appBar: AppBar(title:Text('主题变色')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //第一行Icon使用主题中的iconTheme
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Text("  颜色跟随主题")
                ]
            ),
            //为第二行Icon自定义颜色（固定为黑色)
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(
                    color: Colors.black
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Text("  颜色固定黑色")
                  ]
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>//主题切换
          setState(()=>
          _themeColor =  _themeColor ==Colors.teal? Colors.blue:Colors.teal

          ),
          child: Icon(Icons.palette),
        ),
      ),
    );
  }
}