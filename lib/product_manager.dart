import 'package:flutter/material.dart';

import './products.dart';
import 'product_control.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductManager(this.products, this.addProduct, this.deleteProduct);

  // @override
  // void initState() {
  //   if (widget.initProduct != null) {
  //     _products.add(widget.initProduct);
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(margin: EdgeInsets.all(5.0), child: ProductControl(addProduct)),
        Expanded(child: ProductsPage(products: products, deleteHandler: deleteProduct))
      ],
    );
  }
}
