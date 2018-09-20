import 'package:flutter/material.dart';
import '../product_maneger.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my app"),
      ),
      body: ProudctManager("first"),
    );
  }
}
