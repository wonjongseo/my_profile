import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wonjongseo Profile',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: kDefaultInputDecorationTheme),
      home: HomeScreen(),
    );
  }
}
