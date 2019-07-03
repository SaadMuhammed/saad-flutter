import 'package:flutter/material.dart';
import 'package:navigation_rout/Function/third33.dart';

class Second extends StatefulWidget {

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {


  TextEditingController name;

  @override
  void initState(){
    name = new TextEditingController();
  }

  onClickSendVariables(){
    Navigator.push(context ,
        new MaterialPageRoute(builder:(BuildContext context)  => new Third(name.text) ) ) ;
  }

  Widget build(BuildContext context) {
    return  new Scaffold(
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
              controller: name,
            ),
            new FlatButton(
                onPressed:onClickSendVariables ,
                child: new Text('Next ')),
            new FlatButton(
                onPressed: () {Navigator.of(context)
                    .pop();},
                child: new Text('Back ')),
          ],
        ),
      ),
    );
  }
}
