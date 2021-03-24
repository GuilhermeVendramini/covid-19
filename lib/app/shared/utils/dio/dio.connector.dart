import 'package:dio/dio.dart';

class DioConnector {
  final String url;
  final int connectTimeout;
  final int receiveTimeout;
  final int validateStatus;

  DioConnector(
    this.url, {
    this.connectTimeout = 10000,
    this.receiveTimeout = 10000,
    this.validateStatus = 300,
  }) {
    _initializeDio();
  }

  Dio dio;

  void _initializeDio() {
    BaseOptions options = BaseOptions(
      baseUrl: url,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      validateStatus: (status) {
        return status <= validateStatus;
      },
    );
    dio = Dio(options);
  }
}
