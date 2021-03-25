import 'package:flutter/material.dart';

import 'widgets/blocks/country.widget.block.main.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
          title: const Text('COVID 19'),
        ),
        body: CountryWidgetBlockMain(),
      ),
    );
  }
}
