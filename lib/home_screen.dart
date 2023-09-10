import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/components/deault_button.dart';
import 'package:programmer_wonjongseo/components/my_outlined_button.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/controller/key_controller.dart';
import 'package:programmer_wonjongseo/main_screen.dart';
import 'package:programmer_wonjongseo/my_socail_links.dart';
import 'package:programmer_wonjongseo/sections/about/about_section.dart';
import 'package:programmer_wonjongseo/sections/contact/contact_section.dart';
import 'package:programmer_wonjongseo/sections/feedback/feedback_section.dart';
import 'package:programmer_wonjongseo/sections/recent_work/my_project_section.dart';
import 'package:programmer_wonjongseo/sections/service/skill_section.dart';
import 'package:programmer_wonjongseo/sections/topSection/top_section.dart';

import 'corporation/corporation_projects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  KeyController keyController = KeyController.to;
  bool isShowAppBar = false;

  get locale => null;

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      isHome: true,
      body: GetBuilder<KeyController>(builder: (context2) {
        return SingleChildScrollView(
          controller: keyController.scrollController,
          child: Column(
            key: keyController.topKey,
            children: [
              TopSection(
                  scrollController: keyController.scrollController), // 900
              AboutSection(about: keyController.aboutKey), //
              const SocailSection(),
              SkillSection(globalKey: keyController.stacksKeyKey),

              MyProjectSection(globalKey: keyController.myProjectKey),
              CompanyProjectSection(globalKey: keyController.testimonialKey),
              const SizedBox(height: kDefaultPadding),
              ContactSection(globalKey: keyController.contactKey),
              const SizedBox(height: 500)
            ],
          ),
        );
      }),
    );
  }
}

class SocailSection extends StatelessWidget {
  const SocailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      padding: const EdgeInsets.only(top: kDefaultPadding * 2),
      width: double.infinity,
      decoration:
          BoxDecoration(color: const Color(0x00e4a5ff).withOpacity(0.3)),
      child: Column(children: [
        const SectionTitle(
          subTitle: 'Follow me~',
          title: 'My Social NetWork',
          color: Color(0xFFFF0000),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        const MySocialLinks(),
        const SizedBox(height: kDefaultPadding * 6),
      ]),
    );
  }
}
