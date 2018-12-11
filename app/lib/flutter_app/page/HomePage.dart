import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:app/utils/HttpUtil.dart';
Dio dio = new Dio();

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}


class HomeState extends State<HomePage> {
 //数据源
  var Listdata;
  @override
  void initState() {
    super.initState();
    _pullNet();
    // _getData();
  }
 
  void _pullNet() async {
    var response = await dio.get("http://www.wanandroid.com/project/list/1/json?cid=1");

    var  newDate =response.data;
    // print(newDate);
     newDate = newDate;
      setState(() {
        Listdata = newDate;
      });
  }










  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView.builder(
        itemBuilder:(BuildContext context, int index){
          return _getItems();
        }
          ),
      // body: new Text("$Listdata",style: TextStyle(fontSize: 12.0),),
    );
  }
  _getItems () {
    String str="ABCDER";
    str.split(',').map((item){
      return new Text(item);
    });
  }

    List<dynamic> _getItem() {
     var datalist = Listdata["data"]["datas"];
    return datalist.map((item) {
      return new Card(child: new Padding(
        padding: const EdgeInsets.all(10.0), child: _getRowWidget(item),),
        elevation: 3.0,
        margin: const EdgeInsets.all(10.0),);
    }).toList();
  }
  
 
  Widget _getRowWidget(item) {
    return new Row(children: <Widget>[
      new Flexible(
          flex: 1,
          fit: FlexFit.tight, //和android的weight=1效果一样
          child: new Stack(children: <Widget>[
            new Column(children: <Widget>[
              new Text("${item["title"]}".trim(),
                  style: new TextStyle(color: Colors.black, fontSize: 20.0,),
                  textAlign: TextAlign.left),
              new Text("${item["desc"]}", maxLines: 3,)
            ],)
          ],)
      ),
      new ClipRect(child: new FadeInImage.assetNetwork(
        placeholder: "images/ic_shop_normal.png",
        image: "${item['envelopePic']}",
        width: 50.0,
        height: 50.0,
        fit: BoxFit.fitWidth,),),
    ],);
  }
}