import 'package:flutter/material.dart';
import './products.dart';

class ProudctManager extends StatelessWidget {
  // final List<Map<String, String>> products;
  ProudctManager(this.list);
  final List<Map> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Products(
            list: list,
          ),
        )
      ],
    );
  }
}
