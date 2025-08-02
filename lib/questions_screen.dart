import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/Data/questions.dart';

class questionsscreen extends StatefulWidget {
  const questionsscreen({super.key});

  @override
  State<questionsscreen> createState() {
    return _questionsState();
  }
}

class _questionsState extends State<questionsscreen> {
  @override
  Widget build(context) {

    var currentQuestion = questions[0];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(currentQuestion.text, style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),

          answerbutton(answer: currentQuestion.answers[0], ontap: () {}),
          answerbutton(answer: currentQuestion.answers[1], ontap: () {}),
          answerbutton(answer: currentQuestion.answers[2], ontap: () {}),
          answerbutton(answer: currentQuestion.answers[3], ontap: () {}),
        ],
      ),
    );
  }
}
