import 'package:dio/dio.dart' as Dio;

import 'package:elibrairy/Services/Dio._client.dart';
import 'package:elibrairy/model/Annonce.dart';
import 'package:elibrairy/model/user.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class AnnonceService extends ChangeNotifier {
  List<Annonce> _annonces = [];
  List<Annonce> get annonces => _annonces;

  Future getUser(userid) async {
    print(userid);

    SharedPreferences pref = await SharedPreferences.getInstance();

    Dio.Response response =
        await dio().get("annonces/findbyNotUserId/${userid}");
    //print(response.data);
    _annonces = decodeAnnonce(response.data);
    annonces.forEach((element) {
      print(element.article);
    });

    notifyListeners();
    return response.data;
  }

  List<Annonce> decodeAnnonce(responseBody) {
    final parsed = responseBody;
    return parsed.map<Annonce>((json) => Annonce.fromJson(json)).toList();
  }

  Future register(
    data,
  ) async {
    Dio.FormData user = Dio.FormData.fromMap({
      "nom": data.nom,
      "photo": await Dio.MultipartFile.fromFile(data.photo!),
      "description": data.description,
      "titre": data.titre,
      "localisation": data.localisation,
      "iduser": data.iduser,
    });

    Dio.Response response = await dio().post("api/user/register", data: user);

    print(json.decode(response.toString())["Message"]);

    print(response);

    return json.decode(response.toString())["Message"];
  }
}
