import 'package:covid_app/app/modules/continents/widgets/blocks/continents.widget.block.continent.dart';
import 'package:covid_app/app/shared/models/covid/model.covid.continent.dart';
import 'package:flutter/material.dart';

class ContinentsWidgetListCovid extends StatelessWidget {
  final List<ModelCovidContinent> covidContinents;

  const ContinentsWidgetListCovid(this.covidContinents, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController =
        PageController(viewportFraction: 0.86);

    return PageView.builder(
      controller: pageController,
      itemCount: covidContinents.length,
      itemBuilder: (context, index) {
        return ContinentsWidgetBlockContinent(covidContinents[index]);
      },
    );
  }
}
