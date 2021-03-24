import 'package:flutter/material.dart';

class WidgetTextLabel extends StatelessWidget {
  final String text;

  const WidgetTextLabel(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
