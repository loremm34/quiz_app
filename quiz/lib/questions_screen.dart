import 'dart:ffi';

import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuiestionsScreen();
  }
}

class _QuiestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Some question lol"),
          const SizedBox(height: 80),
          ElevatedButton(onPressed: () {}, child: Text("Answer 1")),
          ElevatedButton(onPressed: () {}, child: Text("Answer 2")),
          ElevatedButton(onPressed: () {}, child: Text("Answer 3")),
          ElevatedButton(onPressed: () {}, child: Text("Answer 4")),
        ],
      ),
    );
  }
}
