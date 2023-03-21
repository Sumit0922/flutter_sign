import 'package:flutter/material.dart';
import 'package:sing_up/utilities/Link.dart';
import 'DatabaseHelper.dart';
class datacalling extends StatefulWidget {


  final NewApimodel newApimodel;
  const datacalling ({Key? key,required this.newApimodel}) : super(key: key);


  @override
  State<datacalling> createState() => _datacallingState();
}

class _datacallingState extends State<datacalling> {
  var Getdata ;
  var mapResponse;



  // Future apicall() async {
  //   http.Response response;
  //   Map<String, String> body = {
  //     "user_id": "Abcd",
  //     "password": "Abc12"
  //   };
  //   response = await http.post(Uri.parse("${baseUrl}"),
  //       body: json.encode(body),
  //       headers: {
  //         "Content-type": "application/json",
  //       }
  //   );
  //
  //   mapResponse = json.decode(response.body);
  //   setState(() {
  //     Getdata = mapResponse;
  //   });
  // }
  //
  //
  // @override
  // void initState() {
  //   apicall();
  //   Getdata;
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${widget.newApimodel.first_name}'),
            Text('lastName: ${widget.newApimodel.last_name}'),
            Text('email: ${widget.newApimodel.email_id}'),
            // Text(Getdata.toString(),style: TextStyle(fontSize: 25),)

          ],
        ),
      ),

    );
  }
}
