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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            SizedBox(height: 500)
          ],
        ),
      ),
    );
  }
}
