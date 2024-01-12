import 'package:dio/dio.dart';

String baseurl = "https://f183f307d7992e4a4a8e8851e7ae7482.serveo.net/";

Dio dio() {
  Dio dio = new Dio();
  dio.options.baseUrl = "https://f183f307d7992e4a4a8e8851e7ae7482.serveo.net/";
  dio.options.headers['content-Type'] = 'application/json';
  dio.options.headers['ngrok-skip-browser-warning'] = "";

  dio.options.connectTimeout = 3000;
  dio.options.receiveTimeout = 5000;
  return dio;
}//#03A9F4
