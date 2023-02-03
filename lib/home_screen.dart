import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:programmer_wonjongseo/constants.dart';
import 'package:programmer_wonjongseo/sections/about/about_section.dart';
import 'package:programmer_wonjongseo/sections/contact/contact_section.dart';
import 'package:programmer_wonjongseo/sections/feedback/feedback_section.dart';
import 'package:programmer_wonjongseo/sections/recent_work/recent_work.dart';
import 'package:programmer_wonjongseo/sections/service/service_section.dart';
import 'package:programmer_wonjongseo/sections/topSection/top_section.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  GlobalKey abour = GlobalKey();
  GlobalKey services = GlobalKey();
  GlobalKey portofolio = GlobalKey();
  GlobalKey testimonial = GlobalKey();
  GlobalKey contact = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            TopSection(
                scrollController: _scrollController,
                services: services,
                portofolio: portofolio,
                abour: abour,
                testimonial: testimonial,
                contact: contact), // 900
            AboutSection(
              abour: abour,
            ), //
            ServiceSection(globalKey: services),
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
