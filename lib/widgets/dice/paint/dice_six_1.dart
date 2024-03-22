import 'package:deskweb/widgets/dice/paint/dice_n.dart';
import 'package:deskweb/widgets/dice/paint/dice_painter.dart';
import 'package:deskweb/widgets/dice/paint/dice_shapes.dart';
import 'package:flutter/material.dart';

class DiceSix1Widget extends DiceNWidget {
  const DiceSix1Widget(
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
            DiceSix1Painter(bgColor: backgroundColor, fgColor: foregroundColor),
      ),
    );
  }
}

class DiceSix1Painter extends DicePainter {
  const DiceSix1Painter({required Color bgColor, required Color fgColor})
      : super(backgroundColor: bgColor, foregroundColor: fgColor);

  @override
  void paint(Canvas canvas, Size size) {
    // shapes
    final c = Offset(size.width / 2, size.height / 2);
    final strokeWidth = size.width / 16.0;
    final rrect = DiceShapes().getSquare(size, strokeWidth);

    // draw
    canvas.drawRRect(rrect, getBgPaint());
    canvas.drawRRect(rrect, getRectPaint(strokeWidth));
    canvas.drawCircle(c, strokeWidth, getFgPaint());
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
