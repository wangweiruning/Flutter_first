import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
void main () => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context ){
    var Cards = new Card(
          child: Column(
            children: <Widget>[
              ListTile(
                onTap: (){
                  print("ttttttttttt");
                },
                title:new Text('标题1') ,
                subtitle: new Text('111111woshinige',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                leading: new Icon(Icons.accessibility_new,color:Colors.blueAccent),
                ),
                new Divider(),//    下线
                ListTile(
                   onTap: (){
                  print("ttttttttttt");
                },
                title:new Text('标题2') ,
                subtitle: new Text('111111222222woshinige',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                leading: new Icon(Icons.accessibility_new,color:Colors.blueAccent),
                ),
                new Divider(),
                ListTile(
                   onTap: (){
                  print("ttttttttttt");
                },
                title:new Text('标题3') ,
                subtitle: new Text('33333333333',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                leading: new Icon(Icons.accessibility_new,color:Colors.blueAccent),
                ),
                new Divider(),
                ListTile(
                   onTap: (){
                  print("ttttttttttt");
                },
                title:new Text('标题4') ,
                subtitle: new Text('4444444',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                leading: new Icon(Icons.accessibility_new,color:Colors.blueAccent),
                ),
                new Divider(),
                ListTile(
                   onTap: (){
                  print("ttttttttttt");
                },
                title:new Text('标题5',style:Theme.of(context).primaryTextTheme.title,) ,
                subtitle: new Text('55555woshinige',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                leading: new Icon(Icons.accessibility_new,color:Colors.blueAccent),
                ),
                new Divider(),
                new Counter(),
            ],
          ),
    );
      return MaterialApp(
        title:'ListView widget',
        home:Scaffold(
          appBar:new AppBar(
            title:new Text('卡片组件'),
          ),
          body:Center(
            child: Cards,
          ),
        ),
      );
  }
}

class Counter extends StatefulWidget{//可变组件
    @override
     _CounterState createState() => new _CounterState();
}
class _CounterState extends State<Counter>{
  int _counter = 0;
  void _increment(){
    setState(() {
          _counter++;
        });
  }
  void _unincrement(){
    setState(() {
          _counter--;
          if(_counter <=0){
            _counter=0;
          }
        });
  }

  @override
  Widget build(BuildContext context){
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: _increment,//点击加一
          child: new Text("点击可加一"),
        ),
        Expanded(child:Center(
          child: new Text('count:$_counter'),
        )),
        new RaisedButton(
          onPressed: _unincrement,
          child: new Text('点击可减一'),
        )
      ],
    );
}
}
