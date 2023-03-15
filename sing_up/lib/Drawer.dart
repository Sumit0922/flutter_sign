import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sing_up/UiPart.dart';

import 'Callingapi.dart';
import 'SplashScreen.dart';
import 'gridView.dart';
import 'listView.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height:135,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Screens',style:TextStyle(fontSize:35),),
            ),
          ),

          ListTile(
            leading:
            FaIcon(FontAwesomeIcons.phone),
            title: const Text('Calling Api'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CallingApi()));

              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
            FaIcon(FontAwesomeIcons.userLarge),
            title: const Text('Ui Part'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyUi()));

              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading:
            FaIcon(FontAwesomeIcons.box),
            title: const Text('Grid View'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => gridView()));

              // Navigator.pop(context);
            },
          ),ListTile(
            leading:
            FaIcon(FontAwesomeIcons.list),
            title: const Text('List View'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => listView()));

              // Navigator.pop(context);
            },
          ),ListTile(
            leading:
            FaIcon(FontAwesomeIcons.sheetPlastic),
            title: const Text('Splash Screens'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));

              // Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}
