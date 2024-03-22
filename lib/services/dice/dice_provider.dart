import 'dart:math';

import 'package:deskweb/model/dice/dice.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final diceProvider = NotifierProviderFamily<Dice, int, int>(Dice.new);

class Dice extends FamilyNotifier<int, int> {
  final Random _rnd = Random();

  @override
  int build(int arg) {
    return 1;
  }

  void roll(DiceSides sides) {
    switch (sides) {
      case DiceSides.four:
        state = _rnd.nextInt(4) + 1;
      case DiceSides.six:
        state = _rnd.nextInt(6) + 1;
      case DiceSides.eight:
        state = _rnd.nextInt(8) + 1;
      case DiceSides.ten:
        state = _rnd.nextInt(10) + 1;
      case DiceSides.twenty:
        state = _rnd.nextInt(20) + 1;
      case DiceSides.hundred:
        state = (_rnd.nextInt(10) + 1) * 10;
      default:
        throw Exception('Invalid dice sides');
    }
  }
}
