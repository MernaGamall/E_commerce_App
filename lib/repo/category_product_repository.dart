import 'package:dio/dio.dart';
import 'package:task1f/model/categoer_product.dart';


Future<CategoryProduct> getProduct() async{
  final response = await Dio().get("https://mocki.io/v1/e5775744-06ba-4306-b6f6-93055de3c2d5");

  final categoryProduct = CategoryProduct.fromJson(response.data);

  return categoryProduct;
}