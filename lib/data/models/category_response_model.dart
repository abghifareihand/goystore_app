import 'dart:convert';

class CategoryResponseModel {
    final int code;
    final bool success;
    final String message;
    final List<Datum> data;

    CategoryResponseModel({
        required this.code,
        required this.success,
        required this.message,
        required this.data,
    });

    factory CategoryResponseModel.fromJson(String str) => CategoryResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CategoryResponseModel.fromMap(Map<String, dynamic> json) => CategoryResponseModel(
        code: json["code"],
        success: json["success"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
    };
}

class Datum {
    final int id;
    final String name;
    final String createdAt;
    final String updatedAt;

    Datum({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
