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
        title: Text('Dialog'),
        //다이알로그는 사용자의 확인을 요구하거나 메세지를 표시하는 용도로 사용되는 위젯.
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Show alert'),
                onPressed: (){
                  showAlertDialog();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
  showAlertDialog() async{
    //자바언어 기반 ->동기/ 비동기를 함수선언만으로도 사용 가능 async(비동기) sync(동기)
    //context = null은 디폴트 값->코드창에 작성 후 나오는 결과의 맥락들이 context에 저장됨
    return showDialog(
        context:context,
        barrierDismissible: false, //사용자가 타이얼로그 바깥을 터치하면 닫히지 않음.
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Dialog Box'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Alert Dialog'),
                  Text('Press OK'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton( //raisedbutton->특징 입체적 // falaybutton->효과 없이 글자만
                child: Text('OK'),
                onPressed: (){
                  Navigator.of(context).pop(); //원래 창으로 돌아감.
                },
              ),
            ],
          );
        }
    ) ;
  }
}
