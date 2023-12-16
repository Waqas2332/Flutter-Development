import 'package:dice_game/gradient_container.dart';
import 'package:flutter/material.dart';

// * Entry point of our application
void main() {
  // * function given by flutter to start our app
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}
