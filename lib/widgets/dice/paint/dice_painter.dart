import 'package:flutter/material.dart';

abstract class DicePainter extends CustomPainter {
  final Color backgroundColor;
  final Color foregroundColor;

  const DicePainter(
      {required this.backgroundColor, required this.foregroundColor});

  Paint getBgPaint() {
    return Paint()..color = backgroundColor;
  }

  Paint getFgPaint() {
    return Paint()..color = foregroundColor;
  }

  Paint getRectPaint(double strokeWidth) {
    return Paint()
      ..color = foregroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;
  }

  @override
  void paint(Canvas canvas, Size size);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
