import 'package:flutter/material.dart';
import 'scene_viewer.dart';
import 'app/infrastructure/api/firebase_init.dart'; // import the initializer

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseInitializer.initialize();  // initialize Firebase
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
