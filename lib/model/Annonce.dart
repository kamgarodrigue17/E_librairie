import 'package:elibrairy/model/Article.dart';

class Annonce {
  int? id;
  String? titre;
  String? localisation;
  String? date;
  int? idArticle;
  int? idUser;
  Article article;

  Annonce(
      {required this.id,
      required this.date,
      required this.article,
      required this.idArticle,
      required this.idUser,
      required this.localisation,
      required this.titre});
  dynamic toJson() => {
        "id": id,
        "titre": titre,
        "localisation": localisation,
        "date": date ?? "",
        "idArticle": idArticle,
        "idUser": idUser,
        "article": this.article.toJson()
      };
  factory Annonce.fromJson(Map<String, dynamic> json) => Annonce(
      id: json["id"],
      titre: json["titre"],
      localisation: json["localisation"],
      date: json["date"] ?? "",
      idArticle: json["idArticle"],
      idUser: json["idUser"],
      article: Article.fromJson(json["article"]));
}
