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
              child: Text('Bottom Navigation Bar')
            //body 아래쪽에 탭 네비게이션을 만들어 주는 위젯(사용율이 높음).
          ),
        ),
        body: Container(
          color: Colors.yellow,
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text('Notification'),
              ),
            ]
        ),
      ),
    );
  }
}
