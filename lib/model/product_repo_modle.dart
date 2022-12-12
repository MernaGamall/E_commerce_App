import 'dart:core';

class ProductModel {
  final int id;
  final int price;
  final String title;
  final String description ;
  final String brand;
  final String category;
  final String thumbnail;
  final List images;
  final double discountpercentage;
  final double rating ;
  final int stock ;
  ProductModel({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
    required  this.discountpercentage,
    required this .rating,
    required this.stock,
});
}