import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';

class Menu extends StatefulWidget {
  const Menu(
      {super.key,
      required this.scrollController,
      required this.abour,
      required this.services,
      required this.testimonial,
      required this.contact,
      required this.portofolio});
  final ScrollController scrollController;
  final GlobalKey abour;
  final GlobalKey services;
  final GlobalKey testimonial;
  final GlobalKey contact;
  final GlobalKey portofolio;
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;

  List<Map<String, dynamic>> menuItems = [
    {
      'name': 'Abour',
      'position': 600,
    },
    {
      'name': 'Services',
      'position': 600 + 600,
    },
    {
      'name': 'Portofolio',
      'position': 600 + 600 + 1000,
    },
    {
      'name': 'Testimonial',
      'position': 600 + 600 + 1000 + 1000,
    },
    {
      'name': 'Contact',
      'position': 600 + 600 + 600 + 600 + 1500,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
            List.generate(menuItems.length, (index) => buildMenuItem(index)),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            double y = 0.0;
            switch (menuItems[index]['name']) {
              case 'Abour':
                RenderBox box = widget.abour.currentContext!.findRenderObject()
                    as RenderBox;
                Offset position = box.localToGlobal(Offset.zero);
                y = position.dy;
                break;
              case 'Services':
                RenderBox box = widget.services.currentContext!
                    .findRenderObject() as RenderBox;
                Offset position = box.localToGlobal(Offset.zero);
                y = position.dy;
                break;

              case 'Portofolio':
                RenderBox box = widget.portofolio.currentContext!
                    .findRenderObject() as RenderBox;
                Offset position = box.localToGlobal(Offset.zero);
                y = position.dy;
                break;

              case 'Testimonial':
                RenderBox box = widget.testimonial.currentContext!
                    .findRenderObject() as RenderBox;
                Offset position = box.localToGlobal(Offset.zero);
                y = position.dy;
                break;

              case 'Contact':
                RenderBox box = widget.contact.currentContext!
                    .findRenderObject() as RenderBox;
                Offset position = box.localToGlobal(Offset.zero);
                y = position.dy;
                break;
            }
            selectedIndex = index;
            widget.scrollController.animateTo(y,
                duration: Duration(milliseconds: 500), curve: Curves.easeIn);
          });
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
