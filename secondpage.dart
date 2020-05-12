import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secong Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Previous Page'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      )
    );
  }
}
