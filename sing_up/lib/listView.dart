import 'package:flutter/material.dart';
class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => listViewState();
}

class listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    var arr =['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

    return Scaffold(
      appBar: AppBar(
        title: Text("ListBuilder"),
      ),
      body:
      Container(
        padding: EdgeInsets.all(10),
        child: ListView.separated (itemBuilder: (context, index)
        {
          return Card(
            shadowColor: Colors.grey.withOpacity(0.5), // adjust the shadow color as needed
            elevation: 10,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),

          ),
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/image/AVR.png"),radius:28,),
              title: Text(arr[index],style: TextStyle(fontWeight:FontWeight.bold),),
              subtitle: Text('number'),
              iconColor: Colors.lightGreen,
              trailing:  new Column(
                children: <Widget>[
                  new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.add_box),
                      onPressed: () {
                         //not work
                      },
                    ),
                    margin: EdgeInsets.only(top:8),
                  )
                ],
              ),

            ),
          );
            // Text(arr[index],
          //   style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),);
        },
          itemCount:arr.length,
          separatorBuilder: (context, index){
            return Divider(

            );
          },
        ),
      ),
    );
  }
}
