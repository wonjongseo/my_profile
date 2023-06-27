import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/components/my_outlined_button.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/about/about_section_text.dart';
import 'package:programmer_wonjongseo/sections/about/about_text_with_sign.dart';
import 'package:programmer_wonjongseo/sections/about/experience_card.dart';

import '../../models/languages.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.about,
  });
  final GlobalKey about;

  @override
  Widget build(BuildContext context) {
    String aboutMyStory =
        "👋  Hi there! I'm full stack developer skilled in WEB, and APP 🚀\nI live and work in Japan since 2022.11\nOriginally, I was a backend developer who used Springs or NodeJs.\nBut at present, I have been interested in creating App with Flutter.\nI enjoy drinking, watching Japanese animation. ⛰ 🏄\nI hope to develop every beautiful things✨";

    String yearOfExperience = '日本キスコ株式会社 (2022/11/16 ~)';
    String numOfExp = '01';
    return Container(
      key: about,
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text: aboutMyStory,
                ),
              ),
              ExperienceCard(numOfExp: numOfExp),
              Expanded(
                child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                toTr('name'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              )),
                              const SizedBox(width: 20),
                              Expanded(child: Text(toTr('programmer_name')))
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                toTr('city'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              )),
                              const SizedBox(width: 20),
                              Expanded(child: Text(toTr('programmer_city')))
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                toTr('residence'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              )),
                              const SizedBox(width: 20),
                              Expanded(
                                  child: Text(toTr('programmer_residence')))
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  toTr('age'),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                  child: Text(
                                toTr('programmer_age'),
                                
                              ))
                            ]),
                        const SizedBox(height: 10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(child: Text(toTr('ility'),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              )),
                              const SizedBox(width: 20),
                              Expanded(child: Text(toTr('academic_ability'),))
                            ]),
                      ],
                    )),
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
