import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/models/Service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: services[widget.index].color,
            boxShadow: [if (isHover) kDefaultCardShadow]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: const EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                        offset: const Offset(0, 20),
                        blurRadius: 30,
                        color: Colors.black.withOpacity(0.1))
                ],
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              services[widget.index].title,
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
