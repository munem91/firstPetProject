import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final VoidCallback onClearState;

  Result({
    super.key,
    required this.count,
    required this.total,
    required this.onClearState,
  });

  @override
  Widget build(BuildContext context) {
    String msg = "";
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Так себе ты выучил дарт.\n Поучи ещё.';
      img = Image.asset('assets/images/bad.png');
    } else if ((4 <= count && count <= 7)) {
      msg = 'Норм, уже не плохо, давай старайся!\nОсталось немного';
      img = Image.asset('assets/images/normal.jpg');
    } else {
      msg = 'Красавчик, ты скоро найдешь работу!';
      img = Image.asset('assets/images/super.png');
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            spreadRadius: 0.0,
            offset: Offset(
              2.0,
              5.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFFbd27ff),
            Color(0xFF5337ff),
            Color(0xFF8131ff),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              style: TextStyle(color: Colors.white),
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            style: TextStyle(color: Colors.white),
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),
          OutlinedButton(
            child: Text('ЕЩЁ РАЗ',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
            // style: TextStyle(color: Colors.white, fontSize: 22,),
            style: OutlinedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 245, 2, 2),
                side: BorderSide(
                    color: Color.fromARGB(255, 245, 2, 2), width: 4)),
            onPressed: onClearState,
          ),
        ],
      ),
    );
  }
}
