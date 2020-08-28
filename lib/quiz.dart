import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function handler;
  final List<Map<String, Object>> questions;
  Quiz({this.handler, this.questionIndex, this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questions[questionIndex]['question']), //Customized Question widget
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => handler(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
