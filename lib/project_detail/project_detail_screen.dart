import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/language_switch_card.dart';

import '../common/common.dart';
import '../main_screen.dart';
import '../models/Project.dart';
import '../responsive.dart';
import 'components/project_detail_card.dart';
import 'components/project_image_slider.dart';

const String PROJECT_DETAIL_PATH = '/detail';

class ProjectDetailScrenn extends StatefulWidget {
  const ProjectDetailScrenn({super.key, required this.project});
  final Project project;
  @override
  State<ProjectDetailScrenn> createState() => _ProjectDetailScrennState();
}

class _ProjectDetailScrennState extends State<ProjectDetailScrenn> {
  int currentIndex = 0;
  late CarouselController carouselController = CarouselController();
  @override
  void initState() {
    super.initState();
  }

  void changeIndexOfSlider(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x000079ff).withOpacity(0.3),
        title: Text(
          widget.project.title,
          style: sectionTitleStyle(context).copyWith(
            fontSize: 30,
          ),
        ),
        actions: [const LanaguesSwitchCard()],
        centerTitle: true,
      ),
      body: Responsive.isDesktop(context)
          ? SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x000079ff).withOpacity(0.3),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: ProjectImageSlider(
                            carouselController: carouselController,
                            setState: changeIndexOfSlider,
                            project: widget.project,
                            currentIndex: currentIndex,
                          ),
                        ),
                        const SizedBox(width: 20 * 2),
                        Expanded(
                          flex: 5,
                          child: ProjectDetailCard(
                            project: widget.project,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProjectImageSlider(
                      carouselController: carouselController,
                      setState: changeIndexOfSlider,
                      project: widget.project,
                      currentIndex: currentIndex),
                  ProjectDetailCard(project: widget.project)
                ],
              ),
            ),
    );
  }
}
