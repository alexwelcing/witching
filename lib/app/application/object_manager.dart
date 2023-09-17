class ObjectManager {
  final ObjectRepository objectRepository;

  ObjectManager(this.objectRepository);

  Future<void> addObject(ObjectModel object) {
    return objectRepository.addObject(object);
  }

  Future<List<ObjectModel>> getObjectsInRoom(String roomId) {
    return objectRepository.getObjectsInRoom(roomId);
  }

  Future<void> updateObject(ObjectModel object) {
    return objectRepository.updateObject(object);
  }

  Future<void> deleteObject(String objectId) {
    return objectRepository.deleteObject(objectId);
  }
}
