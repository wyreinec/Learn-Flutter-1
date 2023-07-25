import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  //getter
  String get resultPhrase {
    var resultText = 'you did it';

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'you are strange?';
    } else {
      resultText = 'bab lol';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(child: Text('Restart Quiz'), onPressed: resetHandler,),
        ],
      ),
    );
  }
}
