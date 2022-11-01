import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String title;
  final isCorrect;
  final Function onCgangeAnswer;

  Answer({
    super.key,
    required this.title,
    this.isCorrect,
    required this.onCgangeAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCgangeAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(10.0, 1.0),
            ),
          ],
          borderRadius: BorderRadius.circular(50.0),
          gradient: LinearGradient(colors: [
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ]),
        ),
        // child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
