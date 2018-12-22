import 'package:flutter/material.dart';
import 'package:wooow/pages/product.dart';

class Products extends StatelessWidget {
  const Products({Key key, @required this.list, this.delProduct})
      : super(key: key);

  final List<Map> list;
  final Function delProduct;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: <Widget>[
              Image.asset(list[index]["img"]),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(list[index]["desc"]),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text(list[index]["title"]),
                    onPressed: () => Navigator.push<bool>(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => Product(
                                  map: list[index],
                                ),
                          ),
                        ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
