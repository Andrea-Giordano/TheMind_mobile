import 'dart:math';
import 'Lobby.dart';

final int roomCodeNumberOfCiphers = 5;

class Room {
  String _code;

  Future<String> generateCode() async {
    return await getUniqueCode();
  }

  set code(String value) {
    print("value:" + value);
    _code = value;
  }

  String get code => this._code;

  static String _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static Random _rnd = Random();

  static Future<String> getUniqueCode() async {
    String randomCode = "";

    do {
      randomCode = _getRandomString(roomCodeNumberOfCiphers);
    } while (await Lobby.checkIfCodeExists(randomCode));

    return randomCode;
  }

  static String _getRandomString(int length) =>
      String.fromCharCodes(Iterable.generate(
          length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
