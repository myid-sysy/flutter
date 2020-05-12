
class WeightCheck extends StatefulWidget {
  @override
  _WeightCheckState createState() => _WeightCheckState();
}
//변하는 내용을 아래 ▼ 입력하면 위에서 변화되는 내용을 받아줌
class _WeightCheckState extends State<WeightCheck> {

  final myController = TextEditingController();

//변화하는걸 시작하는 함수와 입력한걸 전부 지워주는 함수
  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
  }

  @override //변경사항들을 계속 갱신해줌.
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  // print ->console 창에 찍어주는거
  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weight Check'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: myController, //controller 변수를 받아줌. void dispose(){} 를 꼭 require(필수)해줘야됨.

            ),
          ],
        ),
      ),
    );
  }
}

