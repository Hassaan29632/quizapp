import 'package:flutter/material.dart';

class questions extends StatefulWidget {
  const questions ({super.key});

  @override
  State<questions> createState()  {
    return  _questionsState();
    
  }
}

class _questionsState extends State<questions> {
  @override
  Widget build( context) {
    return Text("what is your name ");
  }
}
