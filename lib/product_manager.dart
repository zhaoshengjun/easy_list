import 'package:flutter/material.dart';

import './pages/products.dart';
import 'product_control.dart';

class ProductManager extends StatefulWidget {
  final Map initProduct;

  ProductManager({this.initProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map> _products = [];

  void _addProduct(Map product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  void initState() {
    if (widget.initProduct != null) {
      _products.add(widget.initProduct);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(margin: EdgeInsets.all(5.0), child: ProductControl(_addProduct)),
        Expanded(child: ProductsPage(products: _products, deleteHandler: _deleteProduct))
      ],
    );
  }
}
