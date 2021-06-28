import 'package:flutter/material.dart';

import './result.dart';
import './score.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questiontext': 'What\'s your fav color?',
      'answertext': [
        {'option': 'blue', 'score': 5}, 
        {'option': 'red', 'score': 3}, 
        {'option': 'yellow', 'score': 10},
        {'option': 'orange', 'score': 7}
        ]
    },
    {
      'questiontext': 'What\'s your fav animal?',
      'answertext': [
        {'option': 'dog', 'score': 10},
        {'option': 'cat', 'score' : 8},
        {'option': 'lion', 'score': 15},
        {'option': 'elephant', 'score': 12},
        ]
    },
    {
      'questiontext': 'what is your fav subjects?',
      'answertext': [
        {'option': 'Maths', 'score': 12}, 
        {'option': 'Science', 'score': 20}, 
        {'option': 'History', 'score': 10},
        {'option': 'Finance', 'score': 17},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }


  void _answerfunction(int score) {

    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Result(
                  _questionIndex,
                  _answerfunction,
                  _questions)
              : Score(_totalScore, _resetQuiz)),
    );
  }
}
