import 'package:covid_app/app/shared/utils/dio/connectors/worldometers/dio.connector.worldometers.dart';
import 'package:dio/dio.dart';

class RepositoryWorldometersCovidInstance {
  RepositoryWorldometersCovidInstance._();

  static final _RepositoryWorldometersCovidInstance repository =
      _RepositoryWorldometersCovidInstance();
}

class _RepositoryWorldometersCovidInstance {
  final Dio _dio = DioConnectorWorldometersInstance.dioConnector.dio;

  Future<Response> getAllContinents() async {
    try {
      Response _response = await _dio.get(
        '/v3/covid-19/continents',
        queryParameters: {'yesterday': true},
        options: Options(
          contentType: 'application/ld+json;',
        ),
      );

      return _response;
    } catch (e) {
      throw e;
    }
  }

  Future<Response> getSpecificCountry(String country) async {
    try {
      Response _response = await _dio.get(
        '/v3/covid-19/countries/$country',
        queryParameters: {'yesterday': true, 'strict': true},
        options: Options(
          contentType: 'application/ld+json;',
        ),
      );

      return _response;
    } catch (e) {
      throw e;
    }
  }
}
