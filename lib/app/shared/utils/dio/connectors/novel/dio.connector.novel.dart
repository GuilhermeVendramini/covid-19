import 'package:covid_app/app/shared/utils/dio/dio.connector.dart';
import 'package:covid_app/env.dart';

class DioConnectorNovelInstance {
  DioConnectorNovelInstance._();

  static final DioConnector dioConnector = DioConnector(Env.NOVEL_URL);
}