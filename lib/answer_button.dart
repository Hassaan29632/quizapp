import 'package:flutter/material.dart';

class answerbutton extends StatelessWidget {
  const answerbutton({
    super.key,
    required this.answer,
    required this.ontap});

  final String answer;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:        ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      ),
      child: Text(answer),
    );
  }
}
