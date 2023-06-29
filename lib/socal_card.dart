import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';

class SocalCard extends StatefulWidget {
  const SocalCard({
    super.key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  });

  final String iconSrc, name;
  final Color color;
  final VoidCallback press;
  @override
  State<SocalCard> createState() => _SocalCardState();
}

class _SocalCardState extends State<SocalCard> {
  bool isHover = false;
  Duration duration = Duration(microseconds: 200);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image(image: AssetImage(widget.iconSrc)),
              SizedBox(width: 10),
              Text(widget.name)
            ],
          ),
        ),
      ),
    );
  }
}
