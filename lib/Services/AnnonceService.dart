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
  List<Annonce> _annoncesh = [];
  List<Annonce> get annoncesh => _annonces;

  Future retouver(idarticle) async {
    Dio.Response response = await dio().get("article/retrouve/${idarticle}");
    notifyListeners();
    return response.data;
  }

  Future supretouver(idarticle, iduser) async {
    Dio.Response response =
        await dio().get("article/supposeTrouve/${idarticle}/$iduser");
    notifyListeners();
    return response.data;
  }

  Future geth(userid) async {
    print(userid);

    SharedPreferences pref = await SharedPreferences.getInstance();

    Dio.Response response = await dio().get("annonces/findbyUserId/${userid}");
    //print(response.data);
    _annoncesh = decodeAnnonce(response.data);
    annoncesh.forEach((element) {
      print(element.article);
    });

    notifyListeners();
    return response.data;
  }

  Future get(userid) async {
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
    print(data);
    Dio.FormData user = Dio.FormData.fromMap({
      "nom": data["nom"],
      "photo": await Dio.MultipartFile.fromFile(data["photo"]),
      "description": data["description"],
      "titre": data["titre"],
      "localisation": data["localisation"],
      "idUser": data["idUser"],
      "date": data["date"],
    });

    Dio.Response response =
        await dio().post("annonces/createWithArticle", data: user);

    print(json.decode(response.toString())["Message"]);

    print(response);

    return json.decode(response.toString())["Message"];
  }
}
