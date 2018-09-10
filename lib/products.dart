import 'package:flutter/material.dart';

import './pages/product.dart';

class ProductsPage extends StatelessWidget {
  final List<Map> products;
  final Function deleteHandler;

  ProductsPage({this.products, this.deleteHandler});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) => ProductPage(products[index])))
                          .then((delete) {
                        if (delete) {
                          deleteHandler(index);
                        }
                      }))
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
