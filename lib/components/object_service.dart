import 'package:cloud_firestore/cloud_firestore.dart';

class ObjectService {
  final CollectionReference objectCollection =
      FirebaseFirestore.instance.collection('objects');

  // Create a new object
  Future<void> createObject(Map<String, dynamic> objectData) async {
    try {
      // Data validation here
      await objectCollection.add(objectData);
    } catch (e) {
      print("Failed to add object: $e");
      throw Exception("Failed to add object");
    }
  }

  // Update an existing object
  Future<void> updateObject(String id, Map<String, dynamic> objectData) async {
    try {
      // Data validation here
      await objectCollection.doc(id).update(objectData);
    } catch (e) {
      print("Failed to update object: $e");
      throw Exception("Failed to update object");
    }
  }

  // Delete an object
  Future<void> deleteObject(String id) async {
    try {
      await objectCollection.doc(id).delete();
    } catch (e) {
      print("Failed to delete object: $e");
      throw Exception("Failed to delete object");
    }
  }

  // List all objects in a scene
  Stream<List<Map<String, dynamic>>> listObjects() {
    return objectCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => doc.data()).toList();
    });
  }
}
