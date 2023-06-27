import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/language_switch_card.dart';
import 'package:programmer_wonjongseo/sections/topSection/components/logo_blur_box.dart';
import 'package:programmer_wonjongseo/sections/topSection/components/menu.dart';
import 'package:programmer_wonjongseo/sections/topSection/components/person_pic.dart';

class TopSection extends StatelessWidget {
  const TopSection(
      {super.key,
      required this.scrollController,
      required this.abour,
      required this.services,
      required this.testimonial,
      required this.contact,
      required this.portofolio});
  final ScrollController scrollController;
  final GlobalKey abour;
  final GlobalKey services;
  final GlobalKey portofolio;
  final GlobalKey testimonial;
  final GlobalKey contact;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              child: Menu(
                  scrollController: scrollController,
                  stacks: services,
                  portofolio: portofolio,
                  abour: abour,
                  testimonial: testimonial,
                  contact: contact),
            ),
            const Positioned(right: 0, child: LanaguesSwitchCard()),
          ],
        ),
      ),
    );
  }
}
