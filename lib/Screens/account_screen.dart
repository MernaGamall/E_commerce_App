import 'package:flutter/material.dart';
import 'package:task1f/Screens/profile_screen.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(thickness: 0.5,color: Colors.grey,),
          ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                },
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.person,color: Colors.blue,),
                    Text("profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8),
                //child: Divider(thickness: 0.5,color: Colors.grey,),
              ),
              Row(
                children: [
                  Icon(Icons.shopping_bag_outlined,color: Colors.blue,),
                  Text("order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
               // child: Divider(thickness: 0.5,color: Colors.grey,),
              ),
              Row(
                children: [
                  Icon(Icons.add_location_alt,color: Colors.blue,),
                  Text("Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.payment_rounded,color: Colors.blue,),
                  Text("Payment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                ],
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
