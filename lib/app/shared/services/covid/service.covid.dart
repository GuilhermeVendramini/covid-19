import 'package:covid_app/app/shared/models/covid/model.covid.continent.dart';
import 'package:covid_app/app/shared/repositories/novel/repository.novel.covid.dart';
import 'package:dio/dio.dart';

class ServiceCovid {
  final _repositoryNovelCovid = RepositoryNovelCovidInstance.repository;

  Future<List<ModelCovidContinent>> getAllContinents() async {
    try {
      List<ModelCovidContinent> covidContinents = [];
      Response result = await _repositoryNovelCovid.getAllContinents();

      if (result.statusCode != 200) return [];

      final List<dynamic> resultData = result.data;

      covidContinents =
          resultData.map((e) => ModelCovidContinent.fromJson(e)).toList();

      return covidContinents;
    } catch (e) {
      throw e;
    }
  }
}
