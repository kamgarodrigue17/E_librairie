class Article {
  int? id;
  String? nom;
  String? photo;
  String? description;

  Article(
      {required this.id,
      required this.nom,
      required this.photo,
      required this.description});
  dynamic toJson() => {
        "id": id,
        "nom": nom,
        "photo": photo,
        "description": description,
      };
  factory Article.fromJson(Map<String, dynamic> json) => Article(
        id: json["id"],
        nom: json["nom"],
        photo: json["photo"],
        description: json["description"],
      );
}
