import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
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
    Size size = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Get.dialog(AlertDialog(
          backgroundColor: services[widget.index].color,
          content: SizedBox(
            // width: size.height * 0.5,
            // height: size.height * 0.4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      services[widget.index].title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(width: 60),
                    Image.asset(
                      services[widget.index].image,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                ...List.generate(
                  services[widget.index].language.length,
                  (index) => ListTile(
                    minLeadingWidth: 100,
                    title: Text(
                      services[widget.index].language[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    leading: services[widget.index].language[index].icon,
                  ),
                )
              ],
            ),
          ),
        ));
      },
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
              style: const TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
