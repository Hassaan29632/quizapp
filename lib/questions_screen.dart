import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/Data/questions.dart';

class questionsscreen extends StatefulWidget {
  const questionsscreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<questionsscreen> createState() {
    return _questionsState();
  }
}

class _questionsState extends State<questionsscreen> {
  var currentQuestionindex = 0;

  void answerquestion(String selectedanswer) {
    widget.onSelectAnswer(selectedanswer);
    setState(() {
      currentQuestionindex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionindex];

    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),

            //it will dynamically add options according to the answers options provided in answer file
            ...currentQuestion.getshuffledanswers().map((answers) {
              return answerbutton(
                answer: answers,
                ontap: () {
                  answerquestion(answers);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
