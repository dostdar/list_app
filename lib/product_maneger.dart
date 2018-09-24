import 'package:flutter/material.dart';
import 'package:wooow/product_control.dart';
import './products.dart';

class ProudctManager extends StatefulWidget {
  final Map first;
  ProudctManager(this.first);
  @override
  _ProudctManagerState createState() => _ProudctManagerState();
}

class _ProudctManagerState extends State<ProudctManager> {
  List<Map> list = [];

  @override
  void initState() {
    list.add(widget.first);
    super.initState();
  }

  void delProduct(int index) {
    setState(() {
          list.removeAt(index);
        });
  }

  void addProduct(Map product) {
    setState(() {
      list.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(addProduct),
        ),
        Expanded(
          child: Products(list: list , delProduct: delProduct,),
        )
      ],
    );
  }
}
