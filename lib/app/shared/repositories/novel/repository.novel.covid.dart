import 'package:covid_app/app/shared/utils/dio/connectors/novel/dio.connector.novel.dart';
import 'package:dio/dio.dart';

class RepositoryNovelCovidInstance {
  RepositoryNovelCovidInstance._();

  static final _RepositoryNovelCovidInstance repository =
      _RepositoryNovelCovidInstance();
}

class _RepositoryNovelCovidInstance {
  final Dio _dio = DioConnectorNovelInstance.dioConnector.dio;

  Future<Response> getAllContinents() async {
    try {
      Response _response = await _dio.get(
        '/v2/continents',
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
}
