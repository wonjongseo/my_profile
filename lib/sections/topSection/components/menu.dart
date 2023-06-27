import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';

class Menu extends StatefulWidget {
  Menu({
    super.key,
    required this.scrollController,
    required this.abour,
    required this.stacks,
    required this.testimonial,
    required this.contact,
    required this.portofolio,
    this.top,
  });
  final ScrollController scrollController;
  final GlobalKey? top;
  final GlobalKey abour;
  final GlobalKey stacks;
  final GlobalKey testimonial;
  final GlobalKey contact;
  final GlobalKey portofolio;
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = -1;
  int hoverIndex = 0;

  @override
  initState() {
    super.initState();
    if (widget.top != null) {
      menuItems.insert(0, {'name': 'top'});
    }
  }

  List<Map<String, dynamic>> menuItems = [
    {'name': 'Abour'},
    {'name': 'Stacks'},
    {'name': 'Portofolio'},
    {'name': 'Testimonial'},
    {'name': 'Contact'}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: widget.top != null
          ? null
          : BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              boxShadow: [kDefaultShadow],
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            menuItems.length,
            (index) => buildMenuItem(index),
          )
        ],
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(
            () {
              switch (menuItems[index]['name']) {
                case 'top':
                  Scrollable.ensureVisible(widget.top!.currentContext!);
                  break;
                case 'Abour':
                  Scrollable.ensureVisible(widget.abour.currentContext!);

                  break;
                case 'Stacks':
                  Scrollable.ensureVisible(widget.stacks.currentContext!);

                  break;

                case 'Portofolio':
                  Scrollable.ensureVisible(widget.portofolio.currentContext!);

                  break;

                case 'Testimonial':
                  Scrollable.ensureVisible(widget.testimonial.currentContext!);

                  break;

                case 'Contact':
                  Scrollable.ensureVisible(widget.contact.currentContext!);

                  break;
              }
            },
          );
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index]['name'],
                style: const TextStyle(
                  fontSize: 20,
                  color: kTextColor,
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset('assets/images/Hover.png'),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset('assets/images/Hover.png'),
              )
            ],
          ),
        ),
      );
}
