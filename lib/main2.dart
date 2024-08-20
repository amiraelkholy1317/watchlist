import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.videocam_sharp)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
          leading: Icon(Icons.arrow_back),
          title: Expanded(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/person.jpg'),
                ),
                Text("Person"),
              ],
            ),
          ),
          toolbarHeight: 130,
          backgroundColor: Colors.black,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/background.png"),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/images/person1.jpg'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
