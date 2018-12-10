import 'package:flutter/material.dart';
import 'package:view_flutter/checktext.dart';
import 'package:view_flutter/myrow.dart';
import 'mycolumn.dart';
import 'my_changebutton.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "老子是一个测试text",
//      home: new MyTextWidget(),
      home: new MyRow1(),
//        home: new MyRow1(),
//        home: MyColumnWidget(),
//      home: new SampleApp(),
    );
  }

}
class SampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
    );
  }
}

//class SampleAppPage extends StatefulWidget {
//  SampleAppPage({Key key}):super(key:key);
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new _SampleAppPageState();
//  }
//
//}
//
//class _SampleAppPageState extends State<SampleAppPage> {
////  new Padding(padding: EdgeInsets.all(10.0),child:new Text("Row $i"))
//   _getWidget(){
//     List<Widget> items =[];
//    for(int i=0;i<100;i++){
//      items.add(new GestureDetector(
//        child:new Padding(padding: EdgeInsets.all(10.0),child:new Text("Row $i")),
//        onTap: (){
//          print("带年纪了$i");
//        },));
//    }
//    return items;
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: AppBar(title:new Text("这是一个listview")),
//      body: new ListView(
//        children: _getWidget() ,
//      ),
//    );
//  }
//
//}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      widgets.add(_getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context,int position){
          return _getRow(position);
        },
        itemCount: widgets.length,)
    );
  }

  Widget _getRow(int i){
      return new GestureDetector(
        child: new Padding(
          padding: EdgeInsets.all(10.0),
          child: new Text("Row $i"),),
          onTap: (){
              setState(() {
                widgets.add(_getRow(widgets.length+1));
                print("Row $i");
              });
          },
      );
  }



}