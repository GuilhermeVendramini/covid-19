import 'package:covid_app/app/core/themes/core.theme.default.dart';
import 'package:covid_app/app/core/widgets/pages/core.widget.page.notFound.dart';
import 'package:covid_app/app/modules/continents/continents.module.dart';
import 'package:covid_app/app/modules/country/country.module.dart';
import 'package:flutter/material.dart';

class CoreApp extends StatelessWidget {
  const CoreApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: Key('MaterialApp'),
      title: 'Covid',
      initialRoute: '/',
      theme: CoreThemeDefault.themeData,
      routes: {
        '/': (context) => ContinentsModule(),
        '/country': (context) => CountryModule(),
      },
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute(
          builder: (context) => CoreWidgetPageNotFound(),
        );
      },
    );
  }
}
