import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_project/pages/home_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.openSansCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: HomePage(),
    );
  }
}
