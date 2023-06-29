import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/common/dialog.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/corporation/report/report_screen.dart';
import 'package:programmer_wonjongseo/models/CorporationProjects.dart';
import 'package:programmer_wonjongseo/models/Feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    super.key,
    required this.press,
    required this.corporationProject,
  });
  final VoidCallback press;
  final Corporation corporationProject;
  @override
  State<FeedbackCard> createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  bool isHover = false;
  Duration duration = const Duration(microseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        openProjectDialog(context, widget.corporationProject,
            child: ReportSceen(
              corporation: widget.corporationProject,
            ));
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        width: 350,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.corporationProject.color,
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: const Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 10),
                    boxShadow: [if (!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                        image: AssetImage(widget.corporationProject.userPic))),
              ),
            ),
            Text(
              widget.corporationProject.name,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            Text(
              widget.corporationProject.source,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: kDefaultPadding),
            Text(
              widget.corporationProject.description,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
