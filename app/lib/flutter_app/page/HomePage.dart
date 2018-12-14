import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:app/utils/HttpUtil.dart';
import 'Demo1.dart';
import 'NewsWebPage.dart';

// import 'package:app/flutter_app/data_url/user.dart';
Dio dio = new Dio();

class HomePage extends StatefulWidget {
  var parentContext;
  HomePage(this.parentContext);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeState();
  }
}

class HomeState extends State<HomePage> {
  //数据源

   List list = new List();
   ScrollController _scrollController = ScrollController(); //listview的控制器
  int _page = 1; //加载的页数
  bool isLoading = false; //是否正在加载数据
  @override
  void initState() {
    super.initState();
    //first time get data of one;
    _getMore();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==_scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        _getMore();
      }
    });
  }

 void _getMore() async {
     if (!isLoading) {
      setState(() {
        isLoading = true;
      });
     print(_page);
       var response = await dio.get("http://www.wanandroid.com/project/list/${_page}/json?cid=${_page}");
       var newDate = response.data;
        newDate = newDate;
        List alldata = newDate['data']['datas'];
        for (var item in alldata) {
          list.add(item);
        }
        setState(() {
          list = list;
           isLoading = false;
            _page++;
        });
    } 
  }

  @override
  Widget build(BuildContext context) {
    var item = list;
    return new Scaffold(
        appBar: new AppBar(
         title: new Text('首页数据'),
         centerTitle: true,
       ),
        body: (list == null||list.length==0)
            ? 
             _getMoreWidget()
              
            : new RefreshIndicator(
                onRefresh: _onRefresh,
                child: new ListView.builder(
                    itemCount: item.length,
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      //  return _getItem();
                      var item_list = item[index];
                      var link = item_list['link'];
                      var tiltes = item_list['title'];
                      return
                      new GestureDetector(
                        onTap:(){
                            Navigator.of(widget.parentContext).push(
                                new MaterialPageRoute(builder: (context) {
                                     return new NewsWebPage(link,tiltes,);
                                },
                            ));
                          },
                        child: new Container(
                          decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.blueGrey, width: 2.0,),
                          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                          // gradient: new LinearGradient(colors: [Colors.blue, Colors.green]),
                        ),
                        child:new Row(
                                children: <Widget>[
                                  new Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight, //和android的weight=1效果一样
                                      child: new Stack(
                                        children: <Widget>[
                                          new Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child:new Column(
                                            children: <Widget>[
                                              new Text("${item_list["title"]}".trim(),
                                                  style: new TextStyle(
                                                    color: Colors.redAccent,
                                                    fontSize: 20.0,
                                                  ),
                                                  overflow: TextOverflow.ellipsis,
                                                  ),
                                              new Text(
                                                "${item_list["desc"]}",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 4,
                                              )
                                            ],
                                          ) ,
                                          )
                                          
                                        ],
                                      )),
                                  new Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child:new ClipRect(
                                        child: new FadeInImage.assetNetwork(
                                          placeholder: "images/ic_shop_normal.png",
                                          image: "${item_list['envelopePic']}",
                                          width: 50.0,
                                          height: 50.0,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                  )
                                 
                                ],
                              ),
                      ),
                      );
                      
                    }),
              )

        );
  }


gotoInfo(){

}
/***
 * 点击跳转事件
 * ***/
 Widget getDialog() {
    return new AlertDialog(
      title: new Text("点击提示"),
      content: new SingleChildScrollView(
          child: new ListBody(children: <Widget>[new Text("你点击了Item")])),
      actions: <Widget>[ 
        new FlatButton(
          child: new Text("取消"),
          onPressed: () {//按钮点击事件
            Navigator.of(context).pop();
          },
        ),
        new FlatButton(
          child: new Text("确认"),
          onPressed: () { 
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }


/**
   * 加载更多时显示的组件,给用户提示
   */
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             CircularProgressIndicator(
              strokeWidth: 1.0,
            ),
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
           
          ],
        ),
      ),
    );
  }
Future<Null> _onRefresh() async {

    var response = await dio.get("http://www.wanandroid.com/project/list/1/json?cid=1");
    var newDate = response.data;
    newDate = newDate;
    setState(() {
      list = newDate['data']['datas'];
      _page=2;
    });
}


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }


  Widget _getRowWidget(item) {
    return new Row(
      children: <Widget>[
        new Flexible(
            flex: 1,
            fit: FlexFit.tight, //和android的weight=1效果一样
            child: new Stack(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Text("${item["title"]}".trim(),
                        style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left),
                    new Text(
                      "${item["desc"]}",
                      maxLines: 3,
                    )
                  ],
                )
              ],
            )),
        new ClipRect(
          child: new FadeInImage.assetNetwork(
            placeholder: "images/ic_shop_normal.png",
            image: "${item['envelopePic']}",
            width: 50.0,
            height: 50.0,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
