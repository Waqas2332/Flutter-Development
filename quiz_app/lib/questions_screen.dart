import 'package:flutter/material.dart';
import 'package:quiz_app/answer_btn.dart';

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
          const Text(
            "The Question...",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(() {}, "Answer 1"),
          AnswerButton(() {}, "Answer 2"),
          AnswerButton(() {}, "Answer 3"),
          AnswerButton(() {}, "Answer 4"),
        ],
      ),
    );
  }
}
