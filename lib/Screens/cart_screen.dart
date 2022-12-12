
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(thickness: 0.5,color: Colors.grey,),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
                ),
                margin: EdgeInsets.all(15),
                height: 100,
                //width: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/image 47.png"),
                    SizedBox(width: 5),
                    Column(
                    children: [
                     Row(
                      children:[
                      Text("Nike Air ca Zoom Pegasus \n36 Miami",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                     SizedBox(width: 10),
                     Icon(Icons.favorite,color: Colors.red,),
                        Icon(Icons.restore_from_trash_rounded,),
                    ],
                      ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                    SizedBox(height: 10),
                    Text("255\$",style: TextStyle(color: Colors.blue),),
                    SizedBox(width: 70),
                    Icon(Icons.indeterminate_check_box,color: Colors.grey,),
                        Container(
                          color: Colors.grey,
                          child: Text("1"),
                        ),
                        Icon(Icons.add_box_rounded,color: Colors.grey,),
                      ],
                    ),
                    ],
                    )],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                margin: EdgeInsets.all(15),
                height: 100,
                //width: 10,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/image 47 (3).png"),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        Row(
                          children:[
                            Text("Nike Air ca Zoom Pegasus \n36 Miami",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                            SizedBox(width: 10),
                            Icon(Icons.favorite,color: Colors.red,),
                            Icon(Icons.restore_from_trash_rounded,),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(height: 10),
                            Text("255\$",style: TextStyle(color: Colors.blue),),
                            SizedBox(width: 70),
                            Icon(Icons.indeterminate_check_box,color: Colors.grey,),
                            Container(
                              color: Colors.grey,
                              child: Text("1"),
                            ),
                            Icon(Icons.add_box_rounded,color: Colors.grey,),
                          ],
                        ),
                      ],
                    )],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Enter cupon code",style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 100),
                    ElevatedButton(onPressed: (){}, child: Text("Apply"))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Items(3)",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        SizedBox(width: 180),
                        Text("\$5442.2",style: TextStyle(color: Colors.black,fontSize: 13),),
                        SizedBox(width: 30),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Shiping",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        SizedBox(width: 180),
                        Text("\$5442.2",style: TextStyle(color: Colors.black,fontSize: 13),),
                        SizedBox(width: 30),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Import charges",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        SizedBox(width: 130),
                        Text("\$5442.2",style: TextStyle(color: Colors.black,fontSize: 13),),
                        SizedBox(width: 30),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Total price",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                        SizedBox(width: 130),
                        Text("\$9442.2",style: TextStyle(color: Colors.blue,fontSize: 13),),
                        SizedBox(width: 30),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25 ),
              Container(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 50,
                        width: 300,
                        child: ElevatedButton(onPressed: (){}, child: Text("Check Out "))),
                  ],
                ),
              ),
            ],
          ),
        )
        ,
      ),
    );
  }
}
