import 'package:flutter/material.dart';
import '../product_maneger.dart';
import './products_admin.dart';

class HomePage extends StatelessWidget {
  HomePage(this.list, this.addProduct, this.delProduct);
  final Function addProduct;
  final Function delProduct;
  final List<Map> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("data"),
            ),
            ListTile(
              title: Text("data"),
              leading: CircleAvatar(child: Text("A")),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProductsAdmin()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("my app"),
      ),
      body: ProudctManager(list, addProduct, delProduct),
    );
  }
}
