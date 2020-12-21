import 'dart:math';

import 'Lobby.dart';

class Room {
  String _code;

  Room() {
    this._code = getUniqueCode();
  }

  String get code => _code;

  var _chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  Random _rnd = Random();

  String getUniqueCode() {
    String randomCode = _getRandomString(5);
    while (Lobby.getRoomsCodes().contains(randomCode));
    return randomCode;
  }

  String _getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}
