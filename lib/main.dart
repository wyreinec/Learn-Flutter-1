import 'package:flutter/material.dart';
import './quiz.dart';
import './results.dart';

// panggil functionnya
// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

//inheritance
class MyApp extends StatefulWidget {
  //method
  @override
  //we need to do override because createState is a method provided by StatefulWidget
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// _ : private class
class _MyAppState extends State<MyApp> {
  //list
  final _questions = const [
    //map
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3}
      ],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Racoon', 'score': 3}
      ],
    },
  ];

  //property
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
}

  void _answerQuestion(int Score) {

    _totalScore += Score;
    //SetState : forced Flutter to rerendered the user interface by calling build method
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
