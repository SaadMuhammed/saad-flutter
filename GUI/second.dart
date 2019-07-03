import 'package:flutter/material.dart';
import 'package:navigation_rout/Function/GlobalState.dart';
import 'package:navigation_rout/GUI/third.dart';
import 'package:navigation_rout/GUI/first.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('Navigation'),
      ),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Second Page'),
            new TextField(
              decoration: InputDecoration(labelText: 'Enter name'),
            ),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/Third');
                },
                child: new Text('next Page ')),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text('Back ')),
          ],
        ),
      ),
    );
  }
}
