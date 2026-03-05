import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


final selectedColorProvider = StateProvider((ref)=>0);
final isDarkModeProvider = StateProvider((ref)=>false);
//Listado de colores inmutables 
final colorListProvider=Provider((ref)=>colorList);