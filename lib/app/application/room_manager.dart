class RoomManager {
  final RoomRepository roomRepository;

  RoomManager(this.roomRepository);

  Future<void> addRoom(Room room) {
    return roomRepository.addRoom(room);
  }

  Future<List<Room>> getRooms() {
    return roomRepository.getRooms();
  }

  Future<void> updateRoom(Room room) {
    return roomRepository.updateRoom(room);
  }

  Future<void> deleteRoom(String roomId) {
    return roomRepository.deleteRoom(roomId);
  }
}
