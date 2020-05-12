import 'package:flutter/material.dart'; //기본적으로 항상 설치해야 하는 패키지 회색=선언하지 않은거 사용하면 활성화 됨.

void main() {
  runApp(MyApp());
}

//class 함수를 모아 둔거
//StatelessWidget 형태가 없는
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

//StatefulWidget 형태가 있는
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
        //입체감이 있는 둥근 버튼 위젯.
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons. add),

        ),
      ),
    );
  }
}
