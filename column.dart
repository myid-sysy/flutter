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
          title: Text('Column'),
          //수직 방향으로 위젯들을 나란히 배치하는 위젯입니다.
        ),
        body: Column(
          children: <Widget>[
            Container(
              width:100,
              height:100,
              color: Colors.red,
              margin: EdgeInsets.all(8.0),
            ),
            Container(
              width:100,
              height:100,
              color: Colors.yellow,
              margin: EdgeInsets.all(8.0),
            ),
            Container(
              width:100,
              height:100,
              color: Colors.green,
              margin: EdgeInsets.all(8.0),
            ),
          ],
        )
    );
  }
}
