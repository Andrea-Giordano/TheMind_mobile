import 'Room.dart';

class Lobby{

  static List<Room> rooms;

  static List<String> getRoomsCodes(){
    return rooms.map<String>((e) => e.code).toList();
  }

  static List<Room> getRooms(){
    return rooms;
  }

  static int getRoomsNumber(){
    return rooms.length;
  }
}