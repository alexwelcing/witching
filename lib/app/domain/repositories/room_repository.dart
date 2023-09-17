abstract class RoomRepository {
  Future<void> addRoom(Room room);
  Future<List<Room>> getRooms();
  Future<void> updateRoom(Room room);
  Future<void> deleteRoom(String roomId);
}
