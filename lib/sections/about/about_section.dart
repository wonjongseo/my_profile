import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/components/my_outlined_button.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/about/about_section_text.dart';
import 'package:programmer_wonjongseo/sections/about/about_text_with_sign.dart';
import 'package:programmer_wonjongseo/sections/about/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.abour,
  });
  final GlobalKey abour;

  @override
  Widget build(BuildContext context) {
    String aboutMyStory =
        'BirthDay: 1997/05/27\nName: Won Jongseo\nUniversity: Sejong University';
    String yearOfExperience = '日本キスコ株式会社 (2022/11/16 ~)';
    String numOfExp = '01';
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        key: abour,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text: aboutMyStory,
                ),
              ),
              ExperienceCard(numOfExp: numOfExp),
              Expanded(
                child: AboutSectionText(
                  text: yearOfExperience,
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlinedButton(
                imageSrc: 'assets/images/hand.png',
                text: 'Hire Me!',
                press: () {},
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: 'assets/images/download.png',
                text: 'Download CV',
                press: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
