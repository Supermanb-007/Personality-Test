import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback btnHandler;
  final String btnText;
  const AnswerButton(this.btnHandler, this.btnText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: RaisedButton(
          color: const Color(0xFF000000),
          textColor: const Color(0xFFf1f1f1),
          padding: const EdgeInsets.all(20),
          child: Text(btnText),
          onPressed: btnHandler,
        ));
  }
}
