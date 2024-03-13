import 'dart:convert';

class UserRequestModel {
    final String name;
    final String email;
    final String username;
    final String phone;

    UserRequestModel({
        required this.name,
        required this.email,
        required this.username,
        required this.phone,
    });

    factory UserRequestModel.fromJson(String str) => UserRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserRequestModel.fromMap(Map<String, dynamic> json) => UserRequestModel(
        name: json["name"],
        email: json["email"],
        username: json["username"],
        phone: json["phone"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "username": username,
        "phone": phone,
    };
}
