import 'package:flutter/material.dart';
import 'package:http/http.dart';
class MyUi extends StatefulWidget {
  const MyUi({Key? key}) : super(key: key);

  @override
  State<MyUi> createState() => _MyUiState();
}

class _MyUiState extends State<MyUi> {
  // var radius = ;
  // final List<String> messages = ["","","","","",];



  late var radius;

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width * 0.223);
    radius = ((MediaQuery.of(context).size.width * 0.223).floor()).toDouble();
    return Scaffold(
      backgroundColor: Color(0xFFE3F3FE),
     body: Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.19),
          child: Container(
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only( topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: radius + 10, bottom: 10),
                  child: Center(child: Text("Sumit Rahangdale",style:
                  TextStyle(fontWeight:FontWeight.bold,color: Colors.blueAccent,fontSize:22),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height:18,
                          child: Text("Rating",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          width: 80,
                          height:15,
                          child: Text("50%",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height:18,
                          child: Text("Lessons",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          width: 80,
                          height:15,
                          child: Text("50",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height:18,
                          child: Text("Experience",style: TextStyle(fontSize: 16,
                              fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          width: 80,
                          height:15,
                          child: Text("1 Year",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      Text('Education',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold,color: Colors.blueAccent),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Wrap(
                    children: [
                      Text('B.Sc,M.Sc,B.Ed in Physics, Biology,Chemistry,'
                          'B.Sc,M.Sc,B.Ed in Physics, Biology,Chemistry',
                        style: TextStyle(fontSize: 16.0),),
                    ],
                  ),
                ),

                SizedBox(
                  height:7,
                ),
                   Expanded(
                     child: ListView.builder(
                       controller: ScrollController(),
                       scrollDirection: Axis.vertical,
                       // shrinkWrap: true,
                       itemCount: 1,
                       itemBuilder: (BuildContext context, int index) {
                         return Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(10),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                         // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                         ),
                                   ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.end,

                               children: [
                                 Padding(
                                   padding: EdgeInsets.all(8.0),
                                   child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(38),
                                       color: Colors.white,
                                       boxShadow: [
                                         BoxShadow(
                                           color: Colors.cyan.withOpacity(0.5),
                                           spreadRadius: 5,
                                           blurRadius: 5,
                                           // changes position of shadow
                                         ),
                                       ],
                                     ),
                                     width:220,
                                     height:50,
                                   ),
                                 ),
                               ],
                             ),



                           ],
                         );

                       },
                     ),
                   ),
                Container(
                  width:320,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width:10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.grey,
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  topRight: Radius.circular(-30),
                                  bottomRight: Radius.circular(-10),)
                              ) ),
                          onPressed: (){}, child:Icon(Icons.camera_alt)
                      ),
                      SizedBox(
                      width: 50,
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(

                            hintText: "Message",
                            suffixIcon: Icon(Icons.mic_sharp),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],

            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),
            child: CircleAvatar(
              radius: radius,
              backgroundImage: AssetImage("assets/image/own.jpg"),
              backgroundColor: Colors.black38,
            ),
          ),
        ),
      ],
    ),


    );
  }
}
