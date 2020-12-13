import 'Hand.dart';
import 'Card.dart';
import 'Level_Descriptions.dart';

class Level {

  String _description;
  List<Hand> _hands;
  Card _deck;
  int _level_number;

  Level(level_number){
    this._description = Level_Descriptions.getDescriptions(level_number);
    this._level_number = level_number;
    this._hands = generateHands();
    this._deck = null;
  }

  int get hand_size => _level_number;

  int get level_number => _level_number;

  set level_number(int value) {
    _level_number = value;
  }

  Card get frontCardOfDeck => _deck;

  set frontCardOfDeck(Card value) {
    _deck = value;
  }

  List<Hand> get hands => _hands;

  set hands(List<Hand> value) {
    _hands = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  List<Hand> generateHands() {}
}