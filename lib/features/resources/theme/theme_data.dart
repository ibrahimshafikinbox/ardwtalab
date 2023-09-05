import 'package:ardwtalab/features/resources/colors/colors.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.red[800],
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.red[800],
      selectedItemColor: Colors.red[800],
      unselectedItemColor: Colors.blue,
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.defaultColor, centerTitle: true),
  );
}
