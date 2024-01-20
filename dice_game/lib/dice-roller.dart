import 'package:dice_game/styled_text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatelessWidget {
  const DiceRoller(this.randomNum, this.rollDice, this.playerText, {super.key});

  final int randomNum;
  final void Function() rollDice;
  final String playerText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledText(playerText),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          "assets/dice-$randomNum.png",
          width: 160,
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
    );
  }
}
