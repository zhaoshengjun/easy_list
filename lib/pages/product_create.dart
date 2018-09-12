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
          onChanged: (String value) {
            setState(() {
              title = value;
            });
          },
        ),
        TextField(
          maxLines: null,
          onChanged: (String value) {
            setState(() {
              title = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.number,
          onChanged: (String value) {
            setState(() {
              title = value;
            });
          },
        ),
        Text(title)
      ],
    );
  }
}
