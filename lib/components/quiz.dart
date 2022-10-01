import 'package:flutter/material.dart';
import 'package:myappstest/components/answers.dart';
import 'package:myappstest/components/question.dart';

class Quiz extends StatelessWidget {
  Quiz(this.question, this.questionindex, this.answersquestion);
  final question;
  final questionindex;
  final answersquestion;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionindex]["questionindex"]),
        ...(question[questionindex]["Answers"]).map(
          (answers) {
            return Answers(() {}, "answerstext");
          },
        )
      ],
    );
  }
}
