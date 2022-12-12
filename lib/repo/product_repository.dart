 import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:task1f/model/product_repo_modle.dart';

class ProductRepsitory {
  Future<List<ProductModel>> getAllProducts()async{
    final response = await Dio().get("https://dummyjson.com/products");
    final listofproducts = List<ProductModel>.from(response.data["products"].map(
        (value){
          return ProductModel(
            id: value["id"],
            price : value["price"],
            title: value["title"],
            description : value["description"],
            brand : value["brand"],
            category : value["category"],
            thumbnail : value["thumbnail"],
            images : value["images"],
            discountpercentage : value["discountPercentage"],
            rating : value["rating"].toDouble(),
            stock : value["stock"],

          );
        },
    ),
    );
    print(listofproducts);
    return listofproducts;
  }
}