import 'package:flutter/material.dart';

import './pages/auth.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: AuthPage(),
    );
  }
}
