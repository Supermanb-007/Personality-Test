import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String questionText;
  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.fromLTRB(5, 15, 5, 15),
      margin: const EdgeInsets.only(bottom: 20),
      color: const Color(0xFF000000),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 20,color: Color(0xFFf1f1f1)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
