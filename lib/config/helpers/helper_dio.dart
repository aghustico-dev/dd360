import 'package:dio/dio.dart';

Dio getOptions() {
  Dio dio = Dio();
  // dio.options.headers['content-Type'] = ApiEndPoint.contentType;
  // dio.options.headers['Autenticacion'] = ApiEndPoint.apiKey;
  return dio;
}