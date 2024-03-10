import 'dart:convert';

class ProductResponseModel {
    final int code;
    final bool success;
    final String message;
    final List<Product> data;

    ProductResponseModel({
        required this.code,
        required this.success,
        required this.message,
        required this.data,
    });

    factory ProductResponseModel.fromJson(String str) => ProductResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProductResponseModel.fromMap(Map<String, dynamic> json) => ProductResponseModel(
        code: json["code"],
        success: json["success"],
        message: json["message"],
        data: List<Product>.from(json["data"].map((x) => Product.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "success": success,
        "message": message,
        "data": List<Product>.from(data.map((x) => x.toMap())),
    };
}

class Product {
    final int id;
    final String name;
    final int price;
    final String description;
    final String tags;
    final int categoriesId;
    final String createdAt;
    final String updatedAt;
    final Category category;
    final List<Gallery> galleries;

    Product({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.tags,
        required this.categoriesId,
        required this.createdAt,
        required this.updatedAt,
        required this.category,
        required this.galleries,
    });

    factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        tags: json["tags"],
        categoriesId: json["categories_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        category: Category.fromMap(json["category"]),
        galleries: List<Gallery>.from(json["galleries"].map((x) => Gallery.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "tags": tags,
        "categories_id": categoriesId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "category": category.toMap(),
        "galleries": List<dynamic>.from(galleries.map((x) => x.toMap())),
    };
}

class Category {
    final int id;
    final String name;
    final String createdAt;
    final String updatedAt;

    Category({
        required this.id,
        required this.name,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Category.fromMap(Map<String, dynamic> json) => Category(
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

class Gallery {
    final int id;
    final int productId;
    final String imageUrl;
    final String createdAt;
    final String updatedAt;

    Gallery({
        required this.id,
        required this.productId,
        required this.imageUrl,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Gallery.fromJson(String str) => Gallery.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Gallery.fromMap(Map<String, dynamic> json) => Gallery(
        id: json["id"],
        productId: json["product_id"],
        imageUrl: json["image_url"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "product_id": productId,
        "image_url": imageUrl,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };
}
