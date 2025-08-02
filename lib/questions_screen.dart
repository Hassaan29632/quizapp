import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';


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
    return Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Text('the questoins '),
        SizedBox(height: 30),

        answerbutton(answer: "answer", ontap: () {}),
        answerbutton(answer: "answer", ontap: () {}),
        answerbutton(answer: "answer", ontap: () {}),


    ],
    )
    ,
    );
  }
}
