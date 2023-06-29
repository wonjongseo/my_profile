import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.mobile,
      this.mobileLarge,
      this.tablet,
      required this.desktop});

  final Widget mobile;
  final Widget? mobileLarge;
  final Widget? tablet;
  final Widget desktop;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;
  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width <= 700;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge!;
    } else {
      return mobile;
    }
  }
}

class ResponsiveSize {
  //flutter: ResponsiveSize.sceenHeight: 1147.0
  static double sceenHeight = Get.size.height;

  static double sceenHeight100(BuildContext context) =>
      MediaQuery.of(context).size.height / 11.47;

  static double sceenHeight900(BuildContext context) =>
      MediaQuery.of(context).size.height / 1.28;

  static double sceenHeight700(BuildContext context) =>
      MediaQuery.of(context).size.height / 1.638;

  static double sceenHeight250(BuildContext context) =>
      MediaQuery.of(context).size.height / 4.588;

  static double sceenHeight10(BuildContext context) =>
      MediaQuery.of(context).size.height / 114.7;

  static double sceenWidth = Get.size.width;
  // flutter: ResponsiveSize.sceenWidth: 1920.0

  static double sceenWidth900(BuildContext context) =>
      MediaQuery.of(context).size.width / 1.28;
  static double sceenWidth250(BuildContext context) =>
      MediaQuery.of(context).size.width / 7.68;

  static double sceenWidth100(BuildContext context) =>
      MediaQuery.of(context).size.width / 19.20;

  static double sceenWidth10(BuildContext context) =>
      MediaQuery.of(context).size.width / 192;
}
