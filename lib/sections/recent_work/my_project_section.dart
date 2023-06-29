import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/components/hireme_card.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/recent_work/components/recent_work_card.dart';

import '../../controller/key_controller.dart';
import '../../models/Project.dart';
import '../../project_detail/project_detail_screen.dart';
import 'all_project_screen.dart';

class MyProjectSection extends StatelessWidget {
  const MyProjectSection({super.key, required this.globalKey});
  final GlobalKey globalKey;
  @override
  Widget build(BuildContext context) {
    my_projects = my_projects.reversed.toList();
    Size size = MediaQuery.of(context).size;

    return GetBuilder<KeyController>(builder: (keyController) {
      return Container(
        margin: const EdgeInsets.only(top: kDefaultPadding * 6),
        width: double.infinity,
        // 0079FF
        decoration: BoxDecoration(
          color: const Color(0x000079ff).withOpacity(0.3),
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -80),
              child: const HireMeCard(),
            ),
            SectionTitle(
              key: globalKey,
              title: 'My Projects',
              subTitle: 'My Strong Arneas',
              projectCount: my_projects.length,
              color: const Color(0xFF00B1FF),
            ),
            const SizedBox(height: kDefaultPadding * 1.5),
            if (keyController.isShownProjectCards)
              SizedBox(
                width: 1110,
                child: Wrap(
                  spacing: kDefaultPadding,
                  runSpacing: kDefaultPadding * 2,
                  children: List.generate(
                    4,
                    (index) {
                      return FadeInDown(
                        duration: Duration(milliseconds: (index + 1) * 500),
                        child: RecentWorkCard(
                          project: my_projects[index],
                          press: () {
                            Get.to(
                                () => ProjectDetailScrenn(
                                      project: my_projects[index],
                                    ),
                                transition: Transition.leftToRight);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            const SizedBox(height: kDefaultPadding * 3),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                child: const Text(
                  '더보기..',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Get.to(
                    () => AllProjectSceen(projects: my_projects),
                    transition: Transition.leftToRight,
                  );
                },
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
          ],
        ),
      );
    });
  }
}
