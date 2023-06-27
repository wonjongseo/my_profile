import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Project.dart';
import 'package:programmer_wonjongseo/models/languages.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    super.key,
    required this.press,
    required this.project,
  });

  final VoidCallback press;
  final Project project;
  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  Duration duration = const Duration(microseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        width: 540,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                widget.project.images[0],
                height: 500,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(widget.project.description.toUpperCase()),
                    const SizedBox(height: kDefaultPadding / 2),
                    // Text(
                    //   widget.project.descriptionToLocale(widget.project.index),
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .headlineSmall!
                    //       .copyWith(height: 1.5),
                    // ),
                    Text(
                      widget.project.title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(height: 1.5),
                    ),
                    const SizedBox(height: kDefaultPadding),
                    const Text(
                      'View Details',
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
