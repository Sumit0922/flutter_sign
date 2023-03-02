import 'package:flutter/material.dart';
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
    return MaterialApp(
      title: 'Sign_Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: listView(),


    );
  }
}




