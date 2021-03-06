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
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Flexible(
                    fit: FlexFit.tight,
                    child: Text(
                      products[index]['title'],
                      style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold, fontFamily: 'Googls Sans'),
                    )),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
                    decoration:
                        BoxDecoration(color: Theme.of(context).accentColor, borderRadius: BorderRadius.circular(5.0)),
                    child: Text(
                      '\$' + products[index]['price'].toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ])),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1.0), borderRadius: BorderRadius.circular(6.0)),
            child: Text('Union Square, San Francisco'),
          ),
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
