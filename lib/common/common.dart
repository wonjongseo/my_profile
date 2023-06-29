import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<Widget> cActions() {
  String locale = Get.locale!.toLanguageTag();
  return [
    if (!locale.contains('ko'))
      TextButton(
          onPressed: () {
            Get.updateLocale(const Locale('ko', 'KR'));
          },
          child: const Text(
            'KR',
            style: TextStyle(),
          )),
    // if (locale != 'en-US')
    // if (!locale.contains('en'))
    //   TextButton(
    //       onPressed: () {
    //         Get.updateLocale(const Locale('en', 'US'));
    //       },
    //       child: const Text(
    //         'EN',
    //         style: TextStyle(),
    //       )),
    // if (locale != 'ja' && locale != 'ja-JP')
    if (!locale.contains('ja'))
      TextButton(
          onPressed: () {
            Get.updateLocale(const Locale('ja', 'JP'));
          },
          child: const Text(
            'JP',
            style: TextStyle(),
          ))
  ];
}

TextStyle sectionTitleStyle(context) => Theme.of(context).textTheme.subtitle2!;

const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;
