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
  var listResponse;
  List<Model> listOfData =[];
  bool circular = true;


  Future apicall()async{
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if(response.statusCode==200){
setState(() {
   // stringResponse = response.body;
   mapResponse = json.decode(response.body);
   // log(mapResponse.toString() as num);
   // dataResponse =mapResponse['data'];
   listResponse =mapResponse['data'];

   circular=false;
   // model =  Model(first_name: dataResponse['first_name'], last_name: dataResponse['last_name'], id:dataResponse['id']);

});
int i;
for ( i=0; i< listResponse.length ;i++){
  print("${listResponse[i]['id']}");
  listOfData.add(Model(first_name: "${listResponse[i]['first_name']}" ,
      last_name: "${listResponse[i]['last_name']}" , id: "${listResponse[i]['id']}" ));
}
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
      appBar: AppBar(
        title: Text("Api_calling"),
      ),
      body:ListView.builder(itemBuilder: (context,index){
        return SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(8.0),
                child: Image.network(listResponse[index]['avatar']),),
                Text(listOfData[index].id),
                Text(listOfData[index].first_name),
                Text(listOfData[index].last_name),

              ],
            ),
          ),
        );
      },
      itemCount: listOfData==[]? 0:listOfData.length,
      )
      // Center(
      //   child: Container(
      //     color:Colors.blue,
      //     height: 200,
      //     width: 300,
      //     child:Center(
      //       child:circular?CircularProgressIndicator():
      //       Column(
      //
      //         children: [
      //           model.first_name==null? Text("loading"):Text(model.first_name,style:TextStyle(fontSize: 20),),
      //           model.last_name==null? Text("loading"):Text(model.last_name,style:TextStyle(fontSize: 20),),
      //
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }


}
