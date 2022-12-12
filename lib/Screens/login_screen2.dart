import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task1f/Screens/test_screen.dart';
import 'signup_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
bool alreadyloogedin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.tealAccent,
      //   title: Center(child: Text("Flutter Demo")),
      // ),
      backgroundColor: Colors.white,
      //statuse bar protecter
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image(
                    image: AssetImage("kk/Vector.png"),
                    height: 90,
                    width: 90,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "welcome to lyfuo",
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
                    "sign in to continue",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: name,
                        // value = name.text
                        validator: (String? value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return "Enter Correct name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person))),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                        controller: email,
                        validator: (String? value) {
                          if (value!.isEmpty ||
                              !(value.contains("gmail.com")) ||
                              (value.contains(" "))) {
                            return "Enter valid email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "your email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email_outlined))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20 ),
                    child: Row(
                      children: [
                        Checkbox(value: alreadyloogedin, onChanged: (value)
                        {
                          setState((){alreadyloogedin= value!;});
                          },),
                        Text("Remember me"),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(12),
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: password,
                        // validator: (String? value) {
                        //   if (value!.length! < 8 ||
                        //       !(value.contains("1") || value.contains("2"))) {
                        //     return "plz enter 1 or 2";
                        //   }
                        //   return null;
                        // },
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility_off)),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 120,
                        child: Divider(
                          color: Colors.blueGrey,
                          thickness: 2,
                          height: 3,
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),
                      Container(
                        width: 120,
                        child: Divider(
                          color: Colors.blueGrey,
                          thickness: 2,
                          height: 3,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 2.5, bottom: 2.5),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          if(alreadyloogedin==true)
                          {alrealreadyloogedinadyl();}
                          if (formKey.currentState!.validate()) {
                            Signin();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  backgroundColor: Colors.purpleAccent,
                                  content:
                                      Text("plz make sure from your data")),
                            );
                          }
                          ;
                          return null;
                          //
                        },
                        child: Text("Sign In?"),
                        style:
                            ElevatedButton.styleFrom(fixedSize: Size(20, 10)),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 2.5, bottom: 2.5),
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.fmd_good_outlined,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Login With Google",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(20, 10), primary: Colors.white),
                      )),
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 2.5, bottom: 2.5),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Login With Facebook",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(20, 10),
                          primary: Colors.white,
                        )),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forget Password?"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account?"),

                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) {
                            return SignupScreen();
                          }));
                        },
                        child: Text("register?"),
                      ),

                      // SizedBox(width: 200,),
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void Signin () async {
    try {
      final response =
          await Dio().post("https://api.escuelajs.co/api/v1/auth/login", data: {
        "email": email.text,
        "password": password.text,
      });
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Test()));
      // final accsess= response.data["access_token"];
      // final prefs = await SharedPreferences.getInstance();
      // await prefs.setString("action", accsess);
      // final test = await prefs.get("action");
      // print("ggggg$test");

    } on DioError catch (e) {
      print("this is error:${e.response}");
         if (e.response!.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          "data",
        )));
      }
    }
const alreadyloogedin = "alreadyloogedin";
    //print(response);
  }
  void alrealreadyloogedinadyl() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("email", alreadyloogedin);
  }
}
