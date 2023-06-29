import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/home_screen.dart';

import 'controller/key_controller.dart';
import 'models/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(KeyController());
    return GetMaterialApp(
      scrollBehavior: GetPlatform.isDesktop
          ? const MaterialScrollBehavior()
              .copyWith(dragDevices: {PointerDeviceKind.mouse})
          : null,
      translations: Languagues(),
      fallbackLocale: const Locale('ja', 'JP'),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      title: 'Wonjongseo Profile',
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        inputDecorationTheme: kDefaultInputDecorationTheme,
      ),
      home: const HomeScreen(),
    );
  }
}
