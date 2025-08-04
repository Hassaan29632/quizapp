import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';
import 'package:google_fonts/google_fonts.dart';
class startscreen extends StatelessWidget {
  const startscreen(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.6,
          //      child:
          Image.asset('assets/images/dartq.png', width: 200),
          Text(
            "Flutter Quiz App",
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 20
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startquiz();
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt_outlined),
            label: Text("start app"),
          ),
        ],
      ),
    );
  }
}
