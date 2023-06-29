import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../models/Project.dart';
import '../../responsive.dart';

class ProjectImageSlider extends StatelessWidget {
  ProjectImageSlider({
    Key? key,
    required this.project,
    required this.currentIndex,
    required this.setState,
    required this.carouselController,
  }) : super(key: key);

  final CarouselController carouselController;
  final Project project;
  final int currentIndex;
  final void Function(int) setState;

  @override
  Widget build(BuildContext context) {
    if (project.images.isEmpty) {
      return const SizedBox(height: 650 / 4);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!Responsive.isMobile(context))
          IconButton(
              style: IconButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              onPressed: () {
                carouselController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              icon: const Icon(Icons.arrow_left)),
        Expanded(
          child: Column(
            children: [
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  height: 600,
                  onPageChanged: (index, reason) {
                    setState(index);
                  },
                ),
                items: List.generate(
                  project.images.length,
                  (index) => Container(
                    margin: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      project.images[index],
                    ),
                  ),
                ),
              ),
              Row(
                children: project.images.asMap().entries.map((entry) {
                  return Expanded(
                    child: InkWell(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == entry.key
                                ? Colors.black
                                : Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        ),
        if (!Responsive.isMobile(context))
          IconButton(
              onPressed: () {
                carouselController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
              icon: const Icon(Icons.arrow_right)),
      ],
    );

    // content of Project
  }
}
