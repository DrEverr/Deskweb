import 'package:deskweb/model/dice/dice.dart';
import 'package:deskweb/widgets/activity/activity.dart';
import 'package:deskweb/widgets/dice/dice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DiceWidget(
                id: 0,
                sides: DiceSides.eight,
                size: size.width / 4,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              const ActivityWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
