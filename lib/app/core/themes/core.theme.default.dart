import 'package:flutter/material.dart';

class CoreThemeDefault {
  CoreThemeDefault._();

  static ThemeData themeData = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.light,
    primaryColor: Colors.blueGrey,
    accentColor: Colors.blueGrey,
    disabledColor: Colors.grey,
    unselectedWidgetColor: Colors.white,
    dividerColor: Colors.white,
    indicatorColor: Colors.blueGrey,
    buttonColor: Colors.blueGrey,
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
    appBarTheme: AppBarTheme(
      color: Colors.blueGrey,
      centerTitle: true,
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.blueGrey,
      unselectedLabelColor: Colors.grey,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blueGrey,
    ),
  );
}
