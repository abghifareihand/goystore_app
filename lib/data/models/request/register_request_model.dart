import 'dart:convert';

class RegisterRequestModel {
    final String name;
    final String username;
    final String email;
    final String phone;
    final String password;

    RegisterRequestModel({
        required this.name,
        required this.username,
        required this.email,
        required this.phone,
        required this.password,
    });

    factory RegisterRequestModel.fromJson(String str) => RegisterRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory RegisterRequestModel.fromMap(Map<String, dynamic> json) => RegisterRequestModel(
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "username": username,
        "email": email,
        "phone": phone,
        "password": password,
    };
}
