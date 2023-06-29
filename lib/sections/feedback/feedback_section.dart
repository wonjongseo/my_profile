import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/CorporationProjects.dart';
import 'package:programmer_wonjongseo/models/Feedback.dart';
import 'package:programmer_wonjongseo/sections/feedback/components/feedback_card.dart';

class CompanyProjectSection extends StatefulWidget {
  const CompanyProjectSection({super.key, required this.globalKey});
  final GlobalKey globalKey;

  @override
  State<CompanyProjectSection> createState() => _CompanyProjectSectionState();
}

class _CompanyProjectSectionState extends State<CompanyProjectSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.globalKey,
      constraints: const BoxConstraints(maxWidth: 1100),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      child: Column(
        children: [
          SectionTitle(
            title: 'Company project',
            subTitle: 'Projects',
            projectCount: corporation_projects.length,
            color: Colors.grey.withOpacity(0.5),
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  corporation_projects.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FeedbackCard(
                      corporationProject: corporation_projects[index],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
