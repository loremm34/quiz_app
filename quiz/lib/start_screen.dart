import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              '/Users/lorem/quiz_app/quiz/assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(height: 80,),
           Text(
            "Learn flutter with fun!",
            style: GoogleFonts.asap(
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            label: Text("Start quiz!"),
            icon: Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white, ),

          )
        ],
      ),
    );
  }
}
