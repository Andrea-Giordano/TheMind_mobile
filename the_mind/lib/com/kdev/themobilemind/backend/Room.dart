import 'dart:math';
import 'Lobby.dart';

final int roomCodeNumberOfCiphers = 5;

class Room {
  String _code;

  Future<String> setCode() async {
    this._code = await getUniqueCode();
  }

  String get code => _code;

  static String _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
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
