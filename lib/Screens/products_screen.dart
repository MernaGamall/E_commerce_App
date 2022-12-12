import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task1f/model/oneproduct_model.dart';
import 'package:task1f/repo/oneproduct_repository.dart';

class product extends StatelessWidget {
  int number ;
  product({Key? key , required this.number}) : super(key: key);

  List size = [20, 25, 30, 32, 35, 39, 40, 42, 47, 50, 52, 54, 60];
  List avatarColore = [Colors.blueGrey,Colors.blue,Colors.black,Colors.yellow,Colors.red,Colors.pinkAccent,Colors.purple,Colors.deepPurple,Colors.orange];

  @override
  Widget build(BuildContext context) {
    //globalscafold
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: FutureBuilder<SingleProduct>(
          future: OneProduct().getProduct(number.toString()),
          builder: (context, snapshot) {
            final productData = snapshot.data;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                        Text(
                          productData!.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30),
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                      ],
                    ),


                    CarouselSlider(
                      options: CarouselOptions(
                        height: 150,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                      ),
                      items: [Image.asset("assets/b.jpg"), Image.asset("assets/e.jpg"),Image.asset("assets/g.jpg")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          productData.title,
                        ),
                        SizedBox(width: 50),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),

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
                    SizedBox(height: 35),
                    Text("\$299.43",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                    SizedBox(height: 20),
                    Text("Select Size",style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 25),
                    Container(
                      height: 30,
                      //width: 200 ,
                      child: ListView.builder(
                        itemCount: size.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int i) {
                          return CircleAvatar(
                            backgroundColor: Colors.white38,
                            child: Text(size[i].toString()),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 25),
                    Text("Select color",style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                      height: 30,
                      //width: 200 ,
                      child: ListView.builder(
                        itemCount: avatarColore.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int m) {
                          return CircleAvatar(
                            backgroundColor: avatarColore[m],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 35),
                    Text("Specification",style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 20,),
                    Text("shown:"),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Laser Blue/Anthracite/Watermelon/White",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("style"),
                    SizedBox(height: 20,),
                    Text("The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey)),
                    SizedBox(height: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Review product",style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 170),
                            Text(
                              "see more",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                                itemSize: 25,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  size: 1,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {}),
                            SizedBox(width: 20),
                            Text("4.5 (5 Review)",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey,fontSize: 10)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset("assets/bb.jpg"),
                        ),
                        Column(
                          children: [
                            Text("James Lawson",style: TextStyle(fontWeight: FontWeight.bold)),
                            RatingBar.builder(
                              itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 1,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text("air max are always very comfortable fit, clean and just perfect in every way. just the box was "
                        "too small and scrunched the sneakers up a little"
                        " bit, not sure if the box was always this small but the 90s are and w"
                        "ill always be one of my"
                        " favorites.",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey)),
                    SizedBox(height: 35),
                    Text("You Might Also Like " ,style: TextStyle(fontWeight: FontWeight.bold)),

                    SizedBox(height: 35),
                    SingleChildScrollView(
                      child: Container(
                        height: 150,
                        child: ListView(
                          padding:EdgeInsets.only(left: 20,right: 5) ,
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                Image.asset("assets/a.jpg",width: 90,height: 90, ),
                                SizedBox(height: 3),
                                Text("FS-Nike Air\n Max 270 React",style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),),
                                //SizedBox(height: 3),
                                Text("\$299.43",style: TextStyle(
                                    fontSize: 12,color: Colors.blueAccent
                                ),),
                               // SizedBox(height: 3),
                                Text("30% off",style: TextStyle(
                                    fontSize: 12,color: Colors.red
                                ),),
                              ],
                            ),

                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Image.asset("assets/b.jpg",width: 90,height: 90, ),
                                //SizedBox(height: 3),

                                Text("FS-Nike Air\n Max 270 React",style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),),
                               // SizedBox(height: 3),
                                Text("\$299.43",style: TextStyle(
                                    fontSize: 12,color: Colors.blueAccent
                                ),),
                                //SizedBox(height: 3),
                                Text("30% off",style: TextStyle(
                                    fontSize: 12,color: Colors.red
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Image.asset("assets/c.jpg",width: 90,height: 90, ),
                                //SizedBox(height: 3),
                                Text("FS-Nike Air\n Max 270 React",style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),),
                               // SizedBox(height: 10),
                                Text("\$299.43",style: TextStyle(
                                    fontSize: 12,color: Colors.blueAccent
                                ),),
                                //SizedBox(height: 3),
                                Text("30% off",style: TextStyle(
                                    fontSize: 12,color: Colors.red
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Image.asset("assets/d.jpg",width: 90,height: 90, ),
                               // SizedBox(height: 3),

                                Text("FS-Nike Air\n Max 270 React",style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),),
                                //SizedBox(height: 3),
                                Text("\$299.43",style: TextStyle(
                                    fontSize: 12,color: Colors.blueAccent
                                ),),
                                //SizedBox(height: 3),
                                Text("30% off",style: TextStyle(
                                    fontSize: 12,color: Colors.red
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Image.asset("assets/e.jpg",width: 90,height: 90, ),
                                //SizedBox(height: 3),
                                Text("FS-Quilted\n Maxi cros",style: TextStyle(
                                    fontSize: 12,color: Colors.black
                                ),),
                                //SizedBox(height: 3),
                                Text("\$299.43",style: TextStyle(
                                    fontSize: 12,color: Colors.blueAccent
                                ),),
                               // SizedBox(height: 3),
                                Text("30% off",style: TextStyle(
                                    fontSize: 12,color: Colors.red
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30,
                            width: 20,
                            child: ElevatedButton(onPressed: (){}, child: Text("Add To Cart "))),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
