import 'package:cloud_firestore/cloud_firestore.dart';

class Lobby {
  static Future<bool> checkIfCodeExists(String generatedCode) async {
    QuerySnapshot query =
        await FirebaseFirestore.instance.collection("rooms").get();
    List<DocumentSnapshot> documents = query.docs;

    for (var i = 0; i < documents.length; i++) {
      if (documents[i].id.toString() == generatedCode) {
        return true;
      }
    }
    return false;
  }

  static Future<bool> addRoom(String roomCode) async {
    await FirebaseFirestore.instance
        .collection("rooms")
        .doc("roomCode")
        .set({});
    return true;
  }
}
