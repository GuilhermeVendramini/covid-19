import 'package:covid_app/app/shared/models/covid/model.covid.continent.dart';
import 'package:covid_app/app/shared/widgets/components/widget.component.labelAndData.dart';
import 'package:covid_app/app/shared/widgets/texts/widget.text.title.dart';
import 'package:flutter/material.dart';

class ContinentsWidgetBlockContinent extends StatelessWidget {
  final ModelCovidContinent covidContinent;
  const ContinentsWidgetBlockContinent(this.covidContinent, {Key key})
      : super(key: key);

  static const divider = SizedBox(
    height: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(right: 20, top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.white,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ],
      ),
      child: ListView(
        children: [
          Center(child: WidgetTextTitle(covidContinent.continent)),
          Divider(),
          divider,
          WidgetComponentLabelAndData(
            'Total de casos',
            '${covidContinent.cases}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Casos ativos',
            '${covidContinent.active}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Total de curados',
            '${covidContinent.recovered}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Curados hoje',
            '${covidContinent.todayRecovered}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Total de mortes',
            '${covidContinent.deaths}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Mortes hoje',
            '${covidContinent.todayDeaths}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'Testes realizados:',
            '${covidContinent.tests}',
          ),
          divider,
          WidgetComponentLabelAndData(
            'População:',
            '${covidContinent.population}',
          ),
          divider,
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            leading: Icon(
              Icons.place,
            ),
            title: Text(
              'Países:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
            children: [
              Wrap(
                children: [
                  ...covidContinent.countries.map((country) => Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/country', arguments: country);
                          },
                          child: Text(country),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
