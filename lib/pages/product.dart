import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final Map product;
  ProductPage(this.product);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () => Navigator.pop(context, true),
                ))
          ],
        )));
  }
}
