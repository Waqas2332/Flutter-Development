import 'package:dice_game/dice-game.dart';

import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  // super runs the constructor function of parent class
  // key is required by StatelessWidget class
  // main purpose of constructor is to forward the key parameter to parent class
  const GradientContainer(this.colors, {super.key});
  // build method is required for custom widgets and it triggers by flutter whenever user interface is rendered
  // return type of build method is Widget

  void rollDice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceGame(),
      ),
    );
  }
}
