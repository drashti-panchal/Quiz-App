import 'package:flutter/material.dart';

import 'question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;

  final Function result;

  Quiz({@required this.questions, @required this.result, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'],
        ),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(()=> result(answers['score']),answers['text']);
        }),
      ],
    );
  }
}
