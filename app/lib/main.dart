import 'package:flutter/material.dart';
import 'package:app/flutter_app/MainPage.dart';//主体页
import 'package:app/flutter_app/SplashPage.dart';//启动页
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '智能小助手',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashPage(), // 闪屏页
      routes: <String, WidgetBuilder>{ // 路由
      '/MainPage': (BuildContext context) => new MainPage()
      },
    );
  }
}



/***
 * 
 * 时间日历组件
 */
// import 'package:flutter/material.dart';
// import 'package:flutter_calendar/flutter_calendar.dart';

// main() {
//   runApp(new CalendarViewApp());
// }

// class CalendarViewApp extends StatelessWidget {
//   void handleNewDate(date) {
//     print("handleNewDate ${date}");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('Flutter Calendar'),
//         ),
//         body: new Container(
//           margin: new EdgeInsets.symmetric(
//             horizontal: 5.0,
//             vertical: 10.0,
//           ),
//           child: new ListView(
//             shrinkWrap: true,
//             children: <Widget>[
//               new Text('The Expanded Calendar:'),
//               new Calendar(
//                 onSelectedRangeChange: (range) =>
//                     print("Range is ${range.item1}, ${range.item2}"),
//                 isExpandable: false,
//               ),
//               new Divider(
//                 height: 300.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }