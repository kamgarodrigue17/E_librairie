import 'package:dio/dio.dart';

String baseurl = "https://e21902df92cc0748e0145d0079b1e76c.serveo.net/";

Dio dio() {
  Dio dio = new Dio();
  dio.options.baseUrl = "https://e21902df92cc0748e0145d0079b1e76c.serveo.net/";
  dio.options.headers['content-Type'] = 'application/json';
  dio.options.headers['ngrok-skip-browser-warning'] = "";

  dio.options.connectTimeout = Duration(milliseconds: 3000);
  dio.options.receiveTimeout = Duration(milliseconds: 5000);
  return dio;
}//#03A9F4
