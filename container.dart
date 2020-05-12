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
          title: Text('Container'),
          //화면전체를 포함하는 의미론적 공간
        ),
        body: Container(
          width:200,
          height:200,
          color: Colors.red,
          margin: const EdgeInsets.all(8.0),
        )
    );
  }
}
