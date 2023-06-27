import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/responsive.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.body, this.isHome});
  bool? isHome;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? AppBar(
              // actions: [LanaguesSwitchCard()],
              //  backgroundColor: bgColor,
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
                      icon: const Icon(Icons.arrow_back_ios_rounded)),
            )
          : null,
      //drawer: const SideMenu(),
      body: SafeArea(
        child: Center(
          child: Container(
            //    constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                //  if (Responsive.isDesktop(context))
                //    const Expanded(
                //      flex: 2,
                //     child: SideMenu(),
                //   ),
                const SizedBox(width: 20),
                Expanded(flex: 7, child: body),
                const SizedBox(width: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
