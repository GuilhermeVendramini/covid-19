import 'package:flutter/material.dart';

import 'widgets/blocks/continents.widget.block.main.dart';

class ContinentsPage extends StatelessWidget {
  const ContinentsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('COVID 19'),
        ),
        body: ContinentsWidgetBlockMain(),
      ),
    );
  }
}
