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
            projectId: 'watch-list-9b249',
          ),
        )
      : await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieListScreen(),
    );
  }
}

class MovieListScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 90, left: 10),
            child: Text(
              'Watchlist',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('movies').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                final movies = snapshot.data!.docs;
                return ListView.separated(
                  itemCount: movies.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.white70,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  itemBuilder: (context, index) {
                    var movie = movies[index];
                    return MovieItem(
                      title: movie['title'],
                      year: movie['year'],
                      cast: movie['cast'],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MovieItem extends StatelessWidget {
  final String title;
  final String year;
  final String cast;

  MovieItem({required this.title, required this.year, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbLSbK0AGmqiMIAMSNaFX8IOkY9ae8T4_BQw&s',
            width: 150,
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                year,
                style: TextStyle(fontSize: 16, color: Colors.white38),
              ),
              Text(
                cast,
                style: TextStyle(fontSize: 16, color: Colors.white38),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
