import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  ProductControl(this.addProduct);
  final Function addProduct;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("data"),
      onPressed: () {
        addProduct({
          "title": "cheeeze",
          "img" : "assets/food.jpeg",
        });
      },
    );
  }
}
