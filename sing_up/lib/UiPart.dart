import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyUi extends StatefulWidget {
  const MyUi({Key? key}) : super(key: key);

  @override
  State<MyUi> createState() => _MyUiState();
}

class _MyUiState extends State<MyUi> {
  // var radius = ;
  // final List<String> messages = ["","","","","",];



  late var radius;

  Widget _chatTile() => Row(
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
                offset: Offset(0, -4),
                blurRadius: 5,
                // changes position of shadow
              ),
            ],
          ),
          width:ScreenUtil().setWidth(220),
          height:ScreenUtil().setHeight(50),
        ),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width * 0.223);
    radius =  ScreenUtil().setWidth(70);
    return Scaffold(
      backgroundColor: Color(0xFFE3F3FE),
     body: Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
          child: Container(
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(ScreenUtil().setWidth(50)),
              topRight: Radius.circular(ScreenUtil().setWidth(50)),)
              // BorderRadius.only( topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: radius + 10, bottom: 10),
                  child: Center(child: Text("Sumit Rahangdale",style:
                  TextStyle(fontWeight:FontWeight.bold,color: Colors.blueAccent,fontSize:ScreenUtil().setSp(20)),)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width:ScreenUtil().setWidth(80),
                          height:ScreenUtil().setHeight(29),
                          child: Text("Rating",style: TextStyle(fontSize: ScreenUtil().setSp(14), fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          width:ScreenUtil().setWidth(80),
                          height:ScreenUtil().setHeight(29),
                          child: Text("50%",
                            style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width:ScreenUtil().setWidth(80),
                          height:ScreenUtil().setHeight(29),
                          child: Text("Lessons",style: TextStyle(fontSize: ScreenUtil().setSp(14), fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          width:ScreenUtil().setWidth(80),
                          height:ScreenUtil().setHeight(29),
                          child: Text("50",
                            style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width:ScreenUtil().setWidth(80),
                          height:ScreenUtil().setHeight(29),
                          child: Text("Experience",style: TextStyle(fontSize: ScreenUtil().setSp(14),
                              fontWeight: FontWeight.bold,color: Colors.blueAccent),
                          ),
                        ),
                        Container(
                          width:ScreenUtil().setWidth(80),
                          height:ScreenUtil().setHeight(29),
                          child: Text("1 Year",
                            style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Row(
                    children: [
                      Text('Education',
                        style: TextStyle(fontSize: ScreenUtil().setSp(18), fontWeight: FontWeight.bold,color: Colors.blueAccent),
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
                        style: TextStyle(fontSize: ScreenUtil().setSp(16)),),
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
                       itemCount: 10,
                       itemBuilder: (BuildContext context, int index) {
                         return Row(
                           mainAxisAlignment: index%2 == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
                           children: [
                             _chatTile(),
                           ],
                         );
                       },
                     ),
                   ),
                Container(
                  width: ScreenUtil().setWidth(350),
                  height: ScreenUtil().setHeight(40),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width:10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.white10,
                              shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(ScreenUtil().setSp(25)),
                                // BorderRadius.only(
                                //   topLeft: Radius.circular(20),
                                //   bottomLeft: Radius.circular(20),
                                //   topRight: Radius.circular(-30),
                                //   bottomRight: Radius.circular(-10),)
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
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
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
