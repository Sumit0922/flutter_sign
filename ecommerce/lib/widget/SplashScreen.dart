import 'dart:async';
import 'package:flutter/material.dart';
import '../Pages/Product_form.dart';
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
        color: Colors.black,
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/pic1-removebg-preview.png',),
            Text("Welcome",style: TextStyle(fontSize: 35,
                fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),

      ),
      ),
    );
  }

  void Skip() async {
    // var sharedpref = await SharedPreferences.getInstance();
    // var SignUp= sharedpref.getBool(KEYSIGN);
    Timer(Duration(seconds:2),(){

          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ProductForm() ));
        }

    );

  }
}
