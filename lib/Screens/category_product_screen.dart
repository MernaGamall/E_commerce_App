import 'package:flutter/material.dart';

class CategoryProductScreen extends StatelessWidget {
  String categoryName;
  CategoryProductScreen({Key? key, required this.categoryName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$categoryName category",
          style: TextStyle(color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 12)),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(""),
                Text("title of "),
                SizedBox(
                  height: 10,
                ),
                Text("price of item"),
                Row(
                  children: [
                    Text("\$250"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("$categoryName"),
                  ],
                ),
              ],
            ),
          );
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.1,
        ),
      ),
    );
  }
}
