import 'package:flutter/material.dart';
import 'package:true_locals/screens/home_screen.dart';

void main() {
  runApp(const TrueLocalsApp());
}

class TrueLocalsApp extends StatelessWidget {
  const TrueLocalsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
