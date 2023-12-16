import 'package:flutter/material.dart';

// * Entry point of our application
void main() {
  // * function given by flutter to start our app
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  // super() runs the constructor function of parent class
  // key is required by StatelessWidget class
  const GradientContainer({super.key});
  // build method is required for custom widgets and it triggers by flutter whenever user interface is rendered
  // return type of build method is Widget
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "Hello World",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
