import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz> {
  var activescreen = 'active screen';
  List<String> selectedAnswers = [];

  // when object is initialized in class

  void switchscreen() {
    //start quiz
    // is enables material app to rececutes
    setState(() {
      activescreen = 'questionsscreen';
    });
  }

  void choosedanswers(answers) {
    selectedAnswers.add(answers);

    if (selectedAnswers.length == questions.length) {
      setState(() {
         // selectedAnswers = [];
        activescreen = 'result screen';
      });
    }
  }

  @override
  Widget build(context) {
    //initialization
    Widget screen = startscreen(switchscreen);

    if (activescreen == 'questionsscreen') {
      screen = questionsscreen(onSelectAnswer: choosedanswers);
    }

    if (activescreen == 'result screen') {
      screen = ResultScreen(choosenanswers: selectedAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screen,
        ),
      ),
    );
  }
}
