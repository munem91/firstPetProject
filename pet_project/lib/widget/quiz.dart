import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;

  Quiz({
    super.key,
    this.index,
    this.questionData,
    this.onChangeAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Text(
              questionData.questions[index].title,
              textAlign: TextAlign.center,
              // style: Theme.of(context).textTheme.caption,
            ),
          ),
        ),
        ...questionData.questions[index].answers
            .map((value) => Answer(
                  title: value['answers'],
                  onCgangeAnswer: onChangeAnswer,
                  isCorrect: value.containsKey('isCorrect') ? true : false,
                ))
            .toList(),
      ],
    );
  }
}
