import 'package:flutter/material.dart';

class WidgetTextLabel extends StatelessWidget {
  final String text;

  const WidgetTextLabel(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        shadows: <Shadow>[
          Shadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 2.0,
            color: Colors.black26,
          ),
        ],
      ),
    );
  }
}
