import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/about/about_section.dart';
import 'package:programmer_wonjongseo/sections/contact/contact_section.dart';
import 'package:programmer_wonjongseo/sections/feedback/feedback_section.dart';
import 'package:programmer_wonjongseo/sections/recent_work/recent_work.dart';
import 'package:programmer_wonjongseo/sections/service/service_section.dart';
import 'package:programmer_wonjongseo/sections/topSection/top_section.dart';

import 'common/common.dart';
import 'sections/topSection/components/menu.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  GlobalKey top = GlobalKey();
  GlobalKey about = GlobalKey();
  GlobalKey stacksKey = GlobalKey();
  GlobalKey portofolio = GlobalKey();
  GlobalKey testimonial = GlobalKey();
  GlobalKey contact = GlobalKey();
  bool isShowAppBar = false;

  get locale => null;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.offset >= 900) {
        isShowAppBar = true;
        setState(() {});
      } else if (_scrollController.offset < 900) {
        isShowAppBar = false;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isShowAppBar
          ? AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: cActions(),
              title: Menu(
                  scrollController: _scrollController,
                  top: top,
                  stacks: stacksKey,
                  portofolio: portofolio,
                  abour: about,
                  testimonial: testimonial,
                  contact: contact),
            )
          : null,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          key: top,
          children: [
            TopSection(
              scrollController: _scrollController,
              services: stacksKey,
              portofolio: portofolio,
              abour: about,
              testimonial: testimonial,
              contact: contact,
            ), // 900
            AboutSection(about: about), //
            StackSection(globalKey: stacksKey),
            RecentWorkSection(globalKey: portofolio),
            FeedbackSection(globalKey: testimonial),
            const SizedBox(height: kDefaultPadding),
            ContactSection(globalKey: contact),
            const SizedBox(height: 500)
          ],
        ),
      ),
    );
  }
}
