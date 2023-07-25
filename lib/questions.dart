import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Questions({super.key});
  // final: this value wont never changed after initialization constructor
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), //add spaces
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
