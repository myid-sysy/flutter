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
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('List View'),
            //리스트를 표시하는 위젯. singlechildlistview와 listbody의 조합과 동일한 효과를 내지만 좀더 리스트에 최적회된 위젯
          )
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){},
            //trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Event'),
            onTap: (){},
            //trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            onTap: (){},
            //trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}
