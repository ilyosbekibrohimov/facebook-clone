

import 'package:shared_preferences/shared_preferences.dart';

 SharedPreferences? preferences;
Future<SharedPreferences?> getSharedPreferences() async{
  if(preferences == null)
    preferences = await SharedPreferences.getInstance();
    return preferences;
}