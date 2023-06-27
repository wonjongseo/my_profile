import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

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
    return MainScreen(
      body: Responsive.isDesktop(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.7 - 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20 * 2),
                    child: Text(
                      widget.project.title,
                      style: sectionTitleStyle(context).copyWith(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const SizedBox(height: 20 * 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProjectImageSlider(
                          carouselController: carouselController,
                          setState: changeIndexOfSlider,
                          project: widget.project,
                          currentIndex: currentIndex),
                      const SizedBox(width: 20 * 2),
                      ProjectDetailCard(
                        project: widget.project,
                        width: MediaQuery.of(context).size.width * 0.2,
                      )
                    ],
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.project.title,
                    style: sectionTitleStyle(context).copyWith(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 20 * 2),
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
