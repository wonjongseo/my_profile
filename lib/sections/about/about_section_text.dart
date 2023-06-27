import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

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
          TyperAnimatedText(text)
          //  Text(
          //   text,
          //   style: const TextStyle(
          //       fontWeight: FontWeight.w500, color: kTextColor, height: 2),
          // )
        ],
      ),
    );
  }
}
