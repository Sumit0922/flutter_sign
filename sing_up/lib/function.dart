import 'package:flutter/material.dart';
import 'package:sing_up/preference_methods.dart';

import 'SignUpScreen.dart';


class SecondScreen extends StatefulWidget {
  String Screen, Screen1, Screen2, Screen3;

  SecondScreen({required this.Screen,required this.Screen1,required this.Screen2,required this.Screen3});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var Name;
  var LastName;
  var Email;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMyName();
    getlastname();
    getEmail();

  }

  void getMyName() async{
    PreferenceMethods pm = PreferenceMethods();
      var someName = await pm.getName("Name");
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WELCOME", style: TextStyle(color: Colors.black),),
      ),
      body:
      Column(

        children: [
          // Text("Name: $Screen", style: TextStyle(color: Colors.black),),
          // Text("LastName: $Screen1", style: TextStyle(color: Colors.black),),
          // Text("Email: $Screen2", style: TextStyle(color: Colors.black),),
          // Text("Password: $Screen3", style: TextStyle(color: Colors.black),),

          Text("Name: $Name", style: TextStyle(color: Colors.black),),
          Text("LastName: $LastName", style: TextStyle(color: Colors.black),),
          Text("Email: $Email", style: TextStyle(color: Colors.black),),

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
    );
  }
}

