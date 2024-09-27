import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
              apiKey: 'AIzaSyBxQ4Tyefs_9VDcOhzh7e1OqGvHV22M7IE',
              appId: 'com.example.frist_project',
              messagingSenderId: '582918923536',
              projectId: 'watch-list-9b249'))
      : await Firebase.initializeApp();
  await FirebaseFirestore.instance.disableNetwork();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 90, left: 10),
                  width: 150,
                  child: Text(
                    'Watchlist',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbLSbK0AGmqiMIAMSNaFX8IOkY9ae8T4_BQw&s',
                    width: 150, // تحديد عرض الصورة
                  ),
                ),
                // مسافة بين الصورة والنص
                Column(
                  children: [
                    Container(
                      child: Text(
                        'ALITA Battle Angel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2019',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Rose Salazar , Christoph Waltz',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              // Add a horizontal line between rows
              color: Colors.white70,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbLSbK0AGmqiMIAMSNaFX8IOkY9ae8T4_BQw&s',
                    width: 150, // تحديد عرض الصورة
                  ),
                ),
                SizedBox(width: 5), // مسافة بين الصورة والنص
                Column(
                  children: [
                    Container(
                      child: Text(
                        'ALITA Battle Angel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2019',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Rose Salazar , Christoph Waltz',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              // Add a horizontal line between rows
              color: Colors.white70,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbLSbK0AGmqiMIAMSNaFX8IOkY9ae8T4_BQw&s',
                    width: 150, // تحديد عرض الصورة
                  ),
                ),
                SizedBox(width: 5), // مسافة بين الصورة والنص
                Column(
                  children: [
                    Container(
                      child: Text(
                        'ALITA Battle Angel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2019',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Rose Salazar , Christoph Waltz',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              // Add a horizontal line between rows
              color: Colors.white70,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbLSbK0AGmqiMIAMSNaFX8IOkY9ae8T4_BQw&s',
                    width: 150, // تحديد عرض الصورة
                  ),
                ),
                SizedBox(width: 5), // مسافة بين الصورة والنص
                Column(
                  children: [
                    Container(
                      child: Text(
                        'ALITA Battle Angel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2019',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Rose Salazar , Christoph Waltz',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              // Add a horizontal line between rows
              color: Colors.white70,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.circular(9)),
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbLSbK0AGmqiMIAMSNaFX8IOkY9ae8T4_BQw&s',
                    width: 150, // تحديد  // تحديد عرض الصورة
                  ),
                ),
                SizedBox(width: 5), // مسافة بين الصورة والنص
                Column(
                  children: [
                    Container(
                      child: Text(
                        'ALITA Battle Angel',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    Container(
                      child: Text(
                        '2019',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Rose Salazar , Christoph Waltz',
                        style: TextStyle(fontSize: 16, color: Colors.white38),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Divider(
              // Add a horizontal line between rows
              color: Colors.white70,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            )
          ],
        ),
      ),
    );
  }
}