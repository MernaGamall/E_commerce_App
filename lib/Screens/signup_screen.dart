import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'login_screen2.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.tealAccent,
      //   title: Center(child: Text("Flutter Demo")),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Form(
           key: formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Image(
                  image: AssetImage("kk/Vector.png"),
                  height: 90,
                  width: 90,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 25),
                ),
                Text(
                  "",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Create on new Account ",
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: TextFormField(
                    controller: name,
                      decoration: InputDecoration(
                          hintText: "Full Name",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person))),
                ),
                Container(
                  margin: EdgeInsets.all(12),
                  child: TextFormField(
                      controller: email,

                      decoration: InputDecoration(
                          hintText: "Your Email",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.markunread_rounded))),
                ),
                Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off)),
                    )),
                Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "password again",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off)),
                    )),

                Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 2.5, bottom: 2.5),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Signin();
                      },
                      child: Text("Sign In?"),
                      style: ElevatedButton.styleFrom(fixedSize: Size(20, 10)),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a account?"),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (BuildContext context) {
                              return LoginScreen();
                            }));
                      },
                      child: Text(
                          "Sign UP"
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text("Sign Up?"),
                    // ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void Signin () async {
    try {
      final response =
      await Dio().post("https://api.escuelajs.co/api/v1/users/", data: {
        "name": name.text,
        "email": email.text,
        "password": password.text,
        "avatar": "https://api.lorem.space/image/face?w=640&h=480"
      });
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => LoginScreen()));
    } on DioError catch (e) {
      print("this is error:${e.response}");
      if (e.response!.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "data",
            )));
      }
    }

    //print(response);
  }
}
