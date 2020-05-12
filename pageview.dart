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
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('Page View'),
            //여러 페이지를 좌우로 슬라이드하여 넘길 수 있도록 해주는 위젯.
          )
      ),
      body: PageView(
        children: <Widget>[
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
