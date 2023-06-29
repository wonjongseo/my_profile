import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/language_switch_card.dart';
import 'package:programmer_wonjongseo/sections/topSection/components/logo_blur_box.dart';
import 'package:programmer_wonjongseo/sections/topSection/components/menu.dart';

import '../../responsive.dart';

class TopSection extends StatefulWidget {
  const TopSection({
    super.key,
    required this.scrollController,
  });
  final ScrollController scrollController;

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    if (Responsive.isDesktop(context))
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(
              maxHeight: ResponsiveSize.sceenHeight900(context),
              minHeight: ResponsiveSize.sceenHeight700(context),
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF6FA70).withOpacity(0.3),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: kDefaultPadding),
              width: 1200,
              child: Stack(
                children: [
                  LogoAndBlurBox(size: size),
                  if (Responsive.isDesktop(context))
                    Positioned(
                      bottom: 0,
                      child: Menu(
                        scrollController: widget.scrollController,
                      ),
                    ),
                ],
              ),
            ),
          ),
          const Positioned(
            right: 0,
            child: LanaguesSwitchCard(),
          ),
        ],
      );
    else
      return Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFF6FA70).withOpacity(0.3),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: kDefaultPadding),
              width: 1200,
              child: Stack(
                children: [
                  LogoAndBlurBox(size: size),
                ],
              ),
            ),
          ),
        ],
      );
  }
}
