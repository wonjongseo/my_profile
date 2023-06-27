import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Service.dart';
import 'package:programmer_wonjongseo/sections/service/components/service_card.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key, required this.globalKey});
  final GlobalKey globalKey;
  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Container(
        key: globalKey,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: const BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            const SectionTitle(
              subTitle: 'My Strong Arenas',
              title: 'Service Offerings',
              color: Color(0xFFFF0000),
            ),
            SizedBox(
              width: 1110,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: List.generate(
                  services.length,
                  (index) => ServiceCard(index: index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
