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
  final items = List.generate(100, (index) => index).toList();
  //만들어진 List(1~100)들을 보내주는게 toList()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
              child: Text('Single Child Scroll View'),
              //Column으로 위젯을 나열했을때 화면 크기를 넘어서면 스크롤이 가능하게 할 수 있는 위젯
            )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListBody(
                children: items.map((index) => Text('$index')).toList(),
              ),
            ],
          ),
        )
    );
  }
}
