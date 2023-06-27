import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/components/hireme_card.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/RecentWork.dart';
import 'package:programmer_wonjongseo/sections/recent_work/components/recent_work_card.dart';

import '../../models/Project.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key, required this.globalKey});
  final GlobalKey globalKey;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/recent_work_bg.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          SectionTitle(
            key: globalKey,
            title: 'Recent Works',
            subTitle: 'My Strong Arneas',
            color: const Color(0xFFFFB100),
          ),
          const SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                4,
                (index) => RecentWorkCard(
                  index: index,
                  press: () {
                    Get.dialog(AlertDialog(
                      content: SizedBox(
                        width: size.width * 0.8,
                        height: size.height * 0.8,
                        child: Column(
                          children: [
                            Text(my_projects[index].title),
                            Text(my_projects[index].title),
                          ],
                        ),
                      ),
                    ));
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              child: const Text('더보기..'),
              onPressed: () {
                Get.to(AllProjectSceen(), transition: Transition.leftToRight);
              },
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}

class AllProjectSceen extends StatefulWidget {
  const AllProjectSceen({super.key});

  @override
  State<AllProjectSceen> createState() => _AllProjectSceenState();
}

class _AllProjectSceenState extends State<AllProjectSceen> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print('my_projects.length: ${my_projects.length}');

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF7E8FF).withOpacity(0.3),
          shadowColor: const Color(0xFFF7E8FF).withOpacity(0.3),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF7E8FF).withOpacity(0.3),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/recent_work_bg.png'),
            ),
          ),
          child: Column(
            children: [
              const SectionTitle(
                title: 'Recent Works',
                subTitle: 'My Strong Arneas',
                color: Color(0xFFFFB100),
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        (my_projects.length / 4).ceil(),
                        (myProjectsIndex) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: SizedBox(
                                width: 1100,
                                child: Wrap(
                                  direction: Axis.horizontal,
                                  spacing: kDefaultPadding,
                                  runSpacing: kDefaultPadding * 2,
                                  children: List.generate(
                                    4,
                                    (index) => FadeInLeft(
                                      delay:
                                          Duration(milliseconds: index * 200),
                                      child: RecentWorkCard(
                                        index: index + (myProjectsIndex + 4),
                                        press: () {
                                          Get.dialog(AlertDialog(
                                            content: SizedBox(
                                              width: size.width * 0.8,
                                              height: size.height * 0.8,
                                              child: Column(
                                                children: [
                                                  Text(my_projects[index +
                                                          (myProjectsIndex + 4)]
                                                      .title),
                                                  Text(my_projects[index +
                                                          (myProjectsIndex + 4)]
                                                      .title),
                                                ],
                                              ),
                                            ),
                                          ));
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))),
              ),
              const SizedBox(height: kDefaultPadding * 5),
            ],
          ),
        ));
  }
}
