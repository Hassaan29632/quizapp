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
   final currentQuestion = questions[0];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(currentQuestion.text, style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),

//it will dynamically add options according to the answers options provided in answer file
          ...currentQuestion.answers.map((answers) {
            return answerbutton(answer: answers, ontap: () {});
          }),
        ],
      ),
    );
  }
}
