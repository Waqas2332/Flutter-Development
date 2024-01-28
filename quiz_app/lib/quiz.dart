import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> _selectedAnswers = [];
  var activeScreen = "home-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "results-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currScreen = Home(switchScreen);
    if (activeScreen == "questions-screen") {
      currScreen = QuestionsScreen(chooseAnswer);
    }

    if (activeScreen == "results-screen") {
      currScreen = ResultsScreen(_selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 85, 25, 96), Colors.deepPurple],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: currScreen,
        ),
      ),
    );
  }
}
