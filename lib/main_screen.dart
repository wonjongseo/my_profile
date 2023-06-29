import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/language_switch_card.dart';
import 'package:programmer_wonjongseo/responsive.dart';

import 'common/common.dart';
import 'controller/key_controller.dart';
import 'sections/topSection/components/menu.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.body, this.isHome});
  bool? isHome;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<KeyController>(builder: (keyController) {
      return Scaffold(
        appBar: !Responsive.isDesktop(context)
            ? AppBar(
                actions: [LanaguesSwitchCard()],
                // backgroundColor: bgColor,
                elevation: isHome == true ? 1 : 0,
                leading: isHome != null
                    ? Builder(
                        builder: (context) => IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(Icons.arrow_back_ios_rounded),
                      ),
              )
            : keyController.isShowAppBar
                ? AppBar(
                    centerTitle: true,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: [LanaguesSwitchCard()],
                    title: Menu(
                      isAppBar: true,
                      scrollController: keyController.scrollController,
                    ),
                  )
                : null,
        body: SafeArea(
          child: Stack(
            children: [
              body,
              if (keyController.isShowAppBar)
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(50),
                      child: IconButton(
                        icon: const Icon(
                          FontAwesomeIcons.arrowUp,
                          size: 50,
                        ),
                        onPressed: () {
                          Scrollable.ensureVisible(
                            keyController.topKey.currentContext!,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ))
            ],
          ),
        ),
      );
    });
  }
}
