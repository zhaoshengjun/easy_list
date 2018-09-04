import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                  });
                  print(_products);
                },
                child: Text('Add Product'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
