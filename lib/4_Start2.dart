// using type: void, widget, buildcontext
// clean code, makes better code

import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

// can be written also as arrow function:
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override     
  // @override: tells dart & flutter that we deliberately override
  // a method which is also already defined: stateless widget
  // also make our code easier to read by our teams
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome home'),
        ),
      ),
    );
  }
}