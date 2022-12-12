import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);
  List Manicon=[
    "assets/man underwear.png",
    "assets/man shoes.png" ,
    "assets/man bag.png",
    "assets/Vector.png" ,
    "assets/shirt.png",
    "assets/dress.png",
    "assets/woman bag.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
                children: [
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
                  Icon(Icons.favorite),
                  Icon(Icons.notifications_active),
                  SizedBox(
                    width: 10,
                    height: 50,
                  ),
                ]),
            Divider(
              color: Colors.blueGrey,
              thickness: 0.5,
              height: 1,
            ),
            Container(
             margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Man fashion",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                  ],
                )),
           Container(
           //height: MediaQuery.of(context).size.height,
             height: 350,
          // margin: EdgeInsets.all(5),
           child: GridView(
             physics: NeverScrollableScrollPhysics(),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            ),
            children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [

                   CircleAvatar(
                     backgroundColor: Colors.grey,
                     radius: 21,
                     child: CircleAvatar(
                       backgroundColor: Colors.white,
                       child: Image.asset("assets/shirt.png"),
                     ),
                   ),
                   SizedBox(height: 5),
                   Text("Man shirt",style: TextStyle(color:Colors.grey),)
                 ],
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/man underwear.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Man shirt",style: TextStyle(color:Colors.grey),),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/shirt.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Man shirt",style: TextStyle(color:Colors.grey),),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/man bag.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Man bag",style: TextStyle(color:Colors.grey),),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/man bag.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("man bag",style: TextStyle(color:Colors.grey),),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/man shoes.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("man shoes ",style: TextStyle(color:Colors.grey),),


                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 21,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/Vector.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Man T-shirt",style: TextStyle(color:Colors.grey),),

                  ],
                ),
              ),
          ],
        ),
      ),
            Text("Woman fashion",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
            Container(
              //height: MediaQuery.of(context).size.height,
              height: 350,
              // margin: EdgeInsets.all(5),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/bikini.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Bikini",style: TextStyle(color:Colors.grey),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/dress.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Dress",style: TextStyle(color:Colors.grey),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/skirt.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Skirt",style: TextStyle(color:Colors.grey),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/woman tshirt.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Woman \nT-shirt",style: TextStyle(color:Colors.grey),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/woman pants.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("woman pants",style: TextStyle(color:Colors.grey),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/dress.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Dress ",style: TextStyle(color:Colors.grey),),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [

                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 21,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/woman bag.png"),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("woman Bag",style: TextStyle(color:Colors.grey),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
       ),
    );
  }
}
