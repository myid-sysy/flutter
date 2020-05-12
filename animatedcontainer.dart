import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; //기본적으로 항상 설치해야 하는 패키지 회색=선언하지 않은거 사용하면 활성화 됨.
import 'dart:math';

//1. nextInt(200): 0 ~ 199 사이의 랜덤값 정수로 변환.
//2. toDouble() : 정수를 실수로 변환 (199 => 199.0)


void main() {
  runApp(MyApp());
}

//class 함수를 모아 둔거
//StatelessWidget 형태가 없는 (상태가 변화하는 X)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lecture', //이니셜값 안써도 상관 없음
      theme: ThemeData(
        primarySwatch: Colors.blue, //전체적인 테마 색상 앱바 등
      ),
      home: MyHomePage(), //여기에 적어두고 아래에 선언해서 사용
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCountainer'),
        //Container와 쓰임새는 비슷하지만 duration, curve 등의 애니메이션 관련 프로퍼터를 사용할 수 있습니다.
        //duration은 필수이며, 애니메이션되는 데 거리는 시간입니다. curve 클래스에는 미리 정의된 여러 애니메이션 효과가 들어있습니다.
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            final random = Random();
            setState(() {
              _size = random.nextInt(200).toDouble() + 100;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _size,
            height: _size,
            child: Image.asset('assets/product_01.jpg'),
            curve: Curves.fastOutSlowIn,
          ),
        ),
      ),
    );
  }
}
