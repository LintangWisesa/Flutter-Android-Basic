// StatefullWidget & create state function
// Widget that can handle: add/delete/updateing state/data

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // adding create state function
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// class "_MyAppState" just convention for state that 
// only be used in same file, cannot be imported to other file 
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome home'),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: (){
                print('OK OK OK OK OK OK OK OK');
              },
              child: Text('Add Image'),
            ),
          ),
          Card(
            child: Column(children: <Widget>[   
              Image.asset('assets/lintang.png'),
              Text('Hello World!')
            ],),
            // <Widget>[] means: GENERIC TYPE, the array [] just contains Widget!
          ),
        ],) 
      ),
    );
  }
}