import 'Level.dart';
import 'Room.dart';

class Game {
  int _num_players;
  int _num_lives;
  int _num_shuriken;
  Level _level;
  Room _room;

  Game(_num_players, level) {
    this._num_players = _num_players;
    this._num_lives = 3;
    this._num_shuriken = 2;
    this._level = new Level(level);
    this._room = new Room();
  }

  Room get room => _room;

  set room(Room value) {
    _room = value;
  }

  Level get level => _level;

  set level(Level value) {
    _level = value;
  }

  int get num_shuriken => _num_shuriken;

  set num_shuriken(int value) {
    _num_shuriken = value;
  }

  int get num_lives => _num_lives;

  set num_lives(int value) {
    _num_lives = value;
  }

  int get num_players => _num_players;

  set num_players(int value) {
    _num_players = value;
  }
}
