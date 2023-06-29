import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/responsive.dart';

import '../../constants.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({
    super.key,
    required this.numOfExp,
  });

  final String numOfExp;

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding),
        height: ResponsiveSize.sceenHeight100(context) * 2.5,
        width: ResponsiveSize.sceenHeight100(context) * 2.5,
        decoration: BoxDecoration(
          color: const Color(0xFFF7E8FF),
          boxShadow: [if (isHover) kDefaultCardShadow],
          borderRadius: BorderRadius.circular(
            ResponsiveSize.sceenWidth10(context),
          ),
        ),
        child: AnimatedContainer(
          duration: duration,
          decoration: BoxDecoration(
            color: const Color(0xFFEDD2FC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (!isHover)
                BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 6,
                  color: const Color(0xFFA600FF).withOpacity(0.25),
                ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Text(
                        widget.numOfExp,
                        style: TextStyle(
                          fontSize: isHover
                              ? 80
                              : ResponsiveSize.sceenHeight100(context),
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = const Color(0xFFDFA3FF).withOpacity(0.5),
                          shadows: [
                            BoxShadow(
                                offset: const Offset(0, 5),
                                blurRadius: 10,
                                color: const Color(0xFFA600FF).withOpacity(0.5))
                          ],
                        ),
                      ),
                      Text(
                        widget.numOfExp,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: isHover
                                ? 80
                                : ResponsiveSize.sceenHeight100(context),
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveSize.sceenWidth10(context) / 2,
                  ),
                  // if (Responsive.isDesktop(context))
                  Text(
                    'Years of Experience',
                    style: TextStyle(
                      color: const Color(0xFFA600FF),
                      fontSize: isHover ? 12 : 14,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
