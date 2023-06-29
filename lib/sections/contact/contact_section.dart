import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/contact/components/contact_box.dart';
import 'package:programmer_wonjongseo/socal_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key, required this.globalKey});
  final GlobalKey globalKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x00DFA2).withOpacity(0.3),
      ),
      child: const Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: 'Contact Me',
            subTitle: 'For Project inquiry and information',
            color: Color(0xFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}
