import 'package:flutter/material.dart';

class CoreWidgetPageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página não encontrada'),
      ),
      body: Center(
        child: Text(
          'A página solicitada não foi encontrada.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}