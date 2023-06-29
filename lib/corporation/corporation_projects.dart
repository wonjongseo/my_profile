import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/common/animated_counter.dart';
import 'package:programmer_wonjongseo/common/common.dart';
import 'package:programmer_wonjongseo/corporation/corporation_project_card.dart';
import 'package:programmer_wonjongseo/corporation/high_light/high_light.dart';
import 'package:programmer_wonjongseo/models/CorporationProjects.dart';

class CorporationProjects extends StatelessWidget {
  const CorporationProjects({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: HeighLight(
            counter: AnimatedCounter(
              value: corporation_projects.length,
              text: "+",
            ),
            label: "Corporation Projects",
          ),
        ),
        Text(
          'Corporation Projects',
          style: sectionTitleStyle(context),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              corporation_projects.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CorporationProjectCard(
                  corporationProject: corporation_projects[index],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
