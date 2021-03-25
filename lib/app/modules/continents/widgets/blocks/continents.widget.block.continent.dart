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
      margin: const EdgeInsets.only(right: 10, top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.all(Radius.circular(40)),
        border: Border.all(
          color: Colors.white,
        ),
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
            'Total de recuperados',
            '${covidContinent.recovered}',
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
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            leading: Icon(
              Icons.place,
            ),
            title: Text(
              'Países:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Wrap(
                children: [
                  ...covidContinent.countries.map((e) => Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(e),
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
