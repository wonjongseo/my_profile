import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/RecentWork.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    super.key,
    required this.index,
    required this.press,
  });

  final int index;
  final VoidCallback press;

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
            Image.asset(recentWorks[widget.index].image),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].category.toUpperCase()),
                    const SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index].title,
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
