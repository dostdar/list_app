import 'package:flutter/material.dart';
import 'package:wooow/product_control.dart';
import './products.dart';

class ProudctManager extends StatefulWidget {
  final String first;
  ProudctManager(this.first);
  @override
  _ProudctManagerState createState() => _ProudctManagerState();
}

class _ProudctManagerState extends State<ProudctManager> {
  List<String> list = ["asdsa", "asda"];

  @override
  void initState() {
    list.add(widget.first);
    super.initState();
  }

  void addProduct(String product) {
    setState(() {
      list.add("value");
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
          child: Products(list: list),
        )
      ],
    );
  }
}
