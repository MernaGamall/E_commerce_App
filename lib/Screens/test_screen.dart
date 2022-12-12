import 'package:flutter/material.dart';
import 'package:task1f/Screens/account_screen.dart';
import 'package:task1f/Screens/cart_screen.dart';
import 'package:task1f/Screens/home_screen.dart';
import 'package:task1f/Screens/login_screen2.dart';
import 'package:task1f/Screens/offer_screen.dart';
import 'package:task1f/Screens/profile_screen.dart';
import 'package:task1f/Screens/search_screen.dart';
import 'package:task1f/Screens/signup_screen.dart';

import 'products_screen.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}
//
class _TestState extends State<Test> {
//   List product = [
//     {
//       "image": "assets/a.jpg",
//       "price": 200,
//       "name": "product one",
//     },
//     {
//       "image": "assets/a.jpg",
//       "price": 400,
//       "name": "product two",
//     },
//     {
//       "image": "assets/a.jpg",
//       "price": 600,
//       "name": "product three",
//     },
//     {
//       "image": "assets/a.jpg",
//       "price": 800,
//       "name": "product four",
//     },
//   ];

List listofscreen =[

  Homescreen(),
  SearchScreen(),
  cart(),
  offer(),
  account(),


];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: num,
        onTap:  (index){
          setState(() {
            num = index;
          });
        } ,
        type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_rounded), label: "offer"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
        ],
      ),
      body: listofscreen[num],
    );
  }
}
//Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white30,
//         ),
//         backgroundColor: Colors.deepOrange,
//         body:SafeArea(
//          child: Center(
//            child: Column(
//              children: [
//                CircleAvatar(
//                  radius: 50,
//                  backgroundImage:AssetImage("assets/bb.jpg") ,
//                ),
//                Container(
//                  margin: EdgeInsets.symmetric(vertical: 20,),
//                  child: Text("Merna Gamal",style: TextStyle(
//                    color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,
//                  ),),
//                ),
//                Card(
//                  color:Colors.white ,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Icon(
//                        Icons.email_outlined,
//                        color: Colors.black,
//                        size: 25,
//                      ),
//                      SizedBox(
//                        width: 20,
//                      ),
//                      Text("gamalmerna@gmail.com",style: TextStyle(
//                        color: Colors.black,fontSize: 15,
//                      ),)
//                    ],
//                  ),
//                  ),
//                Card(
//                  color:Colors.white ,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: [
//                      Icon(
//                        Icons.facebook,
//                        color: Colors.blue,
//                        size: 25,
//                      ),
//                      SizedBox(
//                        width: 20,
//                      ),
//                      Text("Merna Gamal AYS",style: TextStyle(
//                        color: Colors.black,fontSize: 15,
//                      ),)
//                    ],
//                  ),
//                )
//                  ],
//                  ),
//                  ),
//                  ),
//                )