// import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final data = [
    Question(
      title: 'Какую из этих переменных в языке Dart можно переназначить?',
      answers: [
        {'answers': 'const'},
        {'answers': 'let'},
        {'answers': 'final'},
        {'answers': 'var', 'isCorrect': 1},
      ],
    ),
    Question(
      title: 'В языке Dart наследование реализуется с помощью ключевого слова:',
      answers: [
        {'answers': 'extends', 'isCorrect': 1},
        {'answers': 'implements'},
        {'answers': 'inherits'},
        {'answers': 'extending'},
      ],
    ),
    Question(
      title: 'Тип дробного числа в Dart обозночнается:',
      answers: [
        {'answers': 'bool'},
        {'answers': 'num'},
        {'answers': 'int'},
        {'answers': 'double', 'isCorrect': 1}
      ],
    ),
    Question(
      title: 'Константа, которая присваивается во время исполнения называется:',
      answers: [
        {'answers': 'var'},
        {'answers': 'let'},
        {'answers': 'final', 'isCorrect': 1},
        {'answers': 'const'},
      ],
    ),
    Question(
      title: 'Константа, которая присваивается во время компеляции называется:',
      answers: [
        {'answers': 'final'},
        {'answers': 'const', 'isCorrect': 1},
        {'answers': 'let'},
        {'answers': 'var'},
      ],
    ),
    Question(
      title: 'Extending a class позволяет',
      answers: [
        {'answers': 'От любого класса взять наследника'},
        {
          'answers':
              'Взять родительский класс и включить в новый, при необходимости дополнив',
          'isCorrect': 1
        },
        {
          'answers':
              'Забрать из класса названия (переменные), но реализацию (конструктор) не забирать'
        },
        {
          'answers':
              'Взять родительский класс и дополнить его с помощью тернарного оператора'
        },
      ],
    ),
    Question(
      title: 'Чем отличается коллекция Sets от List?',
      answers: [
        {'answers': 'Sets - это массив, а List - это тип данных'},
        {
          'answers':
              'Отличие в том, что в Sets все значения должны быть уникальныv+',
          'isCorrect': 1
        },
        {'answers': 'Sets - это ключ: значение, а List - только значение'},
        {'answers': 'В Dart нету Sets только List'},
      ],
    ),
    Question(
      title: 'Call back - это',
      answers: [
        {
          'answers':
              'Функция, которая выполняется когда завершится какое-то действие',
          'isCorrect': 1
        },
        {
          'answers':
              'Это класс, который содержит дейсвтие и принимает значение в будущем'
        },
        {
          'answers':
              'Это аналог массива, в котором значение появляется не сразу'
        },
        {'answers': 'Действие, которое возвращает нас на 1 шаг назад'},
      ],
    ),
    Question(
      title: 'Какое из этих утверждений неверно?',
      answers: [
        {
          'answers': 'Процессы могут выполняться параллельно друг другу',
          'isCorrect': 1
        },
        {'answers': 'Потоками внутри одного процесса можно управлять'},
        {'answers': 'Потоками внутри одного процесса нельзя управлять'},
        {'answers': 'Процесами управлять не можем'},
      ],
    ),
  ];
  List<Question> get questions => [...data];
}
