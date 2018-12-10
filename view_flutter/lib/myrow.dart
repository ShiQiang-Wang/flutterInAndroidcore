import 'package:flutter/material.dart';

class MyRow extends StatelessWidget{
  String text ="我叫小沈阳啊";
  void _changeState(){
      text += "111";
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new RaisedButton(onPressed: _changeState),
        new Text(text,style: new TextStyle(fontSize: 10,color: Colors.blue),)
      ],
    );
  }

}

class MyRow1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyRowState();
  }

}

class MyRowState extends State<MyRow1>{
  String text ="我叫小沈阳啊";
  void _changeState(){
    setState(() {
      text += "111";
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new RaisedButton(onPressed: _changeState,
        child: Icon(Icons.update),
        ),
        new Text(text,style: new TextStyle(fontSize: 10,color: Colors.blue),)
      ],
    );
  }

}