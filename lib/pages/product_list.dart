import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text("bottom shit"),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: Text("wooow model"),
                );
              });
        },
      ),
    );
  }
}
