import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; //기본적으로 항상 설치해야 하는 패키지 회색=선언하지 않은거 사용하면 활성화 됨.

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hero'),
        //화면 전환 시 자연스럽게 연결되는 애니메이션을 지원하는 위젯. 이전화면으로 돌아갈때도 자연스러운 애니메이션이 적용됩이다.
        //외부에서 사진 가져올 때는 pubspec.yaml에 전부 적어줘야됨. (띄어쓰기, 들여쓰기 주의)
      ),
      body: Center(
        child: GestureDetector(
          //클릭 시 감지해주는거
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:(context) => HeroDetailPage()),
            );
          },
          child: Hero(
            tag: 'image', //가져올 파일 형태?
            child: Image.asset(
              'assets/product_01.jpg',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Detail'),
      ),
      body: Hero(
        tag: 'image',
        child: Image.asset('assets/product_01.jpg'),
      ),
    );
  }
}

