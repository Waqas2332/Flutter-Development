import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(this.choosenAnswers, {super.key});

  final List<String> choosenAnswers;

  final List<Map<String, Object>> summary = [];
  List<Map<String, Object>> getSummaryData() {
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correct_answer": questions[i].answers[0],
        "choosen_answer": choosenAnswers[i]
      });
    }

    return summary;
  }

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
            QuestionsSummary(
              getSummaryData(),
            ),
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
