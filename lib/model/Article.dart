import 'package:elibrairy/model/ArticleState.dart';

class Article {
  int? id;
  String? nom;
  String? photo;
  String? description;
  String? number;
  ArticleState? state;

  Article({
    required this.id,
    required this.nom,
    required this.photo,
    required this.number,
    required this.description,
    required this.state,
  });

  dynamic toJson() => {
        "id": id,
        "nom": nom,
        "photo": photo,
        "number": number,
        "description": description,
        "state": state?.toString(), // Convert ArticleState to String
      };

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        nom: json["nom"],
        photo: json["photo"],
        number: json["number"],
        description: json["description"],
        state: ArticleState.values
            .firstWhere((e) => e.toString() == json["state"]),
      );
}
