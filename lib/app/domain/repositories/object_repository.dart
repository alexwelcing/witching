abstract class ObjectRepository {
  Future<void> addObject(ObjectModel object);
  Future<List<ObjectModel>> getObjectsInRoom(String roomId);
  Future<void> updateObject(ObjectModel object);
  Future<void> deleteObject(String objectId);
}
