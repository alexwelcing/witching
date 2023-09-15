import 'package:cloud_firestore/cloud_firestore.dart';

class SceneService {
  final CollectionReference sceneCollection =
      FirebaseFirestore.instance.collection('scenes');

  Future<void> saveScene(Map<String, dynamic> sceneData) async {
    try {
      // Data validation and versioning
      await sceneCollection.add(sceneData);
    } catch (e) {
      print("Failed to save scene: $e");
      throw Exception("Failed to save scene");
    }
  }
}
