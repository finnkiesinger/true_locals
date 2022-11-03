import 'package:shared_preferences/shared_preferences.dart';

class App {
  static late SharedPreferences localStorage;

  static initialize() async {
    localStorage = await SharedPreferences.getInstance();
  }
}