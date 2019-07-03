import 'package:flutter/material.dart';
// ignore: must_be_immutable, camel_case_types
class saadsecond extends StatefulWidget {

  saadsecond(this.name);
 String name;

  @override
  _saadsecondState createState() => _saadsecondState(name);
}

// ignore: camel_case_types
class _saadsecondState extends State<saadsecond> {

  _saadsecondState(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:new AppBar(
        title: Text('saecond page'),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Text('your name is $name'),
            RaisedButton(onPressed:(){
              Navigator.of(context).pushNamed('/first');
            },
              child: new Text('back'),
              color: Colors.pinkAccent,
            )
          ],
        ),
      ),
    );
  }
}
