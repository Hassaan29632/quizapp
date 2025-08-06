import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summarydata, {super.key});

  final List<Map<String, Object>> summarydata;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summarydata.map((data) {
                return Row(children: [
                  Text(((data['Question index']as int )+1).toString(),),
                  Expanded(
                    child: Column(children: [
                      //as int is type casting telling text which type of data is retreviing
                      Text(data['Question']as String),
                      SizedBox(height: 5,),
                      Text(data['user answer']as String),
                      Text(data['correct answer']as String),
                    ],),
                  ),
                ]);
              }).toList(),
        ),
      ),
    );
  }
}
