import 'package:flutter/material.dart';
import 'package:sing_up/Drawer.dart';
class gridView extends StatefulWidget {
  const gridView({Key? key}) : super(key: key);

  @override
  State<gridView> createState() => gridViewState();

  static count({required int crossAxisCount, required List<Container> children}) {}
}

class gridViewState extends State<gridView> {
  var arrColor = [Colors.amber,
    Colors.greenAccent,
    Colors.pink,
    Colors.lightGreen,
    Colors.blue,
    Colors.deepOrange,
    Colors.pinkAccent,
    Colors.black,

  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("GridBuilder"),
      ),
      drawer: MyDrawer(),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(crossAxisCount: 2,
        children :[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[0]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[1]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[2]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[3]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[4]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[5]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[6]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(color: arrColor[7]),
          ),

            ]),
      ),
    );
  }
}
