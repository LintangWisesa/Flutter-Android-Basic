//  2:04:21
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  // adding 'products' properties: will be a LIST of STRING
  List<String> _products = ['Captain America'];

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
                setState(() {
                  // set state 'products' to add its element
                  _products.add('Testing String');
                });                
              },
              child: Text('Add Image'),
            ),
          ),
          Column(children:
            // get every element in product then return it as Card
            _products.map((element) => Card(
              child: Column(children: <Widget>[   
                Image.asset('assets/lintang.png'),
                Text(element)
              ],),
            ),).toList()
          ) 
        ],) 
      ),
    );
  }
}