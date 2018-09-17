import 'package:flutter/material.dart';

import './pages/product.dart';

class ProductsPage extends StatelessWidget {
  final List<Map> products;

  ProductsPage({this.products});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Container(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(children: <Widget>[
                Text(
                  products[index]['title'],
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'Googls Sans'),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(products[index]['price'].toString()),
              ])),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.pushNamed<bool>(context, '/product/' + index.toString()))
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard = Container();
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
