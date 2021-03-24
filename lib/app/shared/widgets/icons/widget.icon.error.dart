import 'package:flutter/material.dart';

class WidgetIconError extends StatelessWidget {
  const WidgetIconError({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.error,
        size: 40.0,
        color: Colors.grey,
      ),
    );
  }
}