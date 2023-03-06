import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sing_up/main.dart';

import 'SignUpScreen.dart';
import 'function.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  static const String KEYSIGN = "Error";
  @override
  void initState() {
    super.initState();
    Skip();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        color: Colors.blue,
        child: Center(
          child: Text("Sign_Up",style:TextStyle(color:Colors.white,fontSize:50,fontWeight:FontWeight.bold),),
        ),
      ),
    );
  }

  void Skip() async {
    var sharedpref = await SharedPreferences.getInstance();
    var SignUp= sharedpref.getBool(KEYSIGN);
    Timer(Duration(seconds: 1),(){
      if(SignUp!=null) {
        if (SignUp) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SignInScreen()));
        }
        else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SignInScreen(),));
        }
      }
        else{
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> SignInScreen(),));


        }
    });

  }
}
