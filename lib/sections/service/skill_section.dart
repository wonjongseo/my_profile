import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Service.dart';
import 'package:programmer_wonjongseo/sections/service/components/skill_card.dart';

import '../../controller/key_controller.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key, required this.globalKey});
  final GlobalKey globalKey;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<KeyController>(builder: (controller) {
      return Container(
        key: globalKey,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              subTitle: 'My Strong Arenas',
              title: 'My Skills',
              color: Colors.grey.withOpacity(0.5),
            ),
            if (controller.isShownStackCards)
              SizedBox(
                width: 1110,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: List.generate(
                    services.length,
                    (index) => FadeInDown(
                      child: SkillCard(index: index),
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
    });
  }
}
