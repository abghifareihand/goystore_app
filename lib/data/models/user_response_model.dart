import 'dart:convert';

class UserResponseModel {
  final int code;
  final bool success;
  final String message;
  final Data data;

  UserResponseModel({
    required this.code,
    required this.success,
    required this.message,
    required this.data,
  });

  factory UserResponseModel.fromJson(String str) =>
      UserResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserResponseModel.fromMap(Map<String, dynamic> json) =>
      UserResponseModel(
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
  final int id;
  final String name;
  final String email;
  final String username;
  final String phone;
  final String roles;
  final String profilePhotoPath;
  final String createdAt;
  final String updatedAt;

  Data({
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

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        username: json["username"],
        phone: json["phone"],
        roles: json["roles"],
        profilePhotoPath: json["profile_photo_path"] ?? '',
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
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
