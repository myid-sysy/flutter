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
  final _valueList = ['First', 'Second', 'Third']; //배열문자열이 변수로 저장
  var _selectedValue = 'First';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Button'),
        //여러 아이템 중 하나를 고를 수 있는 콤보박스 형태의 위젯.
      ),
      body: DropdownButton(
        value: _selectedValue,
        items: _valueList.map((value) { //배열로 있는 애들을 map으로 감싸서 인자로 사용?
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value){
          setState(() {
            _selectedValue = value;
          });
        },
      ),
    );
  }
}
