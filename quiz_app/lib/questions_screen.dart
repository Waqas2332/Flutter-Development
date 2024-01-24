import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // For giving as much width as available
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The Question..."),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer 1"),
          ),
        ],
      ),
    );
  }
}
