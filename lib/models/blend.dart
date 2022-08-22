// To parse this JSON data, do
//
//     final blend = blendFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

List<Blend> blendFromJson(String str) =>
    List<Blend>.from(json.decode(str).map((x) => Blend.fromJson(x)));

String blendToJson(List<Blend> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blend {
  Blend(
    this.customer,
    this.product,
    this.createdAt,
  );

  Customer customer;
  Product product;
  DateTime createdAt;

  factory Blend.fromJson(Map<String, dynamic> json) => Blend(
        Customer.fromJson(json["customer"]),
        Product.fromJson(json["product"]),
        DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "customer": customer.toJson(),
        "product": product.toJson(),
        "created_at": createdAt.toIso8601String(),
      };
}

class Customer {
  Customer(
    this.name,
    this.city,
    this.state,
    this.country,
  );

  String name;
  dynamic city;
  String state;
  String country;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        json["name"] ?? '',
        json["city"] ?? '',
        json["state"] ?? '',
        json["country"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "city": city,
        "state": state,
        "country": country,
      };
}

class Product {
  Product(
    this.name,
    this.url,
    this.featuredImage,
  );

  String name;
  String url;
  String featuredImage;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        json["name"],
        json["url"],
        json["featured_image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
        "featured_image": featuredImage,
      };
}
