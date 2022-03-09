import 'package:flutter/material.dart';
class MyTheme {
  Brightness brightness;
  MaterialColor primarySwatch;
  Color accentColor;
  MyTheme(
    this.brightness,
    this.primarySwatch,
    this.accentColor,
  );
}
class AppTheme {
  String name;
  MyTheme theme;
  AppTheme(this.name, this.theme);
}
List<AppTheme> myThemes = [
  AppTheme(
    'Amber',
    MyTheme(
       Brightness.light,
      Colors.amber,
      Colors.amber,
    ),
  ),
  AppTheme(
    'Blue',
    MyTheme(
     Brightness.light,
      Colors.blue,
       Colors.blue,
    ),
  ),
  AppTheme(
    'Teal',
    MyTheme(
      Brightness.light,
      Colors.teal,
      Colors.teal,
    ),
  ),
  AppTheme(
    'Orange',
    MyTheme(
     Brightness.light,
      Colors.orange,
     Colors.orange,
    ),
  ),
  AppTheme(
    'Dark',
    MyTheme(
      Brightness.dark,
      Colors.blueGrey,
     Colors.blueGrey,
    ),
  ),
];