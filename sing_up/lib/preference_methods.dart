
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
  void setLastName(String Lastname)async{
    var prefs1 = await SharedPreferences.getInstance();
    prefs1.setString("LastName", Lastname);
  }

  Future<String> getLastName(String LastName)async{
    var prefs1 = await SharedPreferences.getInstance();
    return prefs1.getString("LastName") ?? "ERROR";
  }
  void setEmail(String Email)async{
    var prefs2 = await SharedPreferences.getInstance();
    prefs2.setString("Email", Email);
  }

  Future<String> getEmail(String Email)async{
    var prefs2 = await SharedPreferences.getInstance();
    return prefs2.getString("Email") ?? "ERROR";
  }


}