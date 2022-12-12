import 'package:flutter/material.dart';
import 'package:task1f/Screens/account_screen.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>account()));
                },
                  child: Icon(Icons.arrow_back_ios)),
              Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
             child: Divider(thickness: 0.5,color: Colors.grey,),
          ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.asset("assets/Profile Picture.png"),
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text("Maximus Gold",style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Text("@derlaxy",style: TextStyle(fontWeight: FontWeight.w300,
                          color: Colors.grey,fontSize: 15)),
                    ],
                  ),
                ],
              ),
              SizedBox(height:20),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.female_sharp,color: Colors.blue,),
                  Text("Gender",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 180),
                  Text("Male",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  SizedBox(width: 30),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 13,),
                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(8),
                //child: Divider(thickness: 0.5,color: Colors.grey,),
              ),
              Row(
                children: [
                  Icon(Icons.shopping_bag_outlined,color: Colors.blue,),
                  Text("Birthday",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 170),
                  Text("27-11-2000",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 13,),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                // child: Divider(thickness: 0.5,color: Colors.grey,),
              ),
              Row(
                children: [
                  Icon(Icons.email_outlined,color: Colors.blue,),
                  Text("Email",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 130),
                  Text("gamalmergmail.com",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 13,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.phone_android,color: Colors.blue,),
                  Text("phone number",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 130),
                  Text("(295)-3254",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 13,),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.lock,color: Colors.blue,),
                  Text("Change password",style: TextStyle(fontSize: 15),),
                  SizedBox(width: 130),
                  Text("..........",style: TextStyle(color: Colors.grey,fontSize: 13),),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 13,),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}
