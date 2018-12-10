import 'package:flutter/material.dart';

class MyColumnWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyColumnState();
  }

}

class MyColumnState extends State<MyColumnWidget>{
  String text ="我叫小沈阳啊";
  void _changeState(){
    setState(() {
      text += "111";
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new RaisedButton(onPressed: _changeState,
          child: Icon(Icons.update),
        ),
        new Text(text,style: new TextStyle(fontSize: 10,color: Colors.blue),)
      ],
    );
  }

}