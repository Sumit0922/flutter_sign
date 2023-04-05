import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

var  stringResponse;
var mapResponse;
var dataResponse;
var listResponse;

class _SecondScreenState extends State<SecondScreen> {
  Future GetApiCall()async{
    http.Response response;
    response= await http.get(Uri.parse("http://192.168.1.72:3003/product"));
      setState(() {
        mapResponse= jsonDecode(response.body);
        listResponse=mapResponse['data'];
      });

  }

  @override
  void initState() {
  GetApiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (context,index){
          return Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(listResponse[index]["image"]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Product Name ${listResponse[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize:19),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Product Price ${listResponse[index]["price"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Product Quantity ${listResponse[index]["quantity"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
          );
        },
          itemCount: listResponse==null? 0: listResponse.length,
        )
    );
  }
}