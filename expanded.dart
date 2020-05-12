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
          title: Center(child: Text('Expanded')
            //자식 위젯의 크기를 원하는 비율로 확장시켜주는 위젯.
            //flex 기본 값 = 1
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
