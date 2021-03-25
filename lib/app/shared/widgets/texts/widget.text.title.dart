import 'package:flutter/material.dart';

class WidgetTextTitle extends StatelessWidget {
  final String text;
  const WidgetTextTitle(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(2.0, 2.0),
            blurRadius: 2.0,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
