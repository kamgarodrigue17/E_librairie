import 'package:dio/dio.dart';

String baseurl = "http://192.168.1.144:8081/";

Dio dio() {
  Dio dio = new Dio();
  dio.options.baseUrl = "http://192.168.1.144:8081/";
  dio.options.headers['content-Type'] = 'application/json';
  dio.options.headers['ngrok-skip-browser-warning'] = "";

  dio.options.connectTimeout = Duration(milliseconds: 3000);
  dio.options.receiveTimeout = Duration(milliseconds: 26000);
  return dio;
}//#03A9F4
