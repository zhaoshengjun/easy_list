import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addHanlder;
  ProductControl(this.addHanlder);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addHanlder('Sweets');
      },
      child: Text('Add Product'),
    );
  }
}
