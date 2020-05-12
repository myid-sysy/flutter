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
              child: Text('Row'),
            )
          //수평 방향으로 위젯들을 나란히 배치하는 위젯입니다.
        ),
        body: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width:100,
              height:100,
              color: Colors.red,
              margin: const EdgeInsets.all(8.0),
            ),
            Container(
              width:100,
              height:100,
              color: Colors.blue,
              margin: const EdgeInsets.all(8.0),
            ),
            Container(
              width:100,
              height:100,
              color: Colors.green,
              margin: const EdgeInsets.all(8.0),
            ),
          ],
        )
    );
  }
}
