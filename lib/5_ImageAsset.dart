// add Images assets
// 1. create 'assets' folder (name is up to you!), with an image inside
// 2. go to 'pubspec.yaml' & uncomment adding assets code:
//      assets:
//      - assets/lintang.png

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
        body: Card(
          child: Column(children: <Widget>[   
            Image.asset('assets/lintang.png'),
            Text('Hello World!')
          ],),
          // <Widget>[] means: GENERIC TYPE, the array [] just contains Widget!
        ),
      ),
    );
  }
}