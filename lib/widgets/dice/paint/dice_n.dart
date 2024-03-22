import 'package:flutter/material.dart';

abstract class DiceNWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final double size;

  const DiceNWidget(
      {Key? key,
      required this.size,
      required this.backgroundColor,
      required this.foregroundColor})
      : super(key: key);
}