import 'package:dice_game/styled_text.dart';
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
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/dice-2.png",
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: const Text("Roll Dice"))
          ],
        ),
      ),
    );
  }
}
