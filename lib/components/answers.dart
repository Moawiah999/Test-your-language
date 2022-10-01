import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Answers(this.x, this.answertext);
  final answertext;
  final Function() x;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: x,
        child: Text(
          "${answertext}",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
