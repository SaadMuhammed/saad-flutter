import 'package:flutter/material.dart';
import 'package:navigation_rout/Function/GlobalState.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text('Navigation'),
      ),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('First Page'),
            new TextField(
              decoration: InputDecoration(labelText: 'Enter name'),
            ),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                child: new Text('next Page ')),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/Third');
                },
                child: new Text('back Page ')),
          ],
        ),
      ),
    );
  }
}
