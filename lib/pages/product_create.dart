import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addHandler;

  ProductCreatePage(this.addHandler);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreatePageState();
  }
}

class _ProductCreatePageState extends State<ProductCreatePage> {
  String title = '';
  String description = "";
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Product Title'),
              onChanged: (String value) {
                setState(() {
                  title = value;
                });
              },
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(labelText: 'Product Description'),
              onChanged: (String value) {
                setState(() {
                  description = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  price = double.parse(value);
                });
              },
            ),
            RaisedButton(
              child: Text('Save'),
              onPressed: () {
                final Map<String, dynamic> product = {
                  "title": title,
                  'description': description,
                  'price': price,
                  'image': 'assets/food.jpg'
                };
                widget.addHandler(product);
              },
            )
          ],
        ));
  }
}
