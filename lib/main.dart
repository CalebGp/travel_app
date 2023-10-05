// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:travel_app/screens/home.dart';
import 'package:travel_app/screens/splash.dart';
import 'package:travel_app/themes/theme.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: myTheme,
    );
  }
}
