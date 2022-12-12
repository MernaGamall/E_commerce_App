// To parse this JSON data, do
//
//     final categoryProduct = categoryProductFromJson(jsonString);

import 'dart:convert';

List<CategoryProduct> categoryProductFromJson(String str) => List<CategoryProduct>.from(json.decode(str).map((x) => CategoryProduct.fromJson(x)));

String categoryProductToJson(List<CategoryProduct> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryProduct {
  CategoryProduct({
  required this.id,
  required this.name,
  required this.image,
  });

  int id;
  String name;
  String image;

  factory CategoryProduct.fromJson(Map<String, dynamic> json) => CategoryProduct(
    id: json["id"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };
}
