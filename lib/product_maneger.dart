import 'package:flutter/material.dart';
import 'package:wooow/product_control.dart';
import './products.dart';

class ProudctManager extends StatelessWidget {
  // final List<Map<String, String>> products;
  ProudctManager(this.list, this.addProduct, this.delProduct);
  final Function addProduct;
  final Function delProduct;
  final List<Map> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ),
        Expanded(
          child: Products(
            list: list,
            delProduct: delProduct,
          ),
        )
      ],
    );
  }
}
