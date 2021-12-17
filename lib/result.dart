import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final VoidCallback resetQuiz;
  const Result(this.points, this.resetQuiz);

  String get resultPhrase {
    String resultText = "All Step up!";
    points > 0
        ? resultText = "Your point is $points"
        : resultText = "All Step Up";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              onPressed: resetQuiz,
              child: const Text(
                "Take the test again?",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
