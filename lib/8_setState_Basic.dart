
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  String _products = 'Captain America';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_products),
        ),
        body: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: (){
                setState(() {
                  _products = 'Iron Man';
                });                
              },
              child: Text('Ubah State'),
            ),
          ),
          Text(_products) 
        ],) 
      ),
    );
  }
}