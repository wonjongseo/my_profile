import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/common/animated_counter.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/corporation/high_light/high_light.dart';
import 'package:programmer_wonjongseo/models/CorporationProjects.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.color,
    this.projectCount,
  });

  final String title, subTitle;
  final Color color;
  final int? projectCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPadding),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: DecoratedBox(
              decoration: BoxDecoration(color: color),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                subTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w200,
                  color: kTextColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  if (projectCount != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: HeighLight(
                        counter: AnimatedCounter(
                          value: projectCount!,
                          text: "+",
                        ),
                        label: "",
                      ),
                    ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
