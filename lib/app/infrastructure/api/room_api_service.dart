import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/room.dart';

class RoomApiService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> addRoom(Room room) async {
    await _firestore.collection('rooms').add({
      'id': room.id,
      'name': room.name,
      'objects': room.objects,  // serialize this field as needed
    });
  }

  // Other CRUD operations for rooms
}
