import 'package:flutter/material.dart';
class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => listViewState();
}

class listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    var arr =["Sumit", "Atharva", "Saurabh","Falguni","Abdul","Sumit", "Atharva", "Saurabh","Falguni","Abdul"];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListBuilder"),
      ),
      body:
      Card(
        child: Container(
          color: Colors.lightGreen,
          child: ListView.separated (itemBuilder: (context, index)
          {
            return Text(arr[index],
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),);
          },
            itemCount:arr.length,
            separatorBuilder: (context, index){
              return Divider(
                height: 60,
                thickness: 10,
                color: Colors.grey,
              );
            },
          ),
        ),
      ),
    );
  }
}
