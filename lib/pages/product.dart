import 'dart:async';

import 'package:flutter/material.dart';

void _showWarningDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm'),
          content: Text('This action cannot be undone!'),
          actions: <Widget>[
            FlatButton(
              child: Text('Delete'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context, true);
              },
            ),
            FlatButton(
              child: Text('Discard'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      });
}

class ProductPage extends StatelessWidget {
  final Map product;
  ProductPage(this.product);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Product Details'),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(product['image']),
                Container(padding: EdgeInsets.all(10.0), child: Text(product['title'])),
                Container(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text('Delete'),
                      onPressed: () => _showWarningDialog(context),
                    ))
              ],
            ))));
  }
}
