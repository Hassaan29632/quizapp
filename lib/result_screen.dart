import 'package:flutter/material.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/questions_summary.dart';
import 'package:quiz_app/quiz.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenanswers, required this.restart});



  final List<String> choosenanswers;
  final void Function( )  restart;

  List<Map<String, Object>>  getsummarydata()
  {
final List<Map<String, Object>> summary = [];
for(var i =0; i < choosenanswers.length ; i++)
  {
summary.add({
  "Question index": i,
  "Question" : questions[i].text,
  "correct answer" : questions[i].answers[0],
  "user answer" : choosenanswers[i],

});
  }
return summary;
  }


  @override
  Widget build(context) {

    final summarydata = getsummarydata();
    final numberofquestons = questions.length;
    //map used to filter the list
    final numberofcorrectanswers =summarydata.where((data){
      return data['user answer'] == data['correct answer'];

    }).length;

    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: EdgeInsets.all(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered correctly  $numberofcorrectanswers out of $numberofquestons ",

              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white,


            ),),
            SizedBox(height: 20,),
            QuestionsSummary(summarydata),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              restart();}, child: Text("restart quiz "))
          ],
        ),
      ),
    );
  }
}
