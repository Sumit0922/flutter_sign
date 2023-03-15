import 'package:flutter/material.dart';
import 'package:sing_up/Callingapi.dart';
import 'package:sing_up/Drawer.dart';
import 'package:sing_up/SplashScreen.dart';
import 'package:sing_up/gridView.dart';
import 'package:sing_up/listView.dart';
import 'package:sing_up/preference_methods.dart';

import 'SignUpScreen.dart';
import 'models/sign_in_model.dart';


class SecondScreen extends StatefulWidget {
  // String Screen, Screen1, Screen2, Screen3;
  SignInModel modelA;
  SecondScreen({required this.modelA});
  // SecondScreen({required this.Screen,required this.Screen1,required this.Screen2,required this.Screen3});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var Name;
  var LastName;
  var Email;
  var Password;






  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMyName();
    getlastname();
    getEmail();
    getpassword();

  }

  void getMyName() async{
    PreferenceMethods pm = PreferenceMethods();
      var someName = await pm.getName("name");
    setState(() {
      Name = someName;
    });
  }

  void getlastname() async{
    PreferenceMethods ln = PreferenceMethods();
    var some = await ln.getLastName("lastName");
    setState(() {
      LastName = some;
    });
  }
  void getEmail() async{
    PreferenceMethods em = PreferenceMethods();
    var sEmail = await em.getEmail("Email");
    setState(() {
      Email = sEmail;
    });
  }
  void getpassword() async{
    PreferenceMethods ps = PreferenceMethods();
    var somed = await ps.getpassword("password");
    setState(() {
      Password = somed;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME", style: TextStyle(color: Colors.black),),
      ),
      //drawer
      drawer:MyDrawer(),
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            // Text("Name: $Screen", style: TextStyle(color: Colors.black),),
            // Text("LastName: $Screen1", style: TextStyle(color: Colors.black),),
            // Text("Email: $Screen2", style: TextStyle(color: Colors.black),),
            // Text("Password: $Screen3", style: TextStyle(color: Colors.black),),
            //
            Text("Name: ${widget.modelA.name}", style: TextStyle(color: Colors.black),),
            Text("LastName: ${widget.modelA.lastName}", style: TextStyle(color: Colors.black),),
            Text("Email: ${widget.modelA.email}", style: TextStyle(color: Colors.black),),
            Text("Password: ${widget.modelA.password}", style: TextStyle(color: Colors.black),),

            Center(
              child: ElevatedButton(
                child: Text('Go Back'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignInScreen(),));
                  },
              ),


            ),
          ],
        ),
      ),
    );
  }
}

