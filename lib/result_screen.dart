import 'package:flutter/material.dart';
import 'package:quiz_app/Data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenanswers});

  final List<String> choosenanswers;

  List<Map<String, Object>>  getsummarydata()
  {
final List<Map<String, Object>> summary = [];
for(var i =0; i < choosenanswers.length ; i++)
  {
summary.add({
  "Queston index": i,
  "Queston" : questions[i].text,
  "correct answer" : questions[i].answers[0],
  "user answer" : choosenanswers

});
  }
return summary;
  }


  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you answered x out of y "),
            SizedBox(height: 20,),
            TextButton(onPressed: (){}, child: Text("restart quiz "))
          ],
        ),
      ),
    );
  }
}
