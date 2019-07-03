import 'package:flutter/material.dart';
import 'package:navigation_rout/Function/firstTest.dart';
import 'package:navigation_rout/Function/secondTest.dart';

void main (){runApp(new MaterialApp(home: myApp(),));}

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String , WidgetBuilder>{
        '/first':(BuildContext context)=> saadfirst(),
        '/second':(BuildContext context)=> saadsecond('test'),
      },
        home: saadfirst(),
    );
  }
}











