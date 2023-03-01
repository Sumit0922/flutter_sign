
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceMethods{

  void setName(String name)async{
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("Name", name);
  }

  Future<String> getName(String name)async{
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString("Name") ?? "ERROR";
  }



}