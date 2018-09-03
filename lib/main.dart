import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Card(
          child: Column(
            children: <Widget>[Image.asset('assets/food.jpg'), Text('Food Paradise')],
          ),
        ),
      ),
    );
  }
}
