
import 'package:flutter/material.dart';
import 'package:sing_up/function.dart';
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
onPressed: () {

if(_formKey.currentState!.validate()) {
   PreferenceMethods pm = PreferenceMethods();
   pm.setName(_controller1.text);


Navigator.push(context, MaterialPageRoute(
builder: (context) =>
SecondScreen(
Screen: _controller1.text,
Screen1: _controller2.text,
Screen2: _controller3.text.toString(),
Screen3: _controller4.text.toString()),)
);

};
// String text1 = _controller1.text;
// String text2 = _controller2.text;
// String text3 = _controller3.text;
// String text4 = _controller4.text;
// print('Name: $text1');
// print('LastName: $text2');
// print(gender);
// print('Email: $text3');
// print('Password: $text4');

},
style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
child: const Text('Submit')),
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
