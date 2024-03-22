import 'package:flutter/material.dart';

class DiceShapes {
  RRect getSquare(Size size, double radius) {
    return RRect.fromLTRBR(
        0.0, 0.0, size.width, size.height, Radius.circular(radius));
  }

  Path getTriangle(Size size, double radius) {
    final path = Path();
    path.moveTo(0.0 + radius, size.height - radius * 1.4);
    path.arcToPoint(Offset(0.0 + (radius * 2), size.height),
        radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width - radius * 2, size.height);
    path.arcToPoint(Offset(size.width - radius, size.height - radius * 1.4),
        radius: Radius.circular(radius), clockwise: false);
    path.lineTo(size.width / 2 + radius, 0.0 + radius * 2);
    path.arcToPoint(Offset(size.width / 2 - radius, 0.0 + radius * 2),
        radius: Radius.circular(radius * 1.1), clockwise: false);
    path.close();
    return path;
  }

  Path getOctahidron(Size size) {
    final path = Path();
    path.moveTo(size.width * .1, size.height * .8);

    path.lineTo(size.width * .5, size.height);
    path.lineTo(size.width * .9, size.height * .8);

    path.lineTo(size.width * .9, size.height * .4);
    path.lineTo(size.width * .5, size.height * .1);

    path.lineTo(size.width * .1, size.height * .4);
    path.lineTo(size.width * .1, size.height * .8);

    path.lineTo(size.width * .9, size.height * .8);
    path.lineTo(size.width * .5, size.height * .1);

    path.close();

    //path.close();
    return path;
  }
}
