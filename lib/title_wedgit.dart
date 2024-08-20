import 'package:flutter/material.dart';

class Titlewidget extends StatelessWidget {
  String title;

  Titlewidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          width: 200,
          margin: EdgeInsets.all(5),
          color: Colors.purple,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          )),
    );
  }
}
