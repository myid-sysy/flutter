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

//StatefulWidget 형태가 있는 (상태가 변화하는 공간)
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isChecked = false;
  var _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Box'),
        //설정 화면 등에 많이 사용하는 체크박스, 스위치 버튼을 표현하는 위젯.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value;
                  }); // 상태가 변화할 때 쓰는 함수.
                },
              ),
              SizedBox(height: 40.0),
              Switch(
                value: _isSwitch,
                onChanged: (value) {
                  setState(() {
                    _isSwitch = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
