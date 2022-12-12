
import 'package:flutter/material.dart';

class Search2 extends StatelessWidget {
  const Search2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            height: 10,
          ),
          ]),
        Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Man fashion",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
              ],
            )),
            SingleChildScrollView(
              child: Container(
                height: 100,
                child: ListView(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  scrollDirection: Axis.horizontal,
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

                          Text("Man shirt"),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 5,
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
                          Text("dress"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                          Text("Man work\n equipment"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                          Text("woman bag"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                          Text("Man Shoes"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("woman fashion", style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                height: 100,
                child: ListView(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  scrollDirection: Axis.horizontal,
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

                          Text("Man shirt"),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 5,
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
                          Text("dress"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                          Text("Man work\n equipment"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                          Text("woman bag"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
                          Text("Man Shoes"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
     ] ),
    ),
    );
  }
}
