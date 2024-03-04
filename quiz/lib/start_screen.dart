import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void onPressed() {
  return;
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          const Text(
            "Learn flutter with fun!",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: onPressed,
            label: Text("Start quiz!"),
            icon: Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white, ),

          )
        ],
      ),
    );
  }
}
