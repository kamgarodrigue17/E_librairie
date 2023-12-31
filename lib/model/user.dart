class User {
  int? id;
  String? userName;
  String? email;
  String? password;
  String? number;
  String? localisation;
  User(
      {required this.id,
      required this.userName,
      required this.email,
      required this.number,
      required this.password,
      required this.localisation});
  dynamic toJson() => {
        "id": id,
        "userName": userName,
        "email": email,
        "number": number,
        "password": password,
        "localisation": localisation,
      };
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userName: json["userName"],
        email: json["email"],
        number: json["number"],
        password: json["password"],
        localisation: json["localisation"],
      );
}
