import 'package:flutter/material.dart';
import 'package:frist_project/image.dart';
import 'package:frist_project/title_wedgit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Frist App'),
        centerTitle: true,
        backgroundColor: Color(0xDDF456FF),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Titlewidget(title: "الاخبار"),
                Titlewidget(title: "المجالات"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Imageaccess(
                    image: "assets/images/السيارات.jpg", name: "السيارات"),
                SizedBox(
                  width: 2,
                ),
                Imageaccess(
                    image: "assets/images/التكنولوجيا.jpg",
                    name: "التكنولوجيا"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Imageaccess(
                    image: "assets/images/السيارات.jpg", name: "السيارات"),
                SizedBox(
                  width: 2,
                ),
                Imageaccess(
                    image: "assets/images/التكنولوجيا.jpg",
                    name: "التكنولوجيا"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Imageaccess(
                    image: "assets/images/السيارات.jpg", name: "السيارات"),
                SizedBox(
                  width: 2,
                ),
                Imageaccess(
                    image: "assets/images/التكنولوجيا.jpg",
                    name: "التكنولوجيا"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Imageaccess(
                    image: "assets/images/السيارات.jpg", name: "السيارات"),
                SizedBox(
                  width: 2,
                ),
                Imageaccess(
                    image: "assets/images/التكنولوجيا.jpg",
                    name: "التكنولوجيا"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Imageaccess(
                    image: "assets/images/السيارات.jpg", name: "السيارات"),
                SizedBox(
                  width: 2,
                ),
                Imageaccess(
                    image: "assets/images/التكنولوجيا.jpg",
                    name: "التكنولوجيا"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
