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
        child: Text('Single Child Scroll View'),
      )
          //나열된 여러위젯을 순서대로 겹치게 합니다.
          ),
      body: Stack(
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
