import 'package:flutter/material.dart';
import 'package:sing_up/ApiFunction.dart';
import 'package:sing_up/Drawer.dart';
import 'package:sing_up/datacalling.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _Login_id= TextEditingController();
  TextEditingController _password = TextEditingController();
  ApiFunction _apiFunction = ApiFunction();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login_Form"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 59,
              ),
              TextField(
                controller: _Login_id,
                decoration: InputDecoration(
                  labelText: "Login Id",
                  hintText: "Enter LoginId",
                  prefixIcon: Icon(Icons.login_rounded),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 12,
              ),

              ElevatedButton(style:ElevatedButton.styleFrom(primary: Colors.cyanAccent, minimumSize: Size(180,45)),
                  onPressed:
                     () {

                       _apiFunction.loginUser(context,_Login_id.text,_password.text);
                       _Login_id.clear();
                       _password.clear();

                    },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
