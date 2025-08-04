class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getshuffledanswers ()
  {
    final shufflelist = List.of(answers);
    shufflelist.shuffle();
    return shufflelist;
  }
}