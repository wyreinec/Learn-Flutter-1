import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

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
  //property
  var _questionIndex = 0;

  void _answerQuestion() {
    //SetState : forced Flutter to rerendered the user interface by calling build method
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    // print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    //list
    var questions = [
      //map
      {
        'questionText': 'What\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green'],
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['Cat', 'Dog', 'Racoon'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer){
              return Answers(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
