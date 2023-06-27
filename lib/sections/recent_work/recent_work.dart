import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/components/hireme_card.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/RecentWork.dart';
import 'package:programmer_wonjongseo/sections/recent_work/components/recent_work_card.dart';

import '../../common/common.dart';
import '../../models/Project.dart';
import '../../project_detail/project_detail_screen.dart';
import '../project_detail2/project_detail_screen.dart';

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
                  project: my_projects[index],
                  press: () {
                    Get.to(
                        () => ProjectDetailScrenn(
                              project: my_projects[index],
                            ),
                        transition: Transition.leftToRight);
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
                Get.to(
                  () => const AllProjectSceen(),
                  transition: Transition.leftToRight,
                );
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
          actions: cActions(),
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
              Expanded(
                flex: 3,
                // width: 1110,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: onPageChanged,
                  itemCount: (my_projects.length / 4).ceil(),
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
                              if (index + (itemBuilderIndex * 4) >
                                  my_projects.length - 1) {
                                return Container();
                              }

                              return FadeInLeft(
                                from: 350,
                                delay:
                                    Duration(milliseconds: (1 + index) * 100),
                                duration:
                                    Duration(milliseconds: (1 + index) * 500),
                                child: RecentWorkCard(
                                  project: my_projects[
                                      index + (itemBuilderIndex * 4)],
                                  press: () {
                                    Get.to(
                                        () => ProjectDetailScrenn(
                                              project: my_projects[index +
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
                    children:
                        List.generate((my_projects.length / 4).ceil(), (index) {
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
