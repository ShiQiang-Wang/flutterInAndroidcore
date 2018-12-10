import 'package:flutter/material.dart';

class MyTextWidget extends StatefulWidget{
  MyTextWidget({Key key}):super(key : key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyTextState();
  }

}

class MyTextState extends State<StatefulWidget>{
  String _text = "这是初始化";
  void _updateText(){
    setState(() {
      _text +="大庆老奶粉";
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar:AppBar(title: new Text("我来做一个测试")),
      body: Center(
        child: new Text(_text),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "改变",
          child: new Icon(Icons.update),
          backgroundColor: Colors.red,
          foregroundColor: Colors.blue,
          onPressed: _updateText),
    );
  }

}