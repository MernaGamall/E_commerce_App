import 'package:flutter/material.dart';

class offer extends StatelessWidget {
  const offer({Key? key}) : super(key: key);

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
                  Text("Offer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(thickness: 0.5,color: Colors.grey,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: ElevatedButton
                      (onPressed: (){}, child: Text("Use *Megsel* cupon to get 90% off")
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/Offer Banner.png"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(child: Image.asset("assets/image 51.png")),
                      Container(
                        margin: EdgeInsets.all(15),
                        padding: EdgeInsets.only(left: 15),
                        child: Text(" 90% Of Super Mega \n Sale",
                          style: TextStyle(fontSize: 27, color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        //margin: EdgeInsets.all(70),
                          height: 150,
                          padding: EdgeInsets.only(left: 15),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Special Birthday layfuu",style: TextStyle(fontSize: 15, color: Colors.white),),
                              SizedBox(height: 5),
                            ],
                          ))
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
