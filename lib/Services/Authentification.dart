// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:dio/dio.dart' as Dio;
import 'package:elibrairy/model/Token.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import '../model/Article.dart';
import '../model/user.dart';
import '../Services/Dio._client.dart';
import 'package:http_parser/http_parser.dart';

int? IdCurrentUser;
User? CurrentUser;

Future<String> register(User data) async {
  try {
    Dio.Response response = await dio().post(
      "/user/create",
      data: json.encode(data.toJson()),
      options: Dio.Options(
        headers: {'Content-Type': 'application/json'},
        validateStatus: (status) => true,
      ),
    );

    dynamic responseData = json.decode(response.data);
    String serverMessage = responseData["Message"];
    if (response.statusCode == 200) {
      return 'Inscription réussie 🙂️';
    } else {
      return 'serverMessage;';
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de l\'inscription.';
  }
}

Future<String> passwordForget(String email) async {
  try {
    Dio.Response response = await dio().post(
      "/user/generateToken/$email",
      options: Dio.Options(
        headers: {'Content-Type': 'application/json'},
        validateStatus: (status) => true,
      ),
    );

    // dynamic responseData = json.decode(response.data);
    print(response.data);

    // print("Erreur lors de la requête ici");
    if (response.statusCode == 200) {
      print('object');
      return 'SUCESS';
    } else {
      return "sd";
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de la demande de réinitialisation du mot de passe.';
  }
}

Future<String> NumberConfirmation(String token) async {
  try {
    Dio.Response response = await dio().get(
      "/user/verifyToken/$token",
      options: Dio.Options(
        headers: {'Content-Type': 'application/json'},
        validateStatus: (status) => true,
      ),
    );

    // dynamic responseData = json.decode(response.data);
    print(response.data);

    // print("Erreur lors de la requête ici");
    if (response.statusCode == 200) {
      print('object');
      return 'SUCESS';
    } else {
      return "sd";
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de la saisie du code.';
  }
}

Future<String> ConnexionFonction(String token, String password) async {
  try {
    Dio.Response response = await dio().get(
      "/user/$token/$password",
      options: Dio.Options(
        headers: {'Content-Type': 'application/json'},
        validateStatus: (status) => true,
      ),
    );

    // dynamic responseData = json.decode(response.data);
    print(response.data);

    // print("Erreur lors de la requête ici");
    if (response.statusCode == 200) {
      print(response.data["id"]);
      IdCurrentUser = response.data["id"];
      // CurrentUser = response.data as User?;

      CurrentUser = User.fromJson(response.data);

      print('object');
      return 'SUCESS';
    } else {
      return "erreur ";
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de la saisie du code.';
  }
}
/*
Future<String> AddArticle(String nom, String description, File image) async {
  try {
    // Convertir le contenu du fichier en bytes
    List<int> imageBytes = await image.readAsBytes();

    // Convertir les bytes en base64
    String base64Image = base64Encode(imageBytes);

    Dio.Response response = await dio().post(
      "/articles/create",
      data: {
        'nom': nom,
        'description': description,
        'image': base64Image,
      },
      options: Dio.Options(
        headers: {'Content-Type': 'application/json'},
        validateStatus: (status) => true,
      ),
    );

    // dynamic responseData = json.decode(response.data);
    print(response.data);

    // print("Erreur lors de la requête ici");
    if (response.statusCode == 200) {
      print(response.data["id"]);
      IdCurrentUser = response.data["id"];
      // CurrentUser = response.data as User?;

      CurrentUser = User.fromJson(response.data);

      print('object');
      return 'SUCESS';
    } else {
      return "erreur ";
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de la saisie du code.';
  }
}
*/

Future<String> AddArticle(String nom, String description, File image) async {
  try {
    // Créer un objet FormData
    Dio.FormData formData = Dio.FormData.fromMap({
      'nom': nom,
      'description': description,
      'photo': await Dio.MultipartFile.fromFile(
        image.path,
        contentType: MediaType('image',
            'png'), // Remplacez 'png' par le type correct si nécessaire
      ),
    });

    Dio.Response response = await dio().post(
      "/articles/create",
      data: formData,
      options: Dio.Options(
        headers: {'Content-Type': 'multipart/form-data'},
        validateStatus: (status) => true,
      ),
    );

    print(response.data);

    if (response.statusCode == 200) {
      print(response.data["id"]);
      IdCurrentUser = response.data["id"];
      CurrentUser = User.fromJson(response.data);
      print('object');
      return 'SUCESS';
    } else {
      return "erreur ";
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de la saisie du code.';
  }
}

Future<String> AllArticle() async {
  try {
    Dio.Response response = await dio().get(
      "/articles/all",
      options: Dio.Options(
        headers: {'Content-Type': 'application/json'},
        validateStatus: (status) => true,
      ),
    );

    if (response.statusCode == 200) {
      List<dynamic> articlesData = response.data;
      List<Article> articles =
          articlesData.map((json) => Article.fromJson(json)).toList();

      // Maintenant, 'articles' contient la liste complète des articles
      // Vous pouvez faire ce que vous voulez avec cette liste
      print('SUCCESS all Articles');
      return 'SUCCESS all Articles';
    } else {
      return "erreur ";
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    // Ajoutez une déclaration de retour ici pour résoudre l'erreur
    return 'Erreur lors de la requête: $error';
  }
}
