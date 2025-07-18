import 'package:flutter/material.dart';
import 'package:jayneel_portfolio/constants/constant_fonts.dart';
import 'package:jayneel_portfolio/screens/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jayneel Kanungo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: ConstantFonts.interRegular,
      ),
      home: const HomeScreen(),
    );
  }
}
