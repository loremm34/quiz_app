import "package:flutter/material.dart";
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/result_screen.dart';
class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  // Widget? activeScreen;
  
  
  List<String> selectedAnswers = [];

  var activeScreen = "start-screen";

  void switchScreen() {
    selectedAnswers = [];
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    } 
  }

  void onRestart() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if(activeScreen == "result-screen") {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, onRestart: onRestart,);
    } else if(activeScreen == "questions-screen") {
      screenWidget =screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(211, 112, 11, 148),
                Color.fromARGB(153, 147, 30, 189),
              ]),
            ),
            child: Center(
              child: screenWidget,
            ),
          ),
        ));
  }
}
