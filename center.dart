import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyFirstApp(),
    );
  }
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //탭의 갯수
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text('Center')
            //엘리먼트를 좌우상하 중앙으로 보내는 위젯. only 모양만 css라 생각하면 됨.
          ),
        ),
        body: Center(
          child: Container(
            width:100,
            height:100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
