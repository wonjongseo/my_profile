import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/language_switch_card.dart';
import 'package:programmer_wonjongseo/models/Project.dart';
import 'package:programmer_wonjongseo/sections/recent_work/components/recent_work_card.dart';

import '../../project_detail/project_detail_screen.dart';

class AllProjectSceen extends StatefulWidget {
  const AllProjectSceen({super.key, required this.projects});
  final List<Project> projects;
  @override
  State<AllProjectSceen> createState() => _AllProjectSceenState();
}

class _AllProjectSceenState extends State<AllProjectSceen> {
  late PageController pageController;
  int currentPageIndex = 0;

  void onPageChanged(int newPage) {
    currentPageIndex = newPage;
    pageController.jumpToPage(currentPageIndex);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: currentPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          actions: [const LanaguesSwitchCard()],
          elevation: 0,
          backgroundColor: const Color(0x000079ff).withOpacity(0.3),
          shadowColor: const Color(0x000079ff).withOpacity(0.3),
        ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0x000079ff).withOpacity(0.3),
          ),
          child: Column(
            children: [
              const SectionTitle(
                title: 'My Projects',
                subTitle: 'My Strong Arneas',
                color: Color(0xFFFFB100),
              ),
              Expanded(
                flex: 6,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: onPageChanged,
                  itemCount: (widget.projects.length / 4).ceil(),
                  itemBuilder: (context, itemBuilderIndex) {
                    return Center(
                      child: SizedBox(
                        width: 1110,
                        child: Wrap(
                          spacing: kDefaultPadding,
                          runSpacing: kDefaultPadding * 2,
                          children: List.generate(
                            4,
                            (index) {
                              //my_projects.length - index - 1
                              if (index + (itemBuilderIndex * 4) >
                                  widget.projects.length - 1) {
                                return Container();
                              }
                              return FadeInLeft(
                                from: 500,
                                delay:
                                    Duration(milliseconds: (1 + index) * 100),
                                duration:
                                    Duration(milliseconds: (1 + index) * 500),
                                child: RecentWorkCard(
                                  project: widget
                                      .projects[index + (itemBuilderIndex * 4)],
                                  press: () {
                                    Get.to(
                                        () => ProjectDetailScrenn(
                                              project: widget.projects[index +
                                                  (itemBuilderIndex * 4)],
                                            ),
                                        transition: Transition.leftToRight);
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate((widget.projects.length / 4).ceil(),
                        (index) {
                      return InkWell(
                        onTap: () {
                          onPageChanged(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: currentPageIndex == index
                                ? Colors.black
                                : Colors.black.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ));
  }
}
