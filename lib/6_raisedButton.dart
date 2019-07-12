// add column, container, button with margin

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                print('>>> BUTTON IS CLICKED! >>>');
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