import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class LanaguesSwitchCard extends StatefulWidget {
  const LanaguesSwitchCard({
    Key? key,
  }) : super(key: key);

  @override
  State<LanaguesSwitchCard> createState() => _LanaguesSwitchCardState();
}

class _LanaguesSwitchCardState extends State<LanaguesSwitchCard> {
  String locale = Get.locale!.toLanguageTag();

  String value = 'KR';

  @override
  void initState() {
    super.initState();
    if (locale.contains('ko')) {
      value = 'KR';
    }
    // if (locale.contains('en')) {
    //   value = 'EN';
    // }
    if (locale.contains('ja')) {
      value = 'JP';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ListTile(
        leading: const Icon(
          FontAwesomeIcons.globe,
        ),
        title: DropdownButton(
          isExpanded: true,
          value: value,
          items: const [
            DropdownMenuItem(
              value: 'KR',
              child: Text(
                'KR',
                style: TextStyle(),
              ),
            ),
            // DropdownMenuItem(
            //   value: 'EN',
            //   child: Text(
            //     'EN',
            //     style: TextStyle(),
            //   ),
            // ),
            DropdownMenuItem(
              value: 'JP',
              child: Text(
                'JP',
                style: TextStyle(),
              ),
            ),
          ],
          onChanged: (value) {
            switch (value) {
              case 'KR':
                Get.updateLocale(const Locale('ko', 'KR'));
                break;
              // case 'EN':
              //   Get.updateLocale(const Locale('en', 'US'));
              //   break;

              case 'JP':
                Get.updateLocale(const Locale('ja', 'JP'));
                break;
            }
            this.value = value!;
            setState(() {});
          },
        ),
      ),
    );
  }
}
