import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: new Text('Navigation'),
      ),
      body: new Container(
        padding: EdgeInsets.all(33.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Third Page'),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/first');
                },
                child: new Text('next Page ')),
            new FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/second');
                },
                child: new Text('back Page ')),
          ],
        ),
      ),
    );
  }
}
