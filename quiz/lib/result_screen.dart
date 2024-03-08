import "package:flutter/material.dart";

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You scorred X out of Y questions correctly"),
            SizedBox(height: 30,),
            Text("List of answered questions"),
            SizedBox(height: 30,),
            TextButton(onPressed: () {}, child: Text("wwwwwww")),
          ],
        ),
      ),
    );
  }
}
