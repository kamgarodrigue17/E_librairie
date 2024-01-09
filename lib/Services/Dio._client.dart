import 'package:dio/dio.dart';

String baseurl = "https://fdb0eeadf1e18d324a50f6440a7e8c1.serveo.net/";

Dio dio() {
  Dio dio = new Dio();
  dio.options.baseUrl = "https://efdb0eeadf1e18d324a50f6440a7e8c1.serveo.net/";
  dio.options.headers['content-Type'] = 'application/json';
  dio.options.headers['ngrok-skip-browser-warning'] = "";

  dio.options.connectTimeout = 3000;
  dio.options.receiveTimeout = 5000;
  return dio;
}//#03A9F4
