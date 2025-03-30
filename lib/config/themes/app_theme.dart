import 'package:flutter/material.dart';

const List<Color> colorsList = [
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.green,
  Colors.grey,
  Colors.indigo,
  Colors.teal,
  Colors.pink,
  Colors.brown,
  Colors.black,
  Colors.orange,
  Colors.redAccent,
];

class AppTheme {
  final int selectColor;

  AppTheme({this.selectColor = 0})
      : assert(selectColor >= 0, 'selected color must be greater then 0');
  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorsList[selectColor],);
}
