import 'package:covid_app/app/shared/models/covid/model.covid.continent.dart';
import 'package:covid_app/app/shared/models/covid/model.covid.country.dart';
import 'package:covid_app/app/shared/repositories/worldometers/repository.worldometers.covid.dart';

import 'package:dio/dio.dart';

class ServiceCovid {
  final _repositoryWorldometersCovid = RepositoryWorldometersCovidInstance.repository;

  Future<List<ModelCovidContinent>> getAllContinents() async {
    try {
      List<ModelCovidContinent> covidContinents = [];
      Response result = await _repositoryWorldometersCovid.getAllContinents();

      if (result.statusCode != 200) return [];

      final List<dynamic> resultData = result.data;

      covidContinents =
          resultData.map((e) => ModelCovidContinent.fromJson(e)).toList();

      return covidContinents;
    } catch (e) {
      throw e;
    }
  }

  Future<ModelCovidCountry> getSpecificCountry(String country) async {
    try {
      ModelCovidCountry covidCountry = ModelCovidCountry();
      Response result = await _repositoryWorldometersCovid.getSpecificCountry(country);

      if (result.statusCode != 200) return covidCountry;

      covidCountry = ModelCovidCountry.fromJson(result.data);

      return covidCountry;
    } catch (e) {
      throw e;
    }
  }
}
