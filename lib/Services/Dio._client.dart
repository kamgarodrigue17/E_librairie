import 'package:dio/dio.dart';

String baseurl = "https://b97a94b55513837fbf13c59db33b3450.serveo.net/";

Dio dio() {
  Dio dio = new Dio();
  dio.options.baseUrl = "https://b97a94b55513837fbf13c59db33b3450.serveo.net/";
  dio.options.headers['content-Type'] = 'application/json';
  dio.options.headers['ngrok-skip-browser-warning'] = "";

  dio.options.connectTimeout = 3000;
  dio.options.receiveTimeout = 5000;
  return dio;
}//#03A9F4
