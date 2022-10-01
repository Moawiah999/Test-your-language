import 'package:flutter/material.dart';
import 'package:myappstest/components/answers.dart';
import 'package:myappstest/components/quiz.dart';
import 'package:myappstest/screens/Results.dart';

import '../components/question.dart';

class Test_English extends StatefulWidget {
  const Test_English({super.key});

  @override
  State<Test_English> createState() => _Test_EnglishState();
}

class _Test_EnglishState extends State<Test_English> {
  int questionindex = 0;
  void answerquestion() {
    if (questionindex == 2) {
      questionindex = -1;
    }
    setState(() {
      questionindex += 1;
    });
  }

// ["King Abdullah II", "King Hussain"]
  final List<Map<String, Object>> question = [
    {
      "questiontext": "What color is the sky?",
      "answer": ["blue", "black", "red"]
    },
    {
      "questiontext": "Who is the king of Jordan?",
      "answer": ["King Abdullah II", "King Hussain", "Prince Hassan"],
    },
    {
      "questiontext": "What is the tallest tower in the world",
      "answer": ["Burj Khalifa", "Burj Al Arab", "Burj Al Khor"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The exam"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black38,
          Colors.purple.shade300,
          Colors.yellow
        ])),
        child: Column(
          children: [
            Question("${question[questionindex]["questiontext"].toString()}"),
            ...(question[questionindex]["answer"] as List<String>)
                .map((answers) {
              return Answers(answerquestion, answers);
            }).toList(),
          ],
        ),
        alignment: Alignment.center,
        width: double.infinity,
        // child: questionindex < _question.length
        //     ? Quiz(_question, questionindex, "answersquestion")
        //     : Results(),
        // children: [Question("${_question}")],
        // child: Column(
        //   children: [
        //     Question("")
        //   ],
      ),
    );
  }
}
