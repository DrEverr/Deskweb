import 'package:deskweb/widgets/dice/paint/dice_n.dart';
import 'package:deskweb/widgets/dice/paint/dice_painter.dart';
import 'package:deskweb/widgets/dice/paint/dice_shapes.dart';
import 'package:flutter/material.dart';

class DiceSix6Widget extends DiceNWidget {
  const DiceSix6Widget(
      {super.key,
      required super.size,
      required super.backgroundColor,
      required super.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        size: Size(size, size),
        painter:
            DiceSix6Painter(bgColor: backgroundColor, fgColor: foregroundColor),
      ),
    );
  }
}

class DiceSix6Painter extends DicePainter {
  const DiceSix6Painter({required Color bgColor, required Color fgColor})
      : super(backgroundColor: bgColor, foregroundColor: fgColor);

  @override
  void paint(Canvas canvas, Size size) {
    // shapes
    final c1 = Offset(size.width / 4, size.height / 4);
    final c2 = Offset(size.width / 4, 3 * (size.height / 4));
    final c3 = Offset(size.width / 4, size.height / 2);
    final c4 = Offset(3 * (size.width / 4), size.height / 2);
    final c5 = Offset(3 * (size.width / 4), size.height / 4);
    final c6 = Offset(3 * (size.width / 4), 3 * (size.height / 4));

    final strokeWidth = size.width / 16.0;
    final rrect = DiceShapes().getSquare(size, strokeWidth);

    // draw
    canvas.drawRRect(rrect, getBgPaint());
    canvas.drawRRect(rrect, getRectPaint(strokeWidth));
    canvas.drawCircle(c1, strokeWidth, getFgPaint());
    canvas.drawCircle(c2, strokeWidth, getFgPaint());
    canvas.drawCircle(c3, strokeWidth, getFgPaint());
    canvas.drawCircle(c4, strokeWidth, getFgPaint());
    canvas.drawCircle(c5, strokeWidth, getFgPaint());
    canvas.drawCircle(c6, strokeWidth, getFgPaint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
