import 'package:flutter/material.dart';
import 'package:wooow/pages/product.dart';

class Products extends StatelessWidget {
  const Products({
    Key key,
    @required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: <Widget>[
              Image.asset("assets/food.jpeg"),
              Text(list[index]),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      child: Text("data"),
                      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Product(),
                            ),
                          ))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
