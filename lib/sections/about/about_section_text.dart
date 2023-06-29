import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/models/languages.dart';
import 'package:programmer_wonjongseo/responsive.dart';

import '../../constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: AnimatedTextKit(
        repeatForever: false,
        animatedTexts: [
          TyperAnimatedText(toTr(text),
              textStyle: TextStyle(
                // fontFamily: ,
                fontWeight: FontWeight.bold,
                fontSize: ResponsiveSize.sceenHeight10(context) * 1.8,
              ))
        ],
      ),
    );
  }
}
