import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Score(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
        Text(
        'Your total score is ' + totalScore.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
        TextButton(
          onPressed: resetQuiz,
          child: Text('Reset'),
        )
    ]));
  }
}
