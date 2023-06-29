import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:programmer_wonjongseo/corporation/report/report_screen.dart';
import 'package:programmer_wonjongseo/models/CorporationProjects.dart';
import 'package:programmer_wonjongseo/responsive.dart';

void openProjectDialog(BuildContext context, Corporation corporation,
    {Widget? child}) {
  if (GetPlatform.isMobile || Responsive.isMobile(context)) {
    Get.to(() => ReportSceen(corporation: corporation));
  } else {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.white,
      elevation: 0,
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: child ??
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(corporation.source),
                Text(corporation.description)
              ],
            ),
      ),
    ));
  }
}
