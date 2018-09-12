import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
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
    return Column(
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
          onChanged: (String value) {
            setState(() {
              description = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              price = double.parse(value);
            });
          },
        )
      ],
    );
  }
}
