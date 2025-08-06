import 'package:flutter/material.dart';
import 'package:quiz_app/Data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenanswers});



  final List<String> choosenanswers;

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
            Text("you answered correctly  $numberofcorrectanswers out of $numberofquestons "),
            SizedBox(height: 20,),
            QuestionsSummary(summarydata),
            ElevatedButton(onPressed: (){}, child: Text("restart quiz "))
          ],
        ),
      ),
    );
  }
}
