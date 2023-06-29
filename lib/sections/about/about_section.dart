import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/responsive.dart';
import 'package:programmer_wonjongseo/sections/about/about_section_text.dart';
import 'package:programmer_wonjongseo/sections/about/about_text_with_sign.dart';
import 'package:programmer_wonjongseo/sections/about/experience_card.dart';

import '../../components/deault_button.dart';
import '../../components/my_outlined_button.dart';
import 'my_about_details.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.about,
  });
  final GlobalKey about;

  @override
  Widget build(BuildContext context) {
    String numOfExp = '01';
    print('Responsive.isDesktop(context): ${Responsive.isDesktop(context)}');

    return Container(
      key: about,
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          if (Responsive.isDesktop(context))
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                        child: AboutSectionText(text: 'aboutMyStory')),
                    const Expanded(child: MyAboutDetails()),
                    ExperienceCard(numOfExp: numOfExp),
                  ],
                ),
                SizedBox(height: ResponsiveSize.sceenHeight10(context) * 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultButton(
                      imageSrc: 'assets/images/download.png',
                      text: 'Download CV',
                      press: () {},
                    ),
                  ],
                ),
              ],
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AboutTextWithSign(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //     const AboutTextWithSign(),
                    ExperienceCard(numOfExp: numOfExp),
                    Expanded(
                      child: AboutSectionText(
                        text: 'aboutMyStory',
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
                MyAboutDetails(),
              ],
            ),
        ],
      ),
    );
  }
}
