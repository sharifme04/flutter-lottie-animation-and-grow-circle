import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData themedata = ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.red,
      fontFamily: 'Georgria',
      brightness: Brightness.light,
      textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind')));
}
