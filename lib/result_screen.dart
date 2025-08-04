import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

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
