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
            child: Text('Tap Bar View'),
            //여러 페이지와 탭을 연동시켜주는 위젯.
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: 'Menu2'),
              Tab(icon: Icon(Icons.info)),
            ],
          ),
        ),
        body:TabBarView(
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width:100,
                    height:100,
                    color: Colors.white,
                  ),
                  Container(
                    width:100,
                    height:100,
                    color: Colors.black,
                  ),
                ],
              ),
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
