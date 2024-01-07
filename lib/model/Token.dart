class Token {
  int? id;
  String? token;
  int? user_id;
  DateTime? createdDate;
  int? EXPIRATION;
  Token(
      {required this.id,
      required this.token,
      this.user_id,
      this.createdDate,
      this.EXPIRATION});
  dynamic toJson() => {
        "id": id,
        "token": token,
        "createdDate": createdDate,
        "EXPIRATION": EXPIRATION,
        "user_id": user_id,
      };
  factory Token.fromJson(Map<String, dynamic> json) => Token(
        id: json["id"],
        token: json["token"],
        createdDate: json["createdDate"],
        EXPIRATION: json["EXPIRATION"],
        user_id: json["user_id"],
      );
}
