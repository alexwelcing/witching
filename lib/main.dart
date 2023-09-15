import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'scene_viewer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Initialize Firebase
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            home: SceneViewer(),
          );
        }
        return Loading();
      },
    );
  }
}
