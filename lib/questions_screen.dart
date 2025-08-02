import 'package:flutter/material.dart';

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

          ElevatedButton(
              onPressed: () {},
              child: Text("Answer 1 ")
          ),

          ElevatedButton(
              onPressed: () {},
              child: Text("Answer 2 ")
          ),

          ElevatedButton(
              onPressed: () {},
              child: Text("Answer 3 ")
          ),

          ElevatedButton(
              onPressed: () {},
              child: Text("Answer 4 ")
          ),



        ],
      ),
    );
  }
}
