import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  Widget activeScreen = StartScreen();


  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }



  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(211, 112, 11, 148),
              Color.fromARGB(153, 147, 30, 189)
            ]),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
