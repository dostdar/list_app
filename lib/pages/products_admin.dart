import 'package:flutter/material.dart';
import './product_list.dart';
import './product_create.dart';

class ProductsAdmin extends StatelessWidget {
  final Function addProduct;
  final Function delProduct;
  ProductsAdmin(this.addProduct  , this.delProduct);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Choose'),
                ),
                ListTile(
                  title: Text('All Products'),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/home");
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("data"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("Create"),
                  
                ),
                Tab(
                  child: Text("Detail"),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductCreatePage(addProduct),
              ProductListPage(),
            ],
          ),
        ));
  }
}
