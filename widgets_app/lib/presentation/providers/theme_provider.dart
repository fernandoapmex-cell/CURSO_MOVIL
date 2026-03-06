import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


final selectedColorProvider = StateProvider((ref)=>0);
final isDarkModeProvider = StateProvider((ref)=>false);
//Listado de colores inmutables 
final colorListProvider=Provider((ref)=>colorList);
//objeto de tipo appTheme (custom)
final themeNotifierProvider=StateNotifierProvider((ref)=>ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme>{
  ThemeNotifier():super(AppTheme());
  void toggleDarkMode(){
    state=state.copyWith(isDarkMode: !state.isDarkMode);
  }
  void changeColorIndex(int colorIndex){
    state=state.copyWith(selectedColor: colorIndex);
  }
}
