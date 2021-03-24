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
      ),
    );
  }
}
