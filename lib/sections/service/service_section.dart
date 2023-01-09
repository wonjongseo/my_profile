import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Service.dart';
import 'package:programmer_wonjongseo/sections/service/components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
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
    );
  }
}
