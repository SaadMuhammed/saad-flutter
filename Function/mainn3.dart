import 'package:flutter/material.dart';
import 'package:navigation_rout/Function/second33.dart';
import 'package:navigation_rout/Function/third33.dart';


void main() => runApp(new MaterialApp(home: new MyApp(),));
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: <String , WidgetBuilder>{
        '/Second': (BuildContext  context) => new Second(),
        '/Third': (BuildContext  context) => new Third(''),
      },
      home: new Second(),
    );
  }
}