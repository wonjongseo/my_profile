import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/components/section_title.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Feedback.dart';
import 'package:programmer_wonjongseo/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  const FeedbackSection({super.key, required this.globalKey});
  final GlobalKey globalKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: globalKey,
      constraints: const BoxConstraints(maxWidth: 1100),
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      child: Column(
        children: [
          const SectionTitle(
            title: 'Feedback Received',
            subTitle: 'Client\'s testimonials that inspred me a lot',
            color: Color(0xFF00B1FF),
          ),
          const SizedBox(height: kDefaultPadding),
          SizedBox(
            width: 1110,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: List.generate(
                feedbacks.length,
                (index) => FeedbackCard(
                  index: index,
                  press: () {},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
