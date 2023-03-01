import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sing_up/main.dart';

import 'SignUpScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignInScreen(),));
    });
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
}
