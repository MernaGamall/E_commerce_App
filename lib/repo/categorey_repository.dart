import 'dart:ffi';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task1f/model/category_repo_modle.dart';
class CategoryRepository {
  Future<List<CategoryRepoModle>> getAllCategories() async {
    final response =
        await Dio().get("https://api.escuelajs.co/api/v1/categories/");

    final x = List<CategoryRepoModle>.from(response.data.map((value) =>
        CategoryRepoModle(
            id: value["id"], name: value["name"], image: value["image"],),));
    return x;
  }
}

// class category extends StatefulWidget {
//   const category({Key? key}) : super(key: key);
//
//   @override
//   State<category> createState() => _categoryState();
// }
//
// class _categoryState extends State<category> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: FutureBuilder<List<CategoryRepoModle>>(
//             future: CategoryRepository().getAllCategories(),
//             builder: (BuildContext context,
//             AsyncSnapshot<List<CategoryRepoModle>> snapshot ){
//               final Category1 = snapshot.data;
//               return Container(
//                 height: 100,
//                 child: ListView.builder(
//                   //mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     scrollDirection: Axis.horizontal,
//                     itemCount: Category1!.length,
//                     itemBuilder: (BuildContext context, int item){
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           children: [
//                             CircleAvatar(
//                               backgroundColor: Colors.grey,
//                               radius: 21,
//                               child: CircleAvatar(
//                                 backgroundColor: Colors.white,
//                                 child: Image.network(Category1[item].image),
//                               ),
//                             ),
//
//                             SizedBox(height: 5),
//
//                             Text(Category1[item].name),
//                           ],
//                         ),
//                       );
//                     }
//                    ),);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//  Future<List<Product>> getProductsByCategory(String CategoryName) async{
//   final response =
//       await Dio().get("");
//   final categoryProducts = CategoryProducts.fromgson(response.data);
//   return CategoryProducts.Product;
//  }
