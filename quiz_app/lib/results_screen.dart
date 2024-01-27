import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.choosenAnswers, {super.key});

  final List<String> choosenAnswers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // For giving as much width as available
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You answers X out of Y questions correctly"),
            const SizedBox(
              height: 30,
            ),
            const Text("List of answers & questions"),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
