import 'Card.dart';

class Hand {
  List<Card> _cards;
  String _player;

  Hand(player) {
    this._player = player;
    this._cards = List();
  }

  void addCard(card) {
    this._cards.add(card);
  }

  String get player => _player;

  set player(String value) {
    _player = value;
  }

  List<Card> get cards => _cards;

  set cards(List<Card> value) {
    _cards = value;
  }
}
