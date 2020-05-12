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
                child: Text('Align')
              //자식 위젯의 정렬 방향을 정할 수 있는 위젯.
            ),
          ),
          body: Align(
            //alignment: Alignment.centerRight,
            //alignment: Alignment.topCenter,
            alignment: Alignment.bottomLeft,
            child: Container(
              width:100,
              height:100,
              color: Colors.red,
            ),
          )
      ),
    );
  }
}
