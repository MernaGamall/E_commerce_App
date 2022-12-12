import 'package:dio/dio.dart';
import 'package:task1f/model/oneproduct_model.dart';

class OneProduct{
  Future<SingleProduct> getProduct(String id) async{
    final response = await Dio().get("https://dummyjson.com/products/$id");
    print(response.data);

    final oneproduct = SingleProduct.fromJson(response.data);

    return oneproduct;
  }
}
