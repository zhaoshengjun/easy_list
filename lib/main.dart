import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/products_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.deepOrange, accentColor: Colors.deepPurple),
      // home: AuthPage(),
      routes: {'/': (BuildContext context) => ProductsPage(), 'admin': (BuildContext context) => ProductsAdminPage()},
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }

        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(builder: (BuildContext context) => ProductPage(products[index]));
        }
        return null;
      },
    );
  }
}
