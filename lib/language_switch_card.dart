import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanaguesSwitchCard extends StatelessWidget {
  const LanaguesSwitchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String locale = Get.locale!.toLanguageTag();
    print(locale);
    return Row(
      children: [
        // if (locale != 'ko-US' && locale != 'ko-KR')
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
        if (!locale.contains('en'))
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('en', 'US'));
              },
              child: const Text(
                'EN',
                style: TextStyle(),
              )),
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
      ],
    );
  }
}
