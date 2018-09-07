import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[Image.asset('assets/food.jpg'), Text(products[index])],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text('No product found. Please add some.'),
      );
    }
    return productCard;
  }
}
