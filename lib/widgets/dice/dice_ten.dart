import 'package:deskweb/widgets/dice/paint/dice_n.dart';
import 'package:deskweb/widgets/dice/paint/dice_painter.dart';
import 'package:deskweb/widgets/dice/paint/dice_shapes.dart';
import 'package:flutter/material.dart';

class DiceTenWidget extends DiceNWidget {
  final int n;

  const DiceTenWidget(
      {super.key,
      required this.n,
      required super.size,
      required super.backgroundColor,
      required super.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: Size(size, size),
        painter: DiceTenPainter(
            n: n, bgColor: backgroundColor, fgColor: foregroundColor),
      ),
    );
  }
}

class DiceTenPainter extends DicePainter {
  final int n;
  const DiceTenPainter(
      {required this.n, required Color bgColor, required Color fgColor})
      : super(backgroundColor: bgColor, foregroundColor: fgColor);

  @override
  void paint(Canvas canvas, Size size) {
    // shapes
    final strokeWidth = size.width / 16.0;
    final shape = DiceShapes().getOctahidron(size);
    final text = TextSpan(
        text: n.toString(),
        style: TextStyle(
            color: foregroundColor,
            fontSize: size.width / 3.0,
            fontWeight: FontWeight.bold));
    final textPainter = TextPainter(
        text: text,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    textPainter.layout();

    // draw
    canvas.drawPath(shape, getBgPaint());
    canvas.drawPath(shape, getRectPaint(strokeWidth));
    textPainter.paint(
        canvas,
        Offset((size.width - textPainter.width) / 2,
            ((size.height - textPainter.height) / 2) + strokeWidth));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
