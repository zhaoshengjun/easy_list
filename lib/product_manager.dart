import 'package:flutter/material.dart';

import 'products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final String initProduct;

  ProductManager(this.initProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  void initState() {
    _products.add(widget.initProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(margin: EdgeInsets.all(5.0), child: ProductControl(_addProduct)),
        Container(height: 500.0, child: Products(_products))
      ],
    );
  }
}
