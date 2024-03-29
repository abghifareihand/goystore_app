import 'dart:convert';

class CheckoutResponseModel {
    final int code;
    final bool success;
    final String message;
    final Data data;

    CheckoutResponseModel({
        required this.code,
        required this.success,
        required this.message,
        required this.data,
    });

    factory CheckoutResponseModel.fromJson(String str) => CheckoutResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CheckoutResponseModel.fromMap(Map<String, dynamic> json) => CheckoutResponseModel(
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
    final int userId;
    final String transactionNumber;
    final String address;
    final int totalPrice;
    final String paymentStatus;
    final String paymentUrl;
    final String createdAt;
    final String updatedAt;
    final List<Item> items;
    final User user;

    Data({
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
        required this.user,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
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
        user: User.fromMap(json["user"]),
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
        "user": user.toMap(),
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

    Product({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.tags,
        required this.categoriesId,
        required this.createdAt,
        required this.updatedAt,
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
    };
}

class User {
    final int id;
    final String name;
    final String email;
    final String username;
    final String phone;
    final String roles;

    User({
        required this.id,
        required this.name,
        required this.email,
        required this.username,
        required this.phone,
        required this.roles,
    });

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        username: json["username"],
        phone: json["phone"],
        roles: json["roles"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "username": username,
        "phone": phone,
        "roles": roles,
    };
}
