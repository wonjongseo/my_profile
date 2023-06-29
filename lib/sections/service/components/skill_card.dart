import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Service.dart';
import 'package:programmer_wonjongseo/responsive.dart';

class SkillCard extends StatefulWidget {
  const SkillCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Random random = Random();
    return InkWell(
      onTap: () {
        Get.dialog(AlertDialog(
          backgroundColor: services[widget.index].color,
          content: Container(
            margin: const EdgeInsets.symmetric(vertical: 11, horizontal: 22),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FadeInDown(
                      child: Text(
                        services[widget.index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ResponsiveSize.sceenHeight10(context) * 6,
                        ),
                      ),
                    ),
                    SizedBox(width: ResponsiveSize.sceenWidth10(context) * 4),
                    FadeInRight(
                      child: Image.asset(
                        services[widget.index].image,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
                SizedBox(height: ResponsiveSize.sceenHeight10(context) * 3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      ...List.generate(
                        services[widget.index].language.length,
                        (index) {
                          if (index % 2 != 0) {
                            return FadeInRight(
                              duration:
                                  Duration(milliseconds: 300 * (index + 1)),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        services[widget.index]
                                            .language[index]
                                            .name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Image.asset(
                                        services[widget.index]
                                            .language[index]
                                            .iconPath,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }
                          return FadeInLeft(
                            duration: Duration(milliseconds: 300 * (index + 1)),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Image.asset(
                                        services[widget.index]
                                            .language[index]
                                            .iconPath,
                                      )),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      services[widget.index]
                                          .language[index]
                                          .name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: services[widget.index].color,
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                        offset: const Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1))
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              services[widget.index].title,
              style: const TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
