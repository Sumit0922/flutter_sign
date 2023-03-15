import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sing_up/UiPart.dart';
import 'package:sing_up/function.dart';
import 'package:sing_up/gridView.dart';
import 'Callingapi.dart';
import 'SignUpScreen.dart';
import 'SplashScreen.dart';
import 'listView.dart';


void main() {
  runApp(const SingUp());

}

class SingUp extends StatelessWidget {
  const SingUp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812), // iPhone X design size
    builder: (BuildContext,widget) =>MaterialApp(
      title: 'Sign_Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyUi(),

    ),
    );
  }
}




