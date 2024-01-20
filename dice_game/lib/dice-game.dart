import 'dart:math';

import 'package:dice_game/dice-roller.dart';
import 'package:dice_game/styled_text.dart';
import 'package:flutter/material.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});

  @override
  State<DiceGame> createState() {
    return _DiceGame();
  }
}

class _DiceGame extends State<DiceGame> {
  var randomNum1 = 1;
  var randomNum2 = 1;
  String winner = "";
  var isClicked1 = false;
  var isClicked2 = false;

  void rollDice1() {
    if (!isClicked1) {
      setState(() {
        randomNum1 = Random().nextInt(6) + 1;
        if (isClicked2) {
          checkWinner();
        }
      });
      isClicked1 = true;
    } else {
      print("You can only roll dice once");
    }
  }

  void rollDice2() {
    if (!isClicked2) {
      setState(() {
        randomNum2 = Random().nextInt(6) + 1;
        if (isClicked1) {
          checkWinner();
        }
      });
      isClicked2 = true;
    } else {
      print("You can only roll dice once");
    }
  }

  void checkWinner() {
    if (randomNum1 > randomNum2) {
      winner = "Player 1 Wins";
    } else if (randomNum1 < randomNum2) {
      winner = "Player 2 Wins";
    } else {
      winner = "Draw";
    }
  }

  void restartGame() {
    setState(() {
      randomNum1 = 1;
      randomNum2 = 1;
      isClicked1 = false;
      isClicked2 = false;
      winner = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(children: [
        const SizedBox(
          width: 15,
        ),
        DiceRoller(randomNum1, rollDice1, "Player 1"),
        const SizedBox(
          width: 15,
        ),
        DiceRoller(randomNum2, rollDice2, "Player 2"),
      ]),
      const SizedBox(
        height: 30,
      ),
      StyledText(winner),
      OutlinedButton(
        onPressed: restartGame,
        child: const StyledText("Restart Game"),
      )
    ]);
  }
}
