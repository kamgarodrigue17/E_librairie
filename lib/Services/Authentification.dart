import 'package:dio/dio.dart' as Dio;
import 'package:flutter/material.dart';
import 'dart:convert';

import '../model/user.dart';
import '../Services/Dio._client.dart';

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

    // Examinez la réponse du serveur et assurez-vous qu'elle a le format attendu
    dynamic responseData = json.decode(response.data);

// Assurez-vous que responseData est bien de type Map<String, dynamic>
    if (responseData is Map<String, dynamic> &&
        responseData.containsKey("Message")) {
      String serverMessage = responseData["Message"];
      return serverMessage == 'Inscription réussie'
          ? 'Inscription réussie'
          : 'Une erreur s\'est produite lors de l\'inscription.';
    } else {
      return 'La réponse du serveur n\'a pas le format attendu.';
    }
  } catch (error) {
    print('Erreur lors de la requête: $error');
    return 'Une erreur s\'est produite lors de l\'inscription.';
  }
}
