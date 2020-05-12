import 'package:flutter/material.dart';
import 'firstpage.dart';

void main() => runApp(MyApp());
//포함할게 많은면 {} 사용 , 하나면 =>사용가능


//meterial ->android디자인
//cupertino -> ios 디자인
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: FirstPage(),
    );
  }
}


