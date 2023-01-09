import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    super.key,
    required this.index,
    required this.press,
  });
  final int index;
  final VoidCallback press;
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
      onTap: widget.press,
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
          color: feedbacks[widget.index].color,
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
                        image: AssetImage(feedbacks[widget.index].userPic))),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: const TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            const SizedBox(height: kDefaultPadding * 2),
            const Text(
              'Ronald Thompson',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
