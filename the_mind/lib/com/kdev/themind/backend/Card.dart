import 'Scan.dart';

class Card {
  int _number;
  Scan _card_scan;

  Card(this._number, this._card_scan);

  Scan get card_scan => _card_scan;

  set card_scan(Scan value) {
    _card_scan = value;
  }

  int get number => _number;

  set number(int value) {
    _number = value;
  }
}
