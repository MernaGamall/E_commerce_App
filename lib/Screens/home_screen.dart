import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task1f/cubit/category_cubit/category_cubit.dart';
import 'package:task1f/repo/categorey_repository.dart';
import 'package:task1f/Screens/category_product_screen.dart';
import 'package:task1f/model/category_repo_modle.dart';
import 'package:task1f/Screens/login_screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1f/model/product_repo_modle.dart';
import 'package:task1f/repo/product_repository.dart';
import 'products_screen.dart';
import 'signup_screen.dart';

int num = 0;

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool connected = true;
  @override
  initState() {
    super.initState();

    final subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.none) {
        setState(() {
          connected = false;
        });
      } else {
        setState(() {
          connected = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (connected == false) {
      return Scaffold(
          body: Center(
              child: Container(
        child: Text("no internet plz check"),
      )));
    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 250,
                    height: 50,
                    child: TextFormField(
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "search product",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.favorite_border),
                  Icon(Icons.notifications_active),
                  GestureDetector(
                    onTap: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.clear();
                    },
                    child: Icon(
                      Icons.login_outlined,
                      color: Colors.grey,
                      size: 3,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 50,
                  ),
                ]),
                Container(
                  margin: EdgeInsets.all(30),
                  height: 150,
                  width: 350,
                  child: CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                        height: 150),
                    items: [
                      Image.asset(
                        "assets/Offer Banner.png",
                        width: 1000,
                        height: 700,
                      ),
                      Image.asset(
                        "assets/image 47 (3).png",
                        width: 1000,
                        height: 700,
                      ),
                      Image.asset(
                        "assets/image 47.png",
                        width: 200,
                        height: 120,
                      )
                    ],
                  ),
                ),
                // SmoothPageIndicator(controller: controller,count:),
                Row(
                  children: [
                    //put multi points
                  ],
                ),
                SizedBox(
                  width: 10,
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Category"),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "More Category",
                      style: TextStyle(color: Colors.cyan),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                BlocBuilder<CategoryCubit, CategoryState>(
                    builder: (context, state) {
                  if (state is CategorySuccess) {
                    return Container(
                      height: 100,
                      child: ListView.builder(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.list.length,
                          itemBuilder: (BuildContext context, int item) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryProductScreen(
                                        categoryName: state.list[item].name,
                                      ),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        state.list[item].image,
                                      ),
                                      radius: 30,
                                    ),
                                    SizedBox(height: 5),
                                    Text(state.list[item].name),
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  }
                  return CircularProgressIndicator();
                }),
                // FutureBuilder<List<CategoryRepoModle>>(
                //   future: CategoryRepository().getAllCategories(),
                //   builder: (BuildContext context,
                //       AsyncSnapshot<List<CategoryRepoModle>> snapshot) {
                //     if (snapshot.connectionState == ConnectionState.done) {
                //       final Category1 = snapshot.data;
                //
                //       return Container(
                //         height: 100,
                //         child: ListView.builder(
                //             //mainAxisAlignment: MainAxisAlignment.spaceAround,
                //             scrollDirection: Axis.horizontal,
                //             itemCount: Category1!.length,
                //             itemBuilder: (BuildContext context, int item) {
                //               return Padding(
                //                 padding: const EdgeInsets.all(8.0),
                //                 child: GestureDetector(
                //                   onTap: () {
                //                     Navigator.of(context).push(
                //                       MaterialPageRoute(
                //                         builder: (context) =>
                //                             CategoryProductScreen(
                //                           categoryName: Category1[item].name,
                //                         ),
                //                       ),
                //                     );
                //                   },
                //                   child: Column(
                //                     children: [
                //                       CircleAvatar(
                //                        backgroundImage: NetworkImage(Category1[item].image,),
                //                         radius: 30,
                //                       ),
                //                       SizedBox(height: 5),
                //                       Text(Category1[item].name),
                //                     ],
                //                   ),
                //                 ),
                //               );
                //             }),
                //       );
                //     }
                //     if (snapshot.connectionState == ConnectionState.waiting) {
                //       return CircularProgressIndicator();
                //     } else {
                //       return Text(" plz check");
                //     }
                //   },
                // ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Flash sale",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(" See More ",
                        style: TextStyle(
                          color: Colors.cyan,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 150,
                    child: ListView(
                      padding: EdgeInsets.only(left: 20, right: 5),
                      //mainAxisAlignment: MainAxisAlignment.spaceAround,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 15,
                          width: 150,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/a.jpg",
                                width: 90,
                                height: 90,
                              ),
                              Text(
                                "FS-Nike Air400.43\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text("255.3\$",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("255.3\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  // SizedBox(width: 5),
                                  Text(
                                    "30% off",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 15,
                          width: 150,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/g.jpg",
                                width: 90,
                                height: 90,
                              ),
                              Text(
                                "FS-Nike Air400.43\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text("255.3\$",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("255.3\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  // SizedBox(width: 5),
                                  Text(
                                    "30% off",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 15,
                          width: 150,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/a.jpg",
                                width: 90,
                                height: 90,
                              ),
                              Text(
                                "FS-Nike Air400.43\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text("255.3\$",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("255.3\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  // SizedBox(width: 5),
                                  Text(
                                    "30% off",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 15,
                          width: 150,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/image 47 (3).png",
                                width: 90,
                                height: 90,
                              ),
                              Text(
                                "FS-Nike Air400.43\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text("255.3\$",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("255.3\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  // SizedBox(width: 5),
                                  Text(
                                    "30% off",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 15,
                          width: 150,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueGrey)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/image 47.png",
                                width: 90,
                                height: 90,
                              ),
                              Text(
                                "FS-Nike Air400.43\$",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                              Text("255.3\$",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("255.3\$",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  // SizedBox(width: 5),
                                  Text(
                                    "30% off",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Mega sale",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      " See More ",
                      style: TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey)),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/image 47.png",
                          width: 90,
                          height: 90,
                        ),
                        Text(
                          "FS-Nike Air400.43\$",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        Text("255.3\$",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("255.3\$",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough)),
                            // SizedBox(width: 5),
                            Text(
                              "30% off",
                              style: TextStyle(fontSize: 12, color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(child: Image.asset("assets/image 51.png")),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Recomended \n Product",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ),
                    ),
                    Container(
                        //margin: EdgeInsets.all(70),
                        height: 150,
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "We recomended the best for you",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FutureBuilder<List<ProductModel>>(
                  future: ProductRepsitory().getAllProducts(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<ProductModel>> snapshot) {
                    final Prodectlist = snapshot.data;
                    print("snapshot : $snapshot");
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    if (snapshot.connectionState == ConnectionState.done) {
                      return GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemCount: Prodectlist!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder:(context)=>product(number: Prodectlist[index].id,) ));
                              },
                              child: Column(
                                children: [
                                  Image.network(
                                    Prodectlist[index].thumbnail,
                                    width: 90,
                                    height: 90,
                                  ),
                                  Text(
                                    Prodectlist[index].title,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.deepPurple),
                                  ),
                                  Container(
                                    child: RatingBar.builder(
                                        itemSize: 20,
                                        itemBuilder: (context, _) => Icon(
                                              Icons.star,
                                              size: 1,
                                              color: Colors.amber,
                                            ),
                                        onRatingUpdate: (rating) {}),
                                  ),
                                ],
                              ),
                            );
                          });
                    } else {
                      return Text("plz check");
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
