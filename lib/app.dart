import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App {
  static late SharedPreferences localStorage;
  static late String mapStyle;

  static initialize() async {
    localStorage = await SharedPreferences.getInstance();
    mapStyle = await rootBundle.loadString("assets/map_style.txt");
  }
}
