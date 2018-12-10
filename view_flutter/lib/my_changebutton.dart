import 'package:flutter/material.dart';

class MyChangeButtonWidget extends StatefulWidget{
  MyChangeButtonWidget({Key key}):super(key:key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyChangeState();
  }

}

class MyChangeState extends State<MyChangeButtonWidget> with TickerProviderStateMixin{
   AnimationController controller ;
   CurvedAnimation curvedAnimation;
   bool toggle = true;
   void _toggle(){
     setState(() {
       toggle = !toggle;

     });
   }
  _getToggleWidget(){
     if(toggle){
       return new Text("Toggle one");
     }else{
       return new MaterialButton(onPressed: _getToggleWidget,child: new Text("Toggle two"),);
     }
  }

  @override
  void initState() {
    // TODO: implement initState
    controller = new AnimationController(vsync: this,duration: new Duration(microseconds: 2000));
    curvedAnimation = new CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: null,
      body:new Center(
        child:new FadeTransition(opacity: curvedAnimation,
        child: new FlutterLogo(size: 200,),)
//        _getToggleWidget(),
      ) ,
      floatingActionButton: new FloatingActionButton(
//        onPressed: _toggle,
          onPressed: (){
            controller.forward();
          },
        tooltip: "点一下看看",
//        child: new Icon(Icons.update),
        child: new Icon(Icons.brush),
      ),
    );
  }

}