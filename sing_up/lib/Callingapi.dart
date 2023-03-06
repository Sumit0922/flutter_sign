import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sing_up/Modelbase.dart';

class CallingApi extends StatefulWidget {
  const CallingApi({Key? key}) : super(key: key);

  @override


  State<CallingApi> createState() => _CallingApiState();
}

class _CallingApiState extends State<CallingApi> {
  late Model model;
  var stringResponse;
  var mapResponse;
  var dataResponse;
  bool circular = true;


  Future apicall()async{
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if(response.statusCode==200){
setState(() {
   // stringResponse = response.body;
   mapResponse = json.decode(response.body);
   // log(mapResponse.toString() as num);
   dataResponse =mapResponse['data'];
   circular=false;
   model =  Model(first_name: dataResponse['first_name'], last_name: dataResponse['last_name']);

});
    }

  }

  @override
  void initState() {
    apicall();
    super.initState();
    getData();
  }
  void getData() async {
var res = await Uri.http("https://reqres.in","photos");
// print(res.data);
  }
  @override
  // void setState(VoidCallback fn) {
  //   // model =Model.fromJson(dataResponse);
  //
  //
  //   super.setState(fn);
  // }
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          color:Colors.blue,
          height: 200,
          width: 300,
          child:Center(
            child:circular?CircularProgressIndicator():
            Column(

              children: [
                model.first_name==null? Text("loading"):Text(model.first_name,style:TextStyle(fontSize: 20),),
                model.last_name==null? Text("loading"):Text(model.last_name,style:TextStyle(fontSize: 20),),

              ],
            ),
          ),
        ),
      ),
    );
  }


}
