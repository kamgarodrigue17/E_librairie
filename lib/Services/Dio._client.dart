import 'package:dio/dio.dart';

String baseurl = "https://b6c0f118eebeeb99902c85d55403c820.serveo.net/";

Dio dio() {
  Dio dio = new Dio();
  dio.options.baseUrl = "https://b6c0f118eebeeb99902c85d55403c820.serveo.net/";
  dio.options.headers['content-Type'] = 'application/json';
  dio.options.headers['ngrok-skip-browser-warning'] = "";

  dio.options.connectTimeout = 3000;
  dio.options.receiveTimeout = 5000;
  return dio;
}//#03A9F4
