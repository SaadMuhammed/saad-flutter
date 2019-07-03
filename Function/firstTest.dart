import 'package:flutter/material.dart';
import 'package:navigation_rout/Function/secondTest.dart';

// ignore: camel_case_types
class saadfirst extends StatefulWidget {
  @override
  _saadfirstState createState() => _saadfirstState();
}

// ignore: camel_case_types
class _saadfirstState extends State<saadfirst> {

  TextEditingController name;
  onClicksend(){
    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context)=>
        new saadsecond(name.text)));
  }
  @override
  // ignore: must_call_super
  void initState(){
    name=new TextEditingController();
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('first page'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text('inter your name'),
            new TextField(controller: name,),
            RaisedButton(onPressed:onClicksend,
              color: Colors.lightGreen,
            ),
            RaisedButton(onPressed:(){
              Navigator.of(context).pushNamed('/second');
            },
              child: new Text('back'),
              color: Colors.lightGreen,
            )
          ],
        ),
      ),
    );
  }
}
