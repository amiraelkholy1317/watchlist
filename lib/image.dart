import 'package:flutter/material.dart';

class Imageaccess extends StatelessWidget {
  @override
  String image;

  String name;

  Imageaccess({required this.image, required this.name});

  Widget build(BuildContext context) {
    return (Expanded(
        child: Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset(image),
        Container(
          color: Color(0x38E181F3),
          child: Text(name,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )),
        ),
      ],
    )));
  }
}
