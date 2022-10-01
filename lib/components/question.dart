import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.questiontext);
  final String questiontext;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        "${questiontext}",
        style: TextStyle(fontSize: 25, fontFamily: "SnowburstOne"),
      ),
    );
  }
}
