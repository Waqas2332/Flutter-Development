import 'package:dice_game/gradient_container.dart';
import 'package:flutter/material.dart';

// * Entry point of our application
void main() {
  // * function given by flutter to start our app
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)]),
      ),
    ),
  );
}
