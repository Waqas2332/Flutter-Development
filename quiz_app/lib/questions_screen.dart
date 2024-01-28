import 'package:flutter/material.dart';
import "package:quiz_app/data/questions.dart";
import 'package:quiz_app/answer_btn.dart';
import "package:google_fonts/google_fonts.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currQuestionIndex = 0;

  void changeQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      if (currQuestionIndex == 5) {
        currQuestionIndex = 5;
      } else {
        currQuestionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currQuestionIndex];

    return SizedBox(
      // For giving as much width as available
      width: double.infinity,

      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffleAnsers.map(
              (answer) {
                return AnswerButton(() {
                  changeQuestion(answer);
                }, answer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
