import 'dart:async';

import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final Map map;
  const Product({
    this.map,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(map['img']),
              FlatButton.icon(
                label: Text(map['title']),
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
