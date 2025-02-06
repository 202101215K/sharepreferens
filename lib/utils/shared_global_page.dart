import 'package:shared_preferences/shared_preferences.dart';

class SharedGlobal {
static final SharedGlobal myInstance = SharedGlobal.instance();
SharedGlobal.instance();
factory SharedGlobal(){
  return myInstance;
}
late SharedPreferences prefs;

Future<void>initSharedPreferences()async{
  prefs = await SharedPreferences.getInstance();
  }
set fullName (String value){
  prefs.setString("fullname", value);
}
 String get fullName{
  return prefs.getString("fullname")  ?? "-";
}

set address (String value){
  prefs.setString("addres", value);
}
 String get address{
  return prefs.getString("addres")  ?? "-";
}

set darkMode (bool value){
  prefs.setBool("darKMode", value);
}
 bool get darkMode{
  return prefs.getBool("darKMode") ?? false;
}

set gender (int value){
  prefs.setInt("gender", value);
}
 int get gender{
  return prefs.getInt("gender") ?? 0;
}




}