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
        PageController(viewportFraction: 0.94);

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.70,
      child: PageView.builder(
        controller: pageController,
        itemCount: covidContinents.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey[200],
            ),
            child: ContinentsWidgetBlockContinent(covidContinents[index]),
          );
        },
      ),
    );
  }
}
