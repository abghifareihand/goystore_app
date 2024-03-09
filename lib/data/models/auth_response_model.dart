import 'dart:convert';

class AuthResponseModel {
    final int code;
    final bool success;
    final String message;
    final Data data;

    AuthResponseModel({
        required this.code,
        required this.success,
        required this.message,
        required this.data,
    });

    factory AuthResponseModel.fromJson(String str) => AuthResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthResponseModel.fromMap(Map<String, dynamic> json) => AuthResponseModel(
        code: json["code"],
        success: json["success"],
        message: json["message"],
        data: Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "success": success,
        "message": message,
        "data": data.toMap(),
    };
}

class Data {
    final String accessToken;
    final String tokenType;
    final User user;

    Data({
        required this.accessToken,
        required this.tokenType,
        required this.user,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        user: User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "user": user.toMap(),
    };
}

class User {
    final int id;
    final String name;
    final String email;
    final String username;
    final String phone;
    final String roles;
    final String profilePhotoPath;
    final String createdAt;
    final String updatedAt;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.username,
        required this.phone,
        required this.roles,
        required this.profilePhotoPath,
        required this.createdAt,
        required this.updatedAt,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"] ?? '',
        email: json["email"] ?? '',
        username: json["username"] ?? '',
        phone: json["phone"] ?? '',
        roles: json["roles"] ?? '',
        profilePhotoPath: json["profile_photo_path"] ?? '',
        createdAt: json["created_at"] ?? '',
        updatedAt: json["updated_at"] ?? '',
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "username": username,
        "phone": phone,
        "roles": roles,
        "profile_photo_path": profilePhotoPath,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
