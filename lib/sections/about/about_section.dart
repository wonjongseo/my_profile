import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/components/my_outlined_button.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/about/about_section_text.dart';
import 'package:programmer_wonjongseo/sections/about/about_text_with_sign.dart';
import 'package:programmer_wonjongseo/sections/about/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Hello My name is Wonjongseo Nice to meet you, 안녕하세요 제 이름은 원종서입니다. 만나서 반납습니다. おはようございます。私のお名前はウォンジョンソと申します。よろしくお願いいたします。Hello My name is Wonjongseo Nice to meet you, 안녕하세요 제 이름은 원종서입니다. 만나서 반납습니다. おはようございます。私のお名前はウォンジョンソと申します。よろしくお願いいたします。',
                ),
              ),
              ExperienceCard(
                numOfExp: '01',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Hello My name is Wonjongseo Nice to meet you, 안녕하세요 제 이름은 원종서입니다. 만나서 반납습니다. おはようございます。私のお名前はウォンジョンソと申します。よろしくお願いいたします。Hello My name is Wonjongseo Nice to meet you, 안녕하세요 제 이름은 원종서입니다. 만나서 반납습니다. おはようございます。私のお名前はウォンジョンソと申します。よろしくお願いいたします。',
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
