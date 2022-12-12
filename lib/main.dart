import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1f/Screens/account_screen.dart';
import 'package:task1f/Screens/cart_screen.dart';
import 'package:task1f/cubit/category_cubit/category_cubit.dart';
import 'package:task1f/repo/categorey_repository.dart';
import 'package:task1f/Screens/home_screen.dart';
import 'package:task1f/Screens/offer_screen.dart';
import 'package:task1f/Screens/products_screen.dart';
import 'package:task1f/Screens/profile_screen.dart';
import 'package:task1f/Screens/search_screen.dart';
import 'package:task1f/Screens/search_screen2.dart';
import 'package:task1f/Screens/splash_screen.dart';
import 'Screens/login_screen2.dart';
import 'Screens/signup_screen.dart';
import 'Screens/test_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart ';


void main() {
  runApp(BlocProvider(
      create: (context) => CategoryCubit(),
    child: MaterialApp(home: Homescreen(),)),);
}


// class asem1 extends StatelessWidget {
//   const asem1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       FutureBuilder<SharedPreferences>
//         (
//         future: SharedPreferences.getInstance(),
//         builder: (context,snapshot)
//         {
//           if(!snapshot.hasData){
//             return Scaffold(
//               body: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset("assets/bb.jpg",height: 500,width: 500,),
//                   ],
//                 ),
//               ),
//             );
//           }else{
//             var isUserLogin =snapshot.data!.getBool("email")?? false;
//             return Scaffold(
//               body: isUserLogin? Test():LoginScreen(),
//             );
//           }
//         }
//         ,
//       )
//
// GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//                     itemBuilder: (BuildContext context,int index ){return Column(
//                     children: [
//                     Image.asset("assets/a.jpg",width: 90,height: 90, ),
//                     Text("FS-Nike Air\n 400.43\$ \n10% off",style: TextStyle(
//                     fontSize: 12,color: Colors.deepPurple
//                     ),),
//                     Container(
//                     child: RatingBar.builder(
//                     itemSize: 20,
//                     itemBuilder: (context, _) => Icon(
//                     Icons.star,
//                     size: 1,
//                     color: Colors.amber,
//                     ),
//                     onRatingUpdate: (rating) {}),
//                     ),
//                     ],
//                     );}),
