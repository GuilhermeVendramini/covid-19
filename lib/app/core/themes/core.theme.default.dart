import 'package:flutter/material.dart';

class CoreThemeDefault {
  CoreThemeDefault._();

  static const _defaultTextStyle = TextStyle(
    color: Colors.white,
  );

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
    textTheme: TextTheme(
      subtitle1: _defaultTextStyle,
      subtitle2: _defaultTextStyle,
      overline: _defaultTextStyle,
      headline1: _defaultTextStyle,
      headline2: _defaultTextStyle,
      headline3: _defaultTextStyle,
      headline4: _defaultTextStyle,
      headline5: _defaultTextStyle,
      headline6: _defaultTextStyle,
      bodyText1: _defaultTextStyle,
      bodyText2: _defaultTextStyle,
      caption: _defaultTextStyle,
      
    ),
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
