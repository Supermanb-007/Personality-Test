import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  // ignore: use_key_in_widget_constructors
  const Quiz(
      {required this.questionIndex,
      required this.questions,
      required this.answerQuestion});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]["Answers"] as List<Map<String, Object>>).map((btnText) {
          return AnswerButton(()=> answerQuestion(btnText["points"]), (btnText["text"] as String));
        })
      ],
    );
  }
}
