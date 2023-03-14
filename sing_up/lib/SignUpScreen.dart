
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sing_up/Provider.dart';
import 'package:sing_up/SplashScreen.dart';
import 'package:sing_up/function.dart';
import 'package:sing_up/models/sign_in_model.dart';
import 'package:sing_up/preference_methods.dart';

class SignInScreen extends StatefulWidget {

const SignInScreen({super.key,});

@override

State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen
> {
int _counter = 0;
String? gender;
final _formKey = GlobalKey<FormState>();
final _selectlist = ["Mr","Miss"];
var _selectedVal = "Mr";
TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();
TextEditingController _controller3 = TextEditingController();
TextEditingController _controller4 = TextEditingController();
bool passToggle = true;
@override
Widget build(BuildContext context) {

return Scaffold(
// resizeToAvoidBottomInset: false,
body:
Stack(
children: <Widget>[
// Add image to full screen
Image.asset("assets/image/flutter.image.jpg",
fit: BoxFit.cover,
height: MediaQuery.of(context).size.height,
width: MediaQuery.of(context).size.width,
),

Center(
child: Padding(
padding: const EdgeInsets.all(11),

child: SingleChildScrollView(
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
  const SizedBox(
    height:34,
  ),
Text("Sign_Up_Page", style: TextStyle(fontSize:20,color: Colors.black, fontWeight:FontWeight.bold),),
Padding(
padding: const EdgeInsets.all(8.0),
child:
Form(
key: _formKey,
child: Column(
children: [
const CircleAvatar(
backgroundColor:Colors.black,
radius:50,
backgroundImage: AssetImage("assets/image/AVR.png"),
),
const SizedBox(
height: 25,
),
DropdownButton(
value:_selectedVal,
items:_selectlist.map((e) => DropdownMenuItem(child: Text(e),value: e,)
).toList(),
onChanged: (val){
setState(() {
_selectedVal =val as String;
});
},
),
TextFormField(
controller: _controller1,
keyboardType: TextInputType.name,
decoration: const InputDecoration(
labelText: "Name",
hintText: "Enter the name",
prefixIcon: Icon(Icons.person),
border: OutlineInputBorder(),
),
validator: (value){
if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
return "Enter Valid Name";
}
// return value!.isEmpty ? "Please Enter Name" : null ;
},
),
const SizedBox(
height: 13,
),
TextFormField(
controller: _controller2,
keyboardType: TextInputType.name,
decoration: const InputDecoration(
labelText: "LastName",
hintText: "Enter Last-Name",
prefixIcon: Icon(Icons.add),
border: OutlineInputBorder(),
),
validator: (value){
if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
return "Enter Valid LastName";
}
// return value!.isEmpty ? "Please Enter Name" : null ;
},

),
  const SizedBox(
    height: 13,
  ),
  ChangeNotifierProvider<ProviderHome>
    (create: (context)=> ProviderHome(),
    child: Consumer<ProviderHome>(
      builder: (context,provider,child){
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text(provider.eligibilityMessage.toString(),style: TextStyle(color:
            (provider.isEligible==true)? Colors.green : Colors.red,),),
          TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: "Age",
            hintText: "Enter Your Age",
            prefixIcon: Icon(Icons.monitor_weight),
            border: OutlineInputBorder(),
          ),
            onChanged: (val){
              provider.checkEligiblity(int.parse(val));
            },
         ),

          ],

        );

      },
    ),

  ),

const SizedBox(
height: 13,
),
Text("Select your gender?", style: TextStyle(
fontSize: 18
),),

Divider(),

RadioListTile(
title: Text("Male"),
value: "Male",
groupValue:gender,
onChanged:(value){
setState(() {
gender = value.toString();
});

}),
RadioListTile(
title: Text("Female"),
value: "Female",
groupValue:gender,
onChanged:(value){
setState(() {
gender = value.toString();
});
}),
RadioListTile(
title: Text("Other"),
value: "Other",
groupValue:gender,
onChanged:(value){
setState(() {
gender = value.toString();
});
}),
const SizedBox(
height: 13,
),
TextFormField(
controller: _controller3,
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
labelText: "Email",
hintText: "Enter Email Address",
prefixIcon: Icon(Icons.email),
border: OutlineInputBorder(),
),

validator: (value){
if(value!.isEmpty || !RegExp(r'^[\w-\,]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value!)){
return "Enter Valid Email";
}
// return value!.isEmpty ? "Please Enter Name" : null ;
},
),
const SizedBox(
height: 13,
),
TextFormField(
controller: _controller4,
obscureText: passToggle,
keyboardType: TextInputType.visiblePassword,
decoration: InputDecoration(
labelText: "Password",
hintText: "Enter Password",
prefixIcon: Icon(Icons.lock
),
suffix: InkWell(
onTap: (){
setState(() {
passToggle = !passToggle;
});
},
child: Icon(passToggle? Icons.visibility : Icons.visibility_off),
),
border: OutlineInputBorder(),
),
validator: (value){
return value!.isEmpty ? "Please Enter Password" : null ;
},
),
],
),

),
),


ElevatedButton(
  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
  child: const Text('Submit'),
  onPressed: () async{
  var sharedpref = await SharedPreferences.getInstance();
  sharedpref.setBool(SplashScreenState.KEYSIGN, true);



  if(_formKey.currentState!.validate()) {
    SignInModel modelVar = SignInModel(name: _controller1.text,lastName :_controller2.text ,
        email: _controller3.text, password: _controller4.text);
  PreferenceMethods pm = PreferenceMethods();
  pm.setName(_controller1.text);
  PreferenceMethods ln = PreferenceMethods();
  ln.setLastName(_controller2.text);
  PreferenceMethods em = PreferenceMethods();
  em.setEmail(_controller3.text);
  PreferenceMethods ps = PreferenceMethods();
  ps.setpassword(_controller4.text);

  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen(modelA: modelVar)));

  }



  },

  ),


],

),

),
),
),



],
),
);



// This trailing comma makes auto-formatting nicer for build methods.

}

}
