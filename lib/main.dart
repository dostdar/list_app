import 'package:flutter/material.dart';
import 'package:wooow/pages/auth.dart';
import 'package:wooow/pages/home_page.dart';
import 'package:wooow/pages/products_admin.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map> list = [];

  @override
  void initState() {
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
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Auth(),
      routes: {
        '/home': (BuildContext context) => HomePage(list, addProduct, delProduct),
        '/admin': (BuildContext context) => ProductsAdmin(),
      },
    );
  }
}
