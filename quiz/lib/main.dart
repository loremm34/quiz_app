import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(211, 112, 11, 148),
            Color.fromARGB(153, 147, 30, 189)
          ]),
        ),
        child: StartScreen(),
      ),

    ),
  ));
}
