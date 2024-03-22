import 'package:deskweb/widgets/dice/paint/dices.dart';
import 'package:flutter/material.dart';

class DiceSixWidget extends StatelessWidget {
  final int n;
  final Color backgroundColor;
  final Color foregroundColor;
  final double size;

  const DiceSixWidget(
      {Key? key,
      required this.n,
      required this.size,
      required this.backgroundColor,
      required this.foregroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (n) {
      case 1:
        return DiceSix1Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
      case 2:
        return DiceSix2Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
      case 3:
        return DiceSix3Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
      case 4:
        return DiceSix4Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
      case 5:
        return DiceSix5Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
      case 6:
        return DiceSix6Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
      default:
        return DiceSix1Widget(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            size: size);
    }
  }
}
