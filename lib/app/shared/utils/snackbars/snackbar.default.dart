import 'package:flutter/material.dart';

class SnackBarDefault {
  SnackBarDefault._();

  static buildSnackBar({
    @required BuildContext context,
    int seconds = 5,
    @required String content,
    Color backgroundColor = Colors.white,
    Color contentColor = Colors.black,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        key: Key('SnackBarDefault'),
        backgroundColor: backgroundColor,
        content: Text(
          content,
          style: TextStyle(
            color: contentColor,
            fontSize: 16.0,
          ),
        ),
        duration: Duration(seconds: seconds),
      ),
    );
  }
}
