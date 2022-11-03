import 'package:flutter/material.dart';
import 'package:true_locals/app.dart';
import 'package:true_locals/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await App.initialize();
  runApp(const TrueLocalsApp());
}

class TrueLocalsApp extends StatelessWidget {
  const TrueLocalsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
