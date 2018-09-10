import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            AppBar(title: Text('Choose')),
            ListTile(
              title: Text('Manage Product'),
              onTap: () {},
            )
          ],
        )),
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager());
  }
}
