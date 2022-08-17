// To parse this JSON data, do
//
//     final pizza = pizzaFromJson(jsonString);

import 'dart:convert';

List<Pizza> pizzaFromJson(String str) =>
    List<Pizza>.from(json.decode(str).map((x) => Pizza.fromJson(x)));

String pizzaToJson(List<Pizza> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Pizza {
  Pizza({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.img,
    required this.quantity,
  });

  int id;
  String name;
  int price;
  String description;
  String img;
  int quantity;

  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        img: json["img"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "img": img,
        "quantity": quantity,
      };
}
