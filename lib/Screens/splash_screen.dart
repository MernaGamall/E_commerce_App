import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task1f/Screens/login_screen2.dart';
import 'dart:async';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:task1f/Screens/test_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5) , () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return RememberScreen();
          },
        ),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child:
        FadedScaleAnimation(
          child: Container(
            color: Colors.white,
            child: Image.asset(
              "kk/Vector.png",
              height: 100,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class RememberScreen extends StatelessWidget {
  const RememberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot){
        var isLogin = snapshot.data?.getBool("email") ?? false;
        return Scaffold(
          body: isLogin ? Test() : LoginScreen(),
        );
      },
    );
  }
}