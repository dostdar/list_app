import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;
  ProductCreatePage(this.addProduct);
  @override
  State<ProductCreatePage> createState() {
    return ProductCreateState();
  }
}

class ProductCreateState extends State<ProductCreatePage> {
  String title;
  String desc;
  double number;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ListView(
        children: <Widget>[
          TextField(
            onChanged: (val) {
              setState(() {
                title = val;
              });
            },
            decoration: InputDecoration(
              labelText: "title",
            ),
          ),
          TextField(
            onChanged: (val) {
              setState(() {
                desc = val;
              });
            },
            maxLines: 4,
            decoration: InputDecoration(
              labelText: "description",
            ),
          ),
          TextField(
            onChanged: (val) {
              setState(() {
                number = double.parse(val);
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "number",
            ),
          ),
          RaisedButton(
            child: Text("save"),
            onPressed: () {
              widget.addProduct({
                "title": title,
                "desc": desc,
                "img": "assets/food.jpeg",
              });
              Navigator.pushReplacementNamed(context, "/home");
            },
          )
        ],
      ),
    );
  }
}
