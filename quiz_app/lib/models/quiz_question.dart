class QuizQuestion {
  // class variables
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> get shuffleAnsers {
    final shuffledList = List.of(
        answers); // create and return a copy of list which is passed in parameter
    shuffledList.shuffle(); // shuffle the original list
    return shuffledList;
  }
}
