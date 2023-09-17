import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/object.dart';

class ObjectApiService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addObject(ObjectModel object) async {
    await _firestore.collection('objects').add({
      'id': object.id,
      'type': object.type,
      'position': object.position,
    });
  }

  // Other CRUD operations for objects
}
2