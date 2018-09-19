import 'package:flutter/material.dart';
class Products extends StatelessWidget {
  const Products({
    Key key,
    @required this.list,
  }) : super(key: key);

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: 
        list.map((element) => Card(
    margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: Column(
      children: <Widget>[
        Image.asset("assets/food.jpeg"),
        Text(element)
      ],
    ),
                )
                 ).toList()
      
    );
  }
}