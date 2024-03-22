import 'package:deskweb/model/dice/dice.dart';
import 'package:deskweb/services/dice/dice_provider.dart';
import 'package:deskweb/widgets/dice/dice_six.dart';
import 'package:deskweb/widgets/dice/paint/dices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DiceWidget extends ConsumerWidget {
  final int? id;
  final DiceSides sides;
  final Color backgroundColor;
  final Color foregroundColor;
  final double size;

  const DiceWidget(
      {Key? key,
      this.id,
      required this.sides,
      required this.size,
      required this.backgroundColor,
      required this.foregroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final n = ref.watch(diceProvider(id ?? -1));

    return InkWell(
      onTap: () => ref.read(diceProvider(id ?? -1).notifier).roll(sides),
      child: switch (sides) {
        DiceSides.four => DiceFourWidget(
            n: n,
            size: size,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
        DiceSides.six => DiceSixWidget(
            n: n,
            size: size,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
        DiceSides.eight => DiceEightWidget(
            n: n,
            size: size,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
        _ => DiceSixWidget(
            n: n,
            size: size,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
          ),
      },
    );
  }
}
