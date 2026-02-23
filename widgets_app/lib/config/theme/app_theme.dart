import 'package:flutter/material.dart';
const colorList =<Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.brown,
  Colors.cyan,
]; 
class AppTheme {
  final int selectedColor;
  AppTheme({ this.selectedColor=0}):assert(selectedColor>=0,'el color tiene que ser mayor a 0')
  ,assert(selectedColor<colorList.length,'el color tiene que ser menor a ${colorList.length}');

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: AppBarTheme(
        centerTitle: true,
      ),
    );
  }
}
