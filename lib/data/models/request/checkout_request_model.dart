import 'dart:convert';

class CheckoutRequestModel {
    final String address;
    final List<Item> items;
    final int totalPrice;

    CheckoutRequestModel({
        required this.address,
        required this.items,
        required this.totalPrice,
    });

    factory CheckoutRequestModel.fromJson(String str) => CheckoutRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CheckoutRequestModel.fromMap(Map<String, dynamic> json) => CheckoutRequestModel(
        address: json["address"],
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        totalPrice: json["total_price"],
    );

    Map<String, dynamic> toMap() => {
        "address": address,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
        "total_price": totalPrice,
    };
}

class Item {
    final int id;
    final int quantity;

    Item({
        required this.id,
        required this.quantity,
    });

    factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Item.fromMap(Map<String, dynamic> json) => Item(
        id: json["id"],
        quantity: json["quantity"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "quantity": quantity,
    };
}
