import 'package:cloud_firestore/cloud_firestore.dart';

class Lobby {
  static Future<bool> checkIfCodeExists(String generatedCode) async {
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection("rooms")
        .doc(generatedCode)
        .get();

    if (documentSnapshot.exists) {
      return true;
    }
    addRoom(generatedCode);
    return false;
  }

  static Future<bool> addRoom(String roomCode) async {
    await FirebaseFirestore.instance
        .collection("rooms")
        .doc(roomCode)
        .set({});
    return true;
  }
}
