import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summary, {super.key});

  final List<Map<String, Object>> summary;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: summary.map((data) {
        return Row(
          children: [
            Text(
              ((data["question_index"] as int) + 1).toString(), // type casting
            ),
            Column(
              children: [
                Text(
                  data["question"].toString(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(data["choosen_answer"] as String),
                Text(data["correct_answer"] as String),
              ],
            ),
          ],
        );
      }).toList(), // For converting iterable to a List
    );
  }
}
