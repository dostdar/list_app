import 'package:flutter/material.dart';
import 'package:wooow/product_maneger.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my app"),
        ),
        body:ProudctManager() ,
      ),
    );
  }
}
