import 'package:flutter/material.dart';
import './ques.dart';
import './ans.dart';

class Result extends StatelessWidget {
  final int questionIndex;
  final Function answerfunction;
  final List<Map<String, Object>> questions;

  Result(this.questionIndex, this.answerfunction, this.questions);

  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questiontext']),
        ...(questions[questionIndex]['answertext'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['option'], () => answerfunction(answer['score']));
        }).toList()
      ],
    );
  }
}
