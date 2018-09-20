import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/food.jpeg"),
            FlatButton.icon(
              label: Text("back"),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
