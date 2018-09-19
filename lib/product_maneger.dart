import 'package:flutter/material.dart';
import './products.dart';

class ProudctManager extends StatefulWidget {
  final String first;
  ProudctManager(this.first);
  @override
  _ProudctManagerState createState() => _ProudctManagerState();
}

class _ProudctManagerState extends State<ProudctManager> {

  List<String> list = ["asdsa", "asda"];

@override
  void initState() {
    list.add(widget.first);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            RaisedButton(
              child: Text("data"),
              onPressed: () {
                setState(() {
                  list.add("value");
                });
              },
            ),
            Container(
              child: Products(list: list),
            )
          ],
        ),
      ],
    );
  }
}
