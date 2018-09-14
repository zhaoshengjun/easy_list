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
  String _title = '';
  String _description = "";
  double _price = 0.0;

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
                  _title = value;
                });
              },
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(labelText: 'Product Description'),
              onChanged: (String value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  _price = double.parse(value);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            RaisedButton(
              child: Text('Save'),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                final Map<String, dynamic> product = {
                  "title": _title,
                  'description': _description,
                  'price': _price,
                  'image': 'assets/food.jpg'
                };
                widget.addHandler(product);
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],
        ));
  }
}
