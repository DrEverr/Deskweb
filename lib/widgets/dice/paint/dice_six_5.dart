import 'package:deskweb/widgets/dice/paint/dice_n.dart';
import 'package:deskweb/widgets/dice/paint/dice_painter.dart';
import 'package:deskweb/widgets/dice/paint/dice_shapes.dart';
import 'package:flutter/material.dart';

class DiceSix5Widget extends DiceNWidget {
  const DiceSix5Widget(
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
            DiceSix5Painter(bgColor: backgroundColor, fgColor: foregroundColor),
      ),
    );
  }
}

class DiceSix5Painter extends DicePainter {
  const DiceSix5Painter({required Color bgColor, required Color fgColor})
      : super(backgroundColor: bgColor, foregroundColor: fgColor);

  @override
  void paint(Canvas canvas, Size size) {
    // shapes
    final c = Offset(size.width / 2, size.height / 2);
    final c1 = Offset(size.width / 4, size.height / 4);
    final c2 = Offset(size.width / 4, 3 * (size.height / 4));
    final c3 = Offset(3 * (size.width / 4), size.height / 4);
    final c4 = Offset(3 * (size.width / 4), 3 * (size.height / 4));

    final strokeWidth = size.width / 16.0;
    final rrect = DiceShapes().getSquare(size, strokeWidth);

    // draw
    canvas.drawRRect(rrect, getBgPaint());
    canvas.drawRRect(rrect, getRectPaint(strokeWidth));
    canvas.drawCircle(c, strokeWidth, getFgPaint());
    canvas.drawCircle(c1, strokeWidth, getFgPaint());
    canvas.drawCircle(c2, strokeWidth, getFgPaint());
    canvas.drawCircle(c3, strokeWidth, getFgPaint());
    canvas.drawCircle(c4, strokeWidth, getFgPaint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
