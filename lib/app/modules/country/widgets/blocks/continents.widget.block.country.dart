import 'package:covid_app/app/shared/models/covid/model.covid.country.dart';
import 'package:covid_app/app/shared/widgets/components/widget.component.labelAndData.dart';
import 'package:covid_app/app/shared/widgets/texts/widget.text.title.dart';
import 'package:flutter/material.dart';

class ContinentsWidgetBlockCountry extends StatelessWidget {
  final ModelCovidCountry covidCountry;
  const ContinentsWidgetBlockCountry(this.covidCountry, {Key key})
      : super(key: key);

  static const divider = SizedBox(
    height: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.network(
            covidCountry.countryInfo.flag,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return CircularProgressIndicator();
            },
          ),
          divider,
          Center(child: WidgetTextTitle(covidCountry.country)),
          Divider(),
          divider,
          WidgetComponentLabelAndData(
            'Total de casos',
            '${covidCountry.cases}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Casos ativos',
            '${covidCountry.active}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Total de curados',
            '${covidCountry.recovered}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Curados hoje',
            '${covidCountry.todayRecovered}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Total de mortes',
            '${covidCountry.deaths}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Mortes hoje',
            '${covidCountry.todayDeaths}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Testes realizados:',
            '${covidCountry.tests}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'População:',
            '${covidCountry.population}',
          ),
        ],
      ),
    );
  }
}
