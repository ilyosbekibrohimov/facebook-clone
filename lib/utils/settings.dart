

import 'package:shared_preferences/shared_preferences.dart';

 SharedPreferences? preferences;
Future<void> initPreferences() async {
  preferences = await SharedPreferences.getInstance();
}