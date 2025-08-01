import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body:  Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.blue,
                Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,


              ),


            ),
          child: homescreen(),
          ),
        ),

    ),
  );
}
