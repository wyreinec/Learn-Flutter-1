import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answers(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color: Colors.blue,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
