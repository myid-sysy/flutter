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

enum Gender { MAN, WOMEN } //전역변수

class _MyHomePageState extends State<MyHomePage> {
  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
        //선택 그룹 중 하나를 선택할 때 사용하는 위젯. 열거형(enum)으로 변수를 지정.(무조건 전역변수로 선언)
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('여자'),
                leading: Radio(
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ), //leading->체크 대상의 모양
              ),
              ListTile(
                title: Text('남자'),
                leading: Radio(
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ), //leading->체크 대상의 모양
              ),
              RadioListTile(
                title: Text('여자'),
                value: Gender.WOMEN,
                groupValue: _gender,
                onChanged: (value) {
                  setState(() {
                    _gender = value;
                  }); //이건 체크박스가 아닌 전체박스를 클릭해도 체크가 됨..?
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
