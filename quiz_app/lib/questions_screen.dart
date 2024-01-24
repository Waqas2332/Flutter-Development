import 'package:flutter/material.dart';
import "package:quiz_app/data/questions.dart";
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
    final currentQuestion = questions[0];

    return SizedBox(
      // For giving as much width as available
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            () {},
            currentQuestion.answers[0],
          ),
          AnswerButton(
            () {},
            currentQuestion.answers[1],
          ),
          AnswerButton(
            () {},
            currentQuestion.answers[2],
          ),
          AnswerButton(
            () {},
            currentQuestion.answers[3],
          ),
        ],
      ),
    );
  }
}
