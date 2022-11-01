import 'package:flutter/material.dart';
import 'package:pet_project/models/Question.dart';
import 'package:pet_project/widget/progress_bar.dart';
import 'package:pet_project/widget/quiz.dart';
import 'package:pet_project/widget/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIndex = 0;
        _countResult = 0;
        _icons = [];
      });

  void _onChangesAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xFFbd27ff)));
          _countResult++;
        } else {
          _icons.add(Icon(Icons.brightness_1, color: Color(0xFF000000)));
        }

        _questionIndex += 1;
      });

  final whiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );

  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Color(0xFF8131ff),
      //     centerTitle: true,
      //     title: Text(
      //       'Dart quiz',
      //       style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      //     ),
      //   ),
      body: SafeArea(
        child: DefaultTextStyle.merge(
          style: whiteTextStyle,
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: const Color(0xff2a375a),
              image: DecorationImage(
                image: AssetImage('assets/images/picture.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                ProgressBar(
                  icons: _icons,
                  count: _questionIndex,
                  total: data.questions.length,
                ),
                _questionIndex < data.questions.length
                    ? Quiz(
                        index: _questionIndex,
                        questionData: data,
                        onChangeAnswer: _onChangesAnswer,
                      )
                    : Result(
                        count: _countResult,
                        total: data.questions.length,
                        onClearState: _clearState,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
