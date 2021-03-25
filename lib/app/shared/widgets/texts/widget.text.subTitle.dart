import 'package:flutter/material.dart';

class WidgetTextSubTitle extends StatelessWidget {
  final String text;
  const WidgetTextSubTitle(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }
}
