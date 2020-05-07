import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function answer;
  final int questionIndex;

  Quiz(this.answer, this.questions, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(children: [ Question(questions[questionIndex]['questiontext']),
      ...(questions[questionIndex]["answer"] as List<Map<String, Object>>).map((ans) {return Answer(() => answer(ans["score"]), ans["text"]);}).toList()
    ],
    );
  }
}
