import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sing_up/datacalling.dart';
import 'package:http/http.dart' as http;
import 'DatabaseHelper.dart';


class ApiFunction{

  Future loginUser(BuildContext context,String userId , String password ) async {
    final String apiUrl = "http://192.168.1.19:3003/user/login";
    final Map<String, String> data = {'user_id' : userId, 'password' : password};
    final http.Response response = await http.post(
        Uri.parse(apiUrl),
        body: json.encode(data),
        headers: {
          'Content-type': 'application/json',
        }
    );
    final Map<String, dynamic> responseData = json.decode(response.body);
    final user = NewApimodel.fromJson(responseData);
    final bool success = responseData['success'];
    if (success) {
      NewApimodel newApimodel = NewApimodel(last_name: responseData["last_name"],
          email_id: responseData["email_id"], first_name: responseData["first_name"]);
      Navigator.push(context, MaterialPageRoute(builder: (context)=> datacalling(newApimodel: newApimodel,)));
      return true;
    }
    else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to login. Please try again later.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
      return false;
    }
  }

}
