import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/controller/key_controller.dart';
import 'package:programmer_wonjongseo/models/languages.dart';

class Menu extends StatefulWidget {
  Menu({super.key, required this.scrollController, this.isAppBar = false});
  final ScrollController scrollController;

  final bool isAppBar;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  KeyController keyController = KeyController.to;

  int selectedIndex = -1;
  int hoverIndex = 0;

  List<Map<String, dynamic>> menuItems = [
    {'name': toTr('about')},
    {'name': toTr('skill')},
    {'name': toTr('myProject')},
    // {'name': toTr('Testimonial')},
    {'name': toTr('contact')}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: widget.isAppBar
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

  Widget buildMenuItem(int index) {
    return InkWell(
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
              toTr(menuItems[index]['name']),
              style: const TextStyle(
                fontSize: 20,
                color: kTextColor,
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedIndex != index && hoverIndex == index ? -20 : -32,
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
      onTap: () {
        setState(
          () {
            if (toTr(menuItems[index]['name']) == toTr('about')) {
              RenderBox aboutBox = keyController.aboutKey.currentContext!
                  .findRenderObject() as RenderBox;
              Offset aboutBoxPosition = aboutBox.localToGlobal(Offset.zero);

              double animationHeight = keyController.scrollController.offset +
                  aboutBoxPosition.dy -
                  MediaQueryData.fromView(window).padding.top -
                  56.0;

              keyController.scrollController.animateTo(animationHeight,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            } else if (toTr(menuItems[index]['name']) == toTr('skill')) {
              RenderBox aboutBox = keyController.stacksKeyKey.currentContext!
                  .findRenderObject() as RenderBox;
              Offset aboutBoxPosition = aboutBox.localToGlobal(Offset.zero);

              double animationHeight = keyController.scrollController.offset +
                  aboutBoxPosition.dy -
                  MediaQueryData.fromView(window).padding.top -
                  56.0;

              keyController.scrollController.animateTo(animationHeight,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            } else if (toTr(menuItems[index]['name']) == toTr('myProject')) {
              RenderBox aboutBox = keyController.myProjectKey.currentContext!
                  .findRenderObject() as RenderBox;
              Offset aboutBoxPosition = aboutBox.localToGlobal(Offset.zero);

              double animationHeight = keyController.scrollController.offset +
                  aboutBoxPosition.dy -
                  MediaQueryData.fromView(window).padding.top -
                  56.0;

              keyController.scrollController.animateTo(animationHeight,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            } else if (toTr(menuItems[index]['name']) == toTr('Testimonial')) {
              RenderBox aboutBox = keyController.testimonialKey.currentContext!
                  .findRenderObject() as RenderBox;
              Offset aboutBoxPosition = aboutBox.localToGlobal(Offset.zero);

              double animationHeight = keyController.scrollController.offset +
                  aboutBoxPosition.dy -
                  MediaQueryData.fromView(window).padding.top -
                  56.0;

              keyController.scrollController.animateTo(animationHeight,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            } else if (toTr(menuItems[index]['name']) == toTr('contact')) {
              RenderBox aboutBox = keyController.contactKey.currentContext!
                  .findRenderObject() as RenderBox;
              Offset aboutBoxPosition = aboutBox.localToGlobal(Offset.zero);

              double animationHeight = keyController.scrollController.offset +
                  aboutBoxPosition.dy -
                  MediaQueryData.fromView(window).padding.top -
                  56.0;

              keyController.scrollController.animateTo(animationHeight,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.decelerate);
            }
          },
        );
      },
    );
  }
}
