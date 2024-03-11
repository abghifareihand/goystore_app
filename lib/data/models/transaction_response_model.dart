import 'dart:convert';

class TransactionResponseModel {
    final int code;
    final bool success;
    final String message;
    final List<Transaction> data;

    TransactionResponseModel({
        required this.code,
        required this.success,
        required this.message,
        required this.data,
    });

    factory TransactionResponseModel.fromJson(String str) => TransactionResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TransactionResponseModel.fromMap(Map<String, dynamic> json) => TransactionResponseModel(
        code: json["code"],
        success: json["success"],
        message: json["message"],
        data: List<Transaction>.from(json["data"].map((x) => Transaction.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "code": code,
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
    };
}

class Transaction {
    final int id;
    final int userId;
    final String transactionNumber;
    final String address;
    final int totalPrice;
    final String paymentStatus;
    final String paymentUrl;
    final String createdAt;
    final String updatedAt;
    final List<Item> items;

    Transaction({
        required this.id,
        required this.userId,
        required this.transactionNumber,
        required this.address,
        required this.totalPrice,
        required this.paymentStatus,
        required this.paymentUrl,
        required this.createdAt,
        required this.updatedAt,
        required this.items,
    });

    factory Transaction.fromJson(String str) => Transaction.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Transaction.fromMap(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        userId: json["user_id"],
        transactionNumber: json["transaction_number"],
        address: json["address"],
        totalPrice: json["total_price"],
        paymentStatus: json["payment_status"],
        paymentUrl: json["payment_url"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "transaction_number": transactionNumber,
        "address": address,
        "total_price": totalPrice,
        "payment_status": paymentStatus,
        "payment_url": paymentUrl,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
    };
}

class Item {
    final int id;
    final int userId;
    final int productId;
    final int transactionId;
    final int quantity;
    final String createdAt;
    final String updatedAt;
    final Product product;

    Item({
        required this.id,
        required this.userId,
        required this.productId,
        required this.transactionId,
        required this.quantity,
        required this.createdAt,
        required this.updatedAt,
        required this.product,
    });

    factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["id"],
        userId: json["user_id"],
        productId: json["product_id"],
        transactionId: json["transaction_id"],
        quantity: json["quantity"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        product: Product.fromMap(json["product"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "product_id": productId,
        "transaction_id": transactionId,
        "quantity": quantity,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "product": product.toMap(),
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
        "galleries": List<dynamic>.from(galleries.map((x) => x.toMap())),
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
