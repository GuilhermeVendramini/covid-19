class ModelCovidContinent {
  int updated;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  double casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  String continent;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;
  List<String> countries;

  ModelCovidContinent(
      {this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.continent,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.countries});

  ModelCovidContinent.fromJson(Map<String, dynamic> json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = double.tryParse(json['casesPerOneMillion'].toString());
    deathsPerOneMillion =
        double.tryParse(json['deathsPerOneMillion'].toString());
    tests = json['tests'];
    testsPerOneMillion = double.tryParse(json['testsPerOneMillion'].toString());
    population = json['population'];
    continent = json['continent'];
    activePerOneMillion =
        double.tryParse(json['activePerOneMillion'].toString());
    recoveredPerOneMillion =
        double.tryParse(json['recoveredPerOneMillion'].toString());
    criticalPerOneMillion =
        double.tryParse(json['criticalPerOneMillion'].toString());
    countries = json['countries'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = this.updated;
    data['cases'] = this.cases;
    data['todayCases'] = this.todayCases;
    data['deaths'] = this.deaths;
    data['todayDeaths'] = this.todayDeaths;
    data['recovered'] = this.recovered;
    data['todayRecovered'] = this.todayRecovered;
    data['active'] = this.active;
    data['critical'] = this.critical;
    data['casesPerOneMillion'] = this.casesPerOneMillion;
    data['deathsPerOneMillion'] = this.deathsPerOneMillion;
    data['tests'] = this.tests;
    data['testsPerOneMillion'] = this.testsPerOneMillion;
    data['population'] = this.population;
    data['continent'] = this.continent;
    data['activePerOneMillion'] = this.activePerOneMillion;
    data['recoveredPerOneMillion'] = this.recoveredPerOneMillion;
    data['criticalPerOneMillion'] = this.criticalPerOneMillion;
    data['countries'] = this.countries;
    return data;
  }
}
