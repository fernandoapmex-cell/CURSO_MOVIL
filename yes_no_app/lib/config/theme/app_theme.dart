import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColorTheme;
  AppTheme({this.selectedColorTheme = 0})
    : assert(
        selectedColorTheme >= 0 && selectedColorTheme < _colorThemes.length,
        'selectedColorTheme must be between 0 and ${_colorThemes.length - 1}',
      );
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColorTheme],
    );
  }
}
