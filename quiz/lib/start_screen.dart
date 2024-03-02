import 'package:flutter/material.dart';

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
          Image.asset(
            '/Users/lorem/quiz_app/quiz/assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 80,),
          const Text(
            "Learn flutter with fun!",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30,),
          OutlinedButton(
            onPressed: onPressed,
            child: Text("Start quiz!"),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white, ),

          )
        ],
      ),
    );
  }
}
