import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text("飲食店"),
        )
      ],
    );
  }
}