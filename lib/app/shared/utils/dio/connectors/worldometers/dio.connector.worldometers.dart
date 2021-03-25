import 'package:covid_app/app/shared/utils/dio/dio.connector.dart';
import 'package:covid_app/env.dart';

class DioConnectorWorldometersInstance {
  DioConnectorWorldometersInstance._();

  static final DioConnector dioConnector = DioConnector(Env.NOVEL_URL);
}