import 'package:flutter/material.dart';
import 'package:sing_up/preference_methods.dart';


class SecondScreen extends StatefulWidget {
  String Screen, Screen1, Screen2, Screen3;

  SecondScreen({required this.Screen,required this.Screen1,required this.Screen2,required this.Screen3});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var Name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMyName();

  }

  void getMyName() async{
    PreferenceMethods pm = PreferenceMethods();
      var someName = await pm.getName("Name");
    setState(() {
      Name = someName;
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

          Center(
            child: ElevatedButton(
              child: Text('Go Back'),
              onPressed: () {
                // Navigate back to home screen
                Navigator.pop(context);
              },
            ),


          ),
        ],
      ),
    );
  }
}

